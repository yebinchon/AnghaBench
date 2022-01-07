; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_cpia.c_dispatch_commands.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_cpia.c_dispatch_commands.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cam_data = type { i32, i32, i32, %struct.TYPE_20__ }
%struct.TYPE_20__ = type { i32, %struct.TYPE_16__, %struct.TYPE_30__, %struct.TYPE_29__, %struct.TYPE_28__, %struct.TYPE_27__, %struct.TYPE_26__, %struct.TYPE_25__, %struct.TYPE_24__, %struct.TYPE_23__, %struct.TYPE_22__, %struct.TYPE_21__, %struct.TYPE_19__, %struct.TYPE_18__, %struct.TYPE_17__ }
%struct.TYPE_16__ = type { i64, i64, i64 }
%struct.TYPE_30__ = type { i32, i32, i32 }
%struct.TYPE_29__ = type { i32, i32 }
%struct.TYPE_28__ = type { i32, i32 }
%struct.TYPE_27__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_26__ = type { i32, i32 }
%struct.TYPE_25__ = type { i32, i32, i32 }
%struct.TYPE_24__ = type { i32, i32, i32, i32 }
%struct.TYPE_23__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_22__ = type { i32, i32, i32, i32 }
%struct.TYPE_21__ = type { i32, i32, i32, i32 }
%struct.TYPE_19__ = type { i32, i32, i32 }
%struct.TYPE_18__ = type { i32, i32, i32, i32 }
%struct.TYPE_17__ = type { i32, i32, i32 }

@COMMAND_NONE = common dso_local global i32 0, align 4
@COMMAND_SETFORMAT = common dso_local global i32 0, align 4
@CPIA_COMMAND_SetFormat = common dso_local global i32 0, align 4
@CPIA_COMMAND_SetROI = common dso_local global i32 0, align 4
@COMMAND_SETCOLOURPARAMS = common dso_local global i32 0, align 4
@CPIA_COMMAND_SetColourParams = common dso_local global i32 0, align 4
@COMMAND_SETAPCOR = common dso_local global i32 0, align 4
@CPIA_COMMAND_SetApcor = common dso_local global i32 0, align 4
@COMMAND_SETVLOFFSET = common dso_local global i32 0, align 4
@CPIA_COMMAND_SetVLOffset = common dso_local global i32 0, align 4
@COMMAND_SETEXPOSURE = common dso_local global i32 0, align 4
@CPIA_COMMAND_SetExposure = common dso_local global i32 0, align 4
@COMMAND_SETCOLOURBALANCE = common dso_local global i32 0, align 4
@CPIA_COMMAND_SetColourBalance = common dso_local global i32 0, align 4
@COMMAND_SETCOMPRESSIONTARGET = common dso_local global i32 0, align 4
@CPIA_COMMAND_SetCompressionTarget = common dso_local global i32 0, align 4
@COMMAND_SETYUVTHRESH = common dso_local global i32 0, align 4
@CPIA_COMMAND_SetYUVThresh = common dso_local global i32 0, align 4
@COMMAND_SETCOMPRESSIONPARAMS = common dso_local global i32 0, align 4
@CPIA_COMMAND_SetCompressionParams = common dso_local global i32 0, align 4
@COMMAND_SETCOMPRESSION = common dso_local global i32 0, align 4
@CPIA_COMMAND_SetCompression = common dso_local global i32 0, align 4
@COMMAND_SETSENSORFPS = common dso_local global i32 0, align 4
@CPIA_COMMAND_SetSensorFPS = common dso_local global i32 0, align 4
@COMMAND_SETFLICKERCTRL = common dso_local global i32 0, align 4
@CPIA_COMMAND_SetFlickerCtrl = common dso_local global i32 0, align 4
@COMMAND_SETECPTIMING = common dso_local global i32 0, align 4
@CPIA_COMMAND_SetECPTiming = common dso_local global i32 0, align 4
@COMMAND_PAUSE = common dso_local global i32 0, align 4
@CPIA_COMMAND_EndStreamCap = common dso_local global i32 0, align 4
@COMMAND_RESUME = common dso_local global i32 0, align 4
@COMMAND_SETLIGHTS = common dso_local global i32 0, align 4
@CPIA_COMMAND_WriteVCReg = common dso_local global i32 0, align 4
@CPIA_COMMAND_WriteMCPort = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cam_data*)* @dispatch_commands to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dispatch_commands(%struct.cam_data* %0) #0 {
  %2 = alloca %struct.cam_data*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.cam_data* %0, %struct.cam_data** %2, align 8
  %5 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %6 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %5, i32 0, i32 2
  %7 = call i32 @mutex_lock(i32* %6)
  %8 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %9 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* @COMMAND_NONE, align 4
  %12 = icmp eq i32 %10, %11
  br i1 %12, label %13, label %17

