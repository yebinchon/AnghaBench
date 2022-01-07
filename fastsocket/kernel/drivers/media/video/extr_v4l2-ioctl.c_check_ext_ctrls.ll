; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_v4l2-ioctl.c_check_ext_ctrls.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_v4l2-ioctl.c_check_ext_ctrls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_ext_controls = type { i64, i64, i64, %struct.TYPE_2__*, i64* }
%struct.TYPE_2__ = type { i32, i64* }

@V4L2_CID_PRIVATE_BASE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_ext_controls*, i32)* @check_ext_ctrls to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_ext_ctrls(%struct.v4l2_ext_controls* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.v4l2_ext_controls*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.v4l2_ext_controls* %0, %struct.v4l2_ext_controls** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.v4l2_ext_controls*, %struct.v4l2_ext_controls** %4, align 8
  %8 = getelementptr inbounds %struct.v4l2_ext_controls, %struct.v4l2_ext_controls* %7, i32 0, i32 4
  %9 = load i64*, i64** %8, align 8
  %10 = getelementptr inbounds i64, i64* %9, i64 1
  store i64 0, i64* %10, align 8
  %11 = load %struct.v4l2_ext_controls*, %struct.v4l2_ext_controls** %4, align 8
  %12 = getelementptr inbounds %struct.v4l2_ext_controls, %struct.v4l2_ext_controls* %11, i32 0, i32 4
  %13 = load i64*, i64** %12, align 8
  %14 = getelementptr inbounds i64, i64* %13, i64 0
  store i64 0, i64* %14, align 8
  store i64 0, i64* %6, align 8
  br label %15

15:                                               ; preds = %30, %2
  %16 = load i64, i64* %6, align 8
  %17 = load %struct.v4l2_ext_controls*, %struct.v4l2_ext_controls** %4, align 8
  %18 = getelementptr inbounds %struct.v4l2_ext_controls, %struct.v4l2_ext_controls* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ult i64 %16, %19
  br i1 %20, label %21, label %33

21:                                               ; preds = %15
  %22 = load %struct.v4l2_ext_controls*, %struct.v4l2_ext_controls** %4, align 8
  %23 = getelementptr inbounds %struct.v4l2_ext_controls, %struct.v4l2_ext_controls* %22, i32 0, i32 3
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = load i64, i64* %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 1
  %28 = load i64*, i64** %27, align 8
  %29 = getelementptr inbounds i64, i64* %28, i64 0
  store i64 0, i64* %29, align 8
  br label %30

30:                                               ; preds = %21
  %31 = load i64, i64* %6, align 8
  %32 = add i64 %31, 1
  store i64 %32, i64* %6, align 8
  br label %15

33:                                               ; preds = %15
  %34 = load i32, i32* %5, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %43, label %36

36:                                               ; preds = %33
  %37 = load %struct.v4l2_ext_controls*, %struct.v4l2_ext_controls** %4, align 8
  %38 = getelementptr inbounds %struct.v4l2_ext_controls, %struct.v4l2_ext_controls* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @V4L2_CID_PRIVATE_BASE, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %36
  store i32 0, i32* %3, align 4
  br label %72

43:                                               ; preds = %36, %33
  store i64 0, i64* %6, align 8
  br label %44

44:                                               ; preds = %68, %43
  %45 = load i64, i64* %6, align 8
  %46 = load %struct.v4l2_ext_controls*, %struct.v4l2_ext_controls** %4, align 8
  %47 = getelementptr inbounds %struct.v4l2_ext_controls, %struct.v4l2_ext_controls* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp ult i64 %45, %48
  br i1 %49, label %50, label %71

50:                                               ; preds = %44
  %51 = load %struct.v4l2_ext_controls*, %struct.v4l2_ext_controls** %4, align 8
  %52 = getelementptr inbounds %struct.v4l2_ext_controls, %struct.v4l2_ext_controls* %51, i32 0, i32 3
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = load i64, i64* %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = call i64 @V4L2_CTRL_ID2CLASS(i32 %57)
  %59 = load %struct.v4l2_ext_controls*, %struct.v4l2_ext_controls** %4, align 8
  %60 = getelementptr inbounds %struct.v4l2_ext_controls, %struct.v4l2_ext_controls* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %58, %61
  br i1 %62, label %63, label %67

63:                                               ; preds = %50
  %64 = load i64, i64* %6, align 8
  %65 = load %struct.v4l2_ext_controls*, %struct.v4l2_ext_controls** %4, align 8
  %66 = getelementptr inbounds %struct.v4l2_ext_controls, %struct.v4l2_ext_controls* %65, i32 0, i32 2
  store i64 %64, i64* %66, align 8
  store i32 0, i32* %3, align 4
  br label %72

67:                                               ; preds = %50
  br label %68

68:                                               ; preds = %67
  %69 = load i64, i64* %6, align 8
  %70 = add i64 %69, 1
  store i64 %70, i64* %6, align 8
  br label %44

71:                                               ; preds = %44
  store i32 1, i32* %3, align 4
  br label %72

72:                                               ; preds = %71, %63, %42
  %73 = load i32, i32* %3, align 4
  ret i32 %73
}

declare dso_local i64 @V4L2_CTRL_ID2CLASS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
