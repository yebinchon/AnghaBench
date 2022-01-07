; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/extr_drm_crtc_helper.c_drm_helper_connector_dpms.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/extr_drm_crtc_helper.c_drm_helper_connector_dpms.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_connector = type { i32, %struct.drm_encoder* }
%struct.drm_encoder = type { %struct.drm_encoder_helper_funcs*, %struct.drm_crtc* }
%struct.drm_encoder_helper_funcs = type { i32 (%struct.drm_encoder.0*, i32)* }
%struct.drm_encoder.0 = type opaque
%struct.drm_crtc = type { %struct.drm_crtc_helper_funcs* }
%struct.drm_crtc_helper_funcs = type { i32 (%struct.drm_crtc*, i32)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @drm_helper_connector_dpms(%struct.drm_connector* %0, i32 %1) #0 {
  %3 = alloca %struct.drm_connector*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_encoder*, align 8
  %6 = alloca %struct.drm_crtc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.drm_crtc_helper_funcs*, align 8
  %9 = alloca %struct.drm_encoder_helper_funcs*, align 8
  %10 = alloca %struct.drm_encoder_helper_funcs*, align 8
  %11 = alloca %struct.drm_crtc_helper_funcs*, align 8
  store %struct.drm_connector* %0, %struct.drm_connector** %3, align 8
  store i32 %1, i32* %4, align 4
  %12 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %13 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %12, i32 0, i32 1
  %14 = load %struct.drm_encoder*, %struct.drm_encoder** %13, align 8
  store %struct.drm_encoder* %14, %struct.drm_encoder** %5, align 8
  %15 = load %struct.drm_encoder*, %struct.drm_encoder** %5, align 8
  %16 = icmp ne %struct.drm_encoder* %15, null
  br i1 %16, label %17, label %21

17:                                               ; preds = %2
  %18 = load %struct.drm_encoder*, %struct.drm_encoder** %5, align 8
  %19 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %18, i32 0, i32 1
  %20 = load %struct.drm_crtc*, %struct.drm_crtc** %19, align 8
  br label %22

21:                                               ; preds = %2
  br label %22

22:                                               ; preds = %21, %17
  %23 = phi %struct.drm_crtc* [ %20, %17 ], [ null, %21 ]
  store %struct.drm_crtc* %23, %struct.drm_crtc** %6, align 8
  %24 = load i32, i32* %4, align 4
  %25 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %26 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp eq i32 %24, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %22
  br label %129

30:                                               ; preds = %22
  %31 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %32 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  store i32 %33, i32* %7, align 4
  %34 = load i32, i32* %4, align 4
  %35 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %36 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 8
  %37 = load i32, i32* %4, align 4
  %38 = load i32, i32* %7, align 4
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %40, label %82

40:                                               ; preds = %30
  %41 = load %struct.drm_crtc*, %struct.drm_crtc** %6, align 8
  %42 = icmp ne %struct.drm_crtc* %41, null
  br i1 %42, label %43, label %60

43:                                               ; preds = %40
  %44 = load %struct.drm_crtc*, %struct.drm_crtc** %6, align 8
  %45 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %44, i32 0, i32 0
  %46 = load %struct.drm_crtc_helper_funcs*, %struct.drm_crtc_helper_funcs** %45, align 8
  store %struct.drm_crtc_helper_funcs* %46, %struct.drm_crtc_helper_funcs** %8, align 8
  %47 = load %struct.drm_crtc_helper_funcs*, %struct.drm_crtc_helper_funcs** %8, align 8
  %48 = getelementptr inbounds %struct.drm_crtc_helper_funcs, %struct.drm_crtc_helper_funcs* %47, i32 0, i32 0
  %49 = load i32 (%struct.drm_crtc*, i32)*, i32 (%struct.drm_crtc*, i32)** %48, align 8
  %50 = icmp ne i32 (%struct.drm_crtc*, i32)* %49, null
  br i1 %50, label %51, label %59

51:                                               ; preds = %43
  %52 = load %struct.drm_crtc_helper_funcs*, %struct.drm_crtc_helper_funcs** %8, align 8
  %53 = getelementptr inbounds %struct.drm_crtc_helper_funcs, %struct.drm_crtc_helper_funcs* %52, i32 0, i32 0
  %54 = load i32 (%struct.drm_crtc*, i32)*, i32 (%struct.drm_crtc*, i32)** %53, align 8
  %55 = load %struct.drm_crtc*, %struct.drm_crtc** %6, align 8
  %56 = load %struct.drm_crtc*, %struct.drm_crtc** %6, align 8
  %57 = call i32 @drm_helper_choose_crtc_dpms(%struct.drm_crtc* %56)
  %58 = call i32 %54(%struct.drm_crtc* %55, i32 %57)
  br label %59

59:                                               ; preds = %51, %43
  br label %60

60:                                               ; preds = %59, %40
  %61 = load %struct.drm_encoder*, %struct.drm_encoder** %5, align 8
  %62 = icmp ne %struct.drm_encoder* %61, null
  br i1 %62, label %63, label %81

63:                                               ; preds = %60
  %64 = load %struct.drm_encoder*, %struct.drm_encoder** %5, align 8
  %65 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %64, i32 0, i32 0
  %66 = load %struct.drm_encoder_helper_funcs*, %struct.drm_encoder_helper_funcs** %65, align 8
  store %struct.drm_encoder_helper_funcs* %66, %struct.drm_encoder_helper_funcs** %9, align 8
  %67 = load %struct.drm_encoder_helper_funcs*, %struct.drm_encoder_helper_funcs** %9, align 8
  %68 = getelementptr inbounds %struct.drm_encoder_helper_funcs, %struct.drm_encoder_helper_funcs* %67, i32 0, i32 0
  %69 = load i32 (%struct.drm_encoder.0*, i32)*, i32 (%struct.drm_encoder.0*, i32)** %68, align 8
  %70 = icmp ne i32 (%struct.drm_encoder.0*, i32)* %69, null
  br i1 %70, label %71, label %80

71:                                               ; preds = %63
  %72 = load %struct.drm_encoder_helper_funcs*, %struct.drm_encoder_helper_funcs** %9, align 8
  %73 = getelementptr inbounds %struct.drm_encoder_helper_funcs, %struct.drm_encoder_helper_funcs* %72, i32 0, i32 0
  %74 = load i32 (%struct.drm_encoder.0*, i32)*, i32 (%struct.drm_encoder.0*, i32)** %73, align 8
  %75 = load %struct.drm_encoder*, %struct.drm_encoder** %5, align 8
  %76 = bitcast %struct.drm_encoder* %75 to %struct.drm_encoder.0*
  %77 = load %struct.drm_encoder*, %struct.drm_encoder** %5, align 8
  %78 = call i32 @drm_helper_choose_encoder_dpms(%struct.drm_encoder* %77)
  %79 = call i32 %74(%struct.drm_encoder.0* %76, i32 %78)
  br label %80

80:                                               ; preds = %71, %63
  br label %81

81:                                               ; preds = %80, %60
  br label %82

82:                                               ; preds = %81, %30
  %83 = load i32, i32* %4, align 4
  %84 = load i32, i32* %7, align 4
  %85 = icmp sgt i32 %83, %84
  br i1 %85, label %86, label %128

86:                                               ; preds = %82
  %87 = load %struct.drm_encoder*, %struct.drm_encoder** %5, align 8
  %88 = icmp ne %struct.drm_encoder* %87, null
  br i1 %88, label %89, label %107

89:                                               ; preds = %86
  %90 = load %struct.drm_encoder*, %struct.drm_encoder** %5, align 8
  %91 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %90, i32 0, i32 0
  %92 = load %struct.drm_encoder_helper_funcs*, %struct.drm_encoder_helper_funcs** %91, align 8
  store %struct.drm_encoder_helper_funcs* %92, %struct.drm_encoder_helper_funcs** %10, align 8
  %93 = load %struct.drm_encoder_helper_funcs*, %struct.drm_encoder_helper_funcs** %10, align 8
  %94 = getelementptr inbounds %struct.drm_encoder_helper_funcs, %struct.drm_encoder_helper_funcs* %93, i32 0, i32 0
  %95 = load i32 (%struct.drm_encoder.0*, i32)*, i32 (%struct.drm_encoder.0*, i32)** %94, align 8
  %96 = icmp ne i32 (%struct.drm_encoder.0*, i32)* %95, null
  br i1 %96, label %97, label %106

97:                                               ; preds = %89
  %98 = load %struct.drm_encoder_helper_funcs*, %struct.drm_encoder_helper_funcs** %10, align 8
  %99 = getelementptr inbounds %struct.drm_encoder_helper_funcs, %struct.drm_encoder_helper_funcs* %98, i32 0, i32 0
  %100 = load i32 (%struct.drm_encoder.0*, i32)*, i32 (%struct.drm_encoder.0*, i32)** %99, align 8
  %101 = load %struct.drm_encoder*, %struct.drm_encoder** %5, align 8
  %102 = bitcast %struct.drm_encoder* %101 to %struct.drm_encoder.0*
  %103 = load %struct.drm_encoder*, %struct.drm_encoder** %5, align 8
  %104 = call i32 @drm_helper_choose_encoder_dpms(%struct.drm_encoder* %103)
  %105 = call i32 %100(%struct.drm_encoder.0* %102, i32 %104)
  br label %106

106:                                              ; preds = %97, %89
  br label %107

107:                                              ; preds = %106, %86
  %108 = load %struct.drm_crtc*, %struct.drm_crtc** %6, align 8
  %109 = icmp ne %struct.drm_crtc* %108, null
  br i1 %109, label %110, label %127

110:                                              ; preds = %107
  %111 = load %struct.drm_crtc*, %struct.drm_crtc** %6, align 8
  %112 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %111, i32 0, i32 0
  %113 = load %struct.drm_crtc_helper_funcs*, %struct.drm_crtc_helper_funcs** %112, align 8
  store %struct.drm_crtc_helper_funcs* %113, %struct.drm_crtc_helper_funcs** %11, align 8
  %114 = load %struct.drm_crtc_helper_funcs*, %struct.drm_crtc_helper_funcs** %11, align 8
  %115 = getelementptr inbounds %struct.drm_crtc_helper_funcs, %struct.drm_crtc_helper_funcs* %114, i32 0, i32 0
  %116 = load i32 (%struct.drm_crtc*, i32)*, i32 (%struct.drm_crtc*, i32)** %115, align 8
  %117 = icmp ne i32 (%struct.drm_crtc*, i32)* %116, null
  br i1 %117, label %118, label %126

118:                                              ; preds = %110
  %119 = load %struct.drm_crtc_helper_funcs*, %struct.drm_crtc_helper_funcs** %11, align 8
  %120 = getelementptr inbounds %struct.drm_crtc_helper_funcs, %struct.drm_crtc_helper_funcs* %119, i32 0, i32 0
  %121 = load i32 (%struct.drm_crtc*, i32)*, i32 (%struct.drm_crtc*, i32)** %120, align 8
  %122 = load %struct.drm_crtc*, %struct.drm_crtc** %6, align 8
  %123 = load %struct.drm_crtc*, %struct.drm_crtc** %6, align 8
  %124 = call i32 @drm_helper_choose_crtc_dpms(%struct.drm_crtc* %123)
  %125 = call i32 %121(%struct.drm_crtc* %122, i32 %124)
  br label %126

126:                                              ; preds = %118, %110
  br label %127

127:                                              ; preds = %126, %107
  br label %128

128:                                              ; preds = %127, %82
  br label %129

129:                                              ; preds = %128, %29
  ret void
}

declare dso_local i32 @drm_helper_choose_crtc_dpms(%struct.drm_crtc*) #1

declare dso_local i32 @drm_helper_choose_encoder_dpms(%struct.drm_encoder*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
