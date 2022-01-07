; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_display.c_intel_set_config_compute_mode_changes.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_display.c_intel_set_config_compute_mode_changes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_mode_set = type { i64, i64, i32*, %struct.TYPE_4__*, %struct.TYPE_3__*, i32, i32* }
%struct.TYPE_4__ = type { i64, i64, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64, i64 }
%struct.intel_set_config = type { i32, i32 }

@.str = private unnamed_addr constant [31 x i8] c"crtc has no fb, full mode set\0A\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"modes are different, full mode set\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_mode_set*, %struct.intel_set_config*)* @intel_set_config_compute_mode_changes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @intel_set_config_compute_mode_changes(%struct.drm_mode_set* %0, %struct.intel_set_config* %1) #0 {
  %3 = alloca %struct.drm_mode_set*, align 8
  %4 = alloca %struct.intel_set_config*, align 8
  store %struct.drm_mode_set* %0, %struct.drm_mode_set** %3, align 8
  store %struct.intel_set_config* %1, %struct.intel_set_config** %4, align 8
  %5 = load %struct.drm_mode_set*, %struct.drm_mode_set** %3, align 8
  %6 = getelementptr inbounds %struct.drm_mode_set, %struct.drm_mode_set* %5, i32 0, i32 6
  %7 = load i32*, i32** %6, align 8
  %8 = icmp ne i32* %7, null
  br i1 %8, label %9, label %25

