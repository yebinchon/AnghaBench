; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_bios.c_lvds_dvo_timing_equal_size.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_bios.c_lvds_dvo_timing_equal_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lvds_dvo_timing = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lvds_dvo_timing*, %struct.lvds_dvo_timing*)* @lvds_dvo_timing_equal_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lvds_dvo_timing_equal_size(%struct.lvds_dvo_timing* %0, %struct.lvds_dvo_timing* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.lvds_dvo_timing*, align 8
  %5 = alloca %struct.lvds_dvo_timing*, align 8
  store %struct.lvds_dvo_timing* %0, %struct.lvds_dvo_timing** %4, align 8
  store %struct.lvds_dvo_timing* %1, %struct.lvds_dvo_timing** %5, align 8
  %6 = load %struct.lvds_dvo_timing*, %struct.lvds_dvo_timing** %4, align 8
  %7 = getelementptr inbounds %struct.lvds_dvo_timing, %struct.lvds_dvo_timing* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load %struct.lvds_dvo_timing*, %struct.lvds_dvo_timing** %5, align 8
  %10 = getelementptr inbounds %struct.lvds_dvo_timing, %struct.lvds_dvo_timing* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %8, %11
  br i1 %12, label %21, label %13

13:                                               ; preds = %2
  %14 = load %struct.lvds_dvo_timing*, %struct.lvds_dvo_timing** %4, align 8
  %15 = getelementptr inbounds %struct.lvds_dvo_timing, %struct.lvds_dvo_timing* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.lvds_dvo_timing*, %struct.lvds_dvo_timing** %5, align 8
  %18 = getelementptr inbounds %struct.lvds_dvo_timing, %struct.lvds_dvo_timing* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %16, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %13, %2
  store i32 0, i32* %3, align 4
  br label %118

22:                                               ; preds = %13
  %23 = load %struct.lvds_dvo_timing*, %struct.lvds_dvo_timing** %4, align 8
  %24 = getelementptr inbounds %struct.lvds_dvo_timing, %struct.lvds_dvo_timing* %23, i32 0, i32 2
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.lvds_dvo_timing*, %struct.lvds_dvo_timing** %5, align 8
  %27 = getelementptr inbounds %struct.lvds_dvo_timing, %struct.lvds_dvo_timing* %26, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %25, %28
  br i1 %29, label %38, label %30

30:                                               ; preds = %22
  %31 = load %struct.lvds_dvo_timing*, %struct.lvds_dvo_timing** %4, align 8
  %32 = getelementptr inbounds %struct.lvds_dvo_timing, %struct.lvds_dvo_timing* %31, i32 0, i32 3
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.lvds_dvo_timing*, %struct.lvds_dvo_timing** %5, align 8
  %35 = getelementptr inbounds %struct.lvds_dvo_timing, %struct.lvds_dvo_timing* %34, i32 0, i32 3
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %33, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %30, %22
  store i32 0, i32* %3, align 4
  br label %118

39:                                               ; preds = %30
  %40 = load %struct.lvds_dvo_timing*, %struct.lvds_dvo_timing** %4, align 8
  %41 = getelementptr inbounds %struct.lvds_dvo_timing, %struct.lvds_dvo_timing* %40, i32 0, i32 4
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.lvds_dvo_timing*, %struct.lvds_dvo_timing** %5, align 8
  %44 = getelementptr inbounds %struct.lvds_dvo_timing, %struct.lvds_dvo_timing* %43, i32 0, i32 4
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %42, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %39
  store i32 0, i32* %3, align 4
  br label %118

48:                                               ; preds = %39
  %49 = load %struct.lvds_dvo_timing*, %struct.lvds_dvo_timing** %4, align 8
  %50 = getelementptr inbounds %struct.lvds_dvo_timing, %struct.lvds_dvo_timing* %49, i32 0, i32 5
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.lvds_dvo_timing*, %struct.lvds_dvo_timing** %5, align 8
  %53 = getelementptr inbounds %struct.lvds_dvo_timing, %struct.lvds_dvo_timing* %52, i32 0, i32 5
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %51, %54
  br i1 %55, label %64, label %56

56:                                               ; preds = %48
  %57 = load %struct.lvds_dvo_timing*, %struct.lvds_dvo_timing** %4, align 8
  %58 = getelementptr inbounds %struct.lvds_dvo_timing, %struct.lvds_dvo_timing* %57, i32 0, i32 6
  %59 = load i64, i64* %58, align 8
  %60 = load %struct.lvds_dvo_timing*, %struct.lvds_dvo_timing** %5, align 8
  %61 = getelementptr inbounds %struct.lvds_dvo_timing, %struct.lvds_dvo_timing* %60, i32 0, i32 6
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %59, %62
  br i1 %63, label %64, label %65

64:                                               ; preds = %56, %48
  store i32 0, i32* %3, align 4
  br label %118

65:                                               ; preds = %56
  %66 = load %struct.lvds_dvo_timing*, %struct.lvds_dvo_timing** %4, align 8
  %67 = getelementptr inbounds %struct.lvds_dvo_timing, %struct.lvds_dvo_timing* %66, i32 0, i32 7
  %68 = load i64, i64* %67, align 8
  %69 = load %struct.lvds_dvo_timing*, %struct.lvds_dvo_timing** %5, align 8
  %70 = getelementptr inbounds %struct.lvds_dvo_timing, %struct.lvds_dvo_timing* %69, i32 0, i32 7
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %68, %71
  br i1 %72, label %81, label %73

73:                                               ; preds = %65
  %74 = load %struct.lvds_dvo_timing*, %struct.lvds_dvo_timing** %4, align 8
  %75 = getelementptr inbounds %struct.lvds_dvo_timing, %struct.lvds_dvo_timing* %74, i32 0, i32 8
  %76 = load i64, i64* %75, align 8
  %77 = load %struct.lvds_dvo_timing*, %struct.lvds_dvo_timing** %5, align 8
  %78 = getelementptr inbounds %struct.lvds_dvo_timing, %struct.lvds_dvo_timing* %77, i32 0, i32 8
  %79 = load i64, i64* %78, align 8
  %80 = icmp ne i64 %76, %79
  br i1 %80, label %81, label %82

81:                                               ; preds = %73, %65
  store i32 0, i32* %3, align 4
  br label %118

82:                                               ; preds = %73
  %83 = load %struct.lvds_dvo_timing*, %struct.lvds_dvo_timing** %4, align 8
  %84 = getelementptr inbounds %struct.lvds_dvo_timing, %struct.lvds_dvo_timing* %83, i32 0, i32 9
  %85 = load i64, i64* %84, align 8
  %86 = load %struct.lvds_dvo_timing*, %struct.lvds_dvo_timing** %5, align 8
  %87 = getelementptr inbounds %struct.lvds_dvo_timing, %struct.lvds_dvo_timing* %86, i32 0, i32 9
  %88 = load i64, i64* %87, align 8
  %89 = icmp ne i64 %85, %88
  br i1 %89, label %90, label %91

90:                                               ; preds = %82
  store i32 0, i32* %3, align 4
  br label %118

91:                                               ; preds = %82
  %92 = load %struct.lvds_dvo_timing*, %struct.lvds_dvo_timing** %4, align 8
  %93 = getelementptr inbounds %struct.lvds_dvo_timing, %struct.lvds_dvo_timing* %92, i32 0, i32 10
  %94 = load i64, i64* %93, align 8
  %95 = load %struct.lvds_dvo_timing*, %struct.lvds_dvo_timing** %5, align 8
  %96 = getelementptr inbounds %struct.lvds_dvo_timing, %struct.lvds_dvo_timing* %95, i32 0, i32 10
  %97 = load i64, i64* %96, align 8
  %98 = icmp ne i64 %94, %97
  br i1 %98, label %99, label %100

99:                                               ; preds = %91
  store i32 0, i32* %3, align 4
  br label %118

100:                                              ; preds = %91
  %101 = load %struct.lvds_dvo_timing*, %struct.lvds_dvo_timing** %4, align 8
  %102 = getelementptr inbounds %struct.lvds_dvo_timing, %struct.lvds_dvo_timing* %101, i32 0, i32 11
  %103 = load i64, i64* %102, align 8
  %104 = load %struct.lvds_dvo_timing*, %struct.lvds_dvo_timing** %5, align 8
  %105 = getelementptr inbounds %struct.lvds_dvo_timing, %struct.lvds_dvo_timing* %104, i32 0, i32 11
  %106 = load i64, i64* %105, align 8
  %107 = icmp ne i64 %103, %106
  br i1 %107, label %116, label %108

108:                                              ; preds = %100
  %109 = load %struct.lvds_dvo_timing*, %struct.lvds_dvo_timing** %4, align 8
  %110 = getelementptr inbounds %struct.lvds_dvo_timing, %struct.lvds_dvo_timing* %109, i32 0, i32 12
  %111 = load i64, i64* %110, align 8
  %112 = load %struct.lvds_dvo_timing*, %struct.lvds_dvo_timing** %5, align 8
  %113 = getelementptr inbounds %struct.lvds_dvo_timing, %struct.lvds_dvo_timing* %112, i32 0, i32 12
  %114 = load i64, i64* %113, align 8
  %115 = icmp ne i64 %111, %114
  br i1 %115, label %116, label %117

116:                                              ; preds = %108, %100
  store i32 0, i32* %3, align 4
  br label %118

117:                                              ; preds = %108
  store i32 1, i32* %3, align 4
  br label %118

118:                                              ; preds = %117, %116, %99, %90, %81, %64, %47, %38, %21
  %119 = load i32, i32* %3, align 4
  ret i32 %119
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
