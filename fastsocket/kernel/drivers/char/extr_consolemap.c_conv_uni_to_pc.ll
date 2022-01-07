; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_consolemap.c_conv_uni_to_pc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_consolemap.c_conv_uni_to_pc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vc_data = type { i64* }
%struct.uni_pagedir = type { i32*** }

@UNI_DIRECT_MASK = common dso_local global i64 0, align 8
@UNI_DIRECT_BASE = common dso_local global i64 0, align 8
@MAX_GLYPH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @conv_uni_to_pc(%struct.vc_data* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vc_data*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32**, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.uni_pagedir*, align 8
  store %struct.vc_data* %0, %struct.vc_data** %4, align 8
  store i64 %1, i64* %5, align 8
  %10 = load i64, i64* %5, align 8
  %11 = icmp sgt i64 %10, 65535
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  store i32 -4, i32* %3, align 4
  br label %82

13:                                               ; preds = %2
  %14 = load i64, i64* %5, align 8
  %15 = icmp slt i64 %14, 32
  br i1 %15, label %16, label %17

16:                                               ; preds = %13
  store i32 -1, i32* %3, align 4
  br label %82

17:                                               ; preds = %13
  %18 = load i64, i64* %5, align 8
  %19 = icmp eq i64 %18, 65279
  br i1 %19, label %26, label %20

20:                                               ; preds = %17
  %21 = load i64, i64* %5, align 8
  %22 = icmp sge i64 %21, 8203
  br i1 %22, label %23, label %27

23:                                               ; preds = %20
  %24 = load i64, i64* %5, align 8
  %25 = icmp sle i64 %24, 8207
  br i1 %25, label %26, label %27

26:                                               ; preds = %23, %17
  store i32 -2, i32* %3, align 4
  br label %82

27:                                               ; preds = %23, %20
  %28 = load i64, i64* %5, align 8
  %29 = load i64, i64* @UNI_DIRECT_MASK, align 8
  %30 = xor i64 %29, -1
  %31 = and i64 %28, %30
  %32 = load i64, i64* @UNI_DIRECT_BASE, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %39

34:                                               ; preds = %27
  %35 = load i64, i64* %5, align 8
  %36 = load i64, i64* @UNI_DIRECT_MASK, align 8
  %37 = and i64 %35, %36
  %38 = trunc i64 %37 to i32
  store i32 %38, i32* %3, align 4
  br label %82

39:                                               ; preds = %27
  br label %40

40:                                               ; preds = %39
  br label %41

41:                                               ; preds = %40
  br label %42

42:                                               ; preds = %41
  %43 = load %struct.vc_data*, %struct.vc_data** %4, align 8
  %44 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %43, i32 0, i32 0
  %45 = load i64*, i64** %44, align 8
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %42
  store i32 -3, i32* %3, align 4
  br label %82

49:                                               ; preds = %42
  %50 = load %struct.vc_data*, %struct.vc_data** %4, align 8
  %51 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %50, i32 0, i32 0
  %52 = load i64*, i64** %51, align 8
  %53 = load i64, i64* %52, align 8
  %54 = inttoptr i64 %53 to %struct.uni_pagedir*
  store %struct.uni_pagedir* %54, %struct.uni_pagedir** %9, align 8
  %55 = load %struct.uni_pagedir*, %struct.uni_pagedir** %9, align 8
  %56 = getelementptr inbounds %struct.uni_pagedir, %struct.uni_pagedir* %55, i32 0, i32 0
  %57 = load i32***, i32**** %56, align 8
  %58 = load i64, i64* %5, align 8
  %59 = ashr i64 %58, 11
  %60 = getelementptr inbounds i32**, i32*** %57, i64 %59
  %61 = load i32**, i32*** %60, align 8
  store i32** %61, i32*** %7, align 8
  %62 = icmp ne i32** %61, null
  br i1 %62, label %63, label %81

63:                                               ; preds = %49
  %64 = load i32**, i32*** %7, align 8
  %65 = load i64, i64* %5, align 8
  %66 = ashr i64 %65, 6
  %67 = and i64 %66, 31
  %68 = getelementptr inbounds i32*, i32** %64, i64 %67
  %69 = load i32*, i32** %68, align 8
  store i32* %69, i32** %8, align 8
  %70 = icmp ne i32* %69, null
  br i1 %70, label %71, label %81

71:                                               ; preds = %63
  %72 = load i32*, i32** %8, align 8
  %73 = load i64, i64* %5, align 8
  %74 = and i64 %73, 63
  %75 = getelementptr inbounds i32, i32* %72, i64 %74
  %76 = load i32, i32* %75, align 4
  store i32 %76, i32* %6, align 4
  %77 = load i32, i32* @MAX_GLYPH, align 4
  %78 = icmp slt i32 %76, %77
  br i1 %78, label %79, label %81

79:                                               ; preds = %71
  %80 = load i32, i32* %6, align 4
  store i32 %80, i32* %3, align 4
  br label %82

81:                                               ; preds = %71, %63, %49
  store i32 -4, i32* %3, align 4
  br label %82

82:                                               ; preds = %81, %79, %48, %34, %26, %16, %12
  %83 = load i32, i32* %3, align 4
  ret i32 %83
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