13:                                               ; preds = %1
  %14 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %15 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %14, i32 0, i32 2
  %16 = call i32 @mutex_unlock(i32* %15)
  br label %577

17:                                               ; preds = %1
  %18 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %19 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @DEB_BYTE(i32 %20)
  %22 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %23 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = ashr i32 %24, 8
  %26 = call i32 @DEB_BYTE(i32 %25)
  %27 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %28 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @COMMAND_SETFORMAT, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %77

33:                                               ; preds = %17
  %34 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %35 = load i32, i32* @CPIA_COMMAND_SetFormat, align 4
  %36 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %37 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %36, i32 0, i32 3
  %38 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %37, i32 0, i32 14
  %39 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %42 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %41, i32 0, i32 3
  %43 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %42, i32 0, i32 14
  %44 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %47 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %46, i32 0, i32 3
  %48 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %47, i32 0, i32 14
  %49 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @do_command(%struct.cam_data* %34, i32 %35, i32 %40, i32 %45, i32 %50, i32 0)
  %52 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %53 = load i32, i32* @CPIA_COMMAND_SetROI, align 4
  %54 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %55 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %54, i32 0, i32 3
  %56 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %55, i32 0, i32 13
  %57 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %60 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %59, i32 0, i32 3
  %61 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %60, i32 0, i32 13
  %62 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %65 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %64, i32 0, i32 3
  %66 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %65, i32 0, i32 13
  %67 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %70 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %69, i32 0, i32 3
  %71 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %70, i32 0, i32 13
  %72 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %71, i32 0, i32 3
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @do_command(%struct.cam_data* %52, i32 %53, i32 %58, i32 %63, i32 %68, i32 %73)
  %75 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %76 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %75, i32 0, i32 1
  store i32 1, i32* %76, align 4
  br label %77

77:                                               ; preds = %33, %17
  %78 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %79 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* @COMMAND_SETCOLOURPARAMS, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %103

84:                                               ; preds = %77
  %85 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %86 = load i32, i32* @CPIA_COMMAND_SetColourParams, align 4
  %87 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %88 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %87, i32 0, i32 3
  %89 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %88, i32 0, i32 12
  %90 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %93 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %92, i32 0, i32 3
  %94 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %93, i32 0, i32 12
  %95 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %98 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %97, i32 0, i32 3
  %99 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %98, i32 0, i32 12
  %100 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 8
  %102 = call i32 @do_command(%struct.cam_data* %85, i32 %86, i32 %91, i32 %96, i32 %101, i32 0)
  br label %103

103:                                              ; preds = %84, %77
  %104 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %105 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = load i32, i32* @COMMAND_SETAPCOR, align 4
  %108 = and i32 %106, %107
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %134

110:                                              ; preds = %103
  %111 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %112 = load i32, i32* @CPIA_COMMAND_SetApcor, align 4
  %113 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %114 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %113, i32 0, i32 3
  %115 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %114, i32 0, i32 11
  %116 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %119 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %118, i32 0, i32 3
  %120 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %119, i32 0, i32 11
  %121 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %124 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %123, i32 0, i32 3
  %125 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %124, i32 0, i32 11
  %126 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %125, i32 0, i32 2
  %127 = load i32, i32* %126, align 8
  %128 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %129 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %128, i32 0, i32 3
  %130 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %129, i32 0, i32 11
  %131 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %130, i32 0, i32 3
  %132 = load i32, i32* %131, align 4
  %133 = call i32 @do_command(%struct.cam_data* %111, i32 %112, i32 %117, i32 %122, i32 %127, i32 %132)
  br label %134

