; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_v4l2-ctrls.c_cur_to_user.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_v4l2-ctrls.c_cur_to_user.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_ext_control = type { i32, i32, i32, i32 }
%struct.v4l2_ctrl = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }

@ENOSPC = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_ext_control*, %struct.v4l2_ctrl*)* @cur_to_user to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cur_to_user(%struct.v4l2_ext_control* %0, %struct.v4l2_ctrl* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.v4l2_ext_control*, align 8
  %5 = alloca %struct.v4l2_ctrl*, align 8
  %6 = alloca i32, align 4
  store %struct.v4l2_ext_control* %0, %struct.v4l2_ext_control** %4, align 8
  store %struct.v4l2_ctrl* %1, %struct.v4l2_ctrl** %5, align 8
  %7 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %5, align 8
  %8 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  switch i32 %9, label %54 [
    i32 128, label %10
    i32 129, label %47
  ]

10:                                               ; preds = %2
  %11 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %5, align 8
  %12 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @strlen(i32 %14)
  store i32 %15, i32* %6, align 4
  %16 = load %struct.v4l2_ext_control*, %struct.v4l2_ext_control** %4, align 8
  %17 = getelementptr inbounds %struct.v4l2_ext_control, %struct.v4l2_ext_control* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* %6, align 4
  %20 = add nsw i32 %19, 1
  %21 = icmp slt i32 %18, %20
  br i1 %21, label %22, label %29

22:                                               ; preds = %10
  %23 = load i32, i32* %6, align 4
  %24 = add nsw i32 %23, 1
  %25 = load %struct.v4l2_ext_control*, %struct.v4l2_ext_control** %4, align 8
  %26 = getelementptr inbounds %struct.v4l2_ext_control, %struct.v4l2_ext_control* %25, i32 0, i32 3
  store i32 %24, i32* %26, align 4
  %27 = load i32, i32* @ENOSPC, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  br label %62

29:                                               ; preds = %10
  %30 = load %struct.v4l2_ext_control*, %struct.v4l2_ext_control** %4, align 8
  %31 = getelementptr inbounds %struct.v4l2_ext_control, %struct.v4l2_ext_control* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %5, align 8
  %34 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %6, align 4
  %38 = add nsw i32 %37, 1
  %39 = call i32 @copy_to_user(i32 %32, i32 %36, i32 %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %29
  %42 = load i32, i32* @EFAULT, align 4
  %43 = sub nsw i32 0, %42
  br label %45

44:                                               ; preds = %29
  br label %45

45:                                               ; preds = %44, %41
  %46 = phi i32 [ %43, %41 ], [ 0, %44 ]
  store i32 %46, i32* %3, align 4
  br label %62

47:                                               ; preds = %2
  %48 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %5, align 8
  %49 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.v4l2_ext_control*, %struct.v4l2_ext_control** %4, align 8
  %53 = getelementptr inbounds %struct.v4l2_ext_control, %struct.v4l2_ext_control* %52, i32 0, i32 1
  store i32 %51, i32* %53, align 4
  br label %61

54:                                               ; preds = %2
  %55 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %5, align 8
  %56 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.v4l2_ext_control*, %struct.v4l2_ext_control** %4, align 8
  %60 = getelementptr inbounds %struct.v4l2_ext_control, %struct.v4l2_ext_control* %59, i32 0, i32 0
  store i32 %58, i32* %60, align 4
  br label %61

61:                                               ; preds = %54, %47
  store i32 0, i32* %3, align 4
  br label %62

62:                                               ; preds = %61, %45, %22
  %63 = load i32, i32* %3, align 4
  ret i32 %63
}

declare dso_local i32 @strlen(i32) #1

declare dso_local i32 @copy_to_user(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
