; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_xen-blkfront.c_blkif_free.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_xen-blkfront.c_blkif_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.blkfront_info = type { i64, i64, i64, %struct.TYPE_2__, i32, i64, i32 }
%struct.TYPE_2__ = type { i32* }

@blkif_io_lock = common dso_local global i32 0, align 4
@BLKIF_STATE_SUSPENDED = common dso_local global i32 0, align 4
@BLKIF_STATE_DISCONNECTED = common dso_local global i32 0, align 4
@GRANT_INVALID_REF = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.blkfront_info*, i32)* @blkif_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @blkif_free(%struct.blkfront_info* %0, i32 %1) #0 {
  %3 = alloca %struct.blkfront_info*, align 8
  %4 = alloca i32, align 4
  store %struct.blkfront_info* %0, %struct.blkfront_info** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = call i32 @spin_lock_irq(i32* @blkif_io_lock)
  %6 = load i32, i32* %4, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %2
  %9 = load i32, i32* @BLKIF_STATE_SUSPENDED, align 4
  br label %12

10:                                               ; preds = %2
  %11 = load i32, i32* @BLKIF_STATE_DISCONNECTED, align 4
  br label %12

12:                                               ; preds = %10, %8
  %13 = phi i32 [ %9, %8 ], [ %11, %10 ]
  %14 = load %struct.blkfront_info*, %struct.blkfront_info** %3, align 8
  %15 = getelementptr inbounds %struct.blkfront_info, %struct.blkfront_info* %14, i32 0, i32 6
  store i32 %13, i32* %15, align 8
  %16 = load %struct.blkfront_info*, %struct.blkfront_info** %3, align 8
  %17 = getelementptr inbounds %struct.blkfront_info, %struct.blkfront_info* %16, i32 0, i32 5
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %12
  %21 = load %struct.blkfront_info*, %struct.blkfront_info** %3, align 8
  %22 = getelementptr inbounds %struct.blkfront_info, %struct.blkfront_info* %21, i32 0, i32 5
  %23 = load i64, i64* %22, align 8
  %24 = call i32 @blk_stop_queue(i64 %23)
  br label %25

25:                                               ; preds = %20, %12
  %26 = load %struct.blkfront_info*, %struct.blkfront_info** %3, align 8
  %27 = getelementptr inbounds %struct.blkfront_info, %struct.blkfront_info* %26, i32 0, i32 4
  %28 = call i32 @gnttab_cancel_free_callback(i32* %27)
  %29 = call i32 @spin_unlock_irq(i32* @blkif_io_lock)
  %30 = call i32 (...) @flush_scheduled_work()
  %31 = load %struct.blkfront_info*, %struct.blkfront_info** %3, align 8
  %32 = getelementptr inbounds %struct.blkfront_info, %struct.blkfront_info* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @GRANT_INVALID_REF, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %52

36:                                               ; preds = %25
  %37 = load %struct.blkfront_info*, %struct.blkfront_info** %3, align 8
  %38 = getelementptr inbounds %struct.blkfront_info, %struct.blkfront_info* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.blkfront_info*, %struct.blkfront_info** %3, align 8
  %41 = getelementptr inbounds %struct.blkfront_info, %struct.blkfront_info* %40, i32 0, i32 3
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = ptrtoint i32* %43 to i64
  %45 = call i32 @gnttab_end_foreign_access(i64 %39, i32 0, i64 %44)
  %46 = load i64, i64* @GRANT_INVALID_REF, align 8
  %47 = load %struct.blkfront_info*, %struct.blkfront_info** %3, align 8
  %48 = getelementptr inbounds %struct.blkfront_info, %struct.blkfront_info* %47, i32 0, i32 0
  store i64 %46, i64* %48, align 8
  %49 = load %struct.blkfront_info*, %struct.blkfront_info** %3, align 8
  %50 = getelementptr inbounds %struct.blkfront_info, %struct.blkfront_info* %49, i32 0, i32 3
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  store i32* null, i32** %51, align 8
  br label %52

52:                                               ; preds = %36, %25
  %53 = load %struct.blkfront_info*, %struct.blkfront_info** %3, align 8
  %54 = getelementptr inbounds %struct.blkfront_info, %struct.blkfront_info* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %63

57:                                               ; preds = %52
  %58 = load %struct.blkfront_info*, %struct.blkfront_info** %3, align 8
  %59 = getelementptr inbounds %struct.blkfront_info, %struct.blkfront_info* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = load %struct.blkfront_info*, %struct.blkfront_info** %3, align 8
  %62 = call i32 @unbind_from_irqhandler(i64 %60, %struct.blkfront_info* %61)
  br label %63

63:                                               ; preds = %57, %52
  %64 = load %struct.blkfront_info*, %struct.blkfront_info** %3, align 8
  %65 = getelementptr inbounds %struct.blkfront_info, %struct.blkfront_info* %64, i32 0, i32 1
  store i64 0, i64* %65, align 8
  %66 = load %struct.blkfront_info*, %struct.blkfront_info** %3, align 8
  %67 = getelementptr inbounds %struct.blkfront_info, %struct.blkfront_info* %66, i32 0, i32 2
  store i64 0, i64* %67, align 8
  ret void
}

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @blk_stop_queue(i64) #1

declare dso_local i32 @gnttab_cancel_free_callback(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @flush_scheduled_work(...) #1

declare dso_local i32 @gnttab_end_foreign_access(i64, i32, i64) #1

declare dso_local i32 @unbind_from_irqhandler(i64, %struct.blkfront_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