134:                                              ; preds = %110, %103
  %135 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %136 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = load i32, i32* @COMMAND_SETVLOFFSET, align 4
  %139 = and i32 %137, %138
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %165

141:                                              ; preds = %134
  %142 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %143 = load i32, i32* @CPIA_COMMAND_SetVLOffset, align 4
  %144 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %145 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %144, i32 0, i32 3
  %146 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %145, i32 0, i32 10
  %147 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %150 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %149, i32 0, i32 3
  %151 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %150, i32 0, i32 10
  %152 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 4
  %154 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %155 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %154, i32 0, i32 3
  %156 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %155, i32 0, i32 10
  %157 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %156, i32 0, i32 2
  %158 = load i32, i32* %157, align 8
  %159 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %160 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %159, i32 0, i32 3
  %161 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %160, i32 0, i32 10
  %162 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %161, i32 0, i32 3
  %163 = load i32, i32* %162, align 4
  %164 = call i32 @do_command(%struct.cam_data* %142, i32 %143, i32 %148, i32 %153, i32 %158, i32 %163)
  br label %165

165:                                              ; preds = %141, %134
  %166 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %167 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 8
  %169 = load i32, i32* @COMMAND_SETEXPOSURE, align 4
  %170 = and i32 %168, %169
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %267

172:                                              ; preds = %165
  %173 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %174 = load i32, i32* @CPIA_COMMAND_SetExposure, align 4
  %175 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %176 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %175, i32 0, i32 3
  %177 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %176, i32 0, i32 9
  %178 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %177, i32 0, i32 11
  %179 = load i32, i32* %178, align 4
  %180 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %181 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %180, i32 0, i32 3
  %182 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %181, i32 0, i32 9
  %183 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %182, i32 0, i32 10
  %184 = load i32, i32* %183, align 8
  %185 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %186 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %185, i32 0, i32 3
  %187 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %186, i32 0, i32 9
  %188 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %187, i32 0, i32 9
  %189 = load i32, i32* %188, align 4
  %190 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %191 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %190, i32 0, i32 3
  %192 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %191, i32 0, i32 9
  %193 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %192, i32 0, i32 4
  %194 = load i32, i32* %193, align 8
  %195 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %196 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %195, i32 0, i32 3
  %197 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %196, i32 0, i32 9
  %198 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %197, i32 0, i32 3
  %199 = load i32, i32* %198, align 4
  %200 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %201 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %200, i32 0, i32 3
  %202 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %201, i32 0, i32 9
  %203 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %202, i32 0, i32 2
  %204 = load i32, i32* %203, align 8
  %205 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %206 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %205, i32 0, i32 3
  %207 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %206, i32 0, i32 9
  %208 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %207, i32 0, i32 1
  %209 = load i32, i32* %208, align 4
  %210 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %211 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %210, i32 0, i32 3
  %212 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %211, i32 0, i32 9
  %213 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %212, i32 0, i32 8
  %214 = load i32, i32* %213, align 8
  %215 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %216 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %215, i32 0, i32 3
  %217 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %216, i32 0, i32 9
  %218 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %217, i32 0, i32 7
  %219 = load i32, i32* %218, align 4
  %220 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %221 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %220, i32 0, i32 3
  %222 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %221, i32 0, i32 9
  %223 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %222, i32 0, i32 6
  %224 = load i32, i32* %223, align 8
  %225 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %226 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %225, i32 0, i32 3
  %227 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %226, i32 0, i32 9
  %228 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %227, i32 0, i32 5
  %229 = load i32, i32* %228, align 4
  %230 = call i32 @do_command_extended(%struct.cam_data* %173, i32 %174, i32 %179, i32 1, i32 %184, i32 %189, i32 %194, i32 %199, i32 %204, i32 %209, i32 %214, i32 %219, i32 %224, i32 %229)
  %231 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %232 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %231, i32 0, i32 3
  %233 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %232, i32 0, i32 9
  %234 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %233, i32 0, i32 0
  %235 = load i32, i32* %234, align 8
  %236 = icmp ne i32 %235, 1
  br i1 %236, label %237, label %266

