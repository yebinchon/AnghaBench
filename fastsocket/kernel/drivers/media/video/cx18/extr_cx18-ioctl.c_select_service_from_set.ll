; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx18/extr_cx18-ioctl.c_select_service_from_set.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx18/extr_cx18-ioctl.c_select_service_from_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@V4L2_SLICED_VBI_625 = common dso_local global i32 0, align 4
@V4L2_SLICED_VBI_525 = common dso_local global i32 0, align 4
@V4L2_SLICED_CAPTION_525 = common dso_local global i32 0, align 4
@V4L2_SLICED_VPS = common dso_local global i32 0, align 4
@V4L2_SLICED_WSS_625 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32)* @select_service_from_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @select_service_from_set(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load i32, i32* %9, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %4
  %15 = load i32, i32* @V4L2_SLICED_VBI_625, align 4
  br label %18

16:                                               ; preds = %4
  %17 = load i32, i32* @V4L2_SLICED_VBI_525, align 4
  br label %18

18:                                               ; preds = %16, %14
  %19 = phi i32 [ %15, %14 ], [ %17, %16 ]
  store i32 %19, i32* %10, align 4
  %20 = load i32, i32* %8, align 4
  %21 = load i32, i32* %10, align 4
  %22 = and i32 %20, %21
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* %8, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %31, label %25

25:                                               ; preds = %18
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* %9, align 4
  %29 = call i32 @valid_service_line(i32 %26, i32 %27, i32 %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %25, %18
  store i32 0, i32* %5, align 4
  br label %95

32:                                               ; preds = %25
  %33 = load i32, i32* %9, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %46, label %35

35:                                               ; preds = %32
  %36 = load i32, i32* %7, align 4
  %37 = icmp eq i32 %36, 21
  br i1 %37, label %38, label %45

38:                                               ; preds = %35
  %39 = load i32, i32* %8, align 4
  %40 = load i32, i32* @V4L2_SLICED_CAPTION_525, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %38
  %44 = load i32, i32* @V4L2_SLICED_CAPTION_525, align 4
  store i32 %44, i32* %5, align 4
  br label %95

45:                                               ; preds = %38, %35
  br label %77

46:                                               ; preds = %32
  %47 = load i32, i32* %7, align 4
  %48 = icmp eq i32 %47, 16
  br i1 %48, label %49, label %59

49:                                               ; preds = %46
  %50 = load i32, i32* %6, align 4
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %59

52:                                               ; preds = %49
  %53 = load i32, i32* %8, align 4
  %54 = load i32, i32* @V4L2_SLICED_VPS, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %52
  %58 = load i32, i32* @V4L2_SLICED_VPS, align 4
  store i32 %58, i32* %5, align 4
  br label %95

59:                                               ; preds = %52, %49, %46
  %60 = load i32, i32* %7, align 4
  %61 = icmp eq i32 %60, 23
  br i1 %61, label %62, label %72

62:                                               ; preds = %59
  %63 = load i32, i32* %6, align 4
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %72

65:                                               ; preds = %62
  %66 = load i32, i32* %8, align 4
  %67 = load i32, i32* @V4L2_SLICED_WSS_625, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %65
  %71 = load i32, i32* @V4L2_SLICED_WSS_625, align 4
  store i32 %71, i32* %5, align 4
  br label %95

72:                                               ; preds = %65, %62, %59
  %73 = load i32, i32* %7, align 4
  %74 = icmp eq i32 %73, 23
  br i1 %74, label %75, label %76

75:                                               ; preds = %72
  store i32 0, i32* %5, align 4
  br label %95

76:                                               ; preds = %72
  br label %77

77:                                               ; preds = %76, %45
  store i32 0, i32* %11, align 4
  br label %78

78:                                               ; preds = %91, %77
  %79 = load i32, i32* %11, align 4
  %80 = icmp slt i32 %79, 32
  br i1 %80, label %81, label %94

81:                                               ; preds = %78
  %82 = load i32, i32* %11, align 4
  %83 = shl i32 1, %82
  %84 = load i32, i32* %8, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %81
  %88 = load i32, i32* %11, align 4
  %89 = shl i32 1, %88
  store i32 %89, i32* %5, align 4
  br label %95

90:                                               ; preds = %81
  br label %91

91:                                               ; preds = %90
  %92 = load i32, i32* %11, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %11, align 4
  br label %78

94:                                               ; preds = %78
  store i32 0, i32* %5, align 4
  br label %95

95:                                               ; preds = %94, %87, %75, %70, %57, %43, %31
  %96 = load i32, i32* %5, align 4
  ret i32 %96
}

declare dso_local i32 @valid_service_line(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
