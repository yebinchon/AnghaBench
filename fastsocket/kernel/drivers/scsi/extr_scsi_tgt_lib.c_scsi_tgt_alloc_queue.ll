; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_scsi_tgt_lib.c_scsi_tgt_alloc_queue.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_scsi_tgt_lib.c_scsi_tgt_alloc_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Scsi_Host = type { %struct.request_queue*, i32 }
%struct.request_queue = type { i32, %struct.scsi_tgt_queuedata* }
%struct.scsi_tgt_queuedata = type { i32, i32*, %struct.Scsi_Host* }

@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @scsi_tgt_alloc_queue(%struct.Scsi_Host* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.Scsi_Host*, align 8
  %4 = alloca %struct.scsi_tgt_queuedata*, align 8
  %5 = alloca %struct.request_queue*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.Scsi_Host* %0, %struct.Scsi_Host** %3, align 8
  %8 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %9 = call %struct.request_queue* @__scsi_alloc_queue(%struct.Scsi_Host* %8, i32* null)
  store %struct.request_queue* %9, %struct.request_queue** %5, align 8
  %10 = load %struct.request_queue*, %struct.request_queue** %5, align 8
  %11 = icmp ne %struct.request_queue* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %66

15:                                               ; preds = %1
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call %struct.scsi_tgt_queuedata* @kzalloc(i32 24, i32 %16)
  store %struct.scsi_tgt_queuedata* %17, %struct.scsi_tgt_queuedata** %4, align 8
  %18 = load %struct.scsi_tgt_queuedata*, %struct.scsi_tgt_queuedata** %4, align 8
  %19 = icmp ne %struct.scsi_tgt_queuedata* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %15
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %6, align 4
  br label %62

23:                                               ; preds = %15
  %24 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %25 = load %struct.scsi_tgt_queuedata*, %struct.scsi_tgt_queuedata** %4, align 8
  %26 = getelementptr inbounds %struct.scsi_tgt_queuedata, %struct.scsi_tgt_queuedata* %25, i32 0, i32 2
  store %struct.Scsi_Host* %24, %struct.Scsi_Host** %26, align 8
  %27 = load %struct.scsi_tgt_queuedata*, %struct.scsi_tgt_queuedata** %4, align 8
  %28 = load %struct.request_queue*, %struct.request_queue** %5, align 8
  %29 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %28, i32 0, i32 1
  store %struct.scsi_tgt_queuedata* %27, %struct.scsi_tgt_queuedata** %29, align 8
  %30 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %31 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.request_queue*, %struct.request_queue** %5, align 8
  %34 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 8
  %35 = load %struct.request_queue*, %struct.request_queue** %5, align 8
  %36 = call i32 @blk_queue_dma_alignment(%struct.request_queue* %35, i32 0)
  %37 = load %struct.request_queue*, %struct.request_queue** %5, align 8
  %38 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %39 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %38, i32 0, i32 0
  store %struct.request_queue* %37, %struct.request_queue** %39, align 8
  store i32 0, i32* %7, align 4
  br label %40

40:                                               ; preds = %55, %23
  %41 = load i32, i32* %7, align 4
  %42 = load %struct.scsi_tgt_queuedata*, %struct.scsi_tgt_queuedata** %4, align 8
  %43 = getelementptr inbounds %struct.scsi_tgt_queuedata, %struct.scsi_tgt_queuedata* %42, i32 0, i32 1
  %44 = load i32*, i32** %43, align 8
  %45 = call i32 @ARRAY_SIZE(i32* %44)
  %46 = icmp slt i32 %41, %45
  br i1 %46, label %47, label %58

47:                                               ; preds = %40
  %48 = load %struct.scsi_tgt_queuedata*, %struct.scsi_tgt_queuedata** %4, align 8
  %49 = getelementptr inbounds %struct.scsi_tgt_queuedata, %struct.scsi_tgt_queuedata* %48, i32 0, i32 1
  %50 = load i32*, i32** %49, align 8
  %51 = load i32, i32* %7, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %50, i64 %52
  %54 = call i32 @INIT_LIST_HEAD(i32* %53)
  br label %55

55:                                               ; preds = %47
  %56 = load i32, i32* %7, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %7, align 4
  br label %40

58:                                               ; preds = %40
  %59 = load %struct.scsi_tgt_queuedata*, %struct.scsi_tgt_queuedata** %4, align 8
  %60 = getelementptr inbounds %struct.scsi_tgt_queuedata, %struct.scsi_tgt_queuedata* %59, i32 0, i32 0
  %61 = call i32 @spin_lock_init(i32* %60)
  store i32 0, i32* %2, align 4
  br label %66

62:                                               ; preds = %20
  %63 = load %struct.request_queue*, %struct.request_queue** %5, align 8
  %64 = call i32 @blk_cleanup_queue(%struct.request_queue* %63)
  %65 = load i32, i32* %6, align 4
  store i32 %65, i32* %2, align 4
  br label %66

66:                                               ; preds = %62, %58, %12
  %67 = load i32, i32* %2, align 4
  ret i32 %67
}

declare dso_local %struct.request_queue* @__scsi_alloc_queue(%struct.Scsi_Host*, i32*) #1

declare dso_local %struct.scsi_tgt_queuedata* @kzalloc(i32, i32) #1

declare dso_local i32 @blk_queue_dma_alignment(%struct.request_queue*, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @blk_cleanup_queue(%struct.request_queue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
