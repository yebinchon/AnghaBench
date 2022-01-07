; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_sdvo.c_intel_sdvo_output_setup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_sdvo.c_intel_sdvo_output_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_sdvo = type { i32, i32, %struct.TYPE_4__, %struct.TYPE_3__, i64 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32 }

@SDVO_OUTPUT_TMDS0 = common dso_local global i32 0, align 4
@SDVO_TMDS_MASK = common dso_local global i32 0, align 4
@SDVO_OUTPUT_SVID0 = common dso_local global i32 0, align 4
@SDVO_OUTPUT_CVBS0 = common dso_local global i32 0, align 4
@SDVO_OUTPUT_YPRPB0 = common dso_local global i32 0, align 4
@SDVO_OUTPUT_RGB0 = common dso_local global i32 0, align 4
@SDVO_RGB_MASK = common dso_local global i32 0, align 4
@SDVO_OUTPUT_LVDS0 = common dso_local global i32 0, align 4
@SDVO_LVDS_MASK = common dso_local global i32 0, align 4
@SDVO_OUTPUT_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"%s: Unknown SDVO output type (0x%02x%02x)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_sdvo*, i32)* @intel_sdvo_output_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_sdvo_output_setup(%struct.intel_sdvo* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.intel_sdvo*, align 8
  %5 = alloca i32, align 4
  %6 = alloca [2 x i8], align 1
  store %struct.intel_sdvo* %0, %struct.intel_sdvo** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.intel_sdvo*, %struct.intel_sdvo** %4, align 8
  %8 = getelementptr inbounds %struct.intel_sdvo, %struct.intel_sdvo* %7, i32 0, i32 0
  store i32 0, i32* %8, align 8
  %9 = load %struct.intel_sdvo*, %struct.intel_sdvo** %4, align 8
  %10 = getelementptr inbounds %struct.intel_sdvo, %struct.intel_sdvo* %9, i32 0, i32 2
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  store i32 0, i32* %11, align 8
  %12 = load %struct.intel_sdvo*, %struct.intel_sdvo** %4, align 8
  %13 = getelementptr inbounds %struct.intel_sdvo, %struct.intel_sdvo* %12, i32 0, i32 1
  store i32 0, i32* %13, align 4
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* @SDVO_OUTPUT_TMDS0, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %2
  %19 = load %struct.intel_sdvo*, %struct.intel_sdvo** %4, align 8
  %20 = call i32 @intel_sdvo_dvi_init(%struct.intel_sdvo* %19, i32 0)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %18
  store i32 0, i32* %3, align 4
  br label %142

23:                                               ; preds = %18
  br label %24

24:                                               ; preds = %23, %2
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* @SDVO_TMDS_MASK, align 4
  %27 = and i32 %25, %26
  %28 = load i32, i32* @SDVO_TMDS_MASK, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %36

30:                                               ; preds = %24
  %31 = load %struct.intel_sdvo*, %struct.intel_sdvo** %4, align 8
  %32 = call i32 @intel_sdvo_dvi_init(%struct.intel_sdvo* %31, i32 1)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %30
  store i32 0, i32* %3, align 4
  br label %142

35:                                               ; preds = %30
  br label %36

36:                                               ; preds = %35, %24
  %37 = load i32, i32* %5, align 4
  %38 = load i32, i32* @SDVO_OUTPUT_SVID0, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %48

