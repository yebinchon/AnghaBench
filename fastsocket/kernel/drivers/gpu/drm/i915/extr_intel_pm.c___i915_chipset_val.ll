; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_pm.c___i915_chipset_val.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_pm.c___i915_chipset_val.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i64, i64, i64 }
%struct.drm_i915_private = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i64, i64, i64, i64 }

@jiffies = common dso_local global i32 0, align 4
@mchdev_lock = common dso_local global i32 0, align 4
@DMIEC = common dso_local global i32 0, align 4
@DDREC = common dso_local global i32 0, align 4
@CSIEC = common dso_local global i32 0, align 4
@cparams = common dso_local global %struct.TYPE_5__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.drm_i915_private*)* @__i915_chipset_val to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @__i915_chipset_val(%struct.drm_i915_private* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.drm_i915_private*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %3, align 8
  store i64 0, i64* %10, align 8
  store i64 0, i64* %11, align 8
  %15 = load i32, i32* @jiffies, align 4
  %16 = call i64 @jiffies_to_msecs(i32 %15)
  store i64 %16, i64* %12, align 8
  %17 = call i32 @assert_spin_locked(i32* @mchdev_lock)
  %18 = load i64, i64* %12, align 8
  %19 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %20 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = sub i64 %18, %22
  store i64 %23, i64* %13, align 8
  %24 = load i64, i64* %13, align 8
  %25 = icmp ule i64 %24, 10
  br i1 %25, label %26, label %31

26:                                               ; preds = %1
  %27 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %28 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  store i64 %30, i64* %2, align 8
  br label %137

31:                                               ; preds = %1
  %32 = load i32, i32* @DMIEC, align 4
  %33 = call i64 @I915_READ(i32 %32)
  store i64 %33, i64* %7, align 8
  %34 = load i32, i32* @DDREC, align 4
  %35 = call i64 @I915_READ(i32 %34)
  store i64 %35, i64* %8, align 8
  %36 = load i32, i32* @CSIEC, align 4
  %37 = call i64 @I915_READ(i32 %36)
  store i64 %37, i64* %9, align 8
  %38 = load i64, i64* %7, align 8
  %39 = load i64, i64* %8, align 8
  %40 = add nsw i64 %38, %39
  %41 = load i64, i64* %9, align 8
  %42 = add nsw i64 %40, %41
  store i64 %42, i64* %4, align 8
  %43 = load i64, i64* %4, align 8
  %44 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %45 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  %48 = icmp slt i64 %43, %47
  br i1 %48, label %49, label %58

49:                                               ; preds = %31
  %50 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %51 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 2
  %53 = load i64, i64* %52, align 8
  %54 = sub i64 -1, %53
  store i64 %54, i64* %5, align 8
  %55 = load i64, i64* %4, align 8
  %56 = load i64, i64* %5, align 8
  %57 = add nsw i64 %56, %55
  store i64 %57, i64* %5, align 8
  br label %65

58:                                               ; preds = %31
  %59 = load i64, i64* %4, align 8
  %60 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %61 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 2
  %63 = load i64, i64* %62, align 8
  %64 = sub nsw i64 %59, %63
  store i64 %64, i64* %5, align 8
  br label %65

65:                                               ; preds = %58, %49
  store i32 0, i32* %14, align 4
  br label %66

66:                                               ; preds = %109, %65
  %67 = load i32, i32* %14, align 4
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** @cparams, align 8
  %69 = call i32 @ARRAY_SIZE(%struct.TYPE_5__* %68)
  %70 = icmp slt i32 %67, %69
  br i1 %70, label %71, label %112

71:                                               ; preds = %66
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** @cparams, align 8
  %73 = load i32, i32* %14, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %79 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 3
  %81 = load i64, i64* %80, align 8
  %82 = icmp eq i64 %77, %81
  br i1 %82, label %83, label %108

83:                                               ; preds = %71
  %84 = load %struct.TYPE_5__*, %struct.TYPE_5__** @cparams, align 8
  %85 = load i32, i32* %14, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i64 %86
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %91 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 4
  %93 = load i64, i64* %92, align 8
  %94 = icmp eq i64 %89, %93
  br i1 %94, label %95, label %108

95:                                               ; preds = %83
  %96 = load %struct.TYPE_5__*, %struct.TYPE_5__** @cparams, align 8
  %97 = load i32, i32* %14, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %96, i64 %98
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %99, i32 0, i32 2
  %101 = load i64, i64* %100, align 8
  store i64 %101, i64* %10, align 8
  %102 = load %struct.TYPE_5__*, %struct.TYPE_5__** @cparams, align 8
  %103 = load i32, i32* %14, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %102, i64 %104
  %106 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %105, i32 0, i32 3
  %107 = load i64, i64* %106, align 8
  store i64 %107, i64* %11, align 8
  br label %112

108:                                              ; preds = %83, %71
  br label %109

109:                                              ; preds = %108
  %110 = load i32, i32* %14, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %14, align 4
  br label %66

112:                                              ; preds = %95, %66
  %113 = load i64, i64* %5, align 8
  %114 = load i64, i64* %13, align 8
  %115 = trunc i64 %114 to i32
  %116 = call i64 @div_u64(i64 %113, i32 %115)
  store i64 %116, i64* %5, align 8
  %117 = load i64, i64* %10, align 8
  %118 = load i64, i64* %5, align 8
  %119 = mul nsw i64 %117, %118
  %120 = load i64, i64* %11, align 8
  %121 = add nsw i64 %119, %120
  store i64 %121, i64* %6, align 8
  %122 = load i64, i64* %6, align 8
  %123 = call i64 @div_u64(i64 %122, i32 10)
  store i64 %123, i64* %6, align 8
  %124 = load i64, i64* %4, align 8
  %125 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %126 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %126, i32 0, i32 2
  store i64 %124, i64* %127, align 8
  %128 = load i64, i64* %12, align 8
  %129 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %130 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %130, i32 0, i32 0
  store i64 %128, i64* %131, align 8
  %132 = load i64, i64* %6, align 8
  %133 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %134 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %134, i32 0, i32 1
  store i64 %132, i64* %135, align 8
  %136 = load i64, i64* %6, align 8
  store i64 %136, i64* %2, align 8
  br label %137

137:                                              ; preds = %112, %26
  %138 = load i64, i64* %2, align 8
  ret i64 %138
}

declare dso_local i64 @jiffies_to_msecs(i32) #1

declare dso_local i32 @assert_spin_locked(i32*) #1

declare dso_local i64 @I915_READ(i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_5__*) #1

declare dso_local i64 @div_u64(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
