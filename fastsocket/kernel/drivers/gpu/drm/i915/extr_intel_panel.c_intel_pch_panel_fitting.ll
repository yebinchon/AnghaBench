; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_panel.c_intel_pch_panel_fitting.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_panel.c_intel_pch_panel_fitting.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.drm_i915_private* }
%struct.drm_i915_private = type { i32, i32 }
%struct.drm_display_mode = type { i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @intel_pch_panel_fitting(%struct.drm_device* %0, i32 %1, %struct.drm_display_mode* %2, %struct.drm_display_mode* %3) #0 {
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.drm_display_mode*, align 8
  %8 = alloca %struct.drm_display_mode*, align 8
  %9 = alloca %struct.drm_i915_private*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.drm_display_mode* %2, %struct.drm_display_mode** %7, align 8
  store %struct.drm_display_mode* %3, %struct.drm_display_mode** %8, align 8
  %16 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %17 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %16, i32 0, i32 0
  %18 = load %struct.drm_i915_private*, %struct.drm_i915_private** %17, align 8
  store %struct.drm_i915_private* %18, %struct.drm_i915_private** %9, align 8
  store i32 0, i32* %13, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %10, align 4
  %19 = load %struct.drm_display_mode*, %struct.drm_display_mode** %8, align 8
  %20 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.drm_display_mode*, %struct.drm_display_mode** %7, align 8
  %23 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp eq i64 %21, %24
  br i1 %25, label %26, label %35

26:                                               ; preds = %4
  %27 = load %struct.drm_display_mode*, %struct.drm_display_mode** %8, align 8
  %28 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.drm_display_mode*, %struct.drm_display_mode** %7, align 8
  %31 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = icmp eq i64 %29, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %26
  br label %166

35:                                               ; preds = %26, %4
  %36 = load i32, i32* %6, align 4
  switch i32 %36, label %155 [
    i32 129, label %37
    i32 130, label %64
    i32 128, label %156
  ]

37:                                               ; preds = %35
  %38 = load %struct.drm_display_mode*, %struct.drm_display_mode** %7, align 8
  %39 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = trunc i64 %40 to i32
  store i32 %41, i32* %12, align 4
  %42 = load %struct.drm_display_mode*, %struct.drm_display_mode** %7, align 8
  %43 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = trunc i64 %44 to i32
  store i32 %45, i32* %13, align 4
  %46 = load %struct.drm_display_mode*, %struct.drm_display_mode** %8, align 8
  %47 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i32, i32* %12, align 4
  %50 = sext i32 %49 to i64
  %51 = sub nsw i64 %48, %50
  %52 = add nsw i64 %51, 1
  %53 = sdiv i64 %52, 2
  %54 = trunc i64 %53 to i32
  store i32 %54, i32* %10, align 4
  %55 = load %struct.drm_display_mode*, %struct.drm_display_mode** %8, align 8
  %56 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = load i32, i32* %13, align 4
  %59 = sext i32 %58 to i64
  %60 = sub nsw i64 %57, %59
  %61 = add nsw i64 %60, 1
  %62 = sdiv i64 %61, 2
  %63 = trunc i64 %62 to i32
  store i32 %63, i32* %11, align 4
  br label %165

64:                                               ; preds = %35
  %65 = load %struct.drm_display_mode*, %struct.drm_display_mode** %8, align 8
  %66 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load %struct.drm_display_mode*, %struct.drm_display_mode** %7, align 8
  %69 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = mul nsw i64 %67, %70
  %72 = trunc i64 %71 to i32
  store i32 %72, i32* %14, align 4
  %73 = load %struct.drm_display_mode*, %struct.drm_display_mode** %7, align 8
  %74 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load %struct.drm_display_mode*, %struct.drm_display_mode** %8, align 8
  %77 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = mul nsw i64 %75, %78
  %80 = trunc i64 %79 to i32
  store i32 %80, i32* %15, align 4
  %81 = load i32, i32* %14, align 4
  %82 = load i32, i32* %15, align 4
  %83 = icmp sgt i32 %81, %82
  br i1 %83, label %84, label %112

84:                                               ; preds = %64
  %85 = load i32, i32* %15, align 4
  %86 = sext i32 %85 to i64
  %87 = load %struct.drm_display_mode*, %struct.drm_display_mode** %7, align 8
  %88 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = sdiv i64 %86, %89
  %91 = trunc i64 %90 to i32
  store i32 %91, i32* %12, align 4
  %92 = load i32, i32* %12, align 4
  %93 = and i32 %92, 1
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %98

95:                                               ; preds = %84
  %96 = load i32, i32* %12, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %12, align 4
  br label %98

98:                                               ; preds = %95, %84
  %99 = load %struct.drm_display_mode*, %struct.drm_display_mode** %8, align 8
  %100 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = load i32, i32* %12, align 4
  %103 = sext i32 %102 to i64
  %104 = sub nsw i64 %101, %103
  %105 = add nsw i64 %104, 1
  %106 = sdiv i64 %105, 2
  %107 = trunc i64 %106 to i32
  store i32 %107, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %108 = load %struct.drm_display_mode*, %struct.drm_display_mode** %8, align 8
  %109 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %108, i32 0, i32 1
  %110 = load i64, i64* %109, align 8
  %111 = trunc i64 %110 to i32
  store i32 %111, i32* %13, align 4
  br label %154

112:                                              ; preds = %64
  %113 = load i32, i32* %14, align 4
  %114 = load i32, i32* %15, align 4
  %115 = icmp slt i32 %113, %114
  br i1 %115, label %116, label %144

116:                                              ; preds = %112
  %117 = load i32, i32* %14, align 4
  %118 = sext i32 %117 to i64
  %119 = load %struct.drm_display_mode*, %struct.drm_display_mode** %7, align 8
  %120 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = sdiv i64 %118, %121
  %123 = trunc i64 %122 to i32
  store i32 %123, i32* %13, align 4
  %124 = load i32, i32* %13, align 4
  %125 = and i32 %124, 1
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %130

127:                                              ; preds = %116
  %128 = load i32, i32* %13, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %13, align 4
  br label %130

130:                                              ; preds = %127, %116
  %131 = load %struct.drm_display_mode*, %struct.drm_display_mode** %8, align 8
  %132 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %131, i32 0, i32 1
  %133 = load i64, i64* %132, align 8
  %134 = load i32, i32* %13, align 4
  %135 = sext i32 %134 to i64
  %136 = sub nsw i64 %133, %135
  %137 = add nsw i64 %136, 1
  %138 = sdiv i64 %137, 2
  %139 = trunc i64 %138 to i32
  store i32 %139, i32* %11, align 4
  store i32 0, i32* %10, align 4
  %140 = load %struct.drm_display_mode*, %struct.drm_display_mode** %8, align 8
  %141 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %140, i32 0, i32 0
  %142 = load i64, i64* %141, align 8
  %143 = trunc i64 %142 to i32
  store i32 %143, i32* %12, align 4
  br label %153

144:                                              ; preds = %112
  store i32 0, i32* %11, align 4
  store i32 0, i32* %10, align 4
  %145 = load %struct.drm_display_mode*, %struct.drm_display_mode** %8, align 8
  %146 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %145, i32 0, i32 0
  %147 = load i64, i64* %146, align 8
  %148 = trunc i64 %147 to i32
  store i32 %148, i32* %12, align 4
  %149 = load %struct.drm_display_mode*, %struct.drm_display_mode** %8, align 8
  %150 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %149, i32 0, i32 1
  %151 = load i64, i64* %150, align 8
  %152 = trunc i64 %151 to i32
  store i32 %152, i32* %13, align 4
  br label %153

153:                                              ; preds = %144, %130
  br label %154

154:                                              ; preds = %153, %98
  br label %165

155:                                              ; preds = %35
  br label %156

156:                                              ; preds = %35, %155
  store i32 0, i32* %11, align 4
  store i32 0, i32* %10, align 4
  %157 = load %struct.drm_display_mode*, %struct.drm_display_mode** %8, align 8
  %158 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %157, i32 0, i32 0
  %159 = load i64, i64* %158, align 8
  %160 = trunc i64 %159 to i32
  store i32 %160, i32* %12, align 4
  %161 = load %struct.drm_display_mode*, %struct.drm_display_mode** %8, align 8
  %162 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %161, i32 0, i32 1
  %163 = load i64, i64* %162, align 8
  %164 = trunc i64 %163 to i32
  store i32 %164, i32* %13, align 4
  br label %165

165:                                              ; preds = %156, %154, %37
  br label %166

166:                                              ; preds = %165, %34
  %167 = load i32, i32* %10, align 4
  %168 = shl i32 %167, 16
  %169 = load i32, i32* %11, align 4
  %170 = or i32 %168, %169
  %171 = load %struct.drm_i915_private*, %struct.drm_i915_private** %9, align 8
  %172 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %171, i32 0, i32 0
  store i32 %170, i32* %172, align 4
  %173 = load i32, i32* %12, align 4
  %174 = shl i32 %173, 16
  %175 = load i32, i32* %13, align 4
  %176 = or i32 %174, %175
  %177 = load %struct.drm_i915_private*, %struct.drm_i915_private** %9, align 8
  %178 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %177, i32 0, i32 1
  store i32 %176, i32* %178, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