9:                                                ; preds = %2
  %10 = load %struct.drm_mode_set*, %struct.drm_mode_set** %3, align 8
  %11 = getelementptr inbounds %struct.drm_mode_set, %struct.drm_mode_set* %10, i32 0, i32 3
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = load %struct.drm_mode_set*, %struct.drm_mode_set** %3, align 8
  %14 = getelementptr inbounds %struct.drm_mode_set, %struct.drm_mode_set* %13, i32 0, i32 6
  %15 = load i32*, i32** %14, align 8
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.drm_mode_set*, %struct.drm_mode_set** %3, align 8
  %18 = getelementptr inbounds %struct.drm_mode_set, %struct.drm_mode_set* %17, i32 0, i32 5
  %19 = load i32, i32* %18, align 8
  %20 = call i64 @is_crtc_connector_off(%struct.TYPE_4__* %12, i32 %16, i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %9
  %23 = load %struct.intel_set_config*, %struct.intel_set_config** %4, align 8
  %24 = getelementptr inbounds %struct.intel_set_config, %struct.intel_set_config* %23, i32 0, i32 0
  store i32 1, i32* %24, align 4
  br label %96

25:                                               ; preds = %9, %2
  %26 = load %struct.drm_mode_set*, %struct.drm_mode_set** %3, align 8
  %27 = getelementptr inbounds %struct.drm_mode_set, %struct.drm_mode_set* %26, i32 0, i32 3
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 3
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %29, align 8
  %31 = load %struct.drm_mode_set*, %struct.drm_mode_set** %3, align 8
  %32 = getelementptr inbounds %struct.drm_mode_set, %struct.drm_mode_set* %31, i32 0, i32 4
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %32, align 8
  %34 = icmp ne %struct.TYPE_3__* %30, %33
  br i1 %34, label %35, label %95

35:                                               ; preds = %25
  %36 = load %struct.drm_mode_set*, %struct.drm_mode_set** %3, align 8
  %37 = getelementptr inbounds %struct.drm_mode_set, %struct.drm_mode_set* %36, i32 0, i32 3
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 3
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %39, align 8
  %41 = icmp eq %struct.TYPE_3__* %40, null
  br i1 %41, label %42, label %46

42:                                               ; preds = %35
  %43 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %44 = load %struct.intel_set_config*, %struct.intel_set_config** %4, align 8
  %45 = getelementptr inbounds %struct.intel_set_config, %struct.intel_set_config* %44, i32 0, i32 0
  store i32 1, i32* %45, align 4
  br label %94

46:                                               ; preds = %35
  %47 = load %struct.drm_mode_set*, %struct.drm_mode_set** %3, align 8
  %48 = getelementptr inbounds %struct.drm_mode_set, %struct.drm_mode_set* %47, i32 0, i32 4
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %48, align 8
  %50 = icmp eq %struct.TYPE_3__* %49, null
  br i1 %50, label %51, label %54

51:                                               ; preds = %46
  %52 = load %struct.intel_set_config*, %struct.intel_set_config** %4, align 8
  %53 = getelementptr inbounds %struct.intel_set_config, %struct.intel_set_config* %52, i32 0, i32 0
  store i32 1, i32* %53, align 4
  br label %93

54:                                               ; preds = %46
  %55 = load %struct.drm_mode_set*, %struct.drm_mode_set** %3, align 8
  %56 = getelementptr inbounds %struct.drm_mode_set, %struct.drm_mode_set* %55, i32 0, i32 4
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load %struct.drm_mode_set*, %struct.drm_mode_set** %3, align 8
  %61 = getelementptr inbounds %struct.drm_mode_set, %struct.drm_mode_set* %60, i32 0, i32 3
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 3
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %59, %66
  br i1 %67, label %68, label %71

68:                                               ; preds = %54
  %69 = load %struct.intel_set_config*, %struct.intel_set_config** %4, align 8
  %70 = getelementptr inbounds %struct.intel_set_config, %struct.intel_set_config* %69, i32 0, i32 0
  store i32 1, i32* %70, align 4
  br label %92

71:                                               ; preds = %54
  %72 = load %struct.drm_mode_set*, %struct.drm_mode_set** %3, align 8
  %73 = getelementptr inbounds %struct.drm_mode_set, %struct.drm_mode_set* %72, i32 0, i32 4
  %74 = load %struct.TYPE_3__*, %struct.TYPE_3__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = load %struct.drm_mode_set*, %struct.drm_mode_set** %3, align 8
  %78 = getelementptr inbounds %struct.drm_mode_set, %struct.drm_mode_set* %77, i32 0, i32 3
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 3
  %81 = load %struct.TYPE_3__*, %struct.TYPE_3__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = icmp ne i64 %76, %83
  br i1 %84, label %85, label %88

85:                                               ; preds = %71
  %86 = load %struct.intel_set_config*, %struct.intel_set_config** %4, align 8
  %87 = getelementptr inbounds %struct.intel_set_config, %struct.intel_set_config* %86, i32 0, i32 0
  store i32 1, i32* %87, align 4
  br label %91

88:                                               ; preds = %71
  %89 = load %struct.intel_set_config*, %struct.intel_set_config** %4, align 8
  %90 = getelementptr inbounds %struct.intel_set_config, %struct.intel_set_config* %89, i32 0, i32 1
  store i32 1, i32* %90, align 4
  br label %91

91:                                               ; preds = %88, %85
  br label %92

92:                                               ; preds = %91, %68
  br label %93

93:                                               ; preds = %92, %51
  br label %94

94:                                               ; preds = %93, %42
  br label %95

95:                                               ; preds = %94, %25
  br label %96

96:                                               ; preds = %95, %22
  %97 = load %struct.drm_mode_set*, %struct.drm_mode_set** %3, align 8
  %98 = getelementptr inbounds %struct.drm_mode_set, %struct.drm_mode_set* %97, i32 0, i32 4
  %99 = load %struct.TYPE_3__*, %struct.TYPE_3__** %98, align 8
  %100 = icmp ne %struct.TYPE_3__* %99, null
  br i1 %100, label %101, label %124

101:                                              ; preds = %96
  %102 = load %struct.drm_mode_set*, %struct.drm_mode_set** %3, align 8
  %103 = getelementptr inbounds %struct.drm_mode_set, %struct.drm_mode_set* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = load %struct.drm_mode_set*, %struct.drm_mode_set** %3, align 8
  %106 = getelementptr inbounds %struct.drm_mode_set, %struct.drm_mode_set* %105, i32 0, i32 3
  %107 = load %struct.TYPE_4__*, %struct.TYPE_4__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = icmp ne i64 %104, %109
  br i1 %110, label %121, label %111

111:                                              ; preds = %101
  %112 = load %struct.drm_mode_set*, %struct.drm_mode_set** %3, align 8
  %113 = getelementptr inbounds %struct.drm_mode_set, %struct.drm_mode_set* %112, i32 0, i32 1
  %114 = load i64, i64* %113, align 8
  %115 = load %struct.drm_mode_set*, %struct.drm_mode_set** %3, align 8
  %116 = getelementptr inbounds %struct.drm_mode_set, %struct.drm_mode_set* %115, i32 0, i32 3
  %117 = load %struct.TYPE_4__*, %struct.TYPE_4__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %117, i32 0, i32 1
  %119 = load i64, i64* %118, align 8
  %120 = icmp ne i64 %114, %119
  br i1 %120, label %121, label %124

121:                                              ; preds = %111, %101
  %122 = load %struct.intel_set_config*, %struct.intel_set_config** %4, align 8
  %123 = getelementptr inbounds %struct.intel_set_config, %struct.intel_set_config* %122, i32 0, i32 1
  store i32 1, i32* %123, align 4
  br label %124

124:                                              ; preds = %121, %111, %96
  %125 = load %struct.drm_mode_set*, %struct.drm_mode_set** %3, align 8
  %126 = getelementptr inbounds %struct.drm_mode_set, %struct.drm_mode_set* %125, i32 0, i32 2
  %127 = load i32*, i32** %126, align 8
  %128 = icmp ne i32* %127, null
  br i1 %128, label %129, label %152

129:                                              ; preds = %124
  %130 = load %struct.drm_mode_set*, %struct.drm_mode_set** %3, align 8
  %131 = getelementptr inbounds %struct.drm_mode_set, %struct.drm_mode_set* %130, i32 0, i32 2
  %132 = load i32*, i32** %131, align 8
  %133 = load %struct.drm_mode_set*, %struct.drm_mode_set** %3, align 8
  %134 = getelementptr inbounds %struct.drm_mode_set, %struct.drm_mode_set* %133, i32 0, i32 3
  %135 = load %struct.TYPE_4__*, %struct.TYPE_4__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %135, i32 0, i32 2
  %137 = call i32 @drm_mode_equal(i32* %132, i32* %136)
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %152, label %139

139:                                              ; preds = %129
  %140 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  %141 = load %struct.drm_mode_set*, %struct.drm_mode_set** %3, align 8
  %142 = getelementptr inbounds %struct.drm_mode_set, %struct.drm_mode_set* %141, i32 0, i32 3
  %143 = load %struct.TYPE_4__*, %struct.TYPE_4__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %143, i32 0, i32 2
  %145 = call i32 @drm_mode_debug_printmodeline(i32* %144)
  %146 = load %struct.drm_mode_set*, %struct.drm_mode_set** %3, align 8
  %147 = getelementptr inbounds %struct.drm_mode_set, %struct.drm_mode_set* %146, i32 0, i32 2
  %148 = load i32*, i32** %147, align 8
  %149 = call i32 @drm_mode_debug_printmodeline(i32* %148)
  %150 = load %struct.intel_set_config*, %struct.intel_set_config** %4, align 8
  %151 = getelementptr inbounds %struct.intel_set_config, %struct.intel_set_config* %150, i32 0, i32 0
  store i32 1, i32* %151, align 4
  br label %152

152:                                              ; preds = %139, %129, %124
  ret void
}

declare dso_local i64 @is_crtc_connector_off(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*) #1

declare dso_local i32 @drm_mode_equal(i32*, i32*) #1

declare dso_local i32 @drm_mode_debug_printmodeline(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
