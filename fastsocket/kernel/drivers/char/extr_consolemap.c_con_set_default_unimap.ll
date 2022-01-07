; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_consolemap.c_con_set_default_unimap.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_consolemap.c_con_set_default_unimap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uni_pagedir = type { i64 }
%struct.vc_data = type { i64* }

@dflt = common dso_local global %struct.uni_pagedir* null, align 8
@dfont_unitable = common dso_local global i32* null, align 8
@dfont_unicount = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @con_set_default_unimap(%struct.vc_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vc_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.uni_pagedir*, align 8
  store %struct.vc_data* %0, %struct.vc_data** %3, align 8
  store i32 0, i32* %6, align 4
  %10 = load %struct.uni_pagedir*, %struct.uni_pagedir** @dflt, align 8
  %11 = icmp ne %struct.uni_pagedir* %10, null
  br i1 %11, label %12, label %46

12:                                               ; preds = %1
  %13 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %14 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %13, i32 0, i32 0
  %15 = load i64*, i64** %14, align 8
  %16 = load i64, i64* %15, align 8
  %17 = inttoptr i64 %16 to %struct.uni_pagedir*
  store %struct.uni_pagedir* %17, %struct.uni_pagedir** %9, align 8
  %18 = load %struct.uni_pagedir*, %struct.uni_pagedir** %9, align 8
  %19 = load %struct.uni_pagedir*, %struct.uni_pagedir** @dflt, align 8
  %20 = icmp eq %struct.uni_pagedir* %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %12
  store i32 0, i32* %2, align 4
  br label %121

22:                                               ; preds = %12
  %23 = load %struct.uni_pagedir*, %struct.uni_pagedir** @dflt, align 8
  %24 = getelementptr inbounds %struct.uni_pagedir, %struct.uni_pagedir* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = add nsw i64 %25, 1
  store i64 %26, i64* %24, align 8
  %27 = load %struct.uni_pagedir*, %struct.uni_pagedir** @dflt, align 8
  %28 = ptrtoint %struct.uni_pagedir* %27 to i64
  %29 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %30 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %29, i32 0, i32 0
  %31 = load i64*, i64** %30, align 8
  store i64 %28, i64* %31, align 8
  %32 = load %struct.uni_pagedir*, %struct.uni_pagedir** %9, align 8
  %33 = icmp ne %struct.uni_pagedir* %32, null
  br i1 %33, label %34, label %45

34:                                               ; preds = %22
  %35 = load %struct.uni_pagedir*, %struct.uni_pagedir** %9, align 8
  %36 = getelementptr inbounds %struct.uni_pagedir, %struct.uni_pagedir* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = add nsw i64 %37, -1
  store i64 %38, i64* %36, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %34
  %41 = load %struct.uni_pagedir*, %struct.uni_pagedir** %9, align 8
  %42 = call i32 @con_release_unimap(%struct.uni_pagedir* %41)
  %43 = load %struct.uni_pagedir*, %struct.uni_pagedir** %9, align 8
  %44 = call i32 @kfree(%struct.uni_pagedir* %43)
  br label %45

45:                                               ; preds = %40, %34, %22
  store i32 0, i32* %2, align 4
  br label %121

46:                                               ; preds = %1
  %47 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %48 = call i32 @con_clear_unimap(%struct.vc_data* %47, i32* null)
  store i32 %48, i32* %6, align 4
  %49 = load i32, i32* %6, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %46
  %52 = load i32, i32* %6, align 4
  store i32 %52, i32* %2, align 4
  br label %121

53:                                               ; preds = %46
  %54 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %55 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %54, i32 0, i32 0
  %56 = load i64*, i64** %55, align 8
  %57 = load i64, i64* %56, align 8
  %58 = inttoptr i64 %57 to %struct.uni_pagedir*
  store %struct.uni_pagedir* %58, %struct.uni_pagedir** %9, align 8
  %59 = load i32*, i32** @dfont_unitable, align 8
  store i32* %59, i32** %8, align 8
  store i32 0, i32* %4, align 4
  br label %60

60:                                               ; preds = %88, %53
  %61 = load i32, i32* %4, align 4
  %62 = icmp slt i32 %61, 256
  br i1 %62, label %63, label %91

63:                                               ; preds = %60
  %64 = load i32*, i32** @dfont_unicount, align 8
  %65 = load i32, i32* %4, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %64, i64 %66
  %68 = load i32, i32* %67, align 4
  store i32 %68, i32* %5, align 4
  br label %69

69:                                               ; preds = %84, %63
  %70 = load i32, i32* %5, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %87

72:                                               ; preds = %69
  %73 = load %struct.uni_pagedir*, %struct.uni_pagedir** %9, align 8
  %74 = load i32*, i32** %8, align 8
  %75 = getelementptr inbounds i32, i32* %74, i32 1
  store i32* %75, i32** %8, align 8
  %76 = load i32, i32* %74, align 4
  %77 = load i32, i32* %4, align 4
  %78 = call i32 @con_insert_unipair(%struct.uni_pagedir* %73, i32 %76, i32 %77)
  store i32 %78, i32* %7, align 4
  %79 = load i32, i32* %7, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %72
  %82 = load i32, i32* %7, align 4
  store i32 %82, i32* %6, align 4
  br label %83

83:                                               ; preds = %81, %72
  br label %84

84:                                               ; preds = %83
  %85 = load i32, i32* %5, align 4
  %86 = add nsw i32 %85, -1
  store i32 %86, i32* %5, align 4
  br label %69

87:                                               ; preds = %69
  br label %88

88:                                               ; preds = %87
  %89 = load i32, i32* %4, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %4, align 4
  br label %60

91:                                               ; preds = %60
  %92 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %93 = load %struct.uni_pagedir*, %struct.uni_pagedir** %9, align 8
  %94 = call i64 @con_unify_unimap(%struct.vc_data* %92, %struct.uni_pagedir* %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %103

96:                                               ; preds = %91
  %97 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %98 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %97, i32 0, i32 0
  %99 = load i64*, i64** %98, align 8
  %100 = load i64, i64* %99, align 8
  %101 = inttoptr i64 %100 to %struct.uni_pagedir*
  store %struct.uni_pagedir* %101, %struct.uni_pagedir** @dflt, align 8
  %102 = load i32, i32* %6, align 4
  store i32 %102, i32* %2, align 4
  br label %121

103:                                              ; preds = %91
  store i32 0, i32* %4, align 4
  br label %104

104:                                              ; preds = %112, %103
  %105 = load i32, i32* %4, align 4
  %106 = icmp sle i32 %105, 3
  br i1 %106, label %107, label %115

107:                                              ; preds = %104
  %108 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %109 = load %struct.uni_pagedir*, %struct.uni_pagedir** %9, align 8
  %110 = load i32, i32* %4, align 4
  %111 = call i32 @set_inverse_transl(%struct.vc_data* %108, %struct.uni_pagedir* %109, i32 %110)
  br label %112

112:                                              ; preds = %107
  %113 = load i32, i32* %4, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %4, align 4
  br label %104

115:                                              ; preds = %104
  %116 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %117 = load %struct.uni_pagedir*, %struct.uni_pagedir** %9, align 8
  %118 = call i32 @set_inverse_trans_unicode(%struct.vc_data* %116, %struct.uni_pagedir* %117)
  %119 = load %struct.uni_pagedir*, %struct.uni_pagedir** %9, align 8
  store %struct.uni_pagedir* %119, %struct.uni_pagedir** @dflt, align 8
  %120 = load i32, i32* %6, align 4
  store i32 %120, i32* %2, align 4
  br label %121

121:                                              ; preds = %115, %96, %51, %45, %21
  %122 = load i32, i32* %2, align 4
  ret i32 %122
}

declare dso_local i32 @con_release_unimap(%struct.uni_pagedir*) #1

declare dso_local i32 @kfree(%struct.uni_pagedir*) #1

declare dso_local i32 @con_clear_unimap(%struct.vc_data*, i32*) #1

declare dso_local i32 @con_insert_unipair(%struct.uni_pagedir*, i32, i32) #1

declare dso_local i64 @con_unify_unimap(%struct.vc_data*, %struct.uni_pagedir*) #1

declare dso_local i32 @set_inverse_transl(%struct.vc_data*, %struct.uni_pagedir*, i32) #1

declare dso_local i32 @set_inverse_trans_unicode(%struct.vc_data*, %struct.uni_pagedir*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
