; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_v4l2-common.c_v4l_bound_align_image.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_v4l2-common.c_v4l_bound_align_image.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @v4l_bound_align_image(i32* %0, i32 %1, i32 %2, i32 %3, i32* %4, i32 %5, i32 %6, i32 %7, i32 %8) #0 {
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store i32* %0, i32** %10, align 8
  store i32 %1, i32* %11, align 4
  store i32 %2, i32* %12, align 4
  store i32 %3, i32* %13, align 4
  store i32* %4, i32** %14, align 8
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  store i32 %8, i32* %18, align 4
  %21 = load i32*, i32** %10, align 8
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %11, align 4
  %24 = load i32, i32* %12, align 4
  %25 = load i32, i32* %13, align 4
  %26 = call i32 @clamp_align(i32 %22, i32 %23, i32 %24, i32 %25)
  %27 = load i32*, i32** %10, align 8
  store i32 %26, i32* %27, align 4
  %28 = load i32*, i32** %14, align 8
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %15, align 4
  %31 = load i32, i32* %16, align 4
  %32 = load i32, i32* %17, align 4
  %33 = call i32 @clamp_align(i32 %29, i32 %30, i32 %31, i32 %32)
  %34 = load i32*, i32** %14, align 8
  store i32 %33, i32* %34, align 4
  %35 = load i32, i32* %18, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %9
  br label %105

38:                                               ; preds = %9
  %39 = load i32*, i32** %10, align 8
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @__ffs(i32 %40)
  store i32 %41, i32* %13, align 4
  %42 = load i32*, i32** %14, align 8
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @__ffs(i32 %43)
  store i32 %44, i32* %17, align 4
  %45 = load i32, i32* %13, align 4
  %46 = load i32, i32* %17, align 4
  %47 = add i32 %45, %46
  %48 = load i32, i32* %18, align 4
  %49 = icmp ult i32 %47, %48
  br i1 %49, label %50, label %105

50:                                               ; preds = %38
  %51 = load i32, i32* %12, align 4
  %52 = load i32, i32* %11, align 4
  %53 = sub i32 %52, 1
  %54 = xor i32 %51, %53
  %55 = call i32 @__fls(i32 %54)
  store i32 %55, i32* %19, align 4
  %56 = load i32, i32* %16, align 4
  %57 = load i32, i32* %15, align 4
  %58 = sub i32 %57, 1
  %59 = xor i32 %56, %58
  %60 = call i32 @__fls(i32 %59)
  store i32 %60, i32* %20, align 4
  br label %61

61:                                               ; preds = %98, %50
  %62 = load i32, i32* %17, align 4
  %63 = load i32, i32* %20, align 4
  %64 = icmp uge i32 %62, %63
  br i1 %64, label %73, label %65

65:                                               ; preds = %61
  %66 = load i32, i32* %13, align 4
  %67 = load i32, i32* %17, align 4
  %68 = icmp ule i32 %66, %67
  br i1 %68, label %69, label %85

69:                                               ; preds = %65
  %70 = load i32, i32* %13, align 4
  %71 = load i32, i32* %19, align 4
  %72 = icmp ult i32 %70, %71
  br i1 %72, label %73, label %85

73:                                               ; preds = %69, %61
  %74 = load i32*, i32** %10, align 8
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* %11, align 4
  %77 = load i32, i32* %12, align 4
  %78 = load i32, i32* %13, align 4
  %79 = add i32 %78, 1
  %80 = call i32 @clamp_align(i32 %75, i32 %76, i32 %77, i32 %79)
  %81 = load i32*, i32** %10, align 8
  store i32 %80, i32* %81, align 4
  %82 = load i32*, i32** %10, align 8
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @__ffs(i32 %83)
  store i32 %84, i32* %13, align 4
  br label %97

85:                                               ; preds = %69, %65
  %86 = load i32*, i32** %14, align 8
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* %15, align 4
  %89 = load i32, i32* %16, align 4
  %90 = load i32, i32* %17, align 4
  %91 = add i32 %90, 1
  %92 = call i32 @clamp_align(i32 %87, i32 %88, i32 %89, i32 %91)
  %93 = load i32*, i32** %14, align 8
  store i32 %92, i32* %93, align 4
  %94 = load i32*, i32** %14, align 8
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @__ffs(i32 %95)
  store i32 %96, i32* %17, align 4
  br label %97

97:                                               ; preds = %85, %73
  br label %98

98:                                               ; preds = %97
  %99 = load i32, i32* %17, align 4
  %100 = load i32, i32* %13, align 4
  %101 = add i32 %99, %100
  %102 = load i32, i32* %18, align 4
  %103 = icmp ult i32 %101, %102
  br i1 %103, label %61, label %104

104:                                              ; preds = %98
  br label %105

105:                                              ; preds = %37, %104, %38
  ret void
}

declare dso_local i32 @clamp_align(i32, i32, i32, i32) #1

declare dso_local i32 @__ffs(i32) #1

declare dso_local i32 @__fls(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
