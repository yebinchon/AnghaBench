; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_tv.c_intel_tv_get_modes.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_tv.c_intel_tv_get_modes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.input_res = type { i32, i32, i32 }
%struct.drm_connector = type { i32 }
%struct.drm_display_mode = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.intel_tv = type { i32 }
%struct.tv_mode = type { i32, i64, i32, i32 }

@input_res_table = common dso_local global %struct.input_res* null, align 8
@DRM_DISPLAY_MODE_LEN = common dso_local global i32 0, align 4
@DRM_MODE_TYPE_DRIVER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_connector*)* @intel_tv_get_modes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_tv_get_modes(%struct.drm_connector* %0) #0 {
  %2 = alloca %struct.drm_connector*, align 8
  %3 = alloca %struct.drm_display_mode*, align 8
  %4 = alloca %struct.intel_tv*, align 8
  %5 = alloca %struct.tv_mode*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.input_res*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.drm_connector* %0, %struct.drm_connector** %2, align 8
  %12 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %13 = call %struct.intel_tv* @intel_attached_tv(%struct.drm_connector* %12)
  store %struct.intel_tv* %13, %struct.intel_tv** %4, align 8
  %14 = load %struct.intel_tv*, %struct.intel_tv** %4, align 8
  %15 = call %struct.tv_mode* @intel_tv_mode_find(%struct.intel_tv* %14)
  store %struct.tv_mode* %15, %struct.tv_mode** %5, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %6, align 4
  br label %16

16:                                               ; preds = %167, %1
  %17 = load i32, i32* %6, align 4
  %18 = load %struct.input_res*, %struct.input_res** @input_res_table, align 8
  %19 = call i32 @ARRAY_SIZE(%struct.input_res* %18)
  %20 = icmp slt i32 %17, %19
  br i1 %20, label %21, label %170

21:                                               ; preds = %16
  %22 = load %struct.input_res*, %struct.input_res** @input_res_table, align 8
  %23 = load i32, i32* %6, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.input_res, %struct.input_res* %22, i64 %24
  store %struct.input_res* %25, %struct.input_res** %9, align 8
  %26 = load %struct.input_res*, %struct.input_res** %9, align 8
  %27 = getelementptr inbounds %struct.input_res, %struct.input_res* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %10, align 4
  %29 = load %struct.input_res*, %struct.input_res** %9, align 8
  %30 = getelementptr inbounds %struct.input_res, %struct.input_res* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %11, align 4
  %32 = load %struct.tv_mode*, %struct.tv_mode** %5, align 8
  %33 = getelementptr inbounds %struct.tv_mode, %struct.tv_mode* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %45

36:                                               ; preds = %21
  %37 = load %struct.input_res*, %struct.input_res** %9, align 8
  %38 = getelementptr inbounds %struct.input_res, %struct.input_res* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.tv_mode*, %struct.tv_mode** %5, align 8
  %41 = getelementptr inbounds %struct.tv_mode, %struct.tv_mode* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = icmp ugt i32 %39, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %36
  br label %167

45:                                               ; preds = %36, %21
  %46 = load %struct.input_res*, %struct.input_res** %9, align 8
  %47 = getelementptr inbounds %struct.input_res, %struct.input_res* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = icmp ugt i32 %48, 1024
  br i1 %49, label %50, label %61

50:                                               ; preds = %45
  %51 = load %struct.tv_mode*, %struct.tv_mode** %5, align 8
  %52 = getelementptr inbounds %struct.tv_mode, %struct.tv_mode* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %61, label %55

55:                                               ; preds = %50
  %56 = load %struct.tv_mode*, %struct.tv_mode** %5, align 8
  %57 = getelementptr inbounds %struct.tv_mode, %struct.tv_mode* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %61, label %60

60:                                               ; preds = %55
  br label %167

61:                                               ; preds = %55, %50, %45
  %62 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %63 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call %struct.drm_display_mode* @drm_mode_create(i32 %64)
  store %struct.drm_display_mode* %65, %struct.drm_display_mode** %3, align 8
  %66 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %67 = icmp ne %struct.drm_display_mode* %66, null
  br i1 %67, label %69, label %68

68:                                               ; preds = %61
  br label %167

69:                                               ; preds = %61
  %70 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %71 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %70, i32 0, i32 10
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.input_res*, %struct.input_res** %9, align 8
  %74 = getelementptr inbounds %struct.input_res, %struct.input_res* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* @DRM_DISPLAY_MODE_LEN, align 4
  %77 = call i32 @strncpy(i32 %72, i32 %75, i32 %76)
  %78 = load i32, i32* %10, align 4
  %79 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %80 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %79, i32 0, i32 0
  store i32 %78, i32* %80, align 4
  %81 = load i32, i32* %10, align 4
  %82 = add i32 %81, 1
  %83 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %84 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %83, i32 0, i32 1
  store i32 %82, i32* %84, align 4
  %85 = load i32, i32* %10, align 4
  %86 = add i32 %85, 64
  %87 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %88 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %87, i32 0, i32 2
  store i32 %86, i32* %88, align 4
  %89 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %90 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %93 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = icmp ule i32 %91, %94
  br i1 %95, label %96, label %103

