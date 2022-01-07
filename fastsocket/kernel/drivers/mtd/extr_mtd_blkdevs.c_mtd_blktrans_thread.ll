; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/extr_mtd_blkdevs.c_mtd_blktrans_thread.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/extr_mtd_blkdevs.c_mtd_blktrans_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.mtd_blktrans_ops = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.request_queue* }
%struct.request_queue = type { i32 }
%struct.request = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.mtd_blktrans_dev* }
%struct.mtd_blktrans_dev = type { i32, %struct.mtd_blktrans_ops* }

@PF_MEMALLOC = common dso_local global i32 0, align 4
@current = common dso_local global %struct.TYPE_6__* null, align 8
@TASK_INTERRUPTIBLE = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @mtd_blktrans_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtd_blktrans_thread(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.mtd_blktrans_ops*, align 8
  %4 = alloca %struct.request_queue*, align 8
  %5 = alloca %struct.request*, align 8
  %6 = alloca %struct.mtd_blktrans_dev*, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %8 = load i8*, i8** %2, align 8
  %9 = bitcast i8* %8 to %struct.mtd_blktrans_ops*
  store %struct.mtd_blktrans_ops* %9, %struct.mtd_blktrans_ops** %3, align 8
  %10 = load %struct.mtd_blktrans_ops*, %struct.mtd_blktrans_ops** %3, align 8
  %11 = getelementptr inbounds %struct.mtd_blktrans_ops, %struct.mtd_blktrans_ops* %10, i32 0, i32 0
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load %struct.request_queue*, %struct.request_queue** %13, align 8
  store %struct.request_queue* %14, %struct.request_queue** %4, align 8
  store %struct.request* null, %struct.request** %5, align 8
  %15 = load i32, i32* @PF_MEMALLOC, align 4
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** @current, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = or i32 %18, %15
  store i32 %19, i32* %17, align 4
  %20 = load %struct.request_queue*, %struct.request_queue** %4, align 8
  %21 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @spin_lock_irq(i32 %22)
  br label %24

24:                                               ; preds = %79, %35, %1
  %25 = call i32 (...) @kthread_should_stop()
  %26 = icmp ne i32 %25, 0
  %27 = xor i1 %26, true
  br i1 %27, label %28, label %80

28:                                               ; preds = %24
  %29 = load %struct.request*, %struct.request** %5, align 8
  %30 = icmp ne %struct.request* %29, null
  br i1 %30, label %47, label %31

31:                                               ; preds = %28
  %32 = load %struct.request_queue*, %struct.request_queue** %4, align 8
  %33 = call %struct.request* @blk_fetch_request(%struct.request_queue* %32)
  store %struct.request* %33, %struct.request** %5, align 8
  %34 = icmp ne %struct.request* %33, null
  br i1 %34, label %47, label %35

35:                                               ; preds = %31
  %36 = load i32, i32* @TASK_INTERRUPTIBLE, align 4
  %37 = call i32 @set_current_state(i32 %36)
  %38 = load %struct.request_queue*, %struct.request_queue** %4, align 8
  %39 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @spin_unlock_irq(i32 %40)
  %42 = call i32 (...) @schedule()
  %43 = load %struct.request_queue*, %struct.request_queue** %4, align 8
  %44 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @spin_lock_irq(i32 %45)
  br label %24

47:                                               ; preds = %31, %28
  %48 = load %struct.request*, %struct.request** %5, align 8
  %49 = getelementptr inbounds %struct.request, %struct.request* %48, i32 0, i32 0
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  %52 = load %struct.mtd_blktrans_dev*, %struct.mtd_blktrans_dev** %51, align 8
  store %struct.mtd_blktrans_dev* %52, %struct.mtd_blktrans_dev** %6, align 8
  %53 = load %struct.mtd_blktrans_dev*, %struct.mtd_blktrans_dev** %6, align 8
  %54 = getelementptr inbounds %struct.mtd_blktrans_dev, %struct.mtd_blktrans_dev* %53, i32 0, i32 1
  %55 = load %struct.mtd_blktrans_ops*, %struct.mtd_blktrans_ops** %54, align 8
  store %struct.mtd_blktrans_ops* %55, %struct.mtd_blktrans_ops** %3, align 8
  %56 = load %struct.request_queue*, %struct.request_queue** %4, align 8
  %57 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @spin_unlock_irq(i32 %58)
  %60 = load %struct.mtd_blktrans_dev*, %struct.mtd_blktrans_dev** %6, align 8
  %61 = getelementptr inbounds %struct.mtd_blktrans_dev, %struct.mtd_blktrans_dev* %60, i32 0, i32 0
  %62 = call i32 @mutex_lock(i32* %61)
  %63 = load %struct.mtd_blktrans_ops*, %struct.mtd_blktrans_ops** %3, align 8
  %64 = load %struct.mtd_blktrans_dev*, %struct.mtd_blktrans_dev** %6, align 8
  %65 = load %struct.request*, %struct.request** %5, align 8
  %66 = call i32 @do_blktrans_request(%struct.mtd_blktrans_ops* %63, %struct.mtd_blktrans_dev* %64, %struct.request* %65)
  store i32 %66, i32* %7, align 4
  %67 = load %struct.mtd_blktrans_dev*, %struct.mtd_blktrans_dev** %6, align 8
  %68 = getelementptr inbounds %struct.mtd_blktrans_dev, %struct.mtd_blktrans_dev* %67, i32 0, i32 0
  %69 = call i32 @mutex_unlock(i32* %68)
  %70 = load %struct.request_queue*, %struct.request_queue** %4, align 8
  %71 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @spin_lock_irq(i32 %72)
  %74 = load %struct.request*, %struct.request** %5, align 8
  %75 = load i32, i32* %7, align 4
  %76 = call i32 @__blk_end_request_cur(%struct.request* %74, i32 %75)
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %79, label %78

78:                                               ; preds = %47
  store %struct.request* null, %struct.request** %5, align 8
  br label %79

79:                                               ; preds = %78, %47
  br label %24

80:                                               ; preds = %24
  %81 = load %struct.request*, %struct.request** %5, align 8
  %82 = icmp ne %struct.request* %81, null
  br i1 %82, label %83, label %88

83:                                               ; preds = %80
  %84 = load %struct.request*, %struct.request** %5, align 8
  %85 = load i32, i32* @EIO, align 4
  %86 = sub nsw i32 0, %85
  %87 = call i32 @__blk_end_request_all(%struct.request* %84, i32 %86)
  br label %88

88:                                               ; preds = %83, %80
  %89 = load %struct.request_queue*, %struct.request_queue** %4, align 8
  %90 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @spin_unlock_irq(i32 %91)
  ret i32 0
}

declare dso_local i32 @spin_lock_irq(i32) #1

declare dso_local i32 @kthread_should_stop(...) #1

declare dso_local %struct.request* @blk_fetch_request(%struct.request_queue*) #1

declare dso_local i32 @set_current_state(i32) #1

declare dso_local i32 @spin_unlock_irq(i32) #1

declare dso_local i32 @schedule(...) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @do_blktrans_request(%struct.mtd_blktrans_ops*, %struct.mtd_blktrans_dev*, %struct.request*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @__blk_end_request_cur(%struct.request*, i32) #1

declare dso_local i32 @__blk_end_request_all(%struct.request*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
