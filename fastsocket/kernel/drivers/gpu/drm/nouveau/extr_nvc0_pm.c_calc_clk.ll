; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nvc0_pm.c_calc_clk.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nvc0_pm.c_calc_clk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.nvc0_pm_clock = type { i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_device*, i32, %struct.nvc0_pm_clock*, i32)* @calc_clk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @calc_clk(%struct.drm_device* %0, i32 %1, %struct.nvc0_pm_clock* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.drm_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.nvc0_pm_clock*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.nvc0_pm_clock* %2, %struct.nvc0_pm_clock** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %15, align 4
  %16 = load i32, i32* %9, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %130

19:                                               ; preds = %4
  %20 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* %9, align 4
  %23 = call i32 @calc_src(%struct.drm_device* %20, i32 %21, i32 %22, i32* %10, i32* %11)
  store i32 %23, i32* %14, align 4
  %24 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* %14, align 4
  %27 = load i32, i32* %9, align 4
  %28 = call i32 @calc_div(%struct.drm_device* %24, i32 %25, i32 %26, i32 %27, i32* %12)
  store i32 %28, i32* %14, align 4
  %29 = load i32, i32* %14, align 4
  %30 = load i32, i32* %9, align 4
  %31 = icmp ne i32 %29, %30
  br i1 %31, label %32, label %56

32:                                               ; preds = %19
  %33 = load i32, i32* %7, align 4
  %34 = shl i32 1, %33
  %35 = and i32 17287, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %56

37:                                               ; preds = %32
  %38 = load i32, i32* %7, align 4
  %39 = icmp slt i32 %38, 7
  br i1 %39, label %40, label %47

40:                                               ; preds = %37
  %41 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %42 = load i32, i32* %7, align 4
  %43 = load i32, i32* %9, align 4
  %44 = load %struct.nvc0_pm_clock*, %struct.nvc0_pm_clock** %8, align 8
  %45 = getelementptr inbounds %struct.nvc0_pm_clock, %struct.nvc0_pm_clock* %44, i32 0, i32 5
  %46 = call i32 @calc_pll(%struct.drm_device* %41, i32 %42, i32 %43, i32* %45)
  store i32 %46, i32* %15, align 4
  br label %50

47:                                               ; preds = %37
  %48 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %49 = call i32 @read_pll(%struct.drm_device* %48, i32 1274080)
  store i32 %49, i32* %15, align 4
  br label %50

50:                                               ; preds = %47, %40
  %51 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %52 = load i32, i32* %7, align 4
  %53 = load i32, i32* %15, align 4
  %54 = load i32, i32* %9, align 4
  %55 = call i32 @calc_div(%struct.drm_device* %51, i32 %52, i32 %53, i32 %54, i32* %13)
  store i32 %55, i32* %15, align 4
  br label %56

56:                                               ; preds = %50, %32, %19
  %57 = load i32, i32* %9, align 4
  %58 = load i32, i32* %14, align 4
  %59 = sub nsw i32 %57, %58
  %60 = call i64 @abs(i32 %59)
  %61 = load i32, i32* %9, align 4
  %62 = load i32, i32* %15, align 4
  %63 = sub nsw i32 %61, %62
  %64 = call i64 @abs(i32 %63)
  %65 = icmp sle i64 %60, %64
  br i1 %65, label %66, label %107

66:                                               ; preds = %56
  %67 = load i32, i32* %10, align 4
  %68 = load %struct.nvc0_pm_clock*, %struct.nvc0_pm_clock** %8, align 8
  %69 = getelementptr inbounds %struct.nvc0_pm_clock, %struct.nvc0_pm_clock* %68, i32 0, i32 0
  store i32 %67, i32* %69, align 4
  %70 = load i32, i32* %11, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %88

72:                                               ; preds = %66
  %73 = load %struct.nvc0_pm_clock*, %struct.nvc0_pm_clock** %8, align 8
  %74 = getelementptr inbounds %struct.nvc0_pm_clock, %struct.nvc0_pm_clock* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = or i32 %75, -2147483648
  store i32 %76, i32* %74, align 4
  %77 = load i32, i32* %11, align 4
  %78 = shl i32 %77, 8
  %79 = load %struct.nvc0_pm_clock*, %struct.nvc0_pm_clock** %8, align 8
  %80 = getelementptr inbounds %struct.nvc0_pm_clock, %struct.nvc0_pm_clock* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = or i32 %81, %78
  store i32 %82, i32* %80, align 4
  %83 = load i32, i32* %11, align 4
  %84 = load %struct.nvc0_pm_clock*, %struct.nvc0_pm_clock** %8, align 8
  %85 = getelementptr inbounds %struct.nvc0_pm_clock, %struct.nvc0_pm_clock* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = or i32 %86, %83
  store i32 %87, i32* %85, align 4
  br label %88

88:                                               ; preds = %72, %66
  %89 = load i32, i32* %12, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %101

91:                                               ; preds = %88
  %92 = load %struct.nvc0_pm_clock*, %struct.nvc0_pm_clock** %8, align 8
  %93 = getelementptr inbounds %struct.nvc0_pm_clock, %struct.nvc0_pm_clock* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 4
  %95 = or i32 %94, -2147483648
  store i32 %95, i32* %93, align 4
  %96 = load i32, i32* %12, align 4
  %97 = load %struct.nvc0_pm_clock*, %struct.nvc0_pm_clock** %8, align 8
  %98 = getelementptr inbounds %struct.nvc0_pm_clock, %struct.nvc0_pm_clock* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 4
  %100 = or i32 %99, %96
  store i32 %100, i32* %98, align 4
  br label %101

101:                                              ; preds = %91, %88
  %102 = load %struct.nvc0_pm_clock*, %struct.nvc0_pm_clock** %8, align 8
  %103 = getelementptr inbounds %struct.nvc0_pm_clock, %struct.nvc0_pm_clock* %102, i32 0, i32 3
  store i32 0, i32* %103, align 4
  %104 = load i32, i32* %14, align 4
  %105 = load %struct.nvc0_pm_clock*, %struct.nvc0_pm_clock** %8, align 8
  %106 = getelementptr inbounds %struct.nvc0_pm_clock, %struct.nvc0_pm_clock* %105, i32 0, i32 4
  store i32 %104, i32* %106, align 4
  br label %129

107:                                              ; preds = %56
  %108 = load i32, i32* %13, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %121

110:                                              ; preds = %107
  %111 = load %struct.nvc0_pm_clock*, %struct.nvc0_pm_clock** %8, align 8
  %112 = getelementptr inbounds %struct.nvc0_pm_clock, %struct.nvc0_pm_clock* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 4
  %114 = or i32 %113, -2147483648
  store i32 %114, i32* %112, align 4
  %115 = load i32, i32* %13, align 4
  %116 = shl i32 %115, 8
  %117 = load %struct.nvc0_pm_clock*, %struct.nvc0_pm_clock** %8, align 8
  %118 = getelementptr inbounds %struct.nvc0_pm_clock, %struct.nvc0_pm_clock* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 4
  %120 = or i32 %119, %116
  store i32 %120, i32* %118, align 4
  br label %121

121:                                              ; preds = %110, %107
  %122 = load i32, i32* %7, align 4
  %123 = shl i32 1, %122
  %124 = load %struct.nvc0_pm_clock*, %struct.nvc0_pm_clock** %8, align 8
  %125 = getelementptr inbounds %struct.nvc0_pm_clock, %struct.nvc0_pm_clock* %124, i32 0, i32 3
  store i32 %123, i32* %125, align 4
  %126 = load i32, i32* %15, align 4
  %127 = load %struct.nvc0_pm_clock*, %struct.nvc0_pm_clock** %8, align 8
  %128 = getelementptr inbounds %struct.nvc0_pm_clock, %struct.nvc0_pm_clock* %127, i32 0, i32 4
  store i32 %126, i32* %128, align 4
  br label %129

129:                                              ; preds = %121, %101
  store i32 0, i32* %5, align 4
  br label %130

130:                                              ; preds = %129, %18
  %131 = load i32, i32* %5, align 4
  ret i32 %131
}

declare dso_local i32 @calc_src(%struct.drm_device*, i32, i32, i32*, i32*) #1

declare dso_local i32 @calc_div(%struct.drm_device*, i32, i32, i32, i32*) #1

declare dso_local i32 @calc_pll(%struct.drm_device*, i32, i32, i32*) #1

declare dso_local i32 @read_pll(%struct.drm_device*, i32) #1

declare dso_local i64 @abs(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
