; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/be2iscsi/extr_be_main.c_beiscsi_task_xmit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/be2iscsi/extr_be_main.c_beiscsi_task_xmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_task = type { %struct.iscsi_conn*, %struct.scsi_cmnd*, %struct.beiscsi_io_task* }
%struct.iscsi_conn = type { i64 }
%struct.scsi_cmnd = type { i64 }
%struct.beiscsi_io_task = type { %struct.scsi_cmnd* }
%struct.beiscsi_hba = type { i32 (%struct.iscsi_task*, %struct.scatterlist*, i32, i32, i32)* }
%struct.scatterlist = type { i32 }
%struct.beiscsi_conn = type { %struct.beiscsi_hba* }

@KERN_ERR = common dso_local global i32 0, align 4
@BEISCSI_LOG_IO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"BM_%d : scsi_dma_map Failed\0A\00", align 1
@DMA_TO_DEVICE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iscsi_task*)* @beiscsi_task_xmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @beiscsi_task_xmit(%struct.iscsi_task* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.iscsi_task*, align 8
  %4 = alloca %struct.beiscsi_io_task*, align 8
  %5 = alloca %struct.scsi_cmnd*, align 8
  %6 = alloca %struct.beiscsi_hba*, align 8
  %7 = alloca %struct.scatterlist*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.iscsi_conn*, align 8
  %12 = alloca %struct.beiscsi_hba*, align 8
  store %struct.iscsi_task* %0, %struct.iscsi_task** %3, align 8
  %13 = load %struct.iscsi_task*, %struct.iscsi_task** %3, align 8
  %14 = getelementptr inbounds %struct.iscsi_task, %struct.iscsi_task* %13, i32 0, i32 2
  %15 = load %struct.beiscsi_io_task*, %struct.beiscsi_io_task** %14, align 8
  store %struct.beiscsi_io_task* %15, %struct.beiscsi_io_task** %4, align 8
  %16 = load %struct.iscsi_task*, %struct.iscsi_task** %3, align 8
  %17 = getelementptr inbounds %struct.iscsi_task, %struct.iscsi_task* %16, i32 0, i32 1
  %18 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %17, align 8
  store %struct.scsi_cmnd* %18, %struct.scsi_cmnd** %5, align 8
  store %struct.beiscsi_hba* null, %struct.beiscsi_hba** %6, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %19 = load %struct.iscsi_task*, %struct.iscsi_task** %3, align 8
  %20 = getelementptr inbounds %struct.iscsi_task, %struct.iscsi_task* %19, i32 0, i32 0
  %21 = load %struct.iscsi_conn*, %struct.iscsi_conn** %20, align 8
  %22 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = inttoptr i64 %23 to %struct.beiscsi_conn*
  %25 = getelementptr inbounds %struct.beiscsi_conn, %struct.beiscsi_conn* %24, i32 0, i32 0
  %26 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %25, align 8
  store %struct.beiscsi_hba* %26, %struct.beiscsi_hba** %6, align 8
  %27 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %28 = icmp ne %struct.scsi_cmnd* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %1
  %30 = load %struct.iscsi_task*, %struct.iscsi_task** %3, align 8
  %31 = call i32 @beiscsi_mtask(%struct.iscsi_task* %30)
  store i32 %31, i32* %2, align 4
  br label %77

32:                                               ; preds = %1
  %33 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %34 = load %struct.beiscsi_io_task*, %struct.beiscsi_io_task** %4, align 8
  %35 = getelementptr inbounds %struct.beiscsi_io_task, %struct.beiscsi_io_task* %34, i32 0, i32 0
  store %struct.scsi_cmnd* %33, %struct.scsi_cmnd** %35, align 8
  %36 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %37 = call i32 @scsi_dma_map(%struct.scsi_cmnd* %36)
  store i32 %37, i32* %8, align 4
  %38 = load i32, i32* %8, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %55

40:                                               ; preds = %32
  %41 = load %struct.iscsi_task*, %struct.iscsi_task** %3, align 8
  %42 = getelementptr inbounds %struct.iscsi_task, %struct.iscsi_task* %41, i32 0, i32 0
  %43 = load %struct.iscsi_conn*, %struct.iscsi_conn** %42, align 8
  store %struct.iscsi_conn* %43, %struct.iscsi_conn** %11, align 8
  store %struct.beiscsi_hba* null, %struct.beiscsi_hba** %12, align 8
  %44 = load %struct.iscsi_conn*, %struct.iscsi_conn** %11, align 8
  %45 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = inttoptr i64 %46 to %struct.beiscsi_conn*
  %48 = getelementptr inbounds %struct.beiscsi_conn, %struct.beiscsi_conn* %47, i32 0, i32 0
  %49 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %48, align 8
  store %struct.beiscsi_hba* %49, %struct.beiscsi_hba** %12, align 8
  %50 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %12, align 8
  %51 = load i32, i32* @KERN_ERR, align 4
  %52 = load i32, i32* @BEISCSI_LOG_IO, align 4
  %53 = call i32 @beiscsi_log(%struct.beiscsi_hba* %50, i32 %51, i32 %52, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %54 = load i32, i32* %8, align 4
  store i32 %54, i32* %2, align 4
  br label %77

55:                                               ; preds = %32
  %56 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %57 = call i32 @scsi_bufflen(%struct.scsi_cmnd* %56)
  store i32 %57, i32* %10, align 4
  %58 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %59 = call %struct.scatterlist* @scsi_sglist(%struct.scsi_cmnd* %58)
  store %struct.scatterlist* %59, %struct.scatterlist** %7, align 8
  %60 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %61 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @DMA_TO_DEVICE, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %66

65:                                               ; preds = %55
  store i32 1, i32* %9, align 4
  br label %67

66:                                               ; preds = %55
  store i32 0, i32* %9, align 4
  br label %67

67:                                               ; preds = %66, %65
  %68 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %6, align 8
  %69 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %68, i32 0, i32 0
  %70 = load i32 (%struct.iscsi_task*, %struct.scatterlist*, i32, i32, i32)*, i32 (%struct.iscsi_task*, %struct.scatterlist*, i32, i32, i32)** %69, align 8
  %71 = load %struct.iscsi_task*, %struct.iscsi_task** %3, align 8
  %72 = load %struct.scatterlist*, %struct.scatterlist** %7, align 8
  %73 = load i32, i32* %8, align 4
  %74 = load i32, i32* %10, align 4
  %75 = load i32, i32* %9, align 4
  %76 = call i32 %70(%struct.iscsi_task* %71, %struct.scatterlist* %72, i32 %73, i32 %74, i32 %75)
  store i32 %76, i32* %2, align 4
  br label %77

77:                                               ; preds = %67, %40, %29
  %78 = load i32, i32* %2, align 4
  ret i32 %78
}

declare dso_local i32 @beiscsi_mtask(%struct.iscsi_task*) #1

declare dso_local i32 @scsi_dma_map(%struct.scsi_cmnd*) #1

declare dso_local i32 @beiscsi_log(%struct.beiscsi_hba*, i32, i32, i8*) #1

declare dso_local i32 @scsi_bufflen(%struct.scsi_cmnd*) #1

declare dso_local %struct.scatterlist* @scsi_sglist(%struct.scsi_cmnd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
