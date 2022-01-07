; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_cpia.c_valid_mode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_cpia.c_valid_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@VIDEO_PALETTE_YUV422 = common dso_local global i64 0, align 8
@VIDEO_PALETTE_YUYV = common dso_local global i64 0, align 8
@colorspace_conv = common dso_local global i64 0, align 8
@VIDEO_PALETTE_GREY = common dso_local global i64 0, align 8
@VIDEO_PALETTE_RGB555 = common dso_local global i64 0, align 8
@VIDEO_PALETTE_RGB565 = common dso_local global i64 0, align 8
@VIDEO_PALETTE_RGB24 = common dso_local global i64 0, align 8
@VIDEO_PALETTE_RGB32 = common dso_local global i64 0, align 8
@VIDEO_PALETTE_UYVY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i64)* @valid_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @valid_mode(i64 %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  %6 = load i64, i64* %4, align 8
  %7 = load i64, i64* @VIDEO_PALETTE_YUV422, align 8
  %8 = icmp eq i64 %6, %7
  br i1 %8, label %9, label %12

9:                                                ; preds = %2
  %10 = load i64, i64* %5, align 8
  %11 = icmp eq i64 %10, 16
  br i1 %11, label %19, label %12

12:                                               ; preds = %9, %2
  %13 = load i64, i64* %4, align 8
  %14 = load i64, i64* @VIDEO_PALETTE_YUYV, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %20

16:                                               ; preds = %12
  %17 = load i64, i64* %5, align 8
  %18 = icmp eq i64 %17, 16
  br i1 %18, label %19, label %20

19:                                               ; preds = %16, %9
  store i32 1, i32* %3, align 4
  br label %71

20:                                               ; preds = %16, %12
  %21 = load i64, i64* @colorspace_conv, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %70

23:                                               ; preds = %20
  %24 = load i64, i64* %4, align 8
  %25 = load i64, i64* @VIDEO_PALETTE_GREY, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %23
  %28 = load i64, i64* %5, align 8
  %29 = icmp eq i64 %28, 8
  br i1 %29, label %67, label %30

30:                                               ; preds = %27, %23
  %31 = load i64, i64* %4, align 8
  %32 = load i64, i64* @VIDEO_PALETTE_RGB555, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %30
  %35 = load i64, i64* %5, align 8
  %36 = icmp eq i64 %35, 16
  br i1 %36, label %67, label %37

37:                                               ; preds = %34, %30
  %38 = load i64, i64* %4, align 8
  %39 = load i64, i64* @VIDEO_PALETTE_RGB565, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %44

41:                                               ; preds = %37
  %42 = load i64, i64* %5, align 8
  %43 = icmp eq i64 %42, 16
  br i1 %43, label %67, label %44

44:                                               ; preds = %41, %37
  %45 = load i64, i64* %4, align 8
  %46 = load i64, i64* @VIDEO_PALETTE_RGB24, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %51

48:                                               ; preds = %44
  %49 = load i64, i64* %5, align 8
  %50 = icmp eq i64 %49, 24
  br i1 %50, label %67, label %51

51:                                               ; preds = %48, %44
  %52 = load i64, i64* %4, align 8
  %53 = load i64, i64* @VIDEO_PALETTE_RGB32, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %58

55:                                               ; preds = %51
  %56 = load i64, i64* %5, align 8
  %57 = icmp eq i64 %56, 32
  br i1 %57, label %67, label %58

58:                                               ; preds = %55, %51
  %59 = load i64, i64* %4, align 8
  %60 = load i64, i64* @VIDEO_PALETTE_UYVY, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %65

62:                                               ; preds = %58
  %63 = load i64, i64* %5, align 8
  %64 = icmp eq i64 %63, 16
  br label %65

65:                                               ; preds = %62, %58
  %66 = phi i1 [ false, %58 ], [ %64, %62 ]
  br label %67

67:                                               ; preds = %65, %55, %48, %41, %34, %27
  %68 = phi i1 [ true, %55 ], [ true, %48 ], [ true, %41 ], [ true, %34 ], [ true, %27 ], [ %66, %65 ]
  %69 = zext i1 %68 to i32
  store i32 %69, i32* %3, align 4
  br label %71

70:                                               ; preds = %20
  store i32 0, i32* %3, align 4
  br label %71

71:                                               ; preds = %70, %67, %19
  %72 = load i32, i32* %3, align 4
  ret i32 %72
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