237:                                              ; preds = %172
  %238 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %239 = load i32, i32* @CPIA_COMMAND_SetExposure, align 4
  %240 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %241 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %240, i32 0, i32 3
  %242 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %241, i32 0, i32 9
  %243 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %242, i32 0, i32 0
  %244 = load i32, i32* %243, align 8
  %245 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %246 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %245, i32 0, i32 3
  %247 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %246, i32 0, i32 9
  %248 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %247, i32 0, i32 4
  %249 = load i32, i32* %248, align 8
  %250 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %251 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %250, i32 0, i32 3
  %252 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %251, i32 0, i32 9
  %253 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %252, i32 0, i32 3
  %254 = load i32, i32* %253, align 4
  %255 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %256 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %255, i32 0, i32 3
  %257 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %256, i32 0, i32 9
  %258 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %257, i32 0, i32 2
  %259 = load i32, i32* %258, align 8
  %260 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %261 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %260, i32 0, i32 3
  %262 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %261, i32 0, i32 9
  %263 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %262, i32 0, i32 1
  %264 = load i32, i32* %263, align 4
  %265 = call i32 @do_command_extended(%struct.cam_data* %238, i32 %239, i32 0, i32 %244, i32 0, i32 0, i32 %249, i32 %254, i32 %259, i32 %264, i32 0, i32 0, i32 0, i32 0)
  br label %266

266:                                              ; preds = %237, %172
  br label %267

267:                                              ; preds = %266, %165
  %268 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %269 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %268, i32 0, i32 0
  %270 = load i32, i32* %269, align 8
  %271 = load i32, i32* @COMMAND_SETCOLOURBALANCE, align 4
  %272 = and i32 %270, %271
  %273 = icmp ne i32 %272, 0
  br i1 %273, label %274, label %326

274:                                              ; preds = %267
  %275 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %276 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %275, i32 0, i32 3
  %277 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %276, i32 0, i32 8
  %278 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %277, i32 0, i32 0
  %279 = load i32, i32* %278, align 8
  %280 = icmp eq i32 %279, 1
  br i1 %280, label %281, label %303

281:                                              ; preds = %274
  %282 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %283 = load i32, i32* @CPIA_COMMAND_SetColourBalance, align 4
  %284 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %285 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %284, i32 0, i32 3
  %286 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %285, i32 0, i32 8
  %287 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %286, i32 0, i32 1
  %288 = load i32, i32* %287, align 4
  %289 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %290 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %289, i32 0, i32 3
  %291 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %290, i32 0, i32 8
  %292 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %291, i32 0, i32 2
  %293 = load i32, i32* %292, align 8
  %294 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %295 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %294, i32 0, i32 3
  %296 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %295, i32 0, i32 8
  %297 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %296, i32 0, i32 3
  %298 = load i32, i32* %297, align 4
  %299 = call i32 @do_command(%struct.cam_data* %282, i32 %283, i32 1, i32 %288, i32 %293, i32 %298)
  %300 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %301 = load i32, i32* @CPIA_COMMAND_SetColourBalance, align 4
  %302 = call i32 @do_command(%struct.cam_data* %300, i32 %301, i32 3, i32 0, i32 0, i32 0)
  br label %303

303:                                              ; preds = %281, %274
  %304 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %305 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %304, i32 0, i32 3
  %306 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %305, i32 0, i32 8
  %307 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %306, i32 0, i32 0
  %308 = load i32, i32* %307, align 8
  %309 = icmp eq i32 %308, 2
  br i1 %309, label %310, label %314

310:                                              ; preds = %303
  %311 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %312 = load i32, i32* @CPIA_COMMAND_SetColourBalance, align 4
  %313 = call i32 @do_command(%struct.cam_data* %311, i32 %312, i32 2, i32 0, i32 0, i32 0)
  br label %314

314:                                              ; preds = %310, %303
  %315 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %316 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %315, i32 0, i32 3
  %317 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %316, i32 0, i32 8
  %318 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %317, i32 0, i32 0
  %319 = load i32, i32* %318, align 8
  %320 = icmp eq i32 %319, 3
  br i1 %320, label %321, label %325

321:                                              ; preds = %314
  %322 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %323 = load i32, i32* @CPIA_COMMAND_SetColourBalance, align 4
  %324 = call i32 @do_command(%struct.cam_data* %322, i32 %323, i32 3, i32 0, i32 0, i32 0)
  br label %325

