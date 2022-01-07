; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_v4l2-common.c_v4l2_prio_max.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_v4l2-common.c_v4l2_prio_max.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_prio_state = type { i32* }

@V4L2_PRIORITY_RECORD = common dso_local global i64 0, align 8
@V4L2_PRIORITY_INTERACTIVE = common dso_local global i64 0, align 8
@V4L2_PRIORITY_BACKGROUND = common dso_local global i64 0, align 8
@V4L2_PRIORITY_UNSET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @v4l2_prio_max(%struct.v4l2_prio_state* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.v4l2_prio_state*, align 8
  store %struct.v4l2_prio_state* %0, %struct.v4l2_prio_state** %3, align 8
  %4 = load %struct.v4l2_prio_state*, %struct.v4l2_prio_state** %3, align 8
  %5 = getelementptr inbounds %struct.v4l2_prio_state, %struct.v4l2_prio_state* %4, i32 0, i32 0
  %6 = load i32*, i32** %5, align 8
  %7 = load i64, i64* @V4L2_PRIORITY_RECORD, align 8
  %8 = getelementptr inbounds i32, i32* %6, i64 %7
  %9 = call i64 @atomic_read(i32* %8)
  %10 = icmp sgt i64 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %1
  %12 = load i64, i64* @V4L2_PRIORITY_RECORD, align 8
  %13 = trunc i64 %12 to i32
  store i32 %13, i32* %2, align 4
  br label %38

14:                                               ; preds = %1
  %15 = load %struct.v4l2_prio_state*, %struct.v4l2_prio_state** %3, align 8
  %16 = getelementptr inbounds %struct.v4l2_prio_state, %struct.v4l2_prio_state* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = load i64, i64* @V4L2_PRIORITY_INTERACTIVE, align 8
  %19 = getelementptr inbounds i32, i32* %17, i64 %18
  %20 = call i64 @atomic_read(i32* %19)
  %21 = icmp sgt i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %14
  %23 = load i64, i64* @V4L2_PRIORITY_INTERACTIVE, align 8
  %24 = trunc i64 %23 to i32
  store i32 %24, i32* %2, align 4
  br label %38

25:                                               ; preds = %14
  %26 = load %struct.v4l2_prio_state*, %struct.v4l2_prio_state** %3, align 8
  %27 = getelementptr inbounds %struct.v4l2_prio_state, %struct.v4l2_prio_state* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = load i64, i64* @V4L2_PRIORITY_BACKGROUND, align 8
  %30 = getelementptr inbounds i32, i32* %28, i64 %29
  %31 = call i64 @atomic_read(i32* %30)
  %32 = icmp sgt i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %25
  %34 = load i64, i64* @V4L2_PRIORITY_BACKGROUND, align 8
  %35 = trunc i64 %34 to i32
  store i32 %35, i32* %2, align 4
  br label %38

36:                                               ; preds = %25
  %37 = load i32, i32* @V4L2_PRIORITY_UNSET, align 4
  store i32 %37, i32* %2, align 4
  br label %38

38:                                               ; preds = %36, %33, %22, %11
  %39 = load i32, i32* %2, align 4
  ret i32 %39
}

declare dso_local i64 @atomic_read(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
