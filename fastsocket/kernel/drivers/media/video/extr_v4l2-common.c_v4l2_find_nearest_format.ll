; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_v4l2-common.c_v4l2_find_nearest_format.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_v4l2-common.c_v4l2_find_nearest_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_frmsize_discrete = type { i64, i64 }
%struct.v4l2_discrete_probe = type { i32, %struct.v4l2_frmsize_discrete* }

@UINT_MAX = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.v4l2_frmsize_discrete* @v4l2_find_nearest_format(%struct.v4l2_discrete_probe* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.v4l2_frmsize_discrete*, align 8
  %5 = alloca %struct.v4l2_discrete_probe*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.v4l2_frmsize_discrete*, align 8
  %12 = alloca %struct.v4l2_frmsize_discrete*, align 8
  store %struct.v4l2_discrete_probe* %0, %struct.v4l2_discrete_probe** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %13 = load i64, i64* @UINT_MAX, align 8
  store i64 %13, i64* %10, align 8
  store %struct.v4l2_frmsize_discrete* null, %struct.v4l2_frmsize_discrete** %12, align 8
  %14 = load %struct.v4l2_discrete_probe*, %struct.v4l2_discrete_probe** %5, align 8
  %15 = icmp ne %struct.v4l2_discrete_probe* %14, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %3
  %17 = load %struct.v4l2_frmsize_discrete*, %struct.v4l2_frmsize_discrete** %12, align 8
  store %struct.v4l2_frmsize_discrete* %17, %struct.v4l2_frmsize_discrete** %4, align 8
  br label %60

18:                                               ; preds = %3
  store i32 0, i32* %8, align 4
  %19 = load %struct.v4l2_discrete_probe*, %struct.v4l2_discrete_probe** %5, align 8
  %20 = getelementptr inbounds %struct.v4l2_discrete_probe, %struct.v4l2_discrete_probe* %19, i32 0, i32 1
  %21 = load %struct.v4l2_frmsize_discrete*, %struct.v4l2_frmsize_discrete** %20, align 8
  store %struct.v4l2_frmsize_discrete* %21, %struct.v4l2_frmsize_discrete** %11, align 8
  br label %22

22:                                               ; preds = %53, %18
  %23 = load i32, i32* %8, align 4
  %24 = load %struct.v4l2_discrete_probe*, %struct.v4l2_discrete_probe** %5, align 8
  %25 = getelementptr inbounds %struct.v4l2_discrete_probe, %struct.v4l2_discrete_probe* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp slt i32 %23, %26
  br i1 %27, label %28, label %58

28:                                               ; preds = %22
  %29 = load %struct.v4l2_frmsize_discrete*, %struct.v4l2_frmsize_discrete** %11, align 8
  %30 = getelementptr inbounds %struct.v4l2_frmsize_discrete, %struct.v4l2_frmsize_discrete* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* %6, align 8
  %33 = sub nsw i64 %31, %32
  %34 = call i64 @abs(i64 %33)
  %35 = load %struct.v4l2_frmsize_discrete*, %struct.v4l2_frmsize_discrete** %11, align 8
  %36 = getelementptr inbounds %struct.v4l2_frmsize_discrete, %struct.v4l2_frmsize_discrete* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* %7, align 8
  %39 = sub nsw i64 %37, %38
  %40 = call i64 @abs(i64 %39)
  %41 = add nsw i64 %34, %40
  store i64 %41, i64* %9, align 8
  %42 = load i64, i64* %9, align 8
  %43 = load i64, i64* %10, align 8
  %44 = icmp slt i64 %42, %43
  br i1 %44, label %45, label %48

45:                                               ; preds = %28
  %46 = load i64, i64* %9, align 8
  store i64 %46, i64* %10, align 8
  %47 = load %struct.v4l2_frmsize_discrete*, %struct.v4l2_frmsize_discrete** %11, align 8
  store %struct.v4l2_frmsize_discrete* %47, %struct.v4l2_frmsize_discrete** %12, align 8
  br label %48

48:                                               ; preds = %45, %28
  %49 = load i64, i64* %9, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %52, label %51

51:                                               ; preds = %48
  br label %58

52:                                               ; preds = %48
  br label %53

53:                                               ; preds = %52
  %54 = load i32, i32* %8, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %8, align 4
  %56 = load %struct.v4l2_frmsize_discrete*, %struct.v4l2_frmsize_discrete** %11, align 8
  %57 = getelementptr inbounds %struct.v4l2_frmsize_discrete, %struct.v4l2_frmsize_discrete* %56, i32 1
  store %struct.v4l2_frmsize_discrete* %57, %struct.v4l2_frmsize_discrete** %11, align 8
  br label %22

58:                                               ; preds = %51, %22
  %59 = load %struct.v4l2_frmsize_discrete*, %struct.v4l2_frmsize_discrete** %12, align 8
  store %struct.v4l2_frmsize_discrete* %59, %struct.v4l2_frmsize_discrete** %4, align 8
  br label %60

60:                                               ; preds = %58, %16
  %61 = load %struct.v4l2_frmsize_discrete*, %struct.v4l2_frmsize_discrete** %4, align 8
  ret %struct.v4l2_frmsize_discrete* %61
}

declare dso_local i64 @abs(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
