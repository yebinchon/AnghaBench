; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_display.c_intel_eld_uptodate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_display.c_intel_eld_uptodate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_connector = type { i32*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.drm_i915_private* }
%struct.drm_i915_private = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_connector*, i32, i32, i32, i32, i32)* @intel_eld_uptodate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_eld_uptodate(%struct.drm_connector* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.drm_connector*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.drm_i915_private*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  store %struct.drm_connector* %0, %struct.drm_connector** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %17 = load %struct.drm_connector*, %struct.drm_connector** %8, align 8
  %18 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %17, i32 0, i32 1
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load %struct.drm_i915_private*, %struct.drm_i915_private** %20, align 8
  store %struct.drm_i915_private* %21, %struct.drm_i915_private** %14, align 8
  %22 = load %struct.drm_connector*, %struct.drm_connector** %8, align 8
  %23 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  store i32* %24, i32** %15, align 8
  %25 = load i32, i32* %9, align 4
  %26 = call i32 @I915_READ(i32 %25)
  store i32 %26, i32* %16, align 4
  %27 = load i32, i32* %10, align 4
  %28 = load i32, i32* %16, align 4
  %29 = and i32 %28, %27
  store i32 %29, i32* %16, align 4
  %30 = load i32*, i32** %15, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 0
  %32 = load i32, i32* %31, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %39, label %34

34:                                               ; preds = %6
  %35 = load i32, i32* %16, align 4
  %36 = icmp ne i32 %35, 0
  %37 = xor i1 %36, true
  %38 = zext i1 %37 to i32
  store i32 %38, i32* %7, align 4
  br label %74

39:                                               ; preds = %6
  %40 = load i32, i32* %16, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %39
  store i32 0, i32* %7, align 4
  br label %74

43:                                               ; preds = %39
  %44 = load i32, i32* %11, align 4
  %45 = call i32 @I915_READ(i32 %44)
  store i32 %45, i32* %16, align 4
  %46 = load i32, i32* %12, align 4
  %47 = xor i32 %46, -1
  %48 = load i32, i32* %16, align 4
  %49 = and i32 %48, %47
  store i32 %49, i32* %16, align 4
  %50 = load i32, i32* %11, align 4
  %51 = load i32, i32* %16, align 4
  %52 = call i32 @I915_WRITE(i32 %50, i32 %51)
  store i32 0, i32* %16, align 4
  br label %53

53:                                               ; preds = %70, %43
  %54 = load i32, i32* %16, align 4
  %55 = load i32*, i32** %15, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 2
  %57 = load i32, i32* %56, align 4
  %58 = icmp slt i32 %54, %57
  br i1 %58, label %59, label %73

59:                                               ; preds = %53
  %60 = load i32, i32* %13, align 4
  %61 = call i32 @I915_READ(i32 %60)
  %62 = load i32*, i32** %15, align 8
  %63 = load i32, i32* %16, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %62, i64 %64
  %66 = load i32, i32* %65, align 4
  %67 = icmp ne i32 %61, %66
  br i1 %67, label %68, label %69

68:                                               ; preds = %59
  store i32 0, i32* %7, align 4
  br label %74

69:                                               ; preds = %59
  br label %70

70:                                               ; preds = %69
  %71 = load i32, i32* %16, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %16, align 4
  br label %53

73:                                               ; preds = %53
  store i32 1, i32* %7, align 4
  br label %74

74:                                               ; preds = %73, %68, %42, %34
  %75 = load i32, i32* %7, align 4
  ret i32 %75
}

declare dso_local i32 @I915_READ(i32) #1

declare dso_local i32 @I915_WRITE(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
