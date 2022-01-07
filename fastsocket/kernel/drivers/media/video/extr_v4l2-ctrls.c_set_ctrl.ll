; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_v4l2-ctrls.c_set_ctrl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_v4l2-ctrls.c_set_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_ctrl = type { i32, i32, i32, %struct.TYPE_2__, i32, %struct.v4l2_ctrl** }
%struct.TYPE_2__ = type { i32 }

@V4L2_CTRL_FLAG_READ_ONLY = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_ctrl*, i32*)* @set_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_ctrl(%struct.v4l2_ctrl* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.v4l2_ctrl*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.v4l2_ctrl*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.v4l2_ctrl* %0, %struct.v4l2_ctrl** %4, align 8
  store i32* %1, i32** %5, align 8
  %9 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %4, align 8
  %10 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %9, i32 0, i32 5
  %11 = load %struct.v4l2_ctrl**, %struct.v4l2_ctrl*** %10, align 8
  %12 = getelementptr inbounds %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %11, i64 0
  %13 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %12, align 8
  store %struct.v4l2_ctrl* %13, %struct.v4l2_ctrl** %6, align 8
  %14 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %4, align 8
  %15 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @V4L2_CTRL_FLAG_READ_ONLY, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %2
  %21 = load i32, i32* @EACCES, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %77

23:                                               ; preds = %2
  %24 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %4, align 8
  %25 = call i32 @v4l2_ctrl_lock(%struct.v4l2_ctrl* %24)
  store i32 0, i32* %8, align 4
  br label %26

26:                                               ; preds = %51, %23
  %27 = load i32, i32* %8, align 4
  %28 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %6, align 8
  %29 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = icmp slt i32 %27, %30
  br i1 %31, label %32, label %54

32:                                               ; preds = %26
  %33 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %6, align 8
  %34 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %33, i32 0, i32 5
  %35 = load %struct.v4l2_ctrl**, %struct.v4l2_ctrl*** %34, align 8
  %36 = load i32, i32* %8, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %35, i64 %37
  %39 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %38, align 8
  %40 = icmp ne %struct.v4l2_ctrl* %39, null
  br i1 %40, label %41, label %50

41:                                               ; preds = %32
  %42 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %6, align 8
  %43 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %42, i32 0, i32 5
  %44 = load %struct.v4l2_ctrl**, %struct.v4l2_ctrl*** %43, align 8
  %45 = load i32, i32* %8, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %44, i64 %46
  %48 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %47, align 8
  %49 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %48, i32 0, i32 2
  store i32 0, i32* %49, align 8
  br label %50

50:                                               ; preds = %41, %32
  br label %51

51:                                               ; preds = %50
  %52 = load i32, i32* %8, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %8, align 4
  br label %26

54:                                               ; preds = %26
  %55 = load i32*, i32** %5, align 8
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %4, align 8
  %58 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %57, i32 0, i32 4
  store i32 %56, i32* %58, align 8
  %59 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %4, align 8
  %60 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %59, i32 0, i32 2
  store i32 1, i32* %60, align 8
  %61 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %6, align 8
  %62 = call i32 @try_or_set_control_cluster(%struct.v4l2_ctrl* %61, i32 0)
  store i32 %62, i32* %7, align 4
  %63 = load i32, i32* %7, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %68, label %65

65:                                               ; preds = %54
  %66 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %6, align 8
  %67 = call i32 @try_or_set_control_cluster(%struct.v4l2_ctrl* %66, i32 1)
  store i32 %67, i32* %7, align 4
  br label %68

68:                                               ; preds = %65, %54
  %69 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %4, align 8
  %70 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %69, i32 0, i32 3
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load i32*, i32** %5, align 8
  store i32 %72, i32* %73, align 4
  %74 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %4, align 8
  %75 = call i32 @v4l2_ctrl_unlock(%struct.v4l2_ctrl* %74)
  %76 = load i32, i32* %7, align 4
  store i32 %76, i32* %3, align 4
  br label %77

77:                                               ; preds = %68, %20
  %78 = load i32, i32* %3, align 4
  ret i32 %78
}

declare dso_local i32 @v4l2_ctrl_lock(%struct.v4l2_ctrl*) #1

declare dso_local i32 @try_or_set_control_cluster(%struct.v4l2_ctrl*, i32) #1

declare dso_local i32 @v4l2_ctrl_unlock(%struct.v4l2_ctrl*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
