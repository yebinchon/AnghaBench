; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_consolemap.c_con_insert_unipair.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_consolemap.c_con_insert_unipair.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uni_pagedir = type { i32***, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uni_pagedir*, i32, i32)* @con_insert_unipair to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @con_insert_unipair(%struct.uni_pagedir* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.uni_pagedir*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32**, align 8
  %11 = alloca i32*, align 8
  store %struct.uni_pagedir* %0, %struct.uni_pagedir** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %12 = load %struct.uni_pagedir*, %struct.uni_pagedir** %5, align 8
  %13 = getelementptr inbounds %struct.uni_pagedir, %struct.uni_pagedir* %12, i32 0, i32 0
  %14 = load i32***, i32**** %13, align 8
  %15 = load i32, i32* %6, align 4
  %16 = ashr i32 %15, 11
  store i32 %16, i32* %9, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i32**, i32*** %14, i64 %17
  %19 = load i32**, i32*** %18, align 8
  store i32** %19, i32*** %10, align 8
  %20 = icmp ne i32** %19, null
  br i1 %20, label %49, label %21

21:                                               ; preds = %3
  %22 = load i32, i32* @GFP_KERNEL, align 4
  %23 = call i8* @kmalloc(i32 256, i32 %22)
  %24 = bitcast i8* %23 to i32**
  %25 = load %struct.uni_pagedir*, %struct.uni_pagedir** %5, align 8
  %26 = getelementptr inbounds %struct.uni_pagedir, %struct.uni_pagedir* %25, i32 0, i32 0
  %27 = load i32***, i32**** %26, align 8
  %28 = load i32, i32* %9, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32**, i32*** %27, i64 %29
  store i32** %24, i32*** %30, align 8
  store i32** %24, i32*** %10, align 8
  %31 = load i32**, i32*** %10, align 8
  %32 = icmp ne i32** %31, null
  br i1 %32, label %36, label %33

33:                                               ; preds = %21
  %34 = load i32, i32* @ENOMEM, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %4, align 4
  br label %89

36:                                               ; preds = %21
  store i32 0, i32* %8, align 4
  br label %37

37:                                               ; preds = %45, %36
  %38 = load i32, i32* %8, align 4
  %39 = icmp slt i32 %38, 32
  br i1 %39, label %40, label %48

40:                                               ; preds = %37
  %41 = load i32**, i32*** %10, align 8
  %42 = load i32, i32* %8, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32*, i32** %41, i64 %43
  store i32* null, i32** %44, align 8
  br label %45

45:                                               ; preds = %40
  %46 = load i32, i32* %8, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %8, align 4
  br label %37

48:                                               ; preds = %37
  br label %49

49:                                               ; preds = %48, %3
  %50 = load i32**, i32*** %10, align 8
  %51 = load i32, i32* %6, align 4
  %52 = ashr i32 %51, 6
  %53 = and i32 %52, 31
  store i32 %53, i32* %9, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32*, i32** %50, i64 %54
  %56 = load i32*, i32** %55, align 8
  store i32* %56, i32** %11, align 8
  %57 = icmp ne i32* %56, null
  br i1 %57, label %74, label %58

58:                                               ; preds = %49
  %59 = load i32, i32* @GFP_KERNEL, align 4
  %60 = call i8* @kmalloc(i32 256, i32 %59)
  %61 = bitcast i8* %60 to i32*
  %62 = load i32**, i32*** %10, align 8
  %63 = load i32, i32* %9, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32*, i32** %62, i64 %64
  store i32* %61, i32** %65, align 8
  store i32* %61, i32** %11, align 8
  %66 = load i32*, i32** %11, align 8
  %67 = icmp ne i32* %66, null
  br i1 %67, label %71, label %68

68:                                               ; preds = %58
  %69 = load i32, i32* @ENOMEM, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %4, align 4
  br label %89

71:                                               ; preds = %58
  %72 = load i32*, i32** %11, align 8
  %73 = call i32 @memset(i32* %72, i32 255, i32 256)
  br label %74

74:                                               ; preds = %71, %49
  %75 = load i32, i32* %7, align 4
  %76 = load i32*, i32** %11, align 8
  %77 = load i32, i32* %6, align 4
  %78 = and i32 %77, 63
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %76, i64 %79
  store i32 %75, i32* %80, align 4
  %81 = load i32, i32* %7, align 4
  %82 = shl i32 %81, 20
  %83 = load i32, i32* %6, align 4
  %84 = add nsw i32 %82, %83
  %85 = load %struct.uni_pagedir*, %struct.uni_pagedir** %5, align 8
  %86 = getelementptr inbounds %struct.uni_pagedir, %struct.uni_pagedir* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 8
  %88 = add nsw i32 %87, %84
  store i32 %88, i32* %86, align 8
  store i32 0, i32* %4, align 4
  br label %89

89:                                               ; preds = %74, %68, %33
  %90 = load i32, i32* %4, align 4
  ret i32 %90
}

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
