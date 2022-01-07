; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_pmcraid.c_pmcraid_erp_done.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_pmcraid.c_pmcraid_erp_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pmcraid_cmd = type { i64, i32*, %struct.TYPE_6__*, %struct.pmcraid_instance*, %struct.scsi_cmnd* }
%struct.TYPE_6__ = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32* }
%struct.TYPE_4__ = type { i32 }
%struct.pmcraid_instance = type { i32 }
%struct.scsi_cmnd = type { i32, i32 (%struct.scsi_cmnd*)*, i32 }

@DID_ERROR = common dso_local global i32 0, align 4
@KERN_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"command CDB[0] = %x failed with IOASC: 0x%08X\0A\00", align 1
@SCSI_SENSE_BUFFERSIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pmcraid_cmd*)* @pmcraid_erp_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pmcraid_erp_done(%struct.pmcraid_cmd* %0) #0 {
  %2 = alloca %struct.pmcraid_cmd*, align 8
  %3 = alloca %struct.scsi_cmnd*, align 8
  %4 = alloca %struct.pmcraid_instance*, align 8
  %5 = alloca i32, align 4
  store %struct.pmcraid_cmd* %0, %struct.pmcraid_cmd** %2, align 8
  %6 = load %struct.pmcraid_cmd*, %struct.pmcraid_cmd** %2, align 8
  %7 = getelementptr inbounds %struct.pmcraid_cmd, %struct.pmcraid_cmd* %6, i32 0, i32 4
  %8 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %7, align 8
  store %struct.scsi_cmnd* %8, %struct.scsi_cmnd** %3, align 8
  %9 = load %struct.pmcraid_cmd*, %struct.pmcraid_cmd** %2, align 8
  %10 = getelementptr inbounds %struct.pmcraid_cmd, %struct.pmcraid_cmd* %9, i32 0, i32 3
  %11 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %10, align 8
  store %struct.pmcraid_instance* %11, %struct.pmcraid_instance** %4, align 8
  %12 = load %struct.pmcraid_cmd*, %struct.pmcraid_cmd** %2, align 8
  %13 = getelementptr inbounds %struct.pmcraid_cmd, %struct.pmcraid_cmd* %12, i32 0, i32 2
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @le32_to_cpu(i32 %17)
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* %5, align 4
  %20 = call i64 @PMCRAID_IOASC_SENSE_KEY(i32 %19)
  %21 = icmp sgt i64 %20, 0
  br i1 %21, label %22, label %41

22:                                               ; preds = %1
  %23 = load i32, i32* @DID_ERROR, align 4
  %24 = shl i32 %23, 16
  %25 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %26 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = or i32 %27, %24
  store i32 %28, i32* %26, align 8
  %29 = load i32, i32* @KERN_INFO, align 4
  %30 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %31 = load %struct.pmcraid_cmd*, %struct.pmcraid_cmd** %2, align 8
  %32 = getelementptr inbounds %struct.pmcraid_cmd, %struct.pmcraid_cmd* %31, i32 0, i32 2
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %5, align 4
  %40 = call i32 @scmd_printk(i32 %29, %struct.scsi_cmnd* %30, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %38, i32 %39)
  br label %41

41:                                               ; preds = %22, %1
  %42 = load %struct.pmcraid_cmd*, %struct.pmcraid_cmd** %2, align 8
  %43 = getelementptr inbounds %struct.pmcraid_cmd, %struct.pmcraid_cmd* %42, i32 0, i32 1
  %44 = load i32*, i32** %43, align 8
  %45 = icmp ne i32* %44, null
  br i1 %45, label %46, label %70

46:                                               ; preds = %41
  %47 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %48 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.pmcraid_cmd*, %struct.pmcraid_cmd** %2, align 8
  %51 = getelementptr inbounds %struct.pmcraid_cmd, %struct.pmcraid_cmd* %50, i32 0, i32 1
  %52 = load i32*, i32** %51, align 8
  %53 = load i32, i32* @SCSI_SENSE_BUFFERSIZE, align 4
  %54 = call i32 @memcpy(i32 %49, i32* %52, i32 %53)
  %55 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %4, align 8
  %56 = getelementptr inbounds %struct.pmcraid_instance, %struct.pmcraid_instance* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @SCSI_SENSE_BUFFERSIZE, align 4
  %59 = load %struct.pmcraid_cmd*, %struct.pmcraid_cmd** %2, align 8
  %60 = getelementptr inbounds %struct.pmcraid_cmd, %struct.pmcraid_cmd* %59, i32 0, i32 1
  %61 = load i32*, i32** %60, align 8
  %62 = load %struct.pmcraid_cmd*, %struct.pmcraid_cmd** %2, align 8
  %63 = getelementptr inbounds %struct.pmcraid_cmd, %struct.pmcraid_cmd* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = call i32 @pci_free_consistent(i32 %57, i32 %58, i32* %61, i64 %64)
  %66 = load %struct.pmcraid_cmd*, %struct.pmcraid_cmd** %2, align 8
  %67 = getelementptr inbounds %struct.pmcraid_cmd, %struct.pmcraid_cmd* %66, i32 0, i32 1
  store i32* null, i32** %67, align 8
  %68 = load %struct.pmcraid_cmd*, %struct.pmcraid_cmd** %2, align 8
  %69 = getelementptr inbounds %struct.pmcraid_cmd, %struct.pmcraid_cmd* %68, i32 0, i32 0
  store i64 0, i64* %69, align 8
  br label %70

70:                                               ; preds = %46, %41
  %71 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %72 = call i32 @scsi_dma_unmap(%struct.scsi_cmnd* %71)
  %73 = load %struct.pmcraid_cmd*, %struct.pmcraid_cmd** %2, align 8
  %74 = call i32 @pmcraid_return_cmd(%struct.pmcraid_cmd* %73)
  %75 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %76 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %75, i32 0, i32 1
  %77 = load i32 (%struct.scsi_cmnd*)*, i32 (%struct.scsi_cmnd*)** %76, align 8
  %78 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %79 = call i32 %77(%struct.scsi_cmnd* %78)
  ret void
}

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i64 @PMCRAID_IOASC_SENSE_KEY(i32) #1

declare dso_local i32 @scmd_printk(i32, %struct.scsi_cmnd*, i8*, i32, i32) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @pci_free_consistent(i32, i32, i32*, i64) #1

declare dso_local i32 @scsi_dma_unmap(%struct.scsi_cmnd*) #1

declare dso_local i32 @pmcraid_return_cmd(%struct.pmcraid_cmd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
