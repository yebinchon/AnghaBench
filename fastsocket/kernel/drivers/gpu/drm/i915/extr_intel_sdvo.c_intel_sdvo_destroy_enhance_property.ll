; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_sdvo.c_intel_sdvo_destroy_enhance_property.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_sdvo.c_intel_sdvo_destroy_enhance_property.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_connector = type { %struct.drm_device* }
%struct.drm_device = type { i32 }
%struct.intel_sdvo_connector = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_connector*)* @intel_sdvo_destroy_enhance_property to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @intel_sdvo_destroy_enhance_property(%struct.drm_connector* %0) #0 {
  %2 = alloca %struct.drm_connector*, align 8
  %3 = alloca %struct.intel_sdvo_connector*, align 8
  %4 = alloca %struct.drm_device*, align 8
  store %struct.drm_connector* %0, %struct.drm_connector** %2, align 8
  %5 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %6 = call %struct.intel_sdvo_connector* @to_intel_sdvo_connector(%struct.drm_connector* %5)
  store %struct.intel_sdvo_connector* %6, %struct.intel_sdvo_connector** %3, align 8
  %7 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %8 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %7, i32 0, i32 0
  %9 = load %struct.drm_device*, %struct.drm_device** %8, align 8
  store %struct.drm_device* %9, %struct.drm_device** %4, align 8
  %10 = load %struct.intel_sdvo_connector*, %struct.intel_sdvo_connector** %3, align 8
  %11 = getelementptr inbounds %struct.intel_sdvo_connector, %struct.intel_sdvo_connector* %10, i32 0, i32 16
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %20

14:                                               ; preds = %1
  %15 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %16 = load %struct.intel_sdvo_connector*, %struct.intel_sdvo_connector** %3, align 8
  %17 = getelementptr inbounds %struct.intel_sdvo_connector, %struct.intel_sdvo_connector* %16, i32 0, i32 16
  %18 = load i64, i64* %17, align 8
  %19 = call i32 @drm_property_destroy(%struct.drm_device* %15, i64 %18)
  br label %20

20:                                               ; preds = %14, %1
  %21 = load %struct.intel_sdvo_connector*, %struct.intel_sdvo_connector** %3, align 8
  %22 = getelementptr inbounds %struct.intel_sdvo_connector, %struct.intel_sdvo_connector* %21, i32 0, i32 15
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %20
  %26 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %27 = load %struct.intel_sdvo_connector*, %struct.intel_sdvo_connector** %3, align 8
  %28 = getelementptr inbounds %struct.intel_sdvo_connector, %struct.intel_sdvo_connector* %27, i32 0, i32 15
  %29 = load i64, i64* %28, align 8
  %30 = call i32 @drm_property_destroy(%struct.drm_device* %26, i64 %29)
  br label %31

31:                                               ; preds = %25, %20
  %32 = load %struct.intel_sdvo_connector*, %struct.intel_sdvo_connector** %3, align 8
  %33 = getelementptr inbounds %struct.intel_sdvo_connector, %struct.intel_sdvo_connector* %32, i32 0, i32 14
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %31
  %37 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %38 = load %struct.intel_sdvo_connector*, %struct.intel_sdvo_connector** %3, align 8
  %39 = getelementptr inbounds %struct.intel_sdvo_connector, %struct.intel_sdvo_connector* %38, i32 0, i32 14
  %40 = load i64, i64* %39, align 8
  %41 = call i32 @drm_property_destroy(%struct.drm_device* %37, i64 %40)
  br label %42

42:                                               ; preds = %36, %31
  %43 = load %struct.intel_sdvo_connector*, %struct.intel_sdvo_connector** %3, align 8
  %44 = getelementptr inbounds %struct.intel_sdvo_connector, %struct.intel_sdvo_connector* %43, i32 0, i32 13
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %53

47:                                               ; preds = %42
  %48 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %49 = load %struct.intel_sdvo_connector*, %struct.intel_sdvo_connector** %3, align 8
  %50 = getelementptr inbounds %struct.intel_sdvo_connector, %struct.intel_sdvo_connector* %49, i32 0, i32 13
  %51 = load i64, i64* %50, align 8
  %52 = call i32 @drm_property_destroy(%struct.drm_device* %48, i64 %51)
  br label %53

53:                                               ; preds = %47, %42
  %54 = load %struct.intel_sdvo_connector*, %struct.intel_sdvo_connector** %3, align 8
  %55 = getelementptr inbounds %struct.intel_sdvo_connector, %struct.intel_sdvo_connector* %54, i32 0, i32 12
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %64

58:                                               ; preds = %53
  %59 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %60 = load %struct.intel_sdvo_connector*, %struct.intel_sdvo_connector** %3, align 8
  %61 = getelementptr inbounds %struct.intel_sdvo_connector, %struct.intel_sdvo_connector* %60, i32 0, i32 12
  %62 = load i64, i64* %61, align 8
  %63 = call i32 @drm_property_destroy(%struct.drm_device* %59, i64 %62)
  br label %64

