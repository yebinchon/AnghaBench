; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/uvc/extr_uvc_driver.c_uvc_simplify_fraction.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/uvc/extr_uvc_driver.c_uvc_simplify_fraction.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GFP_KERNEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @uvc_simplify_fraction(i32* %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %15 = load i32, i32* %7, align 4
  %16 = zext i32 %15 to i64
  %17 = mul i64 %16, 4
  %18 = trunc i64 %17 to i32
  %19 = load i32, i32* @GFP_KERNEL, align 4
  %20 = call i32* @kmalloc(i32 %18, i32 %19)
  store i32* %20, i32** %9, align 8
  %21 = load i32*, i32** %9, align 8
  %22 = icmp eq i32* %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %4
  br label %103

24:                                               ; preds = %4
  %25 = load i32*, i32** %5, align 8
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %10, align 4
  %27 = load i32*, i32** %6, align 8
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %11, align 4
  store i32 0, i32* %14, align 4
  br label %29

29:                                               ; preds = %72, %24
  %30 = load i32, i32* %14, align 4
  %31 = load i32, i32* %7, align 4
  %32 = icmp ult i32 %30, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %29
  %34 = load i32, i32* %11, align 4
  %35 = icmp ne i32 %34, 0
  br label %36

36:                                               ; preds = %33, %29
  %37 = phi i1 [ false, %29 ], [ %35, %33 ]
  br i1 %37, label %38, label %75

38:                                               ; preds = %36
  %39 = load i32, i32* %10, align 4
  %40 = load i32, i32* %11, align 4
  %41 = udiv i32 %39, %40
  %42 = load i32*, i32** %9, align 8
  %43 = load i32, i32* %14, align 4
  %44 = zext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  store i32 %41, i32* %45, align 4
  %46 = load i32*, i32** %9, align 8
  %47 = load i32, i32* %14, align 4
  %48 = zext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* %8, align 4
  %52 = icmp uge i32 %50, %51
  br i1 %52, label %53, label %60

53:                                               ; preds = %38
  %54 = load i32, i32* %14, align 4
  %55 = icmp ult i32 %54, 2
  br i1 %55, label %56, label %59

56:                                               ; preds = %53
  %57 = load i32, i32* %14, align 4
  %58 = add i32 %57, 1
  store i32 %58, i32* %14, align 4
  br label %59

59:                                               ; preds = %56, %53
  br label %75

60:                                               ; preds = %38
  %61 = load i32, i32* %10, align 4
  %62 = load i32*, i32** %9, align 8
  %63 = load i32, i32* %14, align 4
  %64 = zext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %62, i64 %64
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* %11, align 4
  %68 = mul i32 %66, %67
  %69 = sub i32 %61, %68
  store i32 %69, i32* %12, align 4
  %70 = load i32, i32* %11, align 4
  store i32 %70, i32* %10, align 4
  %71 = load i32, i32* %12, align 4
  store i32 %71, i32* %11, align 4
  br label %72

72:                                               ; preds = %60
  %73 = load i32, i32* %14, align 4
  %74 = add i32 %73, 1
  store i32 %74, i32* %14, align 4
  br label %29

75:                                               ; preds = %59, %36
  store i32 0, i32* %10, align 4
  store i32 1, i32* %11, align 4
  %76 = load i32, i32* %14, align 4
  store i32 %76, i32* %13, align 4
  br label %77

77:                                               ; preds = %93, %75
  %78 = load i32, i32* %13, align 4
  %79 = icmp ugt i32 %78, 0
  br i1 %79, label %80, label %96

80:                                               ; preds = %77
  %81 = load i32, i32* %11, align 4
  store i32 %81, i32* %12, align 4
  %82 = load i32*, i32** %9, align 8
  %83 = load i32, i32* %13, align 4
  %84 = sub i32 %83, 1
  %85 = zext i32 %84 to i64
  %86 = getelementptr inbounds i32, i32* %82, i64 %85
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* %11, align 4
  %89 = mul i32 %87, %88
  %90 = load i32, i32* %10, align 4
  %91 = add i32 %89, %90
  store i32 %91, i32* %11, align 4
  %92 = load i32, i32* %12, align 4
  store i32 %92, i32* %10, align 4
  br label %93

93:                                               ; preds = %80
  %94 = load i32, i32* %13, align 4
  %95 = add i32 %94, -1
  store i32 %95, i32* %13, align 4
  br label %77

96:                                               ; preds = %77
  %97 = load i32, i32* %11, align 4
  %98 = load i32*, i32** %5, align 8
  store i32 %97, i32* %98, align 4
  %99 = load i32, i32* %10, align 4
  %100 = load i32*, i32** %6, align 8
  store i32 %99, i32* %100, align 4
  %101 = load i32*, i32** %9, align 8
  %102 = call i32 @kfree(i32* %101)
  br label %103

103:                                              ; preds = %96, %23
  ret void
}

declare dso_local i32* @kmalloc(i32, i32) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
