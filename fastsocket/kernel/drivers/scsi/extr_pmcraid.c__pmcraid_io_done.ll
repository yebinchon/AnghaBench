; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_pmcraid.c__pmcraid_io_done.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_pmcraid.c__pmcraid_io_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pmcraid_cmd = type { %struct.TYPE_3__*, %struct.scsi_cmnd* }
%struct.TYPE_3__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32*, i32 }
%struct.scsi_cmnd = type { i32 (%struct.scsi_cmnd*)*, i32 }

@.str = private unnamed_addr constant [46 x i8] c"response(%d) CDB[0] = %x ioasc:result: %x:%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pmcraid_cmd*, i32, i32)* @_pmcraid_io_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_pmcraid_io_done(%struct.pmcraid_cmd* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.pmcraid_cmd*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.scsi_cmnd*, align 8
  %8 = alloca i32, align 4
  store %struct.pmcraid_cmd* %0, %struct.pmcraid_cmd** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.pmcraid_cmd*, %struct.pmcraid_cmd** %4, align 8
  %10 = getelementptr inbounds %struct.pmcraid_cmd, %struct.pmcraid_cmd* %9, i32 0, i32 1
  %11 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %10, align 8
  store %struct.scsi_cmnd* %11, %struct.scsi_cmnd** %7, align 8
  store i32 0, i32* %8, align 4
  %12 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %7, align 8
  %13 = load i32, i32* %5, align 4
  %14 = call i32 @scsi_set_resid(%struct.scsi_cmnd* %12, i32 %13)
  %15 = load %struct.pmcraid_cmd*, %struct.pmcraid_cmd** %4, align 8
  %16 = getelementptr inbounds %struct.pmcraid_cmd, %struct.pmcraid_cmd* %15, i32 0, i32 0
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @le32_to_cpu(i32 %20)
  %22 = ashr i32 %21, 2
  %23 = load %struct.pmcraid_cmd*, %struct.pmcraid_cmd** %4, align 8
  %24 = getelementptr inbounds %struct.pmcraid_cmd, %struct.pmcraid_cmd* %23, i32 0, i32 0
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %6, align 4
  %32 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %7, align 8
  %33 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @pmcraid_info(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %22, i32 %30, i32 %31, i32 %34)
  %36 = load i32, i32* %6, align 4
  %37 = call i64 @PMCRAID_IOASC_SENSE_KEY(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %3
  %40 = load %struct.pmcraid_cmd*, %struct.pmcraid_cmd** %4, align 8
  %41 = call i32 @pmcraid_error_handler(%struct.pmcraid_cmd* %40)
  store i32 %41, i32* %8, align 4
  br label %42

42:                                               ; preds = %39, %3
  %43 = load i32, i32* %8, align 4
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %53

45:                                               ; preds = %42
  %46 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %7, align 8
  %47 = call i32 @scsi_dma_unmap(%struct.scsi_cmnd* %46)
  %48 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %7, align 8
  %49 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %48, i32 0, i32 0
  %50 = load i32 (%struct.scsi_cmnd*)*, i32 (%struct.scsi_cmnd*)** %49, align 8
  %51 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %7, align 8
  %52 = call i32 %50(%struct.scsi_cmnd* %51)
  br label %53

53:                                               ; preds = %45, %42
  %54 = load i32, i32* %8, align 4
  ret i32 %54
}

declare dso_local i32 @scsi_set_resid(%struct.scsi_cmnd*, i32) #1

declare dso_local i32 @pmcraid_info(i8*, i32, i32, i32, i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i64 @PMCRAID_IOASC_SENSE_KEY(i32) #1

declare dso_local i32 @pmcraid_error_handler(%struct.pmcraid_cmd*) #1

declare dso_local i32 @scsi_dma_unmap(%struct.scsi_cmnd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
