; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/uvc/extr_uvc_ctrl.c_uvc_ctrl_populate_cache.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/uvc/extr_uvc_ctrl.c_uvc_ctrl_populate_cache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uvc_video_chain = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.uvc_control = type { i32, %struct.TYPE_5__, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i32, i32, i32 }
%struct.TYPE_4__ = type { i32 }

@UVC_CONTROL_GET_DEF = common dso_local global i32 0, align 4
@UVC_GET_DEF = common dso_local global i32 0, align 4
@UVC_CTRL_DATA_DEF = common dso_local global i32 0, align 4
@UVC_CONTROL_GET_MIN = common dso_local global i32 0, align 4
@UVC_GET_MIN = common dso_local global i32 0, align 4
@UVC_CTRL_DATA_MIN = common dso_local global i32 0, align 4
@UVC_CONTROL_GET_MAX = common dso_local global i32 0, align 4
@UVC_GET_MAX = common dso_local global i32 0, align 4
@UVC_CTRL_DATA_MAX = common dso_local global i32 0, align 4
@UVC_CONTROL_GET_RES = common dso_local global i32 0, align 4
@UVC_GET_RES = common dso_local global i32 0, align 4
@UVC_CTRL_DATA_RES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uvc_video_chain*, %struct.uvc_control*)* @uvc_ctrl_populate_cache to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uvc_ctrl_populate_cache(%struct.uvc_video_chain* %0, %struct.uvc_control* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.uvc_video_chain*, align 8
  %5 = alloca %struct.uvc_control*, align 8
  %6 = alloca i32, align 4
  store %struct.uvc_video_chain* %0, %struct.uvc_video_chain** %4, align 8
  store %struct.uvc_control* %1, %struct.uvc_control** %5, align 8
  %7 = load %struct.uvc_control*, %struct.uvc_control** %5, align 8
  %8 = getelementptr inbounds %struct.uvc_control, %struct.uvc_control* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @UVC_CONTROL_GET_DEF, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %46

14:                                               ; preds = %2
  %15 = load %struct.uvc_video_chain*, %struct.uvc_video_chain** %4, align 8
  %16 = getelementptr inbounds %struct.uvc_video_chain, %struct.uvc_video_chain* %15, i32 0, i32 0
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %18 = load i32, i32* @UVC_GET_DEF, align 4
  %19 = load %struct.uvc_control*, %struct.uvc_control** %5, align 8
  %20 = getelementptr inbounds %struct.uvc_control, %struct.uvc_control* %19, i32 0, i32 2
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.uvc_video_chain*, %struct.uvc_video_chain** %4, align 8
  %25 = getelementptr inbounds %struct.uvc_video_chain, %struct.uvc_video_chain* %24, i32 0, i32 0
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.uvc_control*, %struct.uvc_control** %5, align 8
  %30 = getelementptr inbounds %struct.uvc_control, %struct.uvc_control* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.uvc_control*, %struct.uvc_control** %5, align 8
  %34 = load i32, i32* @UVC_CTRL_DATA_DEF, align 4
  %35 = call i32 @uvc_ctrl_data(%struct.uvc_control* %33, i32 %34)
  %36 = load %struct.uvc_control*, %struct.uvc_control** %5, align 8
  %37 = getelementptr inbounds %struct.uvc_control, %struct.uvc_control* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @uvc_query_ctrl(%struct.TYPE_6__* %17, i32 %18, i32 %23, i32 %28, i32 %32, i32 %35, i32 %39)
  store i32 %40, i32* %6, align 4
  %41 = load i32, i32* %6, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %14
  %44 = load i32, i32* %6, align 4
  store i32 %44, i32* %3, align 4
  br label %169

45:                                               ; preds = %14
  br label %46

46:                                               ; preds = %45, %2
  %47 = load %struct.uvc_control*, %struct.uvc_control** %5, align 8
  %48 = getelementptr inbounds %struct.uvc_control, %struct.uvc_control* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @UVC_CONTROL_GET_MIN, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %86

54:                                               ; preds = %46
  %55 = load %struct.uvc_video_chain*, %struct.uvc_video_chain** %4, align 8
  %56 = getelementptr inbounds %struct.uvc_video_chain, %struct.uvc_video_chain* %55, i32 0, i32 0
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %56, align 8
  %58 = load i32, i32* @UVC_GET_MIN, align 4
  %59 = load %struct.uvc_control*, %struct.uvc_control** %5, align 8
  %60 = getelementptr inbounds %struct.uvc_control, %struct.uvc_control* %59, i32 0, i32 2
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.uvc_video_chain*, %struct.uvc_video_chain** %4, align 8
  %65 = getelementptr inbounds %struct.uvc_video_chain, %struct.uvc_video_chain* %64, i32 0, i32 0
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.uvc_control*, %struct.uvc_control** %5, align 8
  %70 = getelementptr inbounds %struct.uvc_control, %struct.uvc_control* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.uvc_control*, %struct.uvc_control** %5, align 8
  %74 = load i32, i32* @UVC_CTRL_DATA_MIN, align 4
  %75 = call i32 @uvc_ctrl_data(%struct.uvc_control* %73, i32 %74)
  %76 = load %struct.uvc_control*, %struct.uvc_control** %5, align 8
  %77 = getelementptr inbounds %struct.uvc_control, %struct.uvc_control* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @uvc_query_ctrl(%struct.TYPE_6__* %57, i32 %58, i32 %63, i32 %68, i32 %72, i32 %75, i32 %79)
  store i32 %80, i32* %6, align 4
  %81 = load i32, i32* %6, align 4
  %82 = icmp slt i32 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %54
  %84 = load i32, i32* %6, align 4
  store i32 %84, i32* %3, align 4
  br label %169

85:                                               ; preds = %54
  br label %86

86:                                               ; preds = %85, %46
  %87 = load %struct.uvc_control*, %struct.uvc_control** %5, align 8
  %88 = getelementptr inbounds %struct.uvc_control, %struct.uvc_control* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* @UVC_CONTROL_GET_MAX, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %126

94:                                               ; preds = %86
  %95 = load %struct.uvc_video_chain*, %struct.uvc_video_chain** %4, align 8
  %96 = getelementptr inbounds %struct.uvc_video_chain, %struct.uvc_video_chain* %95, i32 0, i32 0
  %97 = load %struct.TYPE_6__*, %struct.TYPE_6__** %96, align 8
  %98 = load i32, i32* @UVC_GET_MAX, align 4
  %99 = load %struct.uvc_control*, %struct.uvc_control** %5, align 8
  %100 = getelementptr inbounds %struct.uvc_control, %struct.uvc_control* %99, i32 0, i32 2
  %101 = load %struct.TYPE_4__*, %struct.TYPE_4__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.uvc_video_chain*, %struct.uvc_video_chain** %4, align 8
  %105 = getelementptr inbounds %struct.uvc_video_chain, %struct.uvc_video_chain* %104, i32 0, i32 0
  %106 = load %struct.TYPE_6__*, %struct.TYPE_6__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.uvc_control*, %struct.uvc_control** %5, align 8
  %110 = getelementptr inbounds %struct.uvc_control, %struct.uvc_control* %109, i32 0, i32 1
  %111 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.uvc_control*, %struct.uvc_control** %5, align 8
  %114 = load i32, i32* @UVC_CTRL_DATA_MAX, align 4
  %115 = call i32 @uvc_ctrl_data(%struct.uvc_control* %113, i32 %114)
  %116 = load %struct.uvc_control*, %struct.uvc_control** %5, align 8
  %117 = getelementptr inbounds %struct.uvc_control, %struct.uvc_control* %116, i32 0, i32 1
  %118 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = call i32 @uvc_query_ctrl(%struct.TYPE_6__* %97, i32 %98, i32 %103, i32 %108, i32 %112, i32 %115, i32 %119)
  store i32 %120, i32* %6, align 4
  %121 = load i32, i32* %6, align 4
  %122 = icmp slt i32 %121, 0
  br i1 %122, label %123, label %125

123:                                              ; preds = %94
  %124 = load i32, i32* %6, align 4
  store i32 %124, i32* %3, align 4
  br label %169

125:                                              ; preds = %94
  br label %126

126:                                              ; preds = %125, %86
  %127 = load %struct.uvc_control*, %struct.uvc_control** %5, align 8
  %128 = getelementptr inbounds %struct.uvc_control, %struct.uvc_control* %127, i32 0, i32 1
  %129 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = load i32, i32* @UVC_CONTROL_GET_RES, align 4
  %132 = and i32 %130, %131
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %166

134:                                              ; preds = %126
  %135 = load %struct.uvc_video_chain*, %struct.uvc_video_chain** %4, align 8
  %136 = getelementptr inbounds %struct.uvc_video_chain, %struct.uvc_video_chain* %135, i32 0, i32 0
  %137 = load %struct.TYPE_6__*, %struct.TYPE_6__** %136, align 8
  %138 = load i32, i32* @UVC_GET_RES, align 4
  %139 = load %struct.uvc_control*, %struct.uvc_control** %5, align 8
  %140 = getelementptr inbounds %struct.uvc_control, %struct.uvc_control* %139, i32 0, i32 2
  %141 = load %struct.TYPE_4__*, %struct.TYPE_4__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = load %struct.uvc_video_chain*, %struct.uvc_video_chain** %4, align 8
  %145 = getelementptr inbounds %struct.uvc_video_chain, %struct.uvc_video_chain* %144, i32 0, i32 0
  %146 = load %struct.TYPE_6__*, %struct.TYPE_6__** %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = load %struct.uvc_control*, %struct.uvc_control** %5, align 8
  %150 = getelementptr inbounds %struct.uvc_control, %struct.uvc_control* %149, i32 0, i32 1
  %151 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %150, i32 0, i32 2
  %152 = load i32, i32* %151, align 4
  %153 = load %struct.uvc_control*, %struct.uvc_control** %5, align 8
  %154 = load i32, i32* @UVC_CTRL_DATA_RES, align 4
  %155 = call i32 @uvc_ctrl_data(%struct.uvc_control* %153, i32 %154)
  %156 = load %struct.uvc_control*, %struct.uvc_control** %5, align 8
  %157 = getelementptr inbounds %struct.uvc_control, %struct.uvc_control* %156, i32 0, i32 1
  %158 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 4
  %160 = call i32 @uvc_query_ctrl(%struct.TYPE_6__* %137, i32 %138, i32 %143, i32 %148, i32 %152, i32 %155, i32 %159)
  store i32 %160, i32* %6, align 4
  %161 = load i32, i32* %6, align 4
  %162 = icmp slt i32 %161, 0
  br i1 %162, label %163, label %165

163:                                              ; preds = %134
  %164 = load i32, i32* %6, align 4
  store i32 %164, i32* %3, align 4
  br label %169

165:                                              ; preds = %134
  br label %166

166:                                              ; preds = %165, %126
  %167 = load %struct.uvc_control*, %struct.uvc_control** %5, align 8
  %168 = getelementptr inbounds %struct.uvc_control, %struct.uvc_control* %167, i32 0, i32 0
  store i32 1, i32* %168, align 8
  store i32 0, i32* %3, align 4
  br label %169

169:                                              ; preds = %166, %163, %123, %83, %43
  %170 = load i32, i32* %3, align 4
  ret i32 %170
}

declare dso_local i32 @uvc_query_ctrl(%struct.TYPE_6__*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @uvc_ctrl_data(%struct.uvc_control*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
