; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_w9966.c_w9966_calcscale.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_w9966.c_w9966_calcscale.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32*, i32*, i8*)* @w9966_calcscale to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @w9966_calcscale(i32 %0, i32 %1, i32 %2, i32* %3, i32* %4, i8* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32* %3, i32** %11, align 8
  store i32* %4, i32** %12, align 8
  store i8* %5, i8** %13, align 8
  %18 = load i32, i32* %10, align 4
  %19 = load i32, i32* %9, align 4
  %20 = sub nsw i32 %18, %19
  store i32 %20, i32* %14, align 4
  %21 = load i32*, i32** %12, align 8
  %22 = load i32, i32* %21, align 4
  %23 = load i32*, i32** %11, align 8
  %24 = load i32, i32* %23, align 4
  %25 = sub nsw i32 %22, %24
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %15, align 4
  %27 = load i32, i32* %15, align 4
  %28 = load i32, i32* %8, align 4
  %29 = load i32, i32* %14, align 4
  %30 = call i32 @w9966_findlen(i32 %27, i32 %28, i32 %29)
  store i32 %30, i32* %16, align 4
  %31 = load i32, i32* %16, align 4
  %32 = load i32, i32* %15, align 4
  %33 = sub nsw i32 %31, %32
  store i32 %33, i32* %17, align 4
  %34 = load i32, i32* %16, align 4
  %35 = load i32, i32* %14, align 4
  %36 = icmp sgt i32 %34, %35
  br i1 %36, label %41, label %37

37:                                               ; preds = %6
  %38 = load i32, i32* %16, align 4
  %39 = load i32, i32* %8, align 4
  %40 = icmp slt i32 %38, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %37, %6
  store i32 -1, i32* %7, align 4
  br label %114

42:                                               ; preds = %37
  %43 = load i32, i32* %8, align 4
  %44 = mul nsw i32 64, %43
  %45 = load i32, i32* %16, align 4
  %46 = sdiv i32 %44, %45
  %47 = trunc i32 %46 to i8
  %48 = load i8*, i8** %13, align 8
  store i8 %47, i8* %48, align 1
  %49 = load i8*, i8** %13, align 8
  %50 = load i8, i8* %49, align 1
  %51 = zext i8 %50 to i32
  %52 = icmp eq i32 %51, 64
  br i1 %52, label %53, label %55

53:                                               ; preds = %42
  %54 = load i8*, i8** %13, align 8
  store i8 0, i8* %54, align 1
  br label %61

55:                                               ; preds = %42
  %56 = load i8*, i8** %13, align 8
  %57 = load i8, i8* %56, align 1
  %58 = zext i8 %57 to i32
  %59 = or i32 %58, 128
  %60 = trunc i32 %59 to i8
  store i8 %60, i8* %56, align 1
  br label %61

61:                                               ; preds = %55, %53
  %62 = load i32, i32* %17, align 4
  %63 = sdiv i32 %62, 2
  %64 = load i32*, i32** %11, align 8
  %65 = load i32, i32* %64, align 4
  %66 = sub nsw i32 %65, %63
  store i32 %66, i32* %64, align 4
  %67 = load i32, i32* %17, align 4
  %68 = load i32, i32* %17, align 4
  %69 = sdiv i32 %68, 2
  %70 = sub nsw i32 %67, %69
  %71 = load i32*, i32** %12, align 8
  %72 = load i32, i32* %71, align 4
  %73 = add nsw i32 %72, %70
  store i32 %73, i32* %71, align 4
  %74 = load i32*, i32** %11, align 8
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* %9, align 4
  %77 = icmp slt i32 %75, %76
  br i1 %77, label %78, label %93

78:                                               ; preds = %61
  %79 = load i32, i32* %9, align 4
  %80 = load i32*, i32** %11, align 8
  %81 = load i32, i32* %80, align 4
  %82 = sub nsw i32 %79, %81
  %83 = load i32*, i32** %12, align 8
  %84 = load i32, i32* %83, align 4
  %85 = add nsw i32 %84, %82
  store i32 %85, i32* %83, align 4
  %86 = load i32, i32* %9, align 4
  %87 = load i32*, i32** %11, align 8
  %88 = load i32, i32* %87, align 4
  %89 = sub nsw i32 %86, %88
  %90 = load i32*, i32** %11, align 8
  %91 = load i32, i32* %90, align 4
  %92 = add nsw i32 %91, %89
  store i32 %92, i32* %90, align 4
  br label %93

93:                                               ; preds = %78, %61
  %94 = load i32*, i32** %12, align 8
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* %10, align 4
  %97 = icmp sgt i32 %95, %96
  br i1 %97, label %98, label %113

98:                                               ; preds = %93
  %99 = load i32*, i32** %12, align 8
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* %10, align 4
  %102 = sub nsw i32 %100, %101
  %103 = load i32*, i32** %11, align 8
  %104 = load i32, i32* %103, align 4
  %105 = sub nsw i32 %104, %102
  store i32 %105, i32* %103, align 4
  %106 = load i32*, i32** %12, align 8
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* %10, align 4
  %109 = sub nsw i32 %107, %108
  %110 = load i32*, i32** %12, align 8
  %111 = load i32, i32* %110, align 4
  %112 = sub nsw i32 %111, %109
  store i32 %112, i32* %110, align 4
  br label %113

113:                                              ; preds = %98, %93
  store i32 0, i32* %7, align 4
  br label %114

114:                                              ; preds = %113, %41
  %115 = load i32, i32* %7, align 4
  ret i32 %115
}

declare dso_local i32 @w9966_findlen(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
