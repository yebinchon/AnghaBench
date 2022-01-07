; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_consolemap.c_con_clear_unimap.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_consolemap.c_con_clear_unimap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uni_pagedir = type { i32, i64, i64 }
%struct.vc_data = type { i64* }
%struct.unimapinit = type { i32 }

@EIO = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@dflt = common dso_local global %struct.uni_pagedir* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @con_clear_unimap(%struct.vc_data* %0, %struct.unimapinit* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vc_data*, align 8
  %5 = alloca %struct.unimapinit*, align 8
  %6 = alloca %struct.uni_pagedir*, align 8
  %7 = alloca %struct.uni_pagedir*, align 8
  store %struct.vc_data* %0, %struct.vc_data** %4, align 8
  store %struct.unimapinit* %1, %struct.unimapinit** %5, align 8
  %8 = load %struct.vc_data*, %struct.vc_data** %4, align 8
  %9 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %8, i32 0, i32 0
  %10 = load i64*, i64** %9, align 8
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to %struct.uni_pagedir*
  store %struct.uni_pagedir* %12, %struct.uni_pagedir** %6, align 8
  %13 = load %struct.uni_pagedir*, %struct.uni_pagedir** %6, align 8
  %14 = icmp ne %struct.uni_pagedir* %13, null
  br i1 %14, label %15, label %23

15:                                               ; preds = %2
  %16 = load %struct.uni_pagedir*, %struct.uni_pagedir** %6, align 8
  %17 = getelementptr inbounds %struct.uni_pagedir, %struct.uni_pagedir* %16, i32 0, i32 2
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %15
  %21 = load i32, i32* @EIO, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %71

23:                                               ; preds = %15, %2
  %24 = load %struct.uni_pagedir*, %struct.uni_pagedir** %6, align 8
  %25 = icmp ne %struct.uni_pagedir* %24, null
  br i1 %25, label %26, label %32

26:                                               ; preds = %23
  %27 = load %struct.uni_pagedir*, %struct.uni_pagedir** %6, align 8
  %28 = getelementptr inbounds %struct.uni_pagedir, %struct.uni_pagedir* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = add nsw i32 %29, -1
  store i32 %30, i32* %28, align 8
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %56

32:                                               ; preds = %26, %23
  %33 = load i32, i32* @GFP_KERNEL, align 4
  %34 = call %struct.uni_pagedir* @kzalloc(i32 24, i32 %33)
  store %struct.uni_pagedir* %34, %struct.uni_pagedir** %7, align 8
  %35 = load %struct.uni_pagedir*, %struct.uni_pagedir** %7, align 8
  %36 = icmp ne %struct.uni_pagedir* %35, null
  br i1 %36, label %48, label %37

37:                                               ; preds = %32
  %38 = load %struct.uni_pagedir*, %struct.uni_pagedir** %6, align 8
  %39 = icmp ne %struct.uni_pagedir* %38, null
  br i1 %39, label %40, label %45

40:                                               ; preds = %37
  %41 = load %struct.uni_pagedir*, %struct.uni_pagedir** %6, align 8
  %42 = getelementptr inbounds %struct.uni_pagedir, %struct.uni_pagedir* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %42, align 8
  br label %45

45:                                               ; preds = %40, %37
  %46 = load i32, i32* @ENOMEM, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %3, align 4
  br label %71

48:                                               ; preds = %32
  %49 = load %struct.uni_pagedir*, %struct.uni_pagedir** %7, align 8
  %50 = getelementptr inbounds %struct.uni_pagedir, %struct.uni_pagedir* %49, i32 0, i32 0
  store i32 1, i32* %50, align 8
  %51 = load %struct.uni_pagedir*, %struct.uni_pagedir** %7, align 8
  %52 = ptrtoint %struct.uni_pagedir* %51 to i64
  %53 = load %struct.vc_data*, %struct.vc_data** %4, align 8
  %54 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %53, i32 0, i32 0
  %55 = load i64*, i64** %54, align 8
  store i64 %52, i64* %55, align 8
  br label %70

56:                                               ; preds = %26
  %57 = load %struct.uni_pagedir*, %struct.uni_pagedir** %6, align 8
  %58 = load %struct.uni_pagedir*, %struct.uni_pagedir** @dflt, align 8
  %59 = icmp eq %struct.uni_pagedir* %57, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %56
  store %struct.uni_pagedir* null, %struct.uni_pagedir** @dflt, align 8
  br label %61

61:                                               ; preds = %60, %56
  %62 = load %struct.uni_pagedir*, %struct.uni_pagedir** %6, align 8
  %63 = getelementptr inbounds %struct.uni_pagedir, %struct.uni_pagedir* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %63, align 8
  %66 = load %struct.uni_pagedir*, %struct.uni_pagedir** %6, align 8
  %67 = getelementptr inbounds %struct.uni_pagedir, %struct.uni_pagedir* %66, i32 0, i32 1
  store i64 0, i64* %67, align 8
  %68 = load %struct.uni_pagedir*, %struct.uni_pagedir** %6, align 8
  %69 = call i32 @con_release_unimap(%struct.uni_pagedir* %68)
  br label %70

70:                                               ; preds = %61, %48
  store i32 0, i32* %3, align 4
  br label %71

71:                                               ; preds = %70, %45, %20
  %72 = load i32, i32* %3, align 4
  ret i32 %72
}

declare dso_local %struct.uni_pagedir* @kzalloc(i32, i32) #1

declare dso_local i32 @con_release_unimap(%struct.uni_pagedir*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