325:                                              ; preds = %321, %314
  br label %326

326:                                              ; preds = %325, %267
  %327 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %328 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %327, i32 0, i32 0
  %329 = load i32, i32* %328, align 8
  %330 = load i32, i32* @COMMAND_SETCOMPRESSIONTARGET, align 4
  %331 = and i32 %329, %330
  %332 = icmp ne i32 %331, 0
  br i1 %332, label %333, label %352

333:                                              ; preds = %326
  %334 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %335 = load i32, i32* @CPIA_COMMAND_SetCompressionTarget, align 4
  %336 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %337 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %336, i32 0, i32 3
  %338 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %337, i32 0, i32 7
  %339 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %338, i32 0, i32 0
  %340 = load i32, i32* %339, align 4
  %341 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %342 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %341, i32 0, i32 3
  %343 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %342, i32 0, i32 7
  %344 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %343, i32 0, i32 1
  %345 = load i32, i32* %344, align 4
  %346 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %347 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %346, i32 0, i32 3
  %348 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %347, i32 0, i32 7
  %349 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %348, i32 0, i32 2
  %350 = load i32, i32* %349, align 4
  %351 = call i32 @do_command(%struct.cam_data* %334, i32 %335, i32 %340, i32 %345, i32 %350, i32 0)
  br label %352

352:                                              ; preds = %333, %326
  %353 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %354 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %353, i32 0, i32 0
  %355 = load i32, i32* %354, align 8
  %356 = load i32, i32* @COMMAND_SETYUVTHRESH, align 4
  %357 = and i32 %355, %356
  %358 = icmp ne i32 %357, 0
  br i1 %358, label %359, label %373

359:                                              ; preds = %352
  %360 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %361 = load i32, i32* @CPIA_COMMAND_SetYUVThresh, align 4
  %362 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %363 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %362, i32 0, i32 3
  %364 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %363, i32 0, i32 6
  %365 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %364, i32 0, i32 0
  %366 = load i32, i32* %365, align 4
  %367 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %368 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %367, i32 0, i32 3
  %369 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %368, i32 0, i32 6
  %370 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %369, i32 0, i32 1
  %371 = load i32, i32* %370, align 4
  %372 = call i32 @do_command(%struct.cam_data* %360, i32 %361, i32 %366, i32 %371, i32 0, i32 0)
  br label %373

373:                                              ; preds = %359, %352
  %374 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %375 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %374, i32 0, i32 0
  %376 = load i32, i32* %375, align 8
  %377 = load i32, i32* @COMMAND_SETCOMPRESSIONPARAMS, align 4
  %378 = and i32 %376, %377
  %379 = icmp ne i32 %378, 0
  br i1 %379, label %380, label %424

380:                                              ; preds = %373
  %381 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %382 = load i32, i32* @CPIA_COMMAND_SetCompressionParams, align 4
  %383 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %384 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %383, i32 0, i32 3
  %385 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %384, i32 0, i32 5
  %386 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %385, i32 0, i32 7
  %387 = load i32, i32* %386, align 4
  %388 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %389 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %388, i32 0, i32 3
  %390 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %389, i32 0, i32 5
  %391 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %390, i32 0, i32 6
  %392 = load i32, i32* %391, align 4
  %393 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %394 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %393, i32 0, i32 3
  %395 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %394, i32 0, i32 5
  %396 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %395, i32 0, i32 5
  %397 = load i32, i32* %396, align 4
  %398 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %399 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %398, i32 0, i32 3
  %400 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %399, i32 0, i32 5
  %401 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %400, i32 0, i32 4
  %402 = load i32, i32* %401, align 4
  %403 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %404 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %403, i32 0, i32 3
  %405 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %404, i32 0, i32 5
  %406 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %405, i32 0, i32 3
  %407 = load i32, i32* %406, align 4
  %408 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %409 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %408, i32 0, i32 3
  %410 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %409, i32 0, i32 5
  %411 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %410, i32 0, i32 2
  %412 = load i32, i32* %411, align 4
  %413 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %414 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %413, i32 0, i32 3
  %415 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %414, i32 0, i32 5
  %416 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %415, i32 0, i32 1
  %417 = load i32, i32* %416, align 4
  %418 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %419 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %418, i32 0, i32 3
  %420 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %419, i32 0, i32 5
  %421 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %420, i32 0, i32 0
  %422 = load i32, i32* %421, align 4
  %423 = call i32 @do_command_extended(%struct.cam_data* %381, i32 %382, i32 0, i32 0, i32 0, i32 0, i32 %387, i32 %392, i32 %397, i32 %402, i32 %407, i32 %412, i32 %417, i32 %422)
  br label %424

