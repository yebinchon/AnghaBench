; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/ivtv/extr_ivtv-routing.c_ivtv_video_set_io.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/ivtv/extr_ivtv-routing.c_ivtv_video_set_io.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ivtv = type { i32, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32, i64, i64, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64, i32 }

@video = common dso_local global i32 0, align 4
@s_routing = common dso_local global i32 0, align 4
@IVTV_CARD_INPUT_VID_TUNER = common dso_local global i64 0, align 8
@IVTV_CARD_INPUT_COMPOSITE1 = common dso_local global i64 0, align 8
@IVTV_HW_GPIO = common dso_local global i32 0, align 4
@IVTV_HW_UPD64031A = common dso_local global i32 0, align 4
@UPD64031A_GR_ON = common dso_local global i64 0, align 8
@UPD64031A_3DYCS_COMPOSITE = common dso_local global i64 0, align 8
@UPD64031A_GR_OFF = common dso_local global i64 0, align 8
@UPD64031A_3DYCS_DISABLE = common dso_local global i64 0, align 8
@IVTV_HW_UPD6408X = common dso_local global i32 0, align 4
@UPD64083_YCS_MODE = common dso_local global i64 0, align 8
@UPD64083_YCNR_MODE = common dso_local global i64 0, align 8
@IVTV_CARD_CX23416GYC = common dso_local global i64 0, align 8
@UPD64083_EXT_Y_ADC = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ivtv_video_set_io(%struct.ivtv* %0) #0 {
  %2 = alloca %struct.ivtv*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.ivtv* %0, %struct.ivtv** %2, align 8
  %6 = load %struct.ivtv*, %struct.ivtv** %2, align 8
  %7 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  store i32 %8, i32* %3, align 4
  %9 = load %struct.ivtv*, %struct.ivtv** %2, align 8
  %10 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @video, align 4
  %13 = load i32, i32* @s_routing, align 4
  %14 = load %struct.ivtv*, %struct.ivtv** %2, align 8
  %15 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %14, i32 0, i32 1
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 3
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = load i32, i32* %3, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @v4l2_subdev_call(i32 %11, i32 %12, i32 %13, i32 %23, i32 0, i32 0)
  %25 = load %struct.ivtv*, %struct.ivtv** %2, align 8
  %26 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %25, i32 0, i32 1
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 3
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %28, align 8
  %30 = load i32, i32* %3, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  store i64 %34, i64* %5, align 8
  %35 = load i64, i64* %5, align 8
  %36 = load i64, i64* @IVTV_CARD_INPUT_VID_TUNER, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %1
  store i64 0, i64* %4, align 8
  br label %46

39:                                               ; preds = %1
  %40 = load i64, i64* %5, align 8
  %41 = load i64, i64* @IVTV_CARD_INPUT_COMPOSITE1, align 8
  %42 = icmp slt i64 %40, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %39
  store i64 2, i64* %4, align 8
  br label %45

44:                                               ; preds = %39
  store i64 1, i64* %4, align 8
  br label %45

45:                                               ; preds = %44, %43
  br label %46

46:                                               ; preds = %45, %38
  %47 = load %struct.ivtv*, %struct.ivtv** %2, align 8
  %48 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %47, i32 0, i32 1
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* @IVTV_HW_GPIO, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %62

55:                                               ; preds = %46
  %56 = load %struct.ivtv*, %struct.ivtv** %2, align 8
  %57 = load i32, i32* @IVTV_HW_GPIO, align 4
  %58 = load i32, i32* @video, align 4
  %59 = load i32, i32* @s_routing, align 4
  %60 = load i64, i64* %4, align 8
  %61 = call i32 @ivtv_call_hw(%struct.ivtv* %56, i32 %57, i32 %58, i32 %59, i64 %60, i32 0, i32 0)
  br label %62

62:                                               ; preds = %55, %46
  %63 = load %struct.ivtv*, %struct.ivtv** %2, align 8
  %64 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %63, i32 0, i32 1
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* @IVTV_HW_UPD64031A, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %101

71:                                               ; preds = %62
  %72 = load i64, i64* %5, align 8
  %73 = load i64, i64* @IVTV_CARD_INPUT_VID_TUNER, align 8
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %79, label %75

75:                                               ; preds = %71
  %76 = load i64, i64* %5, align 8
  %77 = load i64, i64* @IVTV_CARD_INPUT_COMPOSITE1, align 8
  %78 = icmp sge i64 %76, %77
  br i1 %78, label %79, label %83

79:                                               ; preds = %75, %71
  %80 = load i64, i64* @UPD64031A_GR_ON, align 8
  %81 = load i64, i64* @UPD64031A_3DYCS_COMPOSITE, align 8
  %82 = or i64 %80, %81
  store i64 %82, i64* %4, align 8
  br label %87