64:                                               ; preds = %58, %53
  %65 = load %struct.intel_sdvo_connector*, %struct.intel_sdvo_connector** %3, align 8
  %66 = getelementptr inbounds %struct.intel_sdvo_connector, %struct.intel_sdvo_connector* %65, i32 0, i32 11
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %75

69:                                               ; preds = %64
  %70 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %71 = load %struct.intel_sdvo_connector*, %struct.intel_sdvo_connector** %3, align 8
  %72 = getelementptr inbounds %struct.intel_sdvo_connector, %struct.intel_sdvo_connector* %71, i32 0, i32 11
  %73 = load i64, i64* %72, align 8
  %74 = call i32 @drm_property_destroy(%struct.drm_device* %70, i64 %73)
  br label %75

75:                                               ; preds = %69, %64
  %76 = load %struct.intel_sdvo_connector*, %struct.intel_sdvo_connector** %3, align 8
  %77 = getelementptr inbounds %struct.intel_sdvo_connector, %struct.intel_sdvo_connector* %76, i32 0, i32 10
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %86

80:                                               ; preds = %75
  %81 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %82 = load %struct.intel_sdvo_connector*, %struct.intel_sdvo_connector** %3, align 8
  %83 = getelementptr inbounds %struct.intel_sdvo_connector, %struct.intel_sdvo_connector* %82, i32 0, i32 10
  %84 = load i64, i64* %83, align 8
  %85 = call i32 @drm_property_destroy(%struct.drm_device* %81, i64 %84)
  br label %86

86:                                               ; preds = %80, %75
  %87 = load %struct.intel_sdvo_connector*, %struct.intel_sdvo_connector** %3, align 8
  %88 = getelementptr inbounds %struct.intel_sdvo_connector, %struct.intel_sdvo_connector* %87, i32 0, i32 9
  %89 = load i64, i64* %88, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %97

91:                                               ; preds = %86
  %92 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %93 = load %struct.intel_sdvo_connector*, %struct.intel_sdvo_connector** %3, align 8
  %94 = getelementptr inbounds %struct.intel_sdvo_connector, %struct.intel_sdvo_connector* %93, i32 0, i32 9
  %95 = load i64, i64* %94, align 8
  %96 = call i32 @drm_property_destroy(%struct.drm_device* %92, i64 %95)
  br label %97

97:                                               ; preds = %91, %86
  %98 = load %struct.intel_sdvo_connector*, %struct.intel_sdvo_connector** %3, align 8
  %99 = getelementptr inbounds %struct.intel_sdvo_connector, %struct.intel_sdvo_connector* %98, i32 0, i32 8
  %100 = load i64, i64* %99, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %108

102:                                              ; preds = %97
  %103 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %104 = load %struct.intel_sdvo_connector*, %struct.intel_sdvo_connector** %3, align 8
  %105 = getelementptr inbounds %struct.intel_sdvo_connector, %struct.intel_sdvo_connector* %104, i32 0, i32 8
  %106 = load i64, i64* %105, align 8
  %107 = call i32 @drm_property_destroy(%struct.drm_device* %103, i64 %106)
  br label %108

108:                                              ; preds = %102, %97
  %109 = load %struct.intel_sdvo_connector*, %struct.intel_sdvo_connector** %3, align 8
  %110 = getelementptr inbounds %struct.intel_sdvo_connector, %struct.intel_sdvo_connector* %109, i32 0, i32 7
  %111 = load i64, i64* %110, align 8
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %119

113:                                              ; preds = %108
  %114 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %115 = load %struct.intel_sdvo_connector*, %struct.intel_sdvo_connector** %3, align 8
  %116 = getelementptr inbounds %struct.intel_sdvo_connector, %struct.intel_sdvo_connector* %115, i32 0, i32 7
  %117 = load i64, i64* %116, align 8
  %118 = call i32 @drm_property_destroy(%struct.drm_device* %114, i64 %117)
  br label %119

119:                                              ; preds = %113, %108
  %120 = load %struct.intel_sdvo_connector*, %struct.intel_sdvo_connector** %3, align 8
  %121 = getelementptr inbounds %struct.intel_sdvo_connector, %struct.intel_sdvo_connector* %120, i32 0, i32 6
  %122 = load i64, i64* %121, align 8
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %130

124:                                              ; preds = %119
  %125 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %126 = load %struct.intel_sdvo_connector*, %struct.intel_sdvo_connector** %3, align 8
  %127 = getelementptr inbounds %struct.intel_sdvo_connector, %struct.intel_sdvo_connector* %126, i32 0, i32 6
  %128 = load i64, i64* %127, align 8
  %129 = call i32 @drm_property_destroy(%struct.drm_device* %125, i64 %128)
  br label %130

130:                                              ; preds = %124, %119
  %131 = load %struct.intel_sdvo_connector*, %struct.intel_sdvo_connector** %3, align 8
  %132 = getelementptr inbounds %struct.intel_sdvo_connector, %struct.intel_sdvo_connector* %131, i32 0, i32 5
  %133 = load i64, i64* %132, align 8
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %141