424:                                              ; preds = %380, %373
  %425 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %426 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %425, i32 0, i32 0
  %427 = load i32, i32* %426, align 8
  %428 = load i32, i32* @COMMAND_SETCOMPRESSION, align 4
  %429 = and i32 %427, %428
  %430 = icmp ne i32 %429, 0
  br i1 %430, label %431, label %445

431:                                              ; preds = %424
  %432 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %433 = load i32, i32* @CPIA_COMMAND_SetCompression, align 4
  %434 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %435 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %434, i32 0, i32 3
  %436 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %435, i32 0, i32 4
  %437 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %436, i32 0, i32 0
  %438 = load i32, i32* %437, align 4
  %439 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %440 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %439, i32 0, i32 3
  %441 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %440, i32 0, i32 4
  %442 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %441, i32 0, i32 1
  %443 = load i32, i32* %442, align 4
  %444 = call i32 @do_command(%struct.cam_data* %432, i32 %433, i32 %438, i32 %443, i32 0, i32 0)
  br label %445

445:                                              ; preds = %431, %424
  %446 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %447 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %446, i32 0, i32 0
  %448 = load i32, i32* %447, align 8
  %449 = load i32, i32* @COMMAND_SETSENSORFPS, align 4
  %450 = and i32 %448, %449
  %451 = icmp ne i32 %450, 0
  br i1 %451, label %452, label %466

452:                                              ; preds = %445
  %453 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %454 = load i32, i32* @CPIA_COMMAND_SetSensorFPS, align 4
  %455 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %456 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %455, i32 0, i32 3
  %457 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %456, i32 0, i32 3
  %458 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %457, i32 0, i32 0
  %459 = load i32, i32* %458, align 4
  %460 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %461 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %460, i32 0, i32 3
  %462 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %461, i32 0, i32 3
  %463 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %462, i32 0, i32 1
  %464 = load i32, i32* %463, align 4
  %465 = call i32 @do_command(%struct.cam_data* %453, i32 %454, i32 %459, i32 %464, i32 0, i32 0)
  br label %466

466:                                              ; preds = %452, %445
  %467 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %468 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %467, i32 0, i32 0
  %469 = load i32, i32* %468, align 8
  %470 = load i32, i32* @COMMAND_SETFLICKERCTRL, align 4
  %471 = and i32 %469, %470
  %472 = icmp ne i32 %471, 0
  br i1 %472, label %473, label %493

473:                                              ; preds = %466
  %474 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %475 = load i32, i32* @CPIA_COMMAND_SetFlickerCtrl, align 4
  %476 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %477 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %476, i32 0, i32 3
  %478 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %477, i32 0, i32 2
  %479 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %478, i32 0, i32 0
  %480 = load i32, i32* %479, align 8
  %481 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %482 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %481, i32 0, i32 3
  %483 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %482, i32 0, i32 2
  %484 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %483, i32 0, i32 1
  %485 = load i32, i32* %484, align 4
  %486 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %487 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %486, i32 0, i32 3
  %488 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %487, i32 0, i32 2
  %489 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %488, i32 0, i32 2
  %490 = load i32, i32* %489, align 8
  %491 = call i32 @abs(i32 %490) #3
  %492 = call i32 @do_command(%struct.cam_data* %474, i32 %475, i32 %480, i32 %485, i32 %491, i32 0)
  br label %493

493:                                              ; preds = %473, %466
  %494 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %495 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %494, i32 0, i32 0
  %496 = load i32, i32* %495, align 8
  %497 = load i32, i32* @COMMAND_SETECPTIMING, align 4
  %498 = and i32 %496, %497
  %499 = icmp ne i32 %498, 0
  br i1 %499, label %500, label %508