83:                                               ; preds = %75
  %84 = load i64, i64* @UPD64031A_GR_OFF, align 8
  %85 = load i64, i64* @UPD64031A_3DYCS_DISABLE, align 8
  %86 = or i64 %84, %85
  store i64 %86, i64* %4, align 8
  br label %87

87:                                               ; preds = %83, %79
  %88 = load %struct.ivtv*, %struct.ivtv** %2, align 8
  %89 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %88, i32 0, i32 1
  %90 = load %struct.TYPE_4__*, %struct.TYPE_4__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* %4, align 8
  %94 = or i64 %93, %92
  store i64 %94, i64* %4, align 8
  %95 = load %struct.ivtv*, %struct.ivtv** %2, align 8
  %96 = load i32, i32* @IVTV_HW_UPD64031A, align 4
  %97 = load i32, i32* @video, align 4
  %98 = load i32, i32* @s_routing, align 4
  %99 = load i64, i64* %4, align 8
  %100 = call i32 @ivtv_call_hw(%struct.ivtv* %95, i32 %96, i32 %97, i32 %98, i64 %99, i32 0, i32 0)
  br label %101

101:                                              ; preds = %87, %62
  %102 = load %struct.ivtv*, %struct.ivtv** %2, align 8
  %103 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %102, i32 0, i32 1
  %104 = load %struct.TYPE_4__*, %struct.TYPE_4__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = load i32, i32* @IVTV_HW_UPD6408X, align 4
  %108 = and i32 %106, %107
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %157

110:                                              ; preds = %101
  %111 = load i64, i64* @UPD64083_YCS_MODE, align 8
  store i64 %111, i64* %4, align 8
  %112 = load i64, i64* %5, align 8
  %113 = load i64, i64* @IVTV_CARD_INPUT_VID_TUNER, align 8
  %114 = icmp sgt i64 %112, %113
  br i1 %114, label %115, label %123

115:                                              ; preds = %110
  %116 = load i64, i64* %5, align 8
  %117 = load i64, i64* @IVTV_CARD_INPUT_COMPOSITE1, align 8
  %118 = icmp slt i64 %116, %117
  br i1 %118, label %119, label %123

119:                                              ; preds = %115
  %120 = load i64, i64* @UPD64083_YCNR_MODE, align 8
  %121 = load i64, i64* %4, align 8
  %122 = or i64 %121, %120
  store i64 %122, i64* %4, align 8
  br label %150

123:                                              ; preds = %115, %110
  %124 = load %struct.ivtv*, %struct.ivtv** %2, align 8
  %125 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %124, i32 0, i32 1
  %126 = load %struct.TYPE_4__*, %struct.TYPE_4__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = load i32, i32* @IVTV_HW_UPD64031A, align 4
  %130 = and i32 %128, %129
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %149

132:                                              ; preds = %123
  %133 = load i64, i64* %5, align 8
  %134 = load i64, i64* @IVTV_CARD_INPUT_VID_TUNER, align 8
  %135 = icmp eq i64 %133, %134
  br i1 %135, label %144, label %136

136:                                              ; preds = %132
  %137 = load %struct.ivtv*, %struct.ivtv** %2, align 8
  %138 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %137, i32 0, i32 1
  %139 = load %struct.TYPE_4__*, %struct.TYPE_4__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %139, i32 0, i32 2
  %141 = load i64, i64* %140, align 8
  %142 = load i64, i64* @IVTV_CARD_CX23416GYC, align 8
  %143 = icmp eq i64 %141, %142
  br i1 %143, label %144, label %148

144:                                              ; preds = %136, %132
  %145 = load i64, i64* @UPD64083_EXT_Y_ADC, align 8
  %146 = load i64, i64* %4, align 8
  %147 = or i64 %146, %145
  store i64 %147, i64* %4, align 8
  br label %148

148:                                              ; preds = %144, %136
  br label %149

149:                                              ; preds = %148, %123
  br label %150

150:                                              ; preds = %149, %119
  %151 = load %struct.ivtv*, %struct.ivtv** %2, align 8
  %152 = load i32, i32* @IVTV_HW_UPD6408X, align 4
  %153 = load i32, i32* @video, align 4
  %154 = load i32, i32* @s_routing, align 4
  %155 = load i64, i64* %4, align 8
  %156 = call i32 @ivtv_call_hw(%struct.ivtv* %151, i32 %152, i32 %153, i32 %154, i64 %155, i32 0, i32 0)
  br label %157

157:                                              ; preds = %150, %101
  ret void
}

declare dso_local i32 @v4l2_subdev_call(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ivtv_call_hw(%struct.ivtv*, i32, i32, i32, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