135:                                              ; preds = %130
  %136 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %137 = load %struct.intel_sdvo_connector*, %struct.intel_sdvo_connector** %3, align 8
  %138 = getelementptr inbounds %struct.intel_sdvo_connector, %struct.intel_sdvo_connector* %137, i32 0, i32 5
  %139 = load i64, i64* %138, align 8
  %140 = call i32 @drm_property_destroy(%struct.drm_device* %136, i64 %139)
  br label %141

141:                                              ; preds = %135, %130
  %142 = load %struct.intel_sdvo_connector*, %struct.intel_sdvo_connector** %3, align 8
  %143 = getelementptr inbounds %struct.intel_sdvo_connector, %struct.intel_sdvo_connector* %142, i32 0, i32 4
  %144 = load i64, i64* %143, align 8
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %152

146:                                              ; preds = %141
  %147 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %148 = load %struct.intel_sdvo_connector*, %struct.intel_sdvo_connector** %3, align 8
  %149 = getelementptr inbounds %struct.intel_sdvo_connector, %struct.intel_sdvo_connector* %148, i32 0, i32 4
  %150 = load i64, i64* %149, align 8
  %151 = call i32 @drm_property_destroy(%struct.drm_device* %147, i64 %150)
  br label %152

152:                                              ; preds = %146, %141
  %153 = load %struct.intel_sdvo_connector*, %struct.intel_sdvo_connector** %3, align 8
  %154 = getelementptr inbounds %struct.intel_sdvo_connector, %struct.intel_sdvo_connector* %153, i32 0, i32 3
  %155 = load i64, i64* %154, align 8
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %163

157:                                              ; preds = %152
  %158 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %159 = load %struct.intel_sdvo_connector*, %struct.intel_sdvo_connector** %3, align 8
  %160 = getelementptr inbounds %struct.intel_sdvo_connector, %struct.intel_sdvo_connector* %159, i32 0, i32 3
  %161 = load i64, i64* %160, align 8
  %162 = call i32 @drm_property_destroy(%struct.drm_device* %158, i64 %161)
  br label %163

163:                                              ; preds = %157, %152
  %164 = load %struct.intel_sdvo_connector*, %struct.intel_sdvo_connector** %3, align 8
  %165 = getelementptr inbounds %struct.intel_sdvo_connector, %struct.intel_sdvo_connector* %164, i32 0, i32 2
  %166 = load i64, i64* %165, align 8
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %168, label %174

168:                                              ; preds = %163
  %169 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %170 = load %struct.intel_sdvo_connector*, %struct.intel_sdvo_connector** %3, align 8
  %171 = getelementptr inbounds %struct.intel_sdvo_connector, %struct.intel_sdvo_connector* %170, i32 0, i32 2
  %172 = load i64, i64* %171, align 8
  %173 = call i32 @drm_property_destroy(%struct.drm_device* %169, i64 %172)
  br label %174

174:                                              ; preds = %168, %163
  %175 = load %struct.intel_sdvo_connector*, %struct.intel_sdvo_connector** %3, align 8
  %176 = getelementptr inbounds %struct.intel_sdvo_connector, %struct.intel_sdvo_connector* %175, i32 0, i32 1
  %177 = load i64, i64* %176, align 8
  %178 = icmp ne i64 %177, 0
  br i1 %178, label %179, label %185

179:                                              ; preds = %174
  %180 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %181 = load %struct.intel_sdvo_connector*, %struct.intel_sdvo_connector** %3, align 8
  %182 = getelementptr inbounds %struct.intel_sdvo_connector, %struct.intel_sdvo_connector* %181, i32 0, i32 1
  %183 = load i64, i64* %182, align 8
  %184 = call i32 @drm_property_destroy(%struct.drm_device* %180, i64 %183)
  br label %185

185:                                              ; preds = %179, %174
  %186 = load %struct.intel_sdvo_connector*, %struct.intel_sdvo_connector** %3, align 8
  %187 = getelementptr inbounds %struct.intel_sdvo_connector, %struct.intel_sdvo_connector* %186, i32 0, i32 0
  %188 = load i64, i64* %187, align 8
  %189 = icmp ne i64 %188, 0
  br i1 %189, label %190, label %196

190:                                              ; preds = %185
  %191 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %192 = load %struct.intel_sdvo_connector*, %struct.intel_sdvo_connector** %3, align 8
  %193 = getelementptr inbounds %struct.intel_sdvo_connector, %struct.intel_sdvo_connector* %192, i32 0, i32 0
  %194 = load i64, i64* %193, align 8
  %195 = call i32 @drm_property_destroy(%struct.drm_device* %191, i64 %194)
  br label %196

196:                                              ; preds = %190, %185
  ret void
}

declare dso_local %struct.intel_sdvo_connector* @to_intel_sdvo_connector(%struct.drm_connector*) #1

declare dso_local i32 @drm_property_destroy(%struct.drm_device*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