96:                                               ; preds = %69
  %97 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %98 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = add i32 %99, 1
  %101 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %102 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %101, i32 0, i32 2
  store i32 %100, i32* %102, align 4
  br label %103

103:                                              ; preds = %96, %69
  %104 = load i32, i32* %10, align 4
  %105 = add i32 %104, 96
  %106 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %107 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %106, i32 0, i32 3
  store i32 %105, i32* %107, align 4
  %108 = load i32, i32* %11, align 4
  %109 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %110 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %109, i32 0, i32 4
  store i32 %108, i32* %110, align 4
  %111 = load i32, i32* %11, align 4
  %112 = add i32 %111, 1
  %113 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %114 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %113, i32 0, i32 5
  store i32 %112, i32* %114, align 4
  %115 = load i32, i32* %11, align 4
  %116 = add i32 %115, 32
  %117 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %118 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %117, i32 0, i32 6
  store i32 %116, i32* %118, align 4
  %119 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %120 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %119, i32 0, i32 6
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %123 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %122, i32 0, i32 5
  %124 = load i32, i32* %123, align 4
  %125 = icmp ule i32 %121, %124
  br i1 %125, label %126, label %133

126:                                              ; preds = %103
  %127 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %128 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %127, i32 0, i32 5
  %129 = load i32, i32* %128, align 4
  %130 = add i32 %129, 1
  %131 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %132 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %131, i32 0, i32 6
  store i32 %130, i32* %132, align 4
  br label %133

133:                                              ; preds = %126, %103
  %134 = load i32, i32* %11, align 4
  %135 = add i32 %134, 33
  %136 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %137 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %136, i32 0, i32 7
  store i32 %135, i32* %137, align 4
  %138 = load %struct.tv_mode*, %struct.tv_mode** %5, align 8
  %139 = getelementptr inbounds %struct.tv_mode, %struct.tv_mode* %138, i32 0, i32 1
  %140 = load i64, i64* %139, align 8
  %141 = trunc i64 %140 to i32
  %142 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %143 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %142, i32 0, i32 7
  %144 = load i32, i32* %143, align 4
  %145 = mul i32 %141, %144
  store i32 %145, i32* %8, align 4
  %146 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %147 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %146, i32 0, i32 3
  %148 = load i32, i32* %147, align 4
  %149 = load i32, i32* %8, align 4
  %150 = mul i32 %149, %148
  store i32 %150, i32* %8, align 4
  %151 = load i32, i32* %8, align 4
  %152 = call i32 @div_u64(i32 %151, i32 1000000)
  store i32 %152, i32* %8, align 4
  %153 = load i32, i32* %8, align 4
  %154 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %155 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %154, i32 0, i32 8
  store i32 %153, i32* %155, align 4
  %156 = load i32, i32* @DRM_MODE_TYPE_DRIVER, align 4
  %157 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %158 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %157, i32 0, i32 9
  store i32 %156, i32* %158, align 4
  %159 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %160 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %161 = call i32 @intel_tv_chose_preferred_modes(%struct.drm_connector* %159, %struct.drm_display_mode* %160)
  %162 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %163 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %164 = call i32 @drm_mode_probed_add(%struct.drm_connector* %162, %struct.drm_display_mode* %163)
  %165 = load i32, i32* %7, align 4
  %166 = add nsw i32 %165, 1
  store i32 %166, i32* %7, align 4
  br label %167

167:                                              ; preds = %133, %68, %60, %44
  %168 = load i32, i32* %6, align 4
  %169 = add nsw i32 %168, 1
  store i32 %169, i32* %6, align 4
  br label %16

170:                                              ; preds = %16
  %171 = load i32, i32* %7, align 4
  ret i32 %171
}

declare dso_local %struct.intel_tv* @intel_attached_tv(%struct.drm_connector*) #1

declare dso_local %struct.tv_mode* @intel_tv_mode_find(%struct.intel_tv*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.input_res*) #1

declare dso_local %struct.drm_display_mode* @drm_mode_create(i32) #1

declare dso_local i32 @strncpy(i32, i32, i32) #1

declare dso_local i32 @div_u64(i32, i32) #1

declare dso_local i32 @intel_tv_chose_preferred_modes(%struct.drm_connector*, %struct.drm_display_mode*) #1

declare dso_local i32 @drm_mode_probed_add(%struct.drm_connector*, %struct.drm_display_mode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
