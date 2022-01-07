; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_v4l2-ctrls.c_new_to_user.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_v4l2-ctrls.c_new_to_user.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_ext_control = type { i32, i32, i32, i32 }
%struct.v4l2_ctrl = type { i32, i32, i32, i32, i32 }

@ENOSPC = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_ext_control*, %struct.v4l2_ctrl*)* @new_to_user to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @new_to_user(%struct.v4l2_ext_control* %0, %struct.v4l2_ctrl* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.v4l2_ext_control*, align 8
  %5 = alloca %struct.v4l2_ctrl*, align 8
  %6 = alloca i32, align 4
  store %struct.v4l2_ext_control* %0, %struct.v4l2_ext_control** %4, align 8
  store %struct.v4l2_ctrl* %1, %struct.v4l2_ctrl** %5, align 8
  %7 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %5, align 8
  %8 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  switch i32 %9, label %53 [
    i32 128, label %10
    i32 129, label %47
  ]

10:                                               ; preds = %2
  %11 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %5, align 8
  %12 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @strlen(i32 %13)
  store i32 %14, i32* %6, align 4
  %15 = load %struct.v4l2_ext_control*, %struct.v4l2_ext_control** %4, align 8
  %16 = getelementptr inbounds %struct.v4l2_ext_control, %struct.v4l2_ext_control* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* %6, align 4
  %19 = add nsw i32 %18, 1
  %20 = icmp slt i32 %17, %19
  br i1 %20, label %21, label %30

21:                                               ; preds = %10
  %22 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %5, align 8
  %23 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %22, i32 0, i32 4
  %24 = load i32, i32* %23, align 4
  %25 = add nsw i32 %24, 1
  %26 = load %struct.v4l2_ext_control*, %struct.v4l2_ext_control** %4, align 8
  %27 = getelementptr inbounds %struct.v4l2_ext_control, %struct.v4l2_ext_control* %26, i32 0, i32 3
  store i32 %25, i32* %27, align 4
  %28 = load i32, i32* @ENOSPC, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %3, align 4
  br label %60

30:                                               ; preds = %10
  %31 = load %struct.v4l2_ext_control*, %struct.v4l2_ext_control** %4, align 8
  %32 = getelementptr inbounds %struct.v4l2_ext_control, %struct.v4l2_ext_control* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %5, align 8
  %35 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %6, align 4
  %38 = add nsw i32 %37, 1
  %39 = call i32 @copy_to_user(i32 %33, i32 %36, i32 %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %30
  %42 = load i32, i32* @EFAULT, align 4
  %43 = sub nsw i32 0, %42
  br label %45

44:                                               ; preds = %30
  br label %45

45:                                               ; preds = %44, %41
  %46 = phi i32 [ %43, %41 ], [ 0, %44 ]
  store i32 %46, i32* %3, align 4
  br label %60

47:                                               ; preds = %2
  %48 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %5, align 8
  %49 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.v4l2_ext_control*, %struct.v4l2_ext_control** %4, align 8
  %52 = getelementptr inbounds %struct.v4l2_ext_control, %struct.v4l2_ext_control* %51, i32 0, i32 1
  store i32 %50, i32* %52, align 4
  br label %59

53:                                               ; preds = %2
  %54 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %5, align 8
  %55 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.v4l2_ext_control*, %struct.v4l2_ext_control** %4, align 8
  %58 = getelementptr inbounds %struct.v4l2_ext_control, %struct.v4l2_ext_control* %57, i32 0, i32 0
  store i32 %56, i32* %58, align 4
  br label %59

59:                                               ; preds = %53, %47
  store i32 0, i32* %3, align 4
  br label %60

60:                                               ; preds = %59, %45, %21
  %61 = load i32, i32* %3, align 4
  ret i32 %61
}

declare dso_local i32 @strlen(i32) #1

declare dso_local i32 @copy_to_user(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
