; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/usbvideo/extr_quickcam_messenger.c_qcm_hsv2rgb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/usbvideo/extr_quickcam_messenger.c_qcm_hsv2rgb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32, i32*, i32*, i32*)* @qcm_hsv2rgb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qcm_hsv2rgb(i32 %0, i32 %1, i32 %2, i32* %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  store i32* %5, i32** %12, align 8
  %21 = load i32, i32* %7, align 4
  store i32 %21, i32* %15, align 4
  %22 = load i32, i32* %8, align 4
  %23 = sub nsw i32 %22, 32768
  %24 = mul nsw i32 %23, 2
  store i32 %24, i32* %16, align 4
  %25 = load i32, i32* %9, align 4
  store i32 %25, i32* %17, align 4
  %26 = load i32, i32* %8, align 4
  %27 = icmp slt i32 %26, 32768
  br i1 %27, label %28, label %35

28:                                               ; preds = %6
  %29 = load i32, i32* %9, align 4
  %30 = load i32*, i32** %10, align 8
  store i32 %29, i32* %30, align 4
  %31 = load i32, i32* %9, align 4
  %32 = load i32*, i32** %11, align 8
  store i32 %31, i32* %32, align 4
  %33 = load i32, i32* %9, align 4
  %34 = load i32*, i32** %12, align 8
  store i32 %33, i32* %34, align 4
  br label %127

35:                                               ; preds = %6
  %36 = load i32, i32* %9, align 4
  %37 = icmp sle i32 %36, 8191
  br i1 %37, label %38, label %42

38:                                               ; preds = %35
  %39 = load i32*, i32** %10, align 8
  store i32 0, i32* %39, align 4
  %40 = load i32*, i32** %11, align 8
  store i32 0, i32* %40, align 4
  %41 = load i32*, i32** %12, align 8
  store i32 0, i32* %41, align 4
  br label %127

42:                                               ; preds = %35
  %43 = load i32, i32* %15, align 4
  %44 = add nsw i32 %43, 10923
  %45 = and i32 %44, 65535
  store i32 %45, i32* %13, align 4
  %46 = load i32, i32* %13, align 4
  %47 = mul i32 %46, 3
  %48 = lshr i32 %47, 16
  store i32 %48, i32* %13, align 4
  %49 = load i32, i32* %13, align 4
  %50 = mul i32 %49, 21845
  %51 = load i32, i32* %7, align 4
  %52 = sub i32 %51, %50
  store i32 %52, i32* %7, align 4
  %53 = load i32, i32* %7, align 4
  store i32 %53, i32* %15, align 4
  %54 = load i32, i32* %15, align 4
  %55 = mul nsw i32 %54, 3
  store i32 %55, i32* %15, align 4
  %56 = load i32, i32* %17, align 4
  %57 = load i32, i32* %16, align 4
  %58 = mul i32 %56, %57
  %59 = lshr i32 %58, 16
  store i32 %59, i32* %14, align 4
  %60 = load i32, i32* %17, align 4
  %61 = load i32, i32* %14, align 4
  %62 = sub i32 %60, %61
  store i32 %62, i32* %18, align 4
  %63 = load i32, i32* %15, align 4
  %64 = icmp sge i32 %63, 0
  br i1 %64, label %65, label %96

65:                                               ; preds = %42
  %66 = load i32, i32* %17, align 4
  %67 = load i32, i32* %14, align 4
  %68 = load i32, i32* %15, align 4
  %69 = sub nsw i32 32769, %68
  %70 = mul i32 %67, %69
  %71 = lshr i32 %70, 15
  %72 = sub i32 %66, %71
  store i32 %72, i32* %19, align 4
  %73 = load i32, i32* %13, align 4
  switch i32 %73, label %95 [
    i32 0, label %74
    i32 1, label %81
    i32 2, label %88
  ]

74:                                               ; preds = %65
  %75 = load i32, i32* %17, align 4
  %76 = load i32*, i32** %10, align 8
  store i32 %75, i32* %76, align 4
  %77 = load i32, i32* %19, align 4
  %78 = load i32*, i32** %11, align 8
  store i32 %77, i32* %78, align 4
  %79 = load i32, i32* %18, align 4
  %80 = load i32*, i32** %12, align 8
  store i32 %79, i32* %80, align 4
  br label %95

81:                                               ; preds = %65
  %82 = load i32, i32* %18, align 4
  %83 = load i32*, i32** %10, align 8
  store i32 %82, i32* %83, align 4
  %84 = load i32, i32* %17, align 4
  %85 = load i32*, i32** %11, align 8
  store i32 %84, i32* %85, align 4
  %86 = load i32, i32* %19, align 4
  %87 = load i32*, i32** %12, align 8
  store i32 %86, i32* %87, align 4
  br label %95

88:                                               ; preds = %65
  %89 = load i32, i32* %19, align 4
  %90 = load i32*, i32** %10, align 8
  store i32 %89, i32* %90, align 4
  %91 = load i32, i32* %18, align 4
  %92 = load i32*, i32** %11, align 8
  store i32 %91, i32* %92, align 4
  %93 = load i32, i32* %17, align 4
  %94 = load i32*, i32** %12, align 8
  store i32 %93, i32* %94, align 4
  br label %95

95:                                               ; preds = %65, %88, %81, %74
  br label %127

96:                                               ; preds = %42
  %97 = load i32, i32* %17, align 4
  %98 = load i32, i32* %14, align 4
  %99 = load i32, i32* %15, align 4
  %100 = add nsw i32 32769, %99
  %101 = mul i32 %98, %100
  %102 = lshr i32 %101, 15
  %103 = sub i32 %97, %102
  store i32 %103, i32* %20, align 4
  %104 = load i32, i32* %13, align 4
  switch i32 %104, label %126 [
    i32 0, label %105
    i32 1, label %112
    i32 2, label %119
  ]

105:                                              ; preds = %96
  %106 = load i32, i32* %17, align 4
  %107 = load i32*, i32** %10, align 8
  store i32 %106, i32* %107, align 4
  %108 = load i32, i32* %18, align 4
  %109 = load i32*, i32** %11, align 8
  store i32 %108, i32* %109, align 4
  %110 = load i32, i32* %20, align 4
  %111 = load i32*, i32** %12, align 8
  store i32 %110, i32* %111, align 4
  br label %126

112:                                              ; preds = %96
  %113 = load i32, i32* %20, align 4
  %114 = load i32*, i32** %10, align 8
  store i32 %113, i32* %114, align 4
  %115 = load i32, i32* %17, align 4
  %116 = load i32*, i32** %11, align 8
  store i32 %115, i32* %116, align 4
  %117 = load i32, i32* %18, align 4
  %118 = load i32*, i32** %12, align 8
  store i32 %117, i32* %118, align 4
  br label %126

119:                                              ; preds = %96
  %120 = load i32, i32* %18, align 4
  %121 = load i32*, i32** %10, align 8
  store i32 %120, i32* %121, align 4
  %122 = load i32, i32* %20, align 4
  %123 = load i32*, i32** %11, align 8
  store i32 %122, i32* %123, align 4
  %124 = load i32, i32* %17, align 4
  %125 = load i32*, i32** %12, align 8
  store i32 %124, i32* %125, align 4
  br label %126

126:                                              ; preds = %96, %119, %112, %105
  br label %127

127:                                              ; preds = %28, %38, %126, %95
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
