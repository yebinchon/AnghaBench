; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/extr_mtdconcat.c_concat_dev_erase.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/extr_mtdconcat.c_concat_dev_erase.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtd_info = type { i32 (%struct.mtd_info*, %struct.erase_info*)* }
%struct.erase_info = type opaque
%struct.erase_info.0 = type { i64, i64, i32, %struct.mtd_info* }

@wait = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@concat_erase_callback = common dso_local global i32 0, align 4
@TASK_UNINTERRUPTIBLE = common dso_local global i32 0, align 4
@MTD_ERASE_DONE = common dso_local global i64 0, align 8
@MTD_ERASE_FAILED = common dso_local global i64 0, align 8
@TASK_RUNNING = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtd_info*, %struct.erase_info.0*)* @concat_dev_erase to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @concat_dev_erase(%struct.mtd_info* %0, %struct.erase_info.0* %1) #0 {
  %3 = alloca %struct.mtd_info*, align 8
  %4 = alloca %struct.erase_info.0*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.mtd_info* %0, %struct.mtd_info** %3, align 8
  store %struct.erase_info.0* %1, %struct.erase_info.0** %4, align 8
  %7 = load i32, i32* @wait, align 4
  %8 = load i32, i32* @current, align 4
  %9 = call i32 @DECLARE_WAITQUEUE(i32 %7, i32 %8)
  %10 = call i32 @init_waitqueue_head(i32* %6)
  %11 = load %struct.mtd_info*, %struct.mtd_info** %3, align 8
  %12 = load %struct.erase_info.0*, %struct.erase_info.0** %4, align 8
  %13 = getelementptr inbounds %struct.erase_info.0, %struct.erase_info.0* %12, i32 0, i32 3
  store %struct.mtd_info* %11, %struct.mtd_info** %13, align 8
  %14 = load i32, i32* @concat_erase_callback, align 4
  %15 = load %struct.erase_info.0*, %struct.erase_info.0** %4, align 8
  %16 = getelementptr inbounds %struct.erase_info.0, %struct.erase_info.0* %15, i32 0, i32 2
  store i32 %14, i32* %16, align 8
  %17 = ptrtoint i32* %6 to i64
  %18 = load %struct.erase_info.0*, %struct.erase_info.0** %4, align 8
  %19 = getelementptr inbounds %struct.erase_info.0, %struct.erase_info.0* %18, i32 0, i32 0
  store i64 %17, i64* %19, align 8
  %20 = load %struct.mtd_info*, %struct.mtd_info** %3, align 8
  %21 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %20, i32 0, i32 0
  %22 = load i32 (%struct.mtd_info*, %struct.erase_info*)*, i32 (%struct.mtd_info*, %struct.erase_info*)** %21, align 8
  %23 = load %struct.mtd_info*, %struct.mtd_info** %3, align 8
  %24 = load %struct.erase_info.0*, %struct.erase_info.0** %4, align 8
  %25 = bitcast %struct.erase_info.0* %24 to %struct.erase_info*
  %26 = call i32 %22(%struct.mtd_info* %23, %struct.erase_info* %25)
  store i32 %26, i32* %5, align 4
  %27 = load i32, i32* %5, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %61, label %29

29:                                               ; preds = %2
  %30 = load i32, i32* @TASK_UNINTERRUPTIBLE, align 4
  %31 = call i32 @set_current_state(i32 %30)
  %32 = call i32 @add_wait_queue(i32* %6, i32* @wait)
  %33 = load %struct.erase_info.0*, %struct.erase_info.0** %4, align 8
  %34 = getelementptr inbounds %struct.erase_info.0, %struct.erase_info.0* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @MTD_ERASE_DONE, align 8
  %37 = icmp ne i64 %35, %36
  br i1 %37, label %38, label %46

38:                                               ; preds = %29
  %39 = load %struct.erase_info.0*, %struct.erase_info.0** %4, align 8
  %40 = getelementptr inbounds %struct.erase_info.0, %struct.erase_info.0* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @MTD_ERASE_FAILED, align 8
  %43 = icmp ne i64 %41, %42
  br i1 %43, label %44, label %46

44:                                               ; preds = %38
  %45 = call i32 (...) @schedule()
  br label %46

46:                                               ; preds = %44, %38, %29
  %47 = call i32 @remove_wait_queue(i32* %6, i32* @wait)
  %48 = load i32, i32* @TASK_RUNNING, align 4
  %49 = call i32 @set_current_state(i32 %48)
  %50 = load %struct.erase_info.0*, %struct.erase_info.0** %4, align 8
  %51 = getelementptr inbounds %struct.erase_info.0, %struct.erase_info.0* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @MTD_ERASE_FAILED, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %58

55:                                               ; preds = %46
  %56 = load i32, i32* @EIO, align 4
  %57 = sub nsw i32 0, %56
  br label %59

58:                                               ; preds = %46
  br label %59

59:                                               ; preds = %58, %55
  %60 = phi i32 [ %57, %55 ], [ 0, %58 ]
  store i32 %60, i32* %5, align 4
  br label %61

61:                                               ; preds = %59, %2
  %62 = load i32, i32* %5, align 4
  ret i32 %62
}

declare dso_local i32 @DECLARE_WAITQUEUE(i32, i32) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @set_current_state(i32) #1

declare dso_local i32 @add_wait_queue(i32*, i32*) #1

declare dso_local i32 @schedule(...) #1

declare dso_local i32 @remove_wait_queue(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