500:                                              ; preds = %493
  %501 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %502 = load i32, i32* @CPIA_COMMAND_SetECPTiming, align 4
  %503 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %504 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %503, i32 0, i32 3
  %505 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %504, i32 0, i32 0
  %506 = load i32, i32* %505, align 8
  %507 = call i32 @do_command(%struct.cam_data* %501, i32 %502, i32 %506, i32 0, i32 0, i32 0)
  br label %508

508:                                              ; preds = %500, %493
  %509 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %510 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %509, i32 0, i32 0
  %511 = load i32, i32* %510, align 8
  %512 = load i32, i32* @COMMAND_PAUSE, align 4
  %513 = and i32 %511, %512
  %514 = icmp ne i32 %513, 0
  br i1 %514, label %515, label %519

515:                                              ; preds = %508
  %516 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %517 = load i32, i32* @CPIA_COMMAND_EndStreamCap, align 4
  %518 = call i32 @do_command(%struct.cam_data* %516, i32 %517, i32 0, i32 0, i32 0, i32 0)
  br label %519

519:                                              ; preds = %515, %508
  %520 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %521 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %520, i32 0, i32 0
  %522 = load i32, i32* %521, align 8
  %523 = load i32, i32* @COMMAND_RESUME, align 4
  %524 = and i32 %522, %523
  %525 = icmp ne i32 %524, 0
  br i1 %525, label %526, label %529

526:                                              ; preds = %519
  %527 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %528 = call i32 @init_stream_cap(%struct.cam_data* %527)
  br label %529

529:                                              ; preds = %526, %519
  %530 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %531 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %530, i32 0, i32 0
  %532 = load i32, i32* %531, align 8
  %533 = load i32, i32* @COMMAND_SETLIGHTS, align 4
  %534 = and i32 %532, %533
  %535 = icmp ne i32 %534, 0
  br i1 %535, label %536, label %570

536:                                              ; preds = %529
  %537 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %538 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %537, i32 0, i32 3
  %539 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %538, i32 0, i32 1
  %540 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %539, i32 0, i32 2
  %541 = load i64, i64* %540, align 8
  %542 = icmp ne i64 %541, 0
  br i1 %542, label %543, label %570

543:                                              ; preds = %536
  %544 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %545 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %544, i32 0, i32 3
  %546 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %545, i32 0, i32 1
  %547 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %546, i32 0, i32 0
  %548 = load i64, i64* %547, align 8
  %549 = icmp eq i64 %548, 0
  %550 = zext i1 %549 to i32
  %551 = shl i32 %550, 1
  store i32 %551, i32* %3, align 4
  %552 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %553 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %552, i32 0, i32 3
  %554 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %553, i32 0, i32 1
  %555 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %554, i32 0, i32 1
  %556 = load i64, i64* %555, align 8
  %557 = icmp eq i64 %556, 0
  %558 = zext i1 %557 to i32
  %559 = shl i32 %558, 3
  store i32 %559, i32* %4, align 4
  %560 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %561 = load i32, i32* @CPIA_COMMAND_WriteVCReg, align 4
  %562 = call i32 @do_command(%struct.cam_data* %560, i32 %561, i32 144, i32 143, i32 80, i32 0)
  %563 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %564 = load i32, i32* @CPIA_COMMAND_WriteMCPort, align 4
  %565 = load i32, i32* %3, align 4
  %566 = load i32, i32* %4, align 4
  %567 = or i32 %565, %566
  %568 = or i32 %567, 224
  %569 = call i32 @do_command(%struct.cam_data* %563, i32 %564, i32 2, i32 0, i32 %568, i32 0)
  br label %570

570:                                              ; preds = %543, %536, %529
  %571 = load i32, i32* @COMMAND_NONE, align 4
  %572 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %573 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %572, i32 0, i32 0
  store i32 %571, i32* %573, align 8
  %574 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %575 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %574, i32 0, i32 2
  %576 = call i32 @mutex_unlock(i32* %575)
  br label %577

577:                                              ; preds = %570, %13
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @DEB_BYTE(i32) #1

declare dso_local i32 @do_command(%struct.cam_data*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @do_command_extended(%struct.cam_data*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

; Function Attrs: nounwind readnone
declare dso_local i32 @abs(i32) #2

declare dso_local i32 @init_stream_cap(%struct.cam_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
