; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_cpia1.c_sd_start.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_cpia1.c_sd_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gspca_dev = type { i64, i32, i32, %struct.TYPE_18__ }
%struct.TYPE_18__ = type { %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i32 }
%struct.sd = type { i32, i32, i32, i64, i32, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32, %struct.TYPE_20__, %struct.TYPE_19__, %struct.TYPE_16__, %struct.TYPE_15__, %struct.TYPE_14__, %struct.TYPE_13__, %struct.TYPE_12__ }
%struct.TYPE_20__ = type { i32, i32, i32, i32 }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_16__ = type { i64, i32, i32 }
%struct.TYPE_15__ = type { i32, i32 }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { i32, i32 }

@WARM_BOOT_STATE = common dso_local global i64 0, align 8
@D_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"unexpected systemstate: %02x\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@CPIA_COMMAND_DiscardFrame = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [47 x i8] c"only firmware version 1 is supported (got: %d)\00", align 1
@CPIA_COMMAND_ModifyCameraStatus = common dso_local global i32 0, align 4
@STREAMSTATE = common dso_local global i32 0, align 4
@STREAM_NOT_READY = common dso_local global i32 0, align 4
@CPIA_COMMAND_GetCameraStatus = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"fatal_error: %04x, vp_status: %04x\00", align 1
@EIO = common dso_local global i32 0, align 4
@CPIA_COMMAND_GetVPVersion = common dso_local global i32 0, align 4
@VIDEOSIZE_QCIF = common dso_local global i32 0, align 4
@VIDEOSIZE_CIF = common dso_local global i32 0, align 4
@CPIA_COMMAND_SetGrabMode = common dso_local global i32 0, align 4
@CPIA_GRAB_CONTINEOUS = common dso_local global i32 0, align 4
@CPIA_COMMAND_SetCompression = common dso_local global i32 0, align 4
@CPIA_COMPRESSION_NONE = common dso_local global i32 0, align 4
@NO_DECIMATION = common dso_local global i32 0, align 4
@EXPOSURE_NORMAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gspca_dev*)* @sd_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sd_start(%struct.gspca_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.gspca_dev*, align 8
  %4 = alloca %struct.sd*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.gspca_dev* %0, %struct.gspca_dev** %3, align 8
  %7 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %8 = bitcast %struct.gspca_dev* %7 to %struct.sd*
  store %struct.sd* %8, %struct.sd** %4, align 8
  %9 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %10 = call i32 @goto_low_power(%struct.gspca_dev* %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %57

12:                                               ; preds = %1
  %13 = load %struct.sd*, %struct.sd** %4, align 8
  %14 = getelementptr inbounds %struct.sd, %struct.sd* %13, i32 0, i32 5
  %15 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %14, i32 0, i32 3
  %16 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @WARM_BOOT_STATE, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %34

20:                                               ; preds = %12
  %21 = load i32, i32* @D_ERR, align 4
  %22 = load %struct.sd*, %struct.sd** %4, align 8
  %23 = getelementptr inbounds %struct.sd, %struct.sd* %22, i32 0, i32 5
  %24 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %23, i32 0, i32 3
  %25 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = trunc i64 %26 to i32
  %28 = call i32 (i32, i8*, i32, ...) @PDEBUG(i32 %21, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %27)
  %29 = load %struct.sd*, %struct.sd** %4, align 8
  %30 = getelementptr inbounds %struct.sd, %struct.sd* %29, i32 0, i32 5
  %31 = call i32 @printstatus(%struct.TYPE_11__* %30)
  %32 = load i32, i32* @ENODEV, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %2, align 4
  br label %394

34:                                               ; preds = %12
  %35 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %36 = call i32 @goto_high_power(%struct.gspca_dev* %35)
  store i32 %36, i32* %6, align 4
  %37 = load i32, i32* %6, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %34
  %40 = load i32, i32* %6, align 4
  store i32 %40, i32* %2, align 4
  br label %394

41:                                               ; preds = %34
  %42 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %43 = load i32, i32* @CPIA_COMMAND_DiscardFrame, align 4
  %44 = call i32 @do_command(%struct.gspca_dev* %42, i32 %43, i32 0, i32 0, i32 0, i32 0)
  store i32 %44, i32* %6, align 4
  %45 = load i32, i32* %6, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %41
  %48 = load i32, i32* %6, align 4
  store i32 %48, i32* %2, align 4
  br label %394

49:                                               ; preds = %41
  %50 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %51 = call i32 @goto_low_power(%struct.gspca_dev* %50)
  store i32 %51, i32* %6, align 4
  %52 = load i32, i32* %6, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %49
  %55 = load i32, i32* %6, align 4
  store i32 %55, i32* %2, align 4
  br label %394

56:                                               ; preds = %49
  br label %57

57:                                               ; preds = %56, %1
  %58 = load %struct.sd*, %struct.sd** %4, align 8
  %59 = getelementptr inbounds %struct.sd, %struct.sd* %58, i32 0, i32 5
  %60 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %59, i32 0, i32 7
  %61 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %60, i32 0, i32 0
  store i32 0, i32* %61, align 8
  %62 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %63 = call i32 @get_version_information(%struct.gspca_dev* %62)
  %64 = load %struct.sd*, %struct.sd** %4, align 8
  %65 = getelementptr inbounds %struct.sd, %struct.sd* %64, i32 0, i32 5
  %66 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %65, i32 0, i32 7
  %67 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = icmp ne i32 %68, 1
  br i1 %69, label %70, label %80

70:                                               ; preds = %57
  %71 = load i32, i32* @D_ERR, align 4
  %72 = load %struct.sd*, %struct.sd** %4, align 8
  %73 = getelementptr inbounds %struct.sd, %struct.sd* %72, i32 0, i32 5
  %74 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %73, i32 0, i32 7
  %75 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = call i32 (i32, i8*, i32, ...) @PDEBUG(i32 %71, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i32 %76)
  %78 = load i32, i32* @ENODEV, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %2, align 4
  br label %394

80:                                               ; preds = %57
  %81 = load %struct.sd*, %struct.sd** %4, align 8
  %82 = getelementptr inbounds %struct.sd, %struct.sd* %81, i32 0, i32 5
  %83 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %82, i32 0, i32 7
  %84 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = icmp sle i32 %85, 2
  br i1 %86, label %87, label %99

87:                                               ; preds = %80
  %88 = load %struct.sd*, %struct.sd** %4, align 8
  %89 = getelementptr inbounds %struct.sd, %struct.sd* %88, i32 0, i32 5
  %90 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %89, i32 0, i32 6
  %91 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = icmp sgt i32 %92, 2
  br i1 %93, label %94, label %99

94:                                               ; preds = %87
  %95 = load %struct.sd*, %struct.sd** %4, align 8
  %96 = getelementptr inbounds %struct.sd, %struct.sd* %95, i32 0, i32 5
  %97 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %96, i32 0, i32 6
  %98 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %97, i32 0, i32 0
  store i32 2, i32* %98, align 4
  br label %99

99:                                               ; preds = %94, %87, %80
  %100 = load %struct.sd*, %struct.sd** %4, align 8
  %101 = getelementptr inbounds %struct.sd, %struct.sd* %100, i32 0, i32 5
  %102 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %101, i32 0, i32 4
  %103 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = icmp eq i32 %104, 2067
  br i1 %105, label %106, label %113

106:                                              ; preds = %99
  %107 = load %struct.sd*, %struct.sd** %4, align 8
  %108 = getelementptr inbounds %struct.sd, %struct.sd* %107, i32 0, i32 5
  %109 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %108, i32 0, i32 4
  %110 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = icmp eq i32 %111, 1
  br label %113

113:                                              ; preds = %106, %99
  %114 = phi i1 [ false, %99 ], [ %112, %106 ]
  %115 = zext i1 %114 to i32
  %116 = load %struct.sd*, %struct.sd** %4, align 8
  %117 = getelementptr inbounds %struct.sd, %struct.sd* %116, i32 0, i32 5
  %118 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %117, i32 0, i32 5
  %119 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %118, i32 0, i32 0
  store i32 %115, i32* %119, align 8
  %120 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %121 = load i32, i32* @CPIA_COMMAND_ModifyCameraStatus, align 4
  %122 = load i32, i32* @STREAMSTATE, align 4
  %123 = load i32, i32* @STREAM_NOT_READY, align 4
  %124 = call i32 @do_command(%struct.gspca_dev* %120, i32 %121, i32 %122, i32 0, i32 %123, i32 0)
  store i32 %124, i32* %6, align 4
  %125 = load i32, i32* %6, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %129

127:                                              ; preds = %113
  %128 = load i32, i32* %6, align 4
  store i32 %128, i32* %2, align 4
  br label %394

129:                                              ; preds = %113
  %130 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %131 = call i32 @goto_high_power(%struct.gspca_dev* %130)
  store i32 %131, i32* %6, align 4
  %132 = load i32, i32* %6, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %136

134:                                              ; preds = %129
  %135 = load i32, i32* %6, align 4
  store i32 %135, i32* %2, align 4
  br label %394

136:                                              ; preds = %129
  %137 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %138 = load i32, i32* @CPIA_COMMAND_GetCameraStatus, align 4
  %139 = call i32 @do_command(%struct.gspca_dev* %137, i32 %138, i32 0, i32 0, i32 0, i32 0)
  store i32 %139, i32* %6, align 4
  %140 = load i32, i32* %6, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %144

142:                                              ; preds = %136
  %143 = load i32, i32* %6, align 4
  store i32 %143, i32* %2, align 4
  br label %394

144:                                              ; preds = %136
  %145 = load %struct.sd*, %struct.sd** %4, align 8
  %146 = getelementptr inbounds %struct.sd, %struct.sd* %145, i32 0, i32 5
  %147 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %146, i32 0, i32 3
  %148 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 8
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %166

151:                                              ; preds = %144
  %152 = load i32, i32* @D_ERR, align 4
  %153 = load %struct.sd*, %struct.sd** %4, align 8
  %154 = getelementptr inbounds %struct.sd, %struct.sd* %153, i32 0, i32 5
  %155 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %154, i32 0, i32 3
  %156 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 8
  %158 = load %struct.sd*, %struct.sd** %4, align 8
  %159 = getelementptr inbounds %struct.sd, %struct.sd* %158, i32 0, i32 5
  %160 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %159, i32 0, i32 3
  %161 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %160, i32 0, i32 2
  %162 = load i32, i32* %161, align 4
  %163 = call i32 (i32, i8*, i32, ...) @PDEBUG(i32 %152, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i32 %157, i32 %162)
  %164 = load i32, i32* @EIO, align 4
  %165 = sub nsw i32 0, %164
  store i32 %165, i32* %2, align 4
  br label %394

166:                                              ; preds = %144
  %167 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %168 = load i32, i32* @CPIA_COMMAND_GetVPVersion, align 4
  %169 = call i32 @do_command(%struct.gspca_dev* %167, i32 %168, i32 0, i32 0, i32 0, i32 0)
  store i32 %169, i32* %6, align 4
  %170 = load i32, i32* %6, align 4
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %174

172:                                              ; preds = %166
  %173 = load i32, i32* %6, align 4
  store i32 %173, i32* %2, align 4
  br label %394

174:                                              ; preds = %166
  %175 = load %struct.sd*, %struct.sd** %4, align 8
  %176 = getelementptr inbounds %struct.sd, %struct.sd* %175, i32 0, i32 5
  %177 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %176, i32 0, i32 0
  store i32 120, i32* %177, align 8
  %178 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %179 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %178, i32 0, i32 3
  %180 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %179, i32 0, i32 0
  %181 = load %struct.TYPE_17__*, %struct.TYPE_17__** %180, align 8
  %182 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %183 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %182, i32 0, i32 0
  %184 = load i64, i64* %183, align 8
  %185 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %181, i64 %184
  %186 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 4
  store i32 %187, i32* %5, align 4
  %188 = load i32, i32* %5, align 4
  %189 = and i32 %188, 1
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %191, label %200

191:                                              ; preds = %174
  %192 = load %struct.sd*, %struct.sd** %4, align 8
  %193 = getelementptr inbounds %struct.sd, %struct.sd* %192, i32 0, i32 5
  %194 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %193, i32 0, i32 1
  %195 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %194, i32 0, i32 0
  store i32 2, i32* %195, align 4
  %196 = load %struct.sd*, %struct.sd** %4, align 8
  %197 = getelementptr inbounds %struct.sd, %struct.sd* %196, i32 0, i32 5
  %198 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %197, i32 0, i32 1
  %199 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %198, i32 0, i32 1
  store i32 6, i32* %199, align 4
  br label %209

200:                                              ; preds = %174
  %201 = load %struct.sd*, %struct.sd** %4, align 8
  %202 = getelementptr inbounds %struct.sd, %struct.sd* %201, i32 0, i32 5
  %203 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %202, i32 0, i32 1
  %204 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %203, i32 0, i32 0
  store i32 0, i32* %204, align 4
  %205 = load %struct.sd*, %struct.sd** %4, align 8
  %206 = getelementptr inbounds %struct.sd, %struct.sd* %205, i32 0, i32 5
  %207 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %206, i32 0, i32 1
  %208 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %207, i32 0, i32 1
  store i32 0, i32* %208, align 4
  br label %209

209:                                              ; preds = %200, %191
  %210 = load i32, i32* %5, align 4
  %211 = and i32 %210, 2
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %213, label %236

213:                                              ; preds = %209
  %214 = load i32, i32* @VIDEOSIZE_QCIF, align 4
  %215 = load %struct.sd*, %struct.sd** %4, align 8
  %216 = getelementptr inbounds %struct.sd, %struct.sd* %215, i32 0, i32 5
  %217 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %216, i32 0, i32 2
  %218 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %217, i32 0, i32 0
  store i32 %214, i32* %218, align 4
  %219 = load %struct.sd*, %struct.sd** %4, align 8
  %220 = getelementptr inbounds %struct.sd, %struct.sd* %219, i32 0, i32 5
  %221 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %220, i32 0, i32 1
  %222 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %221, i32 0, i32 0
  %223 = load i32, i32* %222, align 4
  %224 = sdiv i32 %223, 2
  store i32 %224, i32* %222, align 4
  %225 = load %struct.sd*, %struct.sd** %4, align 8
  %226 = getelementptr inbounds %struct.sd, %struct.sd* %225, i32 0, i32 5
  %227 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %226, i32 0, i32 1
  %228 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %227, i32 0, i32 1
  %229 = load i32, i32* %228, align 4
  %230 = sdiv i32 %229, 2
  store i32 %230, i32* %228, align 4
  %231 = load %struct.sd*, %struct.sd** %4, align 8
  %232 = getelementptr inbounds %struct.sd, %struct.sd* %231, i32 0, i32 5
  %233 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %232, i32 0, i32 0
  %234 = load i32, i32* %233, align 8
  %235 = sdiv i32 %234, 2
  store i32 %235, i32* %233, align 8
  br label %242

236:                                              ; preds = %209
  %237 = load i32, i32* @VIDEOSIZE_CIF, align 4
  %238 = load %struct.sd*, %struct.sd** %4, align 8
  %239 = getelementptr inbounds %struct.sd, %struct.sd* %238, i32 0, i32 5
  %240 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %239, i32 0, i32 2
  %241 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %240, i32 0, i32 0
  store i32 %237, i32* %241, align 4
  br label %242

242:                                              ; preds = %236, %213
  %243 = load %struct.sd*, %struct.sd** %4, align 8
  %244 = getelementptr inbounds %struct.sd, %struct.sd* %243, i32 0, i32 5
  %245 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %244, i32 0, i32 1
  %246 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %245, i32 0, i32 0
  %247 = load i32, i32* %246, align 4
  %248 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %249 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %248, i32 0, i32 1
  %250 = load i32, i32* %249, align 8
  %251 = ashr i32 %250, 3
  %252 = add nsw i32 %247, %251
  %253 = load %struct.sd*, %struct.sd** %4, align 8
  %254 = getelementptr inbounds %struct.sd, %struct.sd* %253, i32 0, i32 5
  %255 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %254, i32 0, i32 1
  %256 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %255, i32 0, i32 2
  store i32 %252, i32* %256, align 4
  %257 = load %struct.sd*, %struct.sd** %4, align 8
  %258 = getelementptr inbounds %struct.sd, %struct.sd* %257, i32 0, i32 5
  %259 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %258, i32 0, i32 1
  %260 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %259, i32 0, i32 1
  %261 = load i32, i32* %260, align 4
  %262 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %263 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %262, i32 0, i32 2
  %264 = load i32, i32* %263, align 4
  %265 = ashr i32 %264, 2
  %266 = add nsw i32 %261, %265
  %267 = load %struct.sd*, %struct.sd** %4, align 8
  %268 = getelementptr inbounds %struct.sd, %struct.sd* %267, i32 0, i32 5
  %269 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %268, i32 0, i32 1
  %270 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %269, i32 0, i32 3
  store i32 %266, i32* %270, align 4
  %271 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %272 = load i32, i32* @CPIA_COMMAND_SetGrabMode, align 4
  %273 = load i32, i32* @CPIA_GRAB_CONTINEOUS, align 4
  %274 = call i32 @do_command(%struct.gspca_dev* %271, i32 %272, i32 %273, i32 0, i32 0, i32 0)
  store i32 %274, i32* %6, align 4
  %275 = load i32, i32* %6, align 4
  %276 = icmp ne i32 %275, 0
  br i1 %276, label %277, label %279

277:                                              ; preds = %242
  %278 = load i32, i32* %6, align 4
  store i32 %278, i32* %2, align 4
  br label %394

279:                                              ; preds = %242
  %280 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %281 = load i32, i32* @CPIA_COMMAND_SetCompression, align 4
  %282 = load i32, i32* @CPIA_COMPRESSION_NONE, align 4
  %283 = load i32, i32* @NO_DECIMATION, align 4
  %284 = call i32 @do_command(%struct.gspca_dev* %280, i32 %281, i32 %282, i32 %283, i32 0, i32 0)
  store i32 %284, i32* %6, align 4
  %285 = load i32, i32* %6, align 4
  %286 = icmp ne i32 %285, 0
  br i1 %286, label %287, label %289

287:                                              ; preds = %279
  %288 = load i32, i32* %6, align 4
  store i32 %288, i32* %2, align 4
  br label %394

289:                                              ; preds = %279
  %290 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %291 = call i32 @command_setcompressiontarget(%struct.gspca_dev* %290)
  store i32 %291, i32* %6, align 4
  %292 = load i32, i32* %6, align 4
  %293 = icmp ne i32 %292, 0
  br i1 %293, label %294, label %296

294:                                              ; preds = %289
  %295 = load i32, i32* %6, align 4
  store i32 %295, i32* %2, align 4
  br label %394

296:                                              ; preds = %289
  %297 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %298 = call i32 @command_setcolourparams(%struct.gspca_dev* %297)
  store i32 %298, i32* %6, align 4
  %299 = load i32, i32* %6, align 4
  %300 = icmp ne i32 %299, 0
  br i1 %300, label %301, label %303

301:                                              ; preds = %296
  %302 = load i32, i32* %6, align 4
  store i32 %302, i32* %2, align 4
  br label %394

303:                                              ; preds = %296
  %304 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %305 = call i32 @command_setformat(%struct.gspca_dev* %304)
  store i32 %305, i32* %6, align 4
  %306 = load i32, i32* %6, align 4
  %307 = icmp ne i32 %306, 0
  br i1 %307, label %308, label %310

308:                                              ; preds = %303
  %309 = load i32, i32* %6, align 4
  store i32 %309, i32* %2, align 4
  br label %394

310:                                              ; preds = %303
  %311 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %312 = call i32 @command_setyuvtresh(%struct.gspca_dev* %311)
  store i32 %312, i32* %6, align 4
  %313 = load i32, i32* %6, align 4
  %314 = icmp ne i32 %313, 0
  br i1 %314, label %315, label %317

315:                                              ; preds = %310
  %316 = load i32, i32* %6, align 4
  store i32 %316, i32* %2, align 4
  br label %394

317:                                              ; preds = %310
  %318 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %319 = call i32 @command_setecptiming(%struct.gspca_dev* %318)
  store i32 %319, i32* %6, align 4
  %320 = load i32, i32* %6, align 4
  %321 = icmp ne i32 %320, 0
  br i1 %321, label %322, label %324

322:                                              ; preds = %317
  %323 = load i32, i32* %6, align 4
  store i32 %323, i32* %2, align 4
  br label %394

324:                                              ; preds = %317
  %325 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %326 = call i32 @command_setcompressionparams(%struct.gspca_dev* %325)
  store i32 %326, i32* %6, align 4
  %327 = load i32, i32* %6, align 4
  %328 = icmp ne i32 %327, 0
  br i1 %328, label %329, label %331

329:                                              ; preds = %324
  %330 = load i32, i32* %6, align 4
  store i32 %330, i32* %2, align 4
  br label %394

331:                                              ; preds = %324
  %332 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %333 = call i32 @command_setexposure(%struct.gspca_dev* %332)
  store i32 %333, i32* %6, align 4
  %334 = load i32, i32* %6, align 4
  %335 = icmp ne i32 %334, 0
  br i1 %335, label %336, label %338

336:                                              ; preds = %331
  %337 = load i32, i32* %6, align 4
  store i32 %337, i32* %2, align 4
  br label %394

338:                                              ; preds = %331
  %339 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %340 = call i32 @command_setcolourbalance(%struct.gspca_dev* %339)
  store i32 %340, i32* %6, align 4
  %341 = load i32, i32* %6, align 4
  %342 = icmp ne i32 %341, 0
  br i1 %342, label %343, label %345

343:                                              ; preds = %338
  %344 = load i32, i32* %6, align 4
  store i32 %344, i32* %2, align 4
  br label %394

345:                                              ; preds = %338
  %346 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %347 = call i32 @command_setsensorfps(%struct.gspca_dev* %346)
  store i32 %347, i32* %6, align 4
  %348 = load i32, i32* %6, align 4
  %349 = icmp ne i32 %348, 0
  br i1 %349, label %350, label %352

350:                                              ; preds = %345
  %351 = load i32, i32* %6, align 4
  store i32 %351, i32* %2, align 4
  br label %394

352:                                              ; preds = %345
  %353 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %354 = call i32 @command_setapcor(%struct.gspca_dev* %353)
  store i32 %354, i32* %6, align 4
  %355 = load i32, i32* %6, align 4
  %356 = icmp ne i32 %355, 0
  br i1 %356, label %357, label %359

357:                                              ; preds = %352
  %358 = load i32, i32* %6, align 4
  store i32 %358, i32* %2, align 4
  br label %394

359:                                              ; preds = %352
  %360 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %361 = call i32 @command_setflickerctrl(%struct.gspca_dev* %360)
  store i32 %361, i32* %6, align 4
  %362 = load i32, i32* %6, align 4
  %363 = icmp ne i32 %362, 0
  br i1 %363, label %364, label %366

364:                                              ; preds = %359
  %365 = load i32, i32* %6, align 4
  store i32 %365, i32* %2, align 4
  br label %394

366:                                              ; preds = %359
  %367 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %368 = call i32 @command_setvloffset(%struct.gspca_dev* %367)
  store i32 %368, i32* %6, align 4
  %369 = load i32, i32* %6, align 4
  %370 = icmp ne i32 %369, 0
  br i1 %370, label %371, label %373

371:                                              ; preds = %366
  %372 = load i32, i32* %6, align 4
  store i32 %372, i32* %2, align 4
  br label %394

373:                                              ; preds = %366
  %374 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %375 = call i32 @command_resume(%struct.gspca_dev* %374)
  store i32 %375, i32* %6, align 4
  %376 = load i32, i32* %6, align 4
  %377 = icmp ne i32 %376, 0
  br i1 %377, label %378, label %380

378:                                              ; preds = %373
  %379 = load i32, i32* %6, align 4
  store i32 %379, i32* %2, align 4
  br label %394

380:                                              ; preds = %373
  %381 = load %struct.sd*, %struct.sd** %4, align 8
  %382 = getelementptr inbounds %struct.sd, %struct.sd* %381, i32 0, i32 0
  store i32 6, i32* %382, align 8
  %383 = load i32, i32* @EXPOSURE_NORMAL, align 4
  %384 = load %struct.sd*, %struct.sd** %4, align 8
  %385 = getelementptr inbounds %struct.sd, %struct.sd* %384, i32 0, i32 4
  store i32 %383, i32* %385, align 8
  %386 = load %struct.sd*, %struct.sd** %4, align 8
  %387 = getelementptr inbounds %struct.sd, %struct.sd* %386, i32 0, i32 3
  store i64 0, i64* %387, align 8
  %388 = load %struct.sd*, %struct.sd** %4, align 8
  %389 = getelementptr inbounds %struct.sd, %struct.sd* %388, i32 0, i32 2
  %390 = call i32 @atomic_set(i32* %389, i32 0)
  %391 = load %struct.sd*, %struct.sd** %4, align 8
  %392 = getelementptr inbounds %struct.sd, %struct.sd* %391, i32 0, i32 1
  %393 = call i32 @atomic_set(i32* %392, i32 0)
  store i32 0, i32* %2, align 4
  br label %394

394:                                              ; preds = %380, %378, %371, %364, %357, %350, %343, %336, %329, %322, %315, %308, %301, %294, %287, %277, %172, %151, %142, %134, %127, %70, %54, %47, %39, %20
  %395 = load i32, i32* %2, align 4
  ret i32 %395
}

declare dso_local i32 @goto_low_power(%struct.gspca_dev*) #1

declare dso_local i32 @PDEBUG(i32, i8*, i32, ...) #1

declare dso_local i32 @printstatus(%struct.TYPE_11__*) #1

declare dso_local i32 @goto_high_power(%struct.gspca_dev*) #1

declare dso_local i32 @do_command(%struct.gspca_dev*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @get_version_information(%struct.gspca_dev*) #1

declare dso_local i32 @command_setcompressiontarget(%struct.gspca_dev*) #1

declare dso_local i32 @command_setcolourparams(%struct.gspca_dev*) #1

declare dso_local i32 @command_setformat(%struct.gspca_dev*) #1

declare dso_local i32 @command_setyuvtresh(%struct.gspca_dev*) #1

declare dso_local i32 @command_setecptiming(%struct.gspca_dev*) #1

declare dso_local i32 @command_setcompressionparams(%struct.gspca_dev*) #1

declare dso_local i32 @command_setexposure(%struct.gspca_dev*) #1

declare dso_local i32 @command_setcolourbalance(%struct.gspca_dev*) #1

declare dso_local i32 @command_setsensorfps(%struct.gspca_dev*) #1

declare dso_local i32 @command_setapcor(%struct.gspca_dev*) #1

declare dso_local i32 @command_setflickerctrl(%struct.gspca_dev*) #1

declare dso_local i32 @command_setvloffset(%struct.gspca_dev*) #1

declare dso_local i32 @command_resume(%struct.gspca_dev*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
