; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_consolemap.c_set_inverse_trans_unicode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_consolemap.c_set_inverse_trans_unicode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vc_data = type { i32 }
%struct.uni_pagedir = type { i32*, i32*** }

@MAX_GLYPH = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vc_data*, %struct.uni_pagedir*)* @set_inverse_trans_unicode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_inverse_trans_unicode(%struct.vc_data* %0, %struct.uni_pagedir* %1) #0 {
  %3 = alloca %struct.vc_data*, align 8
  %4 = alloca %struct.uni_pagedir*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32**, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  store %struct.vc_data* %0, %struct.vc_data** %3, align 8
  store %struct.uni_pagedir* %1, %struct.uni_pagedir** %4, align 8
  %12 = load %struct.uni_pagedir*, %struct.uni_pagedir** %4, align 8
  %13 = icmp ne %struct.uni_pagedir* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %2
  br label %115

15:                                               ; preds = %2
  %16 = load %struct.uni_pagedir*, %struct.uni_pagedir** %4, align 8
  %17 = getelementptr inbounds %struct.uni_pagedir, %struct.uni_pagedir* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  store i32* %18, i32** %11, align 8
  %19 = load i32*, i32** %11, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %34, label %21

21:                                               ; preds = %15
  %22 = load i32, i32* @MAX_GLYPH, align 4
  %23 = sext i32 %22 to i64
  %24 = mul i64 %23, 4
  %25 = trunc i64 %24 to i32
  %26 = load i32, i32* @GFP_KERNEL, align 4
  %27 = call i32* @kmalloc(i32 %25, i32 %26)
  %28 = load %struct.uni_pagedir*, %struct.uni_pagedir** %4, align 8
  %29 = getelementptr inbounds %struct.uni_pagedir, %struct.uni_pagedir* %28, i32 0, i32 0
  store i32* %27, i32** %29, align 8
  store i32* %27, i32** %11, align 8
  %30 = load i32*, i32** %11, align 8
  %31 = icmp ne i32* %30, null
  br i1 %31, label %33, label %32

32:                                               ; preds = %21
  br label %115

33:                                               ; preds = %21
  br label %34

34:                                               ; preds = %33, %15
  %35 = load i32*, i32** %11, align 8
  %36 = load i32, i32* @MAX_GLYPH, align 4
  %37 = sext i32 %36 to i64
  %38 = mul i64 %37, 4
  %39 = trunc i64 %38 to i32
  %40 = call i32 @memset(i32* %35, i32 0, i32 %39)
  store i32 0, i32* %5, align 4
  br label %41

41:                                               ; preds = %112, %34
  %42 = load i32, i32* %5, align 4
  %43 = icmp slt i32 %42, 32
  br i1 %43, label %44, label %115

44:                                               ; preds = %41
  %45 = load %struct.uni_pagedir*, %struct.uni_pagedir** %4, align 8
  %46 = getelementptr inbounds %struct.uni_pagedir, %struct.uni_pagedir* %45, i32 0, i32 1
  %47 = load i32***, i32**** %46, align 8
  %48 = load i32, i32* %5, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32**, i32*** %47, i64 %49
  %51 = load i32**, i32*** %50, align 8
  store i32** %51, i32*** %9, align 8
  %52 = load i32**, i32*** %9, align 8
  %53 = icmp ne i32** %52, null
  br i1 %53, label %55, label %54

54:                                               ; preds = %44
  br label %112

55:                                               ; preds = %44
  store i32 0, i32* %6, align 4
  br label %56

56:                                               ; preds = %108, %55
  %57 = load i32, i32* %6, align 4
  %58 = icmp slt i32 %57, 32
  br i1 %58, label %59, label %111

59:                                               ; preds = %56
  %60 = load i32**, i32*** %9, align 8
  %61 = load i32, i32* %6, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32*, i32** %60, i64 %62
  %64 = load i32*, i32** %63, align 8
  store i32* %64, i32** %10, align 8
  %65 = load i32*, i32** %10, align 8
  %66 = icmp ne i32* %65, null
  br i1 %66, label %68, label %67

67:                                               ; preds = %59
  br label %108

68:                                               ; preds = %59
  store i32 0, i32* %7, align 4
  br label %69

69:                                               ; preds = %104, %68
  %70 = load i32, i32* %7, align 4
  %71 = icmp slt i32 %70, 64
  br i1 %71, label %72, label %107

72:                                               ; preds = %69
  %73 = load i32*, i32** %10, align 8
  %74 = load i32, i32* %7, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %73, i64 %75
  %77 = load i32, i32* %76, align 4
  store i32 %77, i32* %8, align 4
  %78 = load i32, i32* %8, align 4
  %79 = icmp sge i32 %78, 0
  br i1 %79, label %80, label %103

80:                                               ; preds = %72
  %81 = load i32, i32* %8, align 4
  %82 = load i32, i32* @MAX_GLYPH, align 4
  %83 = icmp slt i32 %81, %82
  br i1 %83, label %84, label %103

84:                                               ; preds = %80
  %85 = load i32*, i32** %11, align 8
  %86 = load i32, i32* %8, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i32, i32* %85, i64 %87
  %89 = load i32, i32* %88, align 4
  %90 = icmp slt i32 %89, 32
  br i1 %90, label %91, label %103

91:                                               ; preds = %84
  %92 = load i32, i32* %5, align 4
  %93 = shl i32 %92, 11
  %94 = load i32, i32* %6, align 4
  %95 = shl i32 %94, 6
  %96 = add nsw i32 %93, %95
  %97 = load i32, i32* %7, align 4
  %98 = add nsw i32 %96, %97
  %99 = load i32*, i32** %11, align 8
  %100 = load i32, i32* %8, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i32, i32* %99, i64 %101
  store i32 %98, i32* %102, align 4
  br label %103

103:                                              ; preds = %91, %84, %80, %72
  br label %104

104:                                              ; preds = %103
  %105 = load i32, i32* %7, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %7, align 4
  br label %69

107:                                              ; preds = %69
  br label %108

108:                                              ; preds = %107, %67
  %109 = load i32, i32* %6, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %6, align 4
  br label %56

111:                                              ; preds = %56
  br label %112

112:                                              ; preds = %111, %54
  %113 = load i32, i32* %5, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %5, align 4
  br label %41

115:                                              ; preds = %14, %32, %41
  ret void
}

declare dso_local i32* @kmalloc(i32, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
