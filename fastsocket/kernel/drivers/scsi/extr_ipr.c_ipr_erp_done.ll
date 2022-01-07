; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_ipr.c_ipr_erp_done.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_ipr.c_ipr_erp_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipr_cmnd = type { %struct.TYPE_10__*, i32, %struct.scsi_cmnd*, i32, %struct.TYPE_9__ }
%struct.TYPE_10__ = type { i32 }
%struct.scsi_cmnd = type { i32, i32 (%struct.scsi_cmnd*)*, i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.ipr_resource_entry* }
%struct.ipr_resource_entry = type { i32, i64 }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }

@DID_ERROR = common dso_local global i32 0, align 4
@KERN_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"Request Sense failed with IOASC: 0x%08X\0A\00", align 1
@SCSI_SENSE_BUFFERSIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ipr_cmnd*)* @ipr_erp_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ipr_erp_done(%struct.ipr_cmnd* %0) #0 {
  %2 = alloca %struct.ipr_cmnd*, align 8
  %3 = alloca %struct.scsi_cmnd*, align 8
  %4 = alloca %struct.ipr_resource_entry*, align 8
  %5 = alloca i32, align 4
  store %struct.ipr_cmnd* %0, %struct.ipr_cmnd** %2, align 8
  %6 = load %struct.ipr_cmnd*, %struct.ipr_cmnd** %2, align 8
  %7 = getelementptr inbounds %struct.ipr_cmnd, %struct.ipr_cmnd* %6, i32 0, i32 2
  %8 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %7, align 8
  store %struct.scsi_cmnd* %8, %struct.scsi_cmnd** %3, align 8
  %9 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %10 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %9, i32 0, i32 3
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = load %struct.ipr_resource_entry*, %struct.ipr_resource_entry** %12, align 8
  store %struct.ipr_resource_entry* %13, %struct.ipr_resource_entry** %4, align 8
  %14 = load %struct.ipr_cmnd*, %struct.ipr_cmnd** %2, align 8
  %15 = getelementptr inbounds %struct.ipr_cmnd, %struct.ipr_cmnd* %14, i32 0, i32 4
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @be32_to_cpu(i32 %19)
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* %5, align 4
  %22 = call i64 @IPR_IOASC_SENSE_KEY(i32 %21)
  %23 = icmp sgt i64 %22, 0
  br i1 %23, label %24, label %35

24:                                               ; preds = %1
  %25 = load i32, i32* @DID_ERROR, align 4
  %26 = shl i32 %25, 16
  %27 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %28 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = or i32 %29, %26
  store i32 %30, i32* %28, align 8
  %31 = load i32, i32* @KERN_ERR, align 4
  %32 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %33 = load i32, i32* %5, align 4
  %34 = call i32 @scmd_printk(i32 %31, %struct.scsi_cmnd* %32, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %33)
  br label %44

35:                                               ; preds = %1
  %36 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %37 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.ipr_cmnd*, %struct.ipr_cmnd** %2, align 8
  %40 = getelementptr inbounds %struct.ipr_cmnd, %struct.ipr_cmnd* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @SCSI_SENSE_BUFFERSIZE, align 4
  %43 = call i32 @memcpy(i32 %38, i32 %41, i32 %42)
  br label %44

44:                                               ; preds = %35, %24
  %45 = load %struct.ipr_resource_entry*, %struct.ipr_resource_entry** %4, align 8
  %46 = icmp ne %struct.ipr_resource_entry* %45, null
  br i1 %46, label %47, label %57

47:                                               ; preds = %44
  %48 = load %struct.ipr_resource_entry*, %struct.ipr_resource_entry** %4, align 8
  %49 = call i32 @ipr_is_naca_model(%struct.ipr_resource_entry* %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %54, label %51

51:                                               ; preds = %47
  %52 = load %struct.ipr_resource_entry*, %struct.ipr_resource_entry** %4, align 8
  %53 = getelementptr inbounds %struct.ipr_resource_entry, %struct.ipr_resource_entry* %52, i32 0, i32 0
  store i32 1, i32* %53, align 8
  br label %54

54:                                               ; preds = %51, %47
  %55 = load %struct.ipr_resource_entry*, %struct.ipr_resource_entry** %4, align 8
  %56 = getelementptr inbounds %struct.ipr_resource_entry, %struct.ipr_resource_entry* %55, i32 0, i32 1
  store i64 0, i64* %56, align 8
  br label %57

57:                                               ; preds = %54, %44
  %58 = load %struct.ipr_cmnd*, %struct.ipr_cmnd** %2, align 8
  %59 = getelementptr inbounds %struct.ipr_cmnd, %struct.ipr_cmnd* %58, i32 0, i32 2
  %60 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %59, align 8
  %61 = call i32 @scsi_dma_unmap(%struct.scsi_cmnd* %60)
  %62 = load %struct.ipr_cmnd*, %struct.ipr_cmnd** %2, align 8
  %63 = getelementptr inbounds %struct.ipr_cmnd, %struct.ipr_cmnd* %62, i32 0, i32 1
  %64 = load %struct.ipr_cmnd*, %struct.ipr_cmnd** %2, align 8
  %65 = getelementptr inbounds %struct.ipr_cmnd, %struct.ipr_cmnd* %64, i32 0, i32 0
  %66 = load %struct.TYPE_10__*, %struct.TYPE_10__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %66, i32 0, i32 0
  %68 = call i32 @list_add_tail(i32* %63, i32* %67)
  %69 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %70 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %69, i32 0, i32 1
  %71 = load i32 (%struct.scsi_cmnd*)*, i32 (%struct.scsi_cmnd*)** %70, align 8
  %72 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %73 = call i32 %71(%struct.scsi_cmnd* %72)
  ret void
}

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i64 @IPR_IOASC_SENSE_KEY(i32) #1

declare dso_local i32 @scmd_printk(i32, %struct.scsi_cmnd*, i8*, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @ipr_is_naca_model(%struct.ipr_resource_entry*) #1

declare dso_local i32 @scsi_dma_unmap(%struct.scsi_cmnd*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