41:                                               ; preds = %36
  %42 = load %struct.intel_sdvo*, %struct.intel_sdvo** %4, align 8
  %43 = load i32, i32* @SDVO_OUTPUT_SVID0, align 4
  %44 = call i32 @intel_sdvo_tv_init(%struct.intel_sdvo* %42, i32 %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %41
  store i32 0, i32* %3, align 4
  br label %142

47:                                               ; preds = %41
  br label %48

48:                                               ; preds = %47, %36
  %49 = load i32, i32* %5, align 4
  %50 = load i32, i32* @SDVO_OUTPUT_CVBS0, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %60

53:                                               ; preds = %48
  %54 = load %struct.intel_sdvo*, %struct.intel_sdvo** %4, align 8
  %55 = load i32, i32* @SDVO_OUTPUT_CVBS0, align 4
  %56 = call i32 @intel_sdvo_tv_init(%struct.intel_sdvo* %54, i32 %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %59, label %58

58:                                               ; preds = %53
  store i32 0, i32* %3, align 4
  br label %142

59:                                               ; preds = %53
  br label %60

60:                                               ; preds = %59, %48
  %61 = load i32, i32* %5, align 4
  %62 = load i32, i32* @SDVO_OUTPUT_YPRPB0, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %72

65:                                               ; preds = %60
  %66 = load %struct.intel_sdvo*, %struct.intel_sdvo** %4, align 8
  %67 = load i32, i32* @SDVO_OUTPUT_YPRPB0, align 4
  %68 = call i32 @intel_sdvo_tv_init(%struct.intel_sdvo* %66, i32 %67)
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %71, label %70

70:                                               ; preds = %65
  store i32 0, i32* %3, align 4
  br label %142

71:                                               ; preds = %65
  br label %72

72:                                               ; preds = %71, %60
  %73 = load i32, i32* %5, align 4
  %74 = load i32, i32* @SDVO_OUTPUT_RGB0, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %83

77:                                               ; preds = %72
  %78 = load %struct.intel_sdvo*, %struct.intel_sdvo** %4, align 8
  %79 = call i32 @intel_sdvo_analog_init(%struct.intel_sdvo* %78, i32 0)
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %82, label %81

81:                                               ; preds = %77
  store i32 0, i32* %3, align 4
  br label %142

82:                                               ; preds = %77
  br label %83

83:                                               ; preds = %82, %72
  %84 = load i32, i32* %5, align 4
  %85 = load i32, i32* @SDVO_RGB_MASK, align 4
  %86 = and i32 %84, %85
  %87 = load i32, i32* @SDVO_RGB_MASK, align 4
  %88 = icmp eq i32 %86, %87
  br i1 %88, label %89, label %95

89:                                               ; preds = %83
  %90 = load %struct.intel_sdvo*, %struct.intel_sdvo** %4, align 8
  %91 = call i32 @intel_sdvo_analog_init(%struct.intel_sdvo* %90, i32 1)
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %94, label %93

93:                                               ; preds = %89
  store i32 0, i32* %3, align 4
  br label %142

94:                                               ; preds = %89
  br label %95

95:                                               ; preds = %94, %83
  %96 = load i32, i32* %5, align 4
  %97 = load i32, i32* @SDVO_OUTPUT_LVDS0, align 4
  %98 = and i32 %96, %97
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %106

100:                                              ; preds = %95
  %101 = load %struct.intel_sdvo*, %struct.intel_sdvo** %4, align 8
  %102 = call i32 @intel_sdvo_lvds_init(%struct.intel_sdvo* %101, i32 0)
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %105, label %104

104:                                              ; preds = %100
  store i32 0, i32* %3, align 4
  br label %142

105:                                              ; preds = %100
  br label %106

106:                                              ; preds = %105, %95
  %107 = load i32, i32* %5, align 4
  %108 = load i32, i32* @SDVO_LVDS_MASK, align 4
  %109 = and i32 %107, %108
  %110 = load i32, i32* @SDVO_LVDS_MASK, align 4
  %111 = icmp eq i32 %109, %110
  br i1 %111, label %112, label %118

112:                                              ; preds = %106
  %113 = load %struct.intel_sdvo*, %struct.intel_sdvo** %4, align 8
  %114 = call i32 @intel_sdvo_lvds_init(%struct.intel_sdvo* %113, i32 1)
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %117, label %116

116:                                              ; preds = %112
  store i32 0, i32* %3, align 4
  br label %142

117:                                              ; preds = %112
  br label %118

118:                                              ; preds = %117, %106
  %119 = load i32, i32* %5, align 4
  %120 = load i32, i32* @SDVO_OUTPUT_MASK, align 4
  %121 = and i32 %119, %120
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %123, label %138

123:                                              ; preds = %118
  %124 = load %struct.intel_sdvo*, %struct.intel_sdvo** %4, align 8
  %125 = getelementptr inbounds %struct.intel_sdvo, %struct.intel_sdvo* %124, i32 0, i32 4
  store i64 0, i64* %125, align 8
  %126 = getelementptr inbounds [2 x i8], [2 x i8]* %6, i64 0, i64 0
  %127 = load %struct.intel_sdvo*, %struct.intel_sdvo** %4, align 8
  %128 = getelementptr inbounds %struct.intel_sdvo, %struct.intel_sdvo* %127, i32 0, i32 3
  %129 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %128, i32 0, i32 0
  %130 = call i32 @memcpy(i8* %126, i32* %129, i32 2)
  %131 = load %struct.intel_sdvo*, %struct.intel_sdvo** %4, align 8
  %132 = call i32 @SDVO_NAME(%struct.intel_sdvo* %131)
  %133 = getelementptr inbounds [2 x i8], [2 x i8]* %6, i64 0, i64 0
  %134 = load i8, i8* %133, align 1
  %135 = getelementptr inbounds [2 x i8], [2 x i8]* %6, i64 0, i64 1
  %136 = load i8, i8* %135, align 1
  %137 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %132, i8 zeroext %134, i8 zeroext %136)
  store i32 0, i32* %3, align 4
  br label %142

138:                                              ; preds = %118
  %139 = load %struct.intel_sdvo*, %struct.intel_sdvo** %4, align 8
  %140 = getelementptr inbounds %struct.intel_sdvo, %struct.intel_sdvo* %139, i32 0, i32 2
  %141 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %140, i32 0, i32 1
  store i32 7, i32* %141, align 4
  store i32 1, i32* %3, align 4
  br label %142

142:                                              ; preds = %138, %123, %116, %104, %93, %81, %70, %58, %46, %34, %22
  %143 = load i32, i32* %3, align 4
  ret i32 %143
}

declare dso_local i32 @intel_sdvo_dvi_init(%struct.intel_sdvo*, i32) #1

declare dso_local i32 @intel_sdvo_tv_init(%struct.intel_sdvo*, i32) #1

declare dso_local i32 @intel_sdvo_analog_init(%struct.intel_sdvo*, i32) #1

declare dso_local i32 @intel_sdvo_lvds_init(%struct.intel_sdvo*, i32) #1

declare dso_local i32 @memcpy(i8*, i32*, i32) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*, i32, i8 zeroext, i8 zeroext) #1

declare dso_local i32 @SDVO_NAME(%struct.intel_sdvo*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
