; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_cpia.c_reset_camera.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_cpia.c_reset_camera.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cam_data = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.TYPE_11__, %struct.TYPE_10__, %struct.TYPE_9__, %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_11__ = type { i64, i32, i32 }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32, i32 }

@WARM_BOOT_STATE = common dso_local global i64 0, align 8
@ENODEV = common dso_local global i32 0, align 4
@CPIA_COMMAND_DiscardFrame = common dso_local global i32 0, align 4
@CPIA_COMMAND_ModifyCameraStatus = common dso_local global i32 0, align 4
@STREAMSTATE = common dso_local global i32 0, align 4
@STREAM_NOT_READY = common dso_local global i32 0, align 4
@CPIA_COMMAND_GetCameraStatus = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"fatal_error:              %#04x\0A\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"vp_status:                %#04x\0A\00", align 1
@COM_FLAG = common dso_local global i32 0, align 4
@CPIA_FLAG = common dso_local global i32 0, align 4
@FATALERROR = common dso_local global i32 0, align 4
@CPIA_COMMAND_GetVPVersion = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cam_data*)* @reset_camera to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @reset_camera(%struct.cam_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cam_data*, align 8
  %4 = alloca i32, align 4
  store %struct.cam_data* %0, %struct.cam_data** %3, align 8
  %5 = load %struct.cam_data*, %struct.cam_data** %3, align 8
  %6 = call i64 @goto_low_power(%struct.cam_data* %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %37

8:                                                ; preds = %1
  %9 = load %struct.cam_data*, %struct.cam_data** %3, align 8
  %10 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @WARM_BOOT_STATE, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %16, label %19

16:                                               ; preds = %8
  %17 = load i32, i32* @ENODEV, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %192

19:                                               ; preds = %8
  %20 = load %struct.cam_data*, %struct.cam_data** %3, align 8
  %21 = call i32 @goto_high_power(%struct.cam_data* %20)
  store i32 %21, i32* %4, align 4
  %22 = load i32, i32* %4, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %19
  %25 = load i32, i32* %4, align 4
  store i32 %25, i32* %2, align 4
  br label %192

26:                                               ; preds = %19
  %27 = load %struct.cam_data*, %struct.cam_data** %3, align 8
  %28 = load i32, i32* @CPIA_COMMAND_DiscardFrame, align 4
  %29 = call i64 @do_command(%struct.cam_data* %27, i32 %28, i32 0, i32 0, i32 0, i32 0)
  %30 = load %struct.cam_data*, %struct.cam_data** %3, align 8
  %31 = call i64 @goto_low_power(%struct.cam_data* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %26
  %34 = load i32, i32* @ENODEV, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %2, align 4
  br label %192

36:                                               ; preds = %26
  br label %37

37:                                               ; preds = %36, %1
  %38 = load %struct.cam_data*, %struct.cam_data** %3, align 8
  %39 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %39, i32 0, i32 4
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 0
  store i32 0, i32* %41, align 8
  %42 = load %struct.cam_data*, %struct.cam_data** %3, align 8
  %43 = call i32 @get_version_information(%struct.cam_data* %42)
  %44 = load %struct.cam_data*, %struct.cam_data** %3, align 8
  %45 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %45, i32 0, i32 4
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = icmp ne i32 %48, 1
  br i1 %49, label %50, label %53

50:                                               ; preds = %37
  %51 = load i32, i32* @ENODEV, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %2, align 4
  br label %192

53:                                               ; preds = %37
  %54 = load %struct.cam_data*, %struct.cam_data** %3, align 8
  %55 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %55, i32 0, i32 4
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = icmp sle i32 %58, 2
  br i1 %59, label %60, label %72

60:                                               ; preds = %53
  %61 = load %struct.cam_data*, %struct.cam_data** %3, align 8
  %62 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %62, i32 0, i32 3
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = icmp sgt i32 %65, 2
  br i1 %66, label %67, label %72

67:                                               ; preds = %60
  %68 = load %struct.cam_data*, %struct.cam_data** %3, align 8
  %69 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %69, i32 0, i32 3
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 0
  store i32 2, i32* %71, align 4
  br label %72

72:                                               ; preds = %67, %60, %53
  %73 = load %struct.cam_data*, %struct.cam_data** %3, align 8
  %74 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = icmp eq i32 %77, 2067
  br i1 %78, label %79, label %86

79:                                               ; preds = %72
  %80 = load %struct.cam_data*, %struct.cam_data** %3, align 8
  %81 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = icmp eq i32 %84, 1
  br label %86

86:                                               ; preds = %79, %72
  %87 = phi i1 [ false, %72 ], [ %85, %79 ]
  %88 = zext i1 %87 to i32
  %89 = load %struct.cam_data*, %struct.cam_data** %3, align 8
  %90 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %90, i32 0, i32 2
  %92 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %91, i32 0, i32 0
  store i32 %88, i32* %92, align 8
  %93 = load %struct.cam_data*, %struct.cam_data** %3, align 8
  %94 = load i32, i32* @CPIA_COMMAND_ModifyCameraStatus, align 4
  %95 = load i32, i32* @STREAMSTATE, align 4
  %96 = load i32, i32* @STREAM_NOT_READY, align 4
  %97 = call i64 @do_command(%struct.cam_data* %93, i32 %94, i32 %95, i32 0, i32 %96, i32 0)
  %98 = load %struct.cam_data*, %struct.cam_data** %3, align 8
  %99 = call i32 @goto_high_power(%struct.cam_data* %98)
  store i32 %99, i32* %4, align 4
  %100 = load i32, i32* %4, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %104

102:                                              ; preds = %86
  %103 = load i32, i32* %4, align 4
  store i32 %103, i32* %2, align 4
  br label %192

104:                                              ; preds = %86
  %105 = load %struct.cam_data*, %struct.cam_data** %3, align 8
  %106 = load i32, i32* @CPIA_COMMAND_GetCameraStatus, align 4
  %107 = call i64 @do_command(%struct.cam_data* %105, i32 %106, i32 0, i32 0, i32 0, i32 0)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %112

109:                                              ; preds = %104
  %110 = load i32, i32* @EIO, align 4
  %111 = sub nsw i32 0, %110
  store i32 %111, i32* %2, align 4
  br label %192

112:                                              ; preds = %104
  %113 = load %struct.cam_data*, %struct.cam_data** %3, align 8
  %114 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 8
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %168

119:                                              ; preds = %112
  %120 = load %struct.cam_data*, %struct.cam_data** %3, align 8
  %121 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 8
  %125 = call i32 @DBG(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %124)
  %126 = load %struct.cam_data*, %struct.cam_data** %3, align 8
  %127 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 4
  %131 = call i32 @DBG(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %130)
  %132 = load %struct.cam_data*, %struct.cam_data** %3, align 8
  %133 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 8
  %137 = load i32, i32* @COM_FLAG, align 4
  %138 = load i32, i32* @CPIA_FLAG, align 4
  %139 = or i32 %137, %138
  %140 = xor i32 %139, -1
  %141 = and i32 %136, %140
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %146

143:                                              ; preds = %119
  %144 = load i32, i32* @EIO, align 4
  %145 = sub nsw i32 0, %144
  store i32 %145, i32* %2, align 4
  br label %192

146:                                              ; preds = %119
  %147 = load %struct.cam_data*, %struct.cam_data** %3, align 8
  %148 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %147, i32 0, i32 0
  %149 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 8
  %152 = load i32, i32* @COM_FLAG, align 4
  %153 = load i32, i32* @CPIA_FLAG, align 4
  %154 = or i32 %152, %153
  %155 = and i32 %151, %154
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %166

157:                                              ; preds = %146
  %158 = load %struct.cam_data*, %struct.cam_data** %3, align 8
  %159 = load i32, i32* @CPIA_COMMAND_ModifyCameraStatus, align 4
  %160 = load i32, i32* @FATALERROR, align 4
  %161 = load i32, i32* @COM_FLAG, align 4
  %162 = load i32, i32* @CPIA_FLAG, align 4
  %163 = or i32 %161, %162
  %164 = xor i32 %163, -1
  %165 = call i64 @do_command(%struct.cam_data* %158, i32 %159, i32 %160, i32 %164, i32 0, i32 0)
  br label %166

166:                                              ; preds = %157, %146
  br label %167

167:                                              ; preds = %166
  br label %168

168:                                              ; preds = %167, %112
  %169 = load %struct.cam_data*, %struct.cam_data** %3, align 8
  %170 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %169, i32 0, i32 0
  %171 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %170, i32 0, i32 0
  %172 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %171, i32 0, i32 1
  %173 = load i32, i32* %172, align 8
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %186

175:                                              ; preds = %168
  %176 = load %struct.cam_data*, %struct.cam_data** %3, align 8
  %177 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %176, i32 0, i32 0
  %178 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %177, i32 0, i32 0
  %179 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %178, i32 0, i32 1
  %180 = load i32, i32* %179, align 8
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %185

182:                                              ; preds = %175
  %183 = load i32, i32* @EIO, align 4
  %184 = sub nsw i32 0, %183
  store i32 %184, i32* %2, align 4
  br label %192

185:                                              ; preds = %175
  br label %186

186:                                              ; preds = %185, %168
  %187 = load %struct.cam_data*, %struct.cam_data** %3, align 8
  %188 = load i32, i32* @CPIA_COMMAND_GetVPVersion, align 4
  %189 = call i64 @do_command(%struct.cam_data* %187, i32 %188, i32 0, i32 0, i32 0, i32 0)
  %190 = load %struct.cam_data*, %struct.cam_data** %3, align 8
  %191 = call i32 @set_camera_state(%struct.cam_data* %190)
  store i32 %191, i32* %2, align 4
  br label %192

192:                                              ; preds = %186, %182, %143, %109, %102, %50, %33, %24, %16
  %193 = load i32, i32* %2, align 4
  ret i32 %193
}

declare dso_local i64 @goto_low_power(%struct.cam_data*) #1

declare dso_local i32 @goto_high_power(%struct.cam_data*) #1

declare dso_local i64 @do_command(%struct.cam_data*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @get_version_information(%struct.cam_data*) #1

declare dso_local i32 @DBG(i8*, i32) #1

declare dso_local i32 @set_camera_state(%struct.cam_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
