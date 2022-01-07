; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nouveau_bios.c_apply_dcb_encoder_quirks.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nouveau_bios.c_apply_dcb_encoder_quirks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.nouveau_drm = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.dcb_table }
%struct.dcb_table = type { i32 }

@DCB_OUTPUT_TMDS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_device*, i32, i32*, i32*)* @apply_dcb_encoder_quirks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @apply_dcb_encoder_quirks(%struct.drm_device* %0, i32 %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.drm_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.nouveau_drm*, align 8
  %11 = alloca %struct.dcb_table*, align 8
  store %struct.drm_device* %0, %struct.drm_device** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %12 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %13 = call %struct.nouveau_drm* @nouveau_drm(%struct.drm_device* %12)
  store %struct.nouveau_drm* %13, %struct.nouveau_drm** %10, align 8
  %14 = load %struct.nouveau_drm*, %struct.nouveau_drm** %10, align 8
  %15 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  store %struct.dcb_table* %16, %struct.dcb_table** %11, align 8
  %17 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %18 = call i64 @nv_match_device(%struct.drm_device* %17, i32 1037, i32 4136, i32 411)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %30

20:                                               ; preds = %4
  %21 = load i32*, i32** %8, align 8
  %22 = load i32, i32* %21, align 4
  %23 = icmp eq i32 %22, 33710866
  br i1 %23, label %24, label %29

24:                                               ; preds = %20
  %25 = load i32*, i32** %9, align 8
  %26 = load i32, i32* %25, align 4
  %27 = icmp eq i32 %26, 32
  br i1 %27, label %28, label %29

28:                                               ; preds = %24
  store i32 0, i32* %5, align 4
  br label %152

29:                                               ; preds = %24, %20
  br label %30

30:                                               ; preds = %29, %4
  %31 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %32 = call i64 @nv_match_device(%struct.drm_device* %31, i32 513, i32 5218, i32 34897)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %47

34:                                               ; preds = %30
  %35 = load i32*, i32** %8, align 8
  %36 = load i32, i32* %35, align 4
  %37 = icmp eq i32 %36, -234860524
  br i1 %37, label %38, label %46

38:                                               ; preds = %34
  %39 = load i32*, i32** %9, align 8
  %40 = load i32, i32* %39, align 4
  %41 = icmp eq i32 %40, -1
  br i1 %41, label %42, label %46

42:                                               ; preds = %38
  %43 = load %struct.dcb_table*, %struct.dcb_table** %11, align 8
  %44 = load i32, i32* @DCB_OUTPUT_TMDS, align 4
  %45 = call i32 @fabricate_dcb_output(%struct.dcb_table* %43, i32 %44, i32 1, i32 1, i32 1)
  store i32 0, i32* %5, align 4
  br label %152

46:                                               ; preds = %38, %34
  br label %47

47:                                               ; preds = %46, %30
  %48 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %49 = call i64 @nv_match_device(%struct.drm_device* %48, i32 3235, i32 5762, i32 12291)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %82

51:                                               ; preds = %47
  %52 = load i32, i32* %7, align 4
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %51
  %55 = load i32*, i32** %8, align 8
  store i32 33559296, i32* %55, align 4
  %56 = load i32*, i32** %9, align 8
  store i32 40, i32* %56, align 4
  br label %81

57:                                               ; preds = %51
  %58 = load i32, i32* %7, align 4
  %59 = icmp eq i32 %58, 1
  br i1 %59, label %60, label %63

60:                                               ; preds = %57
  %61 = load i32*, i32** %8, align 8
  store i32 16843538, i32* %61, align 4
  %62 = load i32*, i32** %9, align 8
  store i32 131120, i32* %62, align 4
  br label %80

63:                                               ; preds = %57
  %64 = load i32, i32* %7, align 4
  %65 = icmp eq i32 %64, 2
  br i1 %65, label %66, label %69

66:                                               ; preds = %63
  %67 = load i32*, i32** %8, align 8
  store i32 16843536, i32* %67, align 4
  %68 = load i32*, i32** %9, align 8
  store i32 40, i32* %68, align 4
  br label %79

69:                                               ; preds = %63
  %70 = load i32, i32* %7, align 4
  %71 = icmp eq i32 %70, 3
  br i1 %71, label %72, label %75

72:                                               ; preds = %69
  %73 = load i32*, i32** %8, align 8
  store i32 33694562, i32* %73, align 4
  %74 = load i32*, i32** %9, align 8
  store i32 131088, i32* %74, align 4
  br label %78

75:                                               ; preds = %69
  %76 = load i32*, i32** %8, align 8
  store i32 14, i32* %76, align 4
  %77 = load i32*, i32** %9, align 8
  store i32 0, i32* %77, align 4
  br label %78

78:                                               ; preds = %75, %72
  br label %79

79:                                               ; preds = %78, %66
  br label %80

80:                                               ; preds = %79, %60
  br label %81

81:                                               ; preds = %80, %54
  br label %82

82:                                               ; preds = %81, %47
  %83 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %84 = call i64 @nv_match_device(%struct.drm_device* %83, i32 1557, i32 5762, i32 9733)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %117

86:                                               ; preds = %82
  %87 = load i32, i32* %7, align 4
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %92

89:                                               ; preds = %86
  %90 = load i32*, i32** %8, align 8
  store i32 33563392, i32* %90, align 4
  %91 = load i32*, i32** %9, align 8
  store i32 40, i32* %91, align 4
  br label %116

92:                                               ; preds = %86
  %93 = load i32, i32* %7, align 4
  %94 = icmp eq i32 %93, 1
  br i1 %94, label %95, label %98

95:                                               ; preds = %92
  %96 = load i32*, i32** %8, align 8
  store i32 16843538, i32* %96, align 4
  %97 = load i32*, i32** %9, align 8
  store i32 131120, i32* %97, align 4
  br label %115

98:                                               ; preds = %92
  %99 = load i32, i32* %7, align 4
  %100 = icmp eq i32 %99, 2
  br i1 %100, label %101, label %104

101:                                              ; preds = %98
  %102 = load i32*, i32** %8, align 8
  store i32 67240720, i32* %102, align 4
  %103 = load i32*, i32** %9, align 8
  store i32 40, i32* %103, align 4
  br label %114

104:                                              ; preds = %98
  %105 = load i32, i32* %7, align 4
  %106 = icmp eq i32 %105, 3
  br i1 %106, label %107, label %110

107:                                              ; preds = %104
  %108 = load i32*, i32** %8, align 8
  store i32 33690402, i32* %108, align 4
  %109 = load i32*, i32** %9, align 8
  store i32 131088, i32* %109, align 4
  br label %113

110:                                              ; preds = %104
  %111 = load i32*, i32** %8, align 8
  store i32 14, i32* %111, align 4
  %112 = load i32*, i32** %9, align 8
  store i32 0, i32* %112, align 4
  br label %113

113:                                              ; preds = %110, %107
  br label %114

114:                                              ; preds = %113, %101
  br label %115

115:                                              ; preds = %114, %95
  br label %116

116:                                              ; preds = %115, %89
  br label %117

117:                                              ; preds = %116, %82
  %118 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %119 = call i64 @nv_match_device(%struct.drm_device* %118, i32 1057, i32 14402, i32 51091)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %151

121:                                              ; preds = %117
  %122 = load i32, i32* %7, align 4
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %124, label %130

124:                                              ; preds = %121
  %125 = load i32*, i32** %8, align 8
  %126 = load i32, i32* %125, align 4
  %127 = icmp eq i32 %126, 33555200
  br i1 %127, label %128, label %130

128:                                              ; preds = %124
  %129 = load i32*, i32** %8, align 8
  store i32 33624832, i32* %129, align 4
  br label %150

130:                                              ; preds = %124, %121
  %131 = load i32, i32* %7, align 4
  %132 = icmp eq i32 %131, 1
  br i1 %132, label %133, label %139

133:                                              ; preds = %130
  %134 = load i32*, i32** %8, align 8
  %135 = load i32, i32* %134, align 4
  %136 = icmp eq i32 %135, 67179280
  br i1 %136, label %137, label %139

137:                                              ; preds = %133
  %138 = load i32*, i32** %8, align 8
  store i32 67109648, i32* %138, align 4
  br label %149

139:                                              ; preds = %133, %130
  %140 = load i32, i32* %7, align 4
  %141 = icmp eq i32 %140, 2
  br i1 %141, label %142, label %148

142:                                              ; preds = %139
  %143 = load i32*, i32** %8, align 8
  %144 = load i32, i32* %143, align 4
  %145 = icmp eq i32 %144, 33624850
  br i1 %145, label %146, label %148

146:                                              ; preds = %142
  %147 = load i32*, i32** %8, align 8
  store i32 33555218, i32* %147, align 4
  br label %148

148:                                              ; preds = %146, %142, %139
  br label %149

149:                                              ; preds = %148, %137
  br label %150

150:                                              ; preds = %149, %128
  br label %151

151:                                              ; preds = %150, %117
  store i32 1, i32* %5, align 4
  br label %152

152:                                              ; preds = %151, %42, %28
  %153 = load i32, i32* %5, align 4
  ret i32 %153
}

declare dso_local %struct.nouveau_drm* @nouveau_drm(%struct.drm_device*) #1

declare dso_local i64 @nv_match_device(%struct.drm_device*, i32, i32, i32) #1

declare dso_local i32 @fabricate_dcb_output(%struct.dcb_table*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
