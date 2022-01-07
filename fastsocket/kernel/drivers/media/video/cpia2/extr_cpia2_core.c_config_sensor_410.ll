; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cpia2/extr_cpia2_core.c_config_sensor_410.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cpia2/extr_cpia2_core.c_config_sensor_410.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.camera_data = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__, %struct.TYPE_6__ }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_6__ = type { i64 }
%struct.cpia2_command = type { i32, i32, %struct.TYPE_8__, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, i32 }

@STV_IMAGE_CIF_COLS = common dso_local global i32 0, align 4
@STV_IMAGE_CIF_ROWS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Config 410: width = %d, height = %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"Image size returned is %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [46 x i8] c"After set_vw_size(), width = %d, height = %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"image type = VIDEOSIZE_QCIF\0A\00", align 1
@VIDEOSIZE_QCIF = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [29 x i8] c"image type = VIDEOSIZE_QVGA\0A\00", align 1
@VIDEOSIZE_QVGA = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [28 x i8] c"image type = VIDEOSIZE_CIF\0A\00", align 1
@VIDEOSIZE_CIF = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [24 x i8] c"ConfigSensor410 failed\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@CAMERAACCESS_TYPE_RANDOM = common dso_local global i32 0, align 4
@CAMERAACCESS_VC = common dso_local global i32 0, align 4
@TRANSFER_WRITE = common dso_local global i32 0, align 4
@CPIA2_VC_VC_FORMAT = common dso_local global i32 0, align 4
@CPIA2_VC_VC_FORMAT_UFIRST = common dso_local global i32 0, align 4
@CPIA2_VC_VC_FORMAT_SHORTLINE = common dso_local global i32 0, align 4
@CPIA2_VC_VC_CLOCKS = common dso_local global i32 0, align 4
@DEVICE_STV_672 = common dso_local global i64 0, align 8
@CPIA2_VC_VC_672_CLOCKS_CIF_DIV_BY_3 = common dso_local global i32 0, align 4
@CPIA2_VC_VC_672_CLOCKS_SCALING = common dso_local global i32 0, align 4
@CPIA2_VC_VC_CLOCKS_LOGDIV2 = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [30 x i8] c"VC_Clocks (0xc4) should be B\0A\00", align 1
@CPIA2_VC_VC_676_CLOCKS_CIF_DIV_BY_3 = common dso_local global i32 0, align 4
@CPIA2_VC_VC_CLOCKS_LOGDIV0 = common dso_local global i32 0, align 4
@CPIA2_VC_VC_676_CLOCKS_SCALING = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [26 x i8] c"VC_Clocks (0xc4) = 0x%0X\0A\00", align 1
@CPIA2_VC_VC_IHSIZE_LO = common dso_local global i32 0, align 4
@STV_IMAGE_QCIF_COLS = common dso_local global i32 0, align 4
@CPIA2_VC_VC_XLIM_HI = common dso_local global i32 0, align 4
@CPIA2_VC_VC_XLIM_LO = common dso_local global i32 0, align 4
@CPIA2_VC_VC_YLIM_HI = common dso_local global i32 0, align 4
@CPIA2_VC_VC_YLIM_LO = common dso_local global i32 0, align 4
@CPIA2_VC_VC_OHSIZE = common dso_local global i32 0, align 4
@CPIA2_VC_VC_OVSIZE = common dso_local global i32 0, align 4
@CPIA2_VC_VC_HCROP = common dso_local global i32 0, align 4
@CPIA2_VC_VC_VCROP = common dso_local global i32 0, align 4
@STV_IMAGE_QCIF_ROWS = common dso_local global i32 0, align 4
@CPIA2_VC_VC_HPHASE = common dso_local global i32 0, align 4
@CPIA2_VC_VC_VPHASE = common dso_local global i32 0, align 4
@CPIA2_VC_VC_HISPAN = common dso_local global i32 0, align 4
@CPIA2_VC_VC_VISPAN = common dso_local global i32 0, align 4
@CPIA2_VC_VC_HICROP = common dso_local global i32 0, align 4
@CPIA2_VC_VC_VICROP = common dso_local global i32 0, align 4
@CPIA2_VC_VC_HFRACT = common dso_local global i32 0, align 4
@CPIA2_VC_VC_VFRACT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.camera_data*, i32, i32)* @config_sensor_410 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @config_sensor_410(%struct.camera_data* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.camera_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.cpia2_command, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.camera_data* %0, %struct.camera_data** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %9, align 4
  %14 = load i32, i32* %6, align 4
  store i32 %14, i32* %12, align 4
  %15 = load i32, i32* %7, align 4
  store i32 %15, i32* %13, align 4
  %16 = load i32, i32* %12, align 4
  %17 = load i32, i32* @STV_IMAGE_CIF_COLS, align 4
  %18 = icmp sgt i32 %16, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %3
  %20 = load i32, i32* @STV_IMAGE_CIF_COLS, align 4
  store i32 %20, i32* %12, align 4
  br label %21

21:                                               ; preds = %19, %3
  %22 = load i32, i32* %13, align 4
  %23 = load i32, i32* @STV_IMAGE_CIF_ROWS, align 4
  %24 = icmp sgt i32 %22, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %21
  %26 = load i32, i32* @STV_IMAGE_CIF_ROWS, align 4
  store i32 %26, i32* %13, align 4
  br label %27

27:                                               ; preds = %25, %21
  %28 = load i32, i32* %12, align 4
  %29 = load i32, i32* %13, align 4
  %30 = call i32 @cpia2_match_video_size(i32 %28, i32 %29)
  store i32 %30, i32* %10, align 4
  %31 = load i32, i32* %12, align 4
  %32 = load i32, i32* %13, align 4
  %33 = call i32 (i8*, ...) @DBG(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %31, i32 %32)
  %34 = load i32, i32* %10, align 4
  %35 = call i32 (i8*, ...) @DBG(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %34)
  %36 = load i32, i32* %10, align 4
  %37 = icmp sge i32 %36, 0
  br i1 %37, label %38, label %77

38:                                               ; preds = %27
  %39 = load %struct.camera_data*, %struct.camera_data** %5, align 8
  %40 = load i32, i32* %10, align 4
  %41 = call i32 @set_vw_size(%struct.camera_data* %39, i32 %40)
  %42 = load %struct.camera_data*, %struct.camera_data** %5, align 8
  %43 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  store i32 %46, i32* %12, align 4
  %47 = load %struct.camera_data*, %struct.camera_data** %5, align 8
  %48 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  store i32 %51, i32* %13, align 4
  %52 = load i32, i32* %12, align 4
  %53 = load i32, i32* %13, align 4
  %54 = call i32 (i8*, ...) @DBG(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0), i32 %52, i32 %53)
  %55 = load i32, i32* %12, align 4
  %56 = icmp sle i32 %55, 176
  br i1 %56, label %57, label %63

57:                                               ; preds = %38
  %58 = load i32, i32* %13, align 4
  %59 = icmp sle i32 %58, 144
  br i1 %59, label %60, label %63

60:                                               ; preds = %57
  %61 = call i32 (i8*, ...) @DBG(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  %62 = load i32, i32* @VIDEOSIZE_QCIF, align 4
  store i32 %62, i32* %11, align 4
  br label %76

63:                                               ; preds = %57, %38
  %64 = load i32, i32* %12, align 4
  %65 = icmp sle i32 %64, 320
  br i1 %65, label %66, label %72

66:                                               ; preds = %63
  %67 = load i32, i32* %13, align 4
  %68 = icmp sle i32 %67, 240
  br i1 %68, label %69, label %72

69:                                               ; preds = %66
  %70 = call i32 (i8*, ...) @DBG(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0))
  %71 = load i32, i32* @VIDEOSIZE_QVGA, align 4
  store i32 %71, i32* %11, align 4
  br label %75

72:                                               ; preds = %66, %63
  %73 = call i32 (i8*, ...) @DBG(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0))
  %74 = load i32, i32* @VIDEOSIZE_CIF, align 4
  store i32 %74, i32* %11, align 4
  br label %75

75:                                               ; preds = %72, %69
  br label %76

76:                                               ; preds = %75, %60
  br label %81

77:                                               ; preds = %27
  %78 = call i32 @ERR(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0))
  %79 = load i32, i32* @EINVAL, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %4, align 4
  br label %666

81:                                               ; preds = %76
  %82 = load i32, i32* @CAMERAACCESS_TYPE_RANDOM, align 4
  %83 = load i32, i32* @CAMERAACCESS_VC, align 4
  %84 = or i32 %82, %83
  %85 = getelementptr inbounds %struct.cpia2_command, %struct.cpia2_command* %8, i32 0, i32 0
  store i32 %84, i32* %85, align 8
  %86 = load i32, i32* @TRANSFER_WRITE, align 4
  %87 = getelementptr inbounds %struct.cpia2_command, %struct.cpia2_command* %8, i32 0, i32 3
  store i32 %86, i32* %87, align 8
  %88 = load i32, i32* @CPIA2_VC_VC_FORMAT, align 4
  %89 = getelementptr inbounds %struct.cpia2_command, %struct.cpia2_command* %8, i32 0, i32 2
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i32 0, i32 0
  %91 = load %struct.TYPE_7__*, %struct.TYPE_7__** %90, align 8
  %92 = load i32, i32* %9, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i64 %93
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i32 0, i32 1
  store i32 %88, i32* %95, align 4
  %96 = load i32, i32* %11, align 4
  %97 = load i32, i32* @VIDEOSIZE_CIF, align 4
  %98 = icmp eq i32 %96, %97
  br i1 %98, label %99, label %114

99:                                               ; preds = %81
  %100 = load i32, i32* @CPIA2_VC_VC_FORMAT_UFIRST, align 4
  %101 = load i32, i32* @CPIA2_VC_VC_FORMAT_SHORTLINE, align 4
  %102 = or i32 %100, %101
  %103 = sext i32 %102 to i64
  %104 = inttoptr i64 %103 to i8*
  %105 = ptrtoint i8* %104 to i32
  %106 = getelementptr inbounds %struct.cpia2_command, %struct.cpia2_command* %8, i32 0, i32 2
  %107 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %106, i32 0, i32 0
  %108 = load %struct.TYPE_7__*, %struct.TYPE_7__** %107, align 8
  %109 = load i32, i32* %9, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %9, align 4
  %111 = sext i32 %109 to i64
  %112 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %108, i64 %111
  %113 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %112, i32 0, i32 0
  store i32 %105, i32* %113, align 4
  br label %127

114:                                              ; preds = %81
  %115 = load i32, i32* @CPIA2_VC_VC_FORMAT_UFIRST, align 4
  %116 = sext i32 %115 to i64
  %117 = inttoptr i64 %116 to i8*
  %118 = ptrtoint i8* %117 to i32
  %119 = getelementptr inbounds %struct.cpia2_command, %struct.cpia2_command* %8, i32 0, i32 2
  %120 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %119, i32 0, i32 0
  %121 = load %struct.TYPE_7__*, %struct.TYPE_7__** %120, align 8
  %122 = load i32, i32* %9, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %9, align 4
  %124 = sext i32 %122 to i64
  %125 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %121, i64 %124
  %126 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %125, i32 0, i32 0
  store i32 %118, i32* %126, align 4
  br label %127

127:                                              ; preds = %114, %99
  %128 = load i32, i32* @CPIA2_VC_VC_CLOCKS, align 4
  %129 = getelementptr inbounds %struct.cpia2_command, %struct.cpia2_command* %8, i32 0, i32 2
  %130 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %129, i32 0, i32 0
  %131 = load %struct.TYPE_7__*, %struct.TYPE_7__** %130, align 8
  %132 = load i32, i32* %9, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %131, i64 %133
  %135 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %134, i32 0, i32 1
  store i32 %128, i32* %135, align 4
  %136 = load i32, i32* %11, align 4
  %137 = load i32, i32* @VIDEOSIZE_QCIF, align 4
  %138 = icmp eq i32 %136, %137
  br i1 %138, label %139, label %181

139:                                              ; preds = %127
  %140 = load %struct.camera_data*, %struct.camera_data** %5, align 8
  %141 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %141, i32 0, i32 1
  %143 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %142, i32 0, i32 0
  %144 = load i64, i64* %143, align 8
  %145 = load i64, i64* @DEVICE_STV_672, align 8
  %146 = icmp eq i64 %144, %145
  br i1 %146, label %147, label %165

147:                                              ; preds = %139
  %148 = load i32, i32* @CPIA2_VC_VC_672_CLOCKS_CIF_DIV_BY_3, align 4
  %149 = load i32, i32* @CPIA2_VC_VC_672_CLOCKS_SCALING, align 4
  %150 = or i32 %148, %149
  %151 = load i32, i32* @CPIA2_VC_VC_CLOCKS_LOGDIV2, align 4
  %152 = or i32 %150, %151
  %153 = sext i32 %152 to i64
  %154 = inttoptr i64 %153 to i8*
  %155 = ptrtoint i8* %154 to i32
  %156 = getelementptr inbounds %struct.cpia2_command, %struct.cpia2_command* %8, i32 0, i32 2
  %157 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %156, i32 0, i32 0
  %158 = load %struct.TYPE_7__*, %struct.TYPE_7__** %157, align 8
  %159 = load i32, i32* %9, align 4
  %160 = add nsw i32 %159, 1
  store i32 %160, i32* %9, align 4
  %161 = sext i32 %159 to i64
  %162 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %158, i64 %161
  %163 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %162, i32 0, i32 0
  store i32 %155, i32* %163, align 4
  %164 = call i32 (i8*, ...) @DBG(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.7, i64 0, i64 0))
  br label %180

165:                                              ; preds = %139
  %166 = load i32, i32* @CPIA2_VC_VC_676_CLOCKS_CIF_DIV_BY_3, align 4
  %167 = load i32, i32* @CPIA2_VC_VC_CLOCKS_LOGDIV2, align 4
  %168 = or i32 %166, %167
  %169 = sext i32 %168 to i64
  %170 = inttoptr i64 %169 to i8*
  %171 = ptrtoint i8* %170 to i32
  %172 = getelementptr inbounds %struct.cpia2_command, %struct.cpia2_command* %8, i32 0, i32 2
  %173 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %172, i32 0, i32 0
  %174 = load %struct.TYPE_7__*, %struct.TYPE_7__** %173, align 8
  %175 = load i32, i32* %9, align 4
  %176 = add nsw i32 %175, 1
  store i32 %176, i32* %9, align 4
  %177 = sext i32 %175 to i64
  %178 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %174, i64 %177
  %179 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %178, i32 0, i32 0
  store i32 %171, i32* %179, align 4
  br label %180

180:                                              ; preds = %165, %147
  br label %222

181:                                              ; preds = %127
  %182 = load %struct.camera_data*, %struct.camera_data** %5, align 8
  %183 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %182, i32 0, i32 0
  %184 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %183, i32 0, i32 1
  %185 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %184, i32 0, i32 0
  %186 = load i64, i64* %185, align 8
  %187 = load i64, i64* @DEVICE_STV_672, align 8
  %188 = icmp eq i64 %186, %187
  br i1 %188, label %189, label %204

189:                                              ; preds = %181
  %190 = load i32, i32* @CPIA2_VC_VC_672_CLOCKS_CIF_DIV_BY_3, align 4
  %191 = load i32, i32* @CPIA2_VC_VC_CLOCKS_LOGDIV0, align 4
  %192 = or i32 %190, %191
  %193 = sext i32 %192 to i64
  %194 = inttoptr i64 %193 to i8*
  %195 = ptrtoint i8* %194 to i32
  %196 = getelementptr inbounds %struct.cpia2_command, %struct.cpia2_command* %8, i32 0, i32 2
  %197 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %196, i32 0, i32 0
  %198 = load %struct.TYPE_7__*, %struct.TYPE_7__** %197, align 8
  %199 = load i32, i32* %9, align 4
  %200 = add nsw i32 %199, 1
  store i32 %200, i32* %9, align 4
  %201 = sext i32 %199 to i64
  %202 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %198, i64 %201
  %203 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %202, i32 0, i32 0
  store i32 %195, i32* %203, align 4
  br label %221

204:                                              ; preds = %181
  %205 = load i32, i32* @CPIA2_VC_VC_676_CLOCKS_CIF_DIV_BY_3, align 4
  %206 = load i32, i32* @CPIA2_VC_VC_676_CLOCKS_SCALING, align 4
  %207 = or i32 %205, %206
  %208 = load i32, i32* @CPIA2_VC_VC_CLOCKS_LOGDIV0, align 4
  %209 = or i32 %207, %208
  %210 = sext i32 %209 to i64
  %211 = inttoptr i64 %210 to i8*
  %212 = ptrtoint i8* %211 to i32
  %213 = getelementptr inbounds %struct.cpia2_command, %struct.cpia2_command* %8, i32 0, i32 2
  %214 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %213, i32 0, i32 0
  %215 = load %struct.TYPE_7__*, %struct.TYPE_7__** %214, align 8
  %216 = load i32, i32* %9, align 4
  %217 = add nsw i32 %216, 1
  store i32 %217, i32* %9, align 4
  %218 = sext i32 %216 to i64
  %219 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %215, i64 %218
  %220 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %219, i32 0, i32 0
  store i32 %212, i32* %220, align 4
  br label %221

221:                                              ; preds = %204, %189
  br label %222

222:                                              ; preds = %221, %180
  %223 = getelementptr inbounds %struct.cpia2_command, %struct.cpia2_command* %8, i32 0, i32 2
  %224 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %223, i32 0, i32 0
  %225 = load %struct.TYPE_7__*, %struct.TYPE_7__** %224, align 8
  %226 = load i32, i32* %9, align 4
  %227 = sub nsw i32 %226, 1
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %225, i64 %228
  %230 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %229, i32 0, i32 0
  %231 = load i32, i32* %230, align 4
  %232 = call i32 (i8*, ...) @DBG(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.8, i64 0, i64 0), i32 %231)
  %233 = load i32, i32* @CPIA2_VC_VC_IHSIZE_LO, align 4
  %234 = getelementptr inbounds %struct.cpia2_command, %struct.cpia2_command* %8, i32 0, i32 2
  %235 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %234, i32 0, i32 0
  %236 = load %struct.TYPE_7__*, %struct.TYPE_7__** %235, align 8
  %237 = load i32, i32* %9, align 4
  %238 = sext i32 %237 to i64
  %239 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %236, i64 %238
  %240 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %239, i32 0, i32 1
  store i32 %233, i32* %240, align 4
  %241 = load i32, i32* %11, align 4
  %242 = load i32, i32* @VIDEOSIZE_QCIF, align 4
  %243 = icmp eq i32 %241, %242
  br i1 %243, label %244, label %258

244:                                              ; preds = %222
  %245 = load i32, i32* @STV_IMAGE_QCIF_COLS, align 4
  %246 = sdiv i32 %245, 4
  %247 = sext i32 %246 to i64
  %248 = inttoptr i64 %247 to i8*
  %249 = ptrtoint i8* %248 to i32
  %250 = getelementptr inbounds %struct.cpia2_command, %struct.cpia2_command* %8, i32 0, i32 2
  %251 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %250, i32 0, i32 0
  %252 = load %struct.TYPE_7__*, %struct.TYPE_7__** %251, align 8
  %253 = load i32, i32* %9, align 4
  %254 = add nsw i32 %253, 1
  store i32 %254, i32* %9, align 4
  %255 = sext i32 %253 to i64
  %256 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %252, i64 %255
  %257 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %256, i32 0, i32 0
  store i32 %249, i32* %257, align 4
  br label %272

258:                                              ; preds = %222
  %259 = load i32, i32* @STV_IMAGE_CIF_COLS, align 4
  %260 = sdiv i32 %259, 4
  %261 = sext i32 %260 to i64
  %262 = inttoptr i64 %261 to i8*
  %263 = ptrtoint i8* %262 to i32
  %264 = getelementptr inbounds %struct.cpia2_command, %struct.cpia2_command* %8, i32 0, i32 2
  %265 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %264, i32 0, i32 0
  %266 = load %struct.TYPE_7__*, %struct.TYPE_7__** %265, align 8
  %267 = load i32, i32* %9, align 4
  %268 = add nsw i32 %267, 1
  store i32 %268, i32* %9, align 4
  %269 = sext i32 %267 to i64
  %270 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %266, i64 %269
  %271 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %270, i32 0, i32 0
  store i32 %263, i32* %271, align 4
  br label %272

272:                                              ; preds = %258, %244
  %273 = load i32, i32* @CPIA2_VC_VC_XLIM_HI, align 4
  %274 = getelementptr inbounds %struct.cpia2_command, %struct.cpia2_command* %8, i32 0, i32 2
  %275 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %274, i32 0, i32 0
  %276 = load %struct.TYPE_7__*, %struct.TYPE_7__** %275, align 8
  %277 = load i32, i32* %9, align 4
  %278 = sext i32 %277 to i64
  %279 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %276, i64 %278
  %280 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %279, i32 0, i32 1
  store i32 %273, i32* %280, align 4
  %281 = load i32, i32* %11, align 4
  %282 = load i32, i32* @VIDEOSIZE_QCIF, align 4
  %283 = icmp eq i32 %281, %282
  br i1 %283, label %284, label %293

284:                                              ; preds = %272
  %285 = getelementptr inbounds %struct.cpia2_command, %struct.cpia2_command* %8, i32 0, i32 2
  %286 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %285, i32 0, i32 0
  %287 = load %struct.TYPE_7__*, %struct.TYPE_7__** %286, align 8
  %288 = load i32, i32* %9, align 4
  %289 = add nsw i32 %288, 1
  store i32 %289, i32* %9, align 4
  %290 = sext i32 %288 to i64
  %291 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %287, i64 %290
  %292 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %291, i32 0, i32 0
  store i32 0, i32* %292, align 4
  br label %302

293:                                              ; preds = %272
  %294 = getelementptr inbounds %struct.cpia2_command, %struct.cpia2_command* %8, i32 0, i32 2
  %295 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %294, i32 0, i32 0
  %296 = load %struct.TYPE_7__*, %struct.TYPE_7__** %295, align 8
  %297 = load i32, i32* %9, align 4
  %298 = add nsw i32 %297, 1
  store i32 %298, i32* %9, align 4
  %299 = sext i32 %297 to i64
  %300 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %296, i64 %299
  %301 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %300, i32 0, i32 0
  store i32 ptrtoint (i8* inttoptr (i64 1 to i8*) to i32), i32* %301, align 4
  br label %302

302:                                              ; preds = %293, %284
  %303 = load i32, i32* @CPIA2_VC_VC_XLIM_LO, align 4
  %304 = getelementptr inbounds %struct.cpia2_command, %struct.cpia2_command* %8, i32 0, i32 2
  %305 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %304, i32 0, i32 0
  %306 = load %struct.TYPE_7__*, %struct.TYPE_7__** %305, align 8
  %307 = load i32, i32* %9, align 4
  %308 = sext i32 %307 to i64
  %309 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %306, i64 %308
  %310 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %309, i32 0, i32 1
  store i32 %303, i32* %310, align 4
  %311 = load i32, i32* %11, align 4
  %312 = load i32, i32* @VIDEOSIZE_QCIF, align 4
  %313 = icmp eq i32 %311, %312
  br i1 %313, label %314, label %323

314:                                              ; preds = %302
  %315 = getelementptr inbounds %struct.cpia2_command, %struct.cpia2_command* %8, i32 0, i32 2
  %316 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %315, i32 0, i32 0
  %317 = load %struct.TYPE_7__*, %struct.TYPE_7__** %316, align 8
  %318 = load i32, i32* %9, align 4
  %319 = add nsw i32 %318, 1
  store i32 %319, i32* %9, align 4
  %320 = sext i32 %318 to i64
  %321 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %317, i64 %320
  %322 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %321, i32 0, i32 0
  store i32 ptrtoint (i8* inttoptr (i64 208 to i8*) to i32), i32* %322, align 4
  br label %332

323:                                              ; preds = %302
  %324 = getelementptr inbounds %struct.cpia2_command, %struct.cpia2_command* %8, i32 0, i32 2
  %325 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %324, i32 0, i32 0
  %326 = load %struct.TYPE_7__*, %struct.TYPE_7__** %325, align 8
  %327 = load i32, i32* %9, align 4
  %328 = add nsw i32 %327, 1
  store i32 %328, i32* %9, align 4
  %329 = sext i32 %327 to i64
  %330 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %326, i64 %329
  %331 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %330, i32 0, i32 0
  store i32 ptrtoint (i8* inttoptr (i64 160 to i8*) to i32), i32* %331, align 4
  br label %332

332:                                              ; preds = %323, %314
  %333 = load i32, i32* @CPIA2_VC_VC_YLIM_HI, align 4
  %334 = getelementptr inbounds %struct.cpia2_command, %struct.cpia2_command* %8, i32 0, i32 2
  %335 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %334, i32 0, i32 0
  %336 = load %struct.TYPE_7__*, %struct.TYPE_7__** %335, align 8
  %337 = load i32, i32* %9, align 4
  %338 = sext i32 %337 to i64
  %339 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %336, i64 %338
  %340 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %339, i32 0, i32 1
  store i32 %333, i32* %340, align 4
  %341 = load i32, i32* %11, align 4
  %342 = load i32, i32* @VIDEOSIZE_QCIF, align 4
  %343 = icmp eq i32 %341, %342
  br i1 %343, label %344, label %353

344:                                              ; preds = %332
  %345 = getelementptr inbounds %struct.cpia2_command, %struct.cpia2_command* %8, i32 0, i32 2
  %346 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %345, i32 0, i32 0
  %347 = load %struct.TYPE_7__*, %struct.TYPE_7__** %346, align 8
  %348 = load i32, i32* %9, align 4
  %349 = add nsw i32 %348, 1
  store i32 %349, i32* %9, align 4
  %350 = sext i32 %348 to i64
  %351 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %347, i64 %350
  %352 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %351, i32 0, i32 0
  store i32 0, i32* %352, align 4
  br label %362

353:                                              ; preds = %332
  %354 = getelementptr inbounds %struct.cpia2_command, %struct.cpia2_command* %8, i32 0, i32 2
  %355 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %354, i32 0, i32 0
  %356 = load %struct.TYPE_7__*, %struct.TYPE_7__** %355, align 8
  %357 = load i32, i32* %9, align 4
  %358 = add nsw i32 %357, 1
  store i32 %358, i32* %9, align 4
  %359 = sext i32 %357 to i64
  %360 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %356, i64 %359
  %361 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %360, i32 0, i32 0
  store i32 ptrtoint (i8* inttoptr (i64 1 to i8*) to i32), i32* %361, align 4
  br label %362

362:                                              ; preds = %353, %344
  %363 = load i32, i32* @CPIA2_VC_VC_YLIM_LO, align 4
  %364 = getelementptr inbounds %struct.cpia2_command, %struct.cpia2_command* %8, i32 0, i32 2
  %365 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %364, i32 0, i32 0
  %366 = load %struct.TYPE_7__*, %struct.TYPE_7__** %365, align 8
  %367 = load i32, i32* %9, align 4
  %368 = sext i32 %367 to i64
  %369 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %366, i64 %368
  %370 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %369, i32 0, i32 1
  store i32 %363, i32* %370, align 4
  %371 = load i32, i32* %11, align 4
  %372 = load i32, i32* @VIDEOSIZE_QCIF, align 4
  %373 = icmp eq i32 %371, %372
  br i1 %373, label %374, label %383

374:                                              ; preds = %362
  %375 = getelementptr inbounds %struct.cpia2_command, %struct.cpia2_command* %8, i32 0, i32 2
  %376 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %375, i32 0, i32 0
  %377 = load %struct.TYPE_7__*, %struct.TYPE_7__** %376, align 8
  %378 = load i32, i32* %9, align 4
  %379 = add nsw i32 %378, 1
  store i32 %379, i32* %9, align 4
  %380 = sext i32 %378 to i64
  %381 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %377, i64 %380
  %382 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %381, i32 0, i32 0
  store i32 ptrtoint (i8* inttoptr (i64 160 to i8*) to i32), i32* %382, align 4
  br label %392

383:                                              ; preds = %362
  %384 = getelementptr inbounds %struct.cpia2_command, %struct.cpia2_command* %8, i32 0, i32 2
  %385 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %384, i32 0, i32 0
  %386 = load %struct.TYPE_7__*, %struct.TYPE_7__** %385, align 8
  %387 = load i32, i32* %9, align 4
  %388 = add nsw i32 %387, 1
  store i32 %388, i32* %9, align 4
  %389 = sext i32 %387 to i64
  %390 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %386, i64 %389
  %391 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %390, i32 0, i32 0
  store i32 ptrtoint (i8* inttoptr (i64 64 to i8*) to i32), i32* %391, align 4
  br label %392

392:                                              ; preds = %383, %374
  %393 = load i32, i32* @CPIA2_VC_VC_OHSIZE, align 4
  %394 = getelementptr inbounds %struct.cpia2_command, %struct.cpia2_command* %8, i32 0, i32 2
  %395 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %394, i32 0, i32 0
  %396 = load %struct.TYPE_7__*, %struct.TYPE_7__** %395, align 8
  %397 = load i32, i32* %9, align 4
  %398 = sext i32 %397 to i64
  %399 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %396, i64 %398
  %400 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %399, i32 0, i32 1
  store i32 %393, i32* %400, align 4
  %401 = load %struct.camera_data*, %struct.camera_data** %5, align 8
  %402 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %401, i32 0, i32 0
  %403 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %402, i32 0, i32 0
  %404 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %403, i32 0, i32 0
  %405 = load i32, i32* %404, align 8
  %406 = sdiv i32 %405, 4
  %407 = getelementptr inbounds %struct.cpia2_command, %struct.cpia2_command* %8, i32 0, i32 2
  %408 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %407, i32 0, i32 0
  %409 = load %struct.TYPE_7__*, %struct.TYPE_7__** %408, align 8
  %410 = load i32, i32* %9, align 4
  %411 = add nsw i32 %410, 1
  store i32 %411, i32* %9, align 4
  %412 = sext i32 %410 to i64
  %413 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %409, i64 %412
  %414 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %413, i32 0, i32 0
  store i32 %406, i32* %414, align 4
  %415 = load i32, i32* @CPIA2_VC_VC_OVSIZE, align 4
  %416 = getelementptr inbounds %struct.cpia2_command, %struct.cpia2_command* %8, i32 0, i32 2
  %417 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %416, i32 0, i32 0
  %418 = load %struct.TYPE_7__*, %struct.TYPE_7__** %417, align 8
  %419 = load i32, i32* %9, align 4
  %420 = sext i32 %419 to i64
  %421 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %418, i64 %420
  %422 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %421, i32 0, i32 1
  store i32 %415, i32* %422, align 4
  %423 = load %struct.camera_data*, %struct.camera_data** %5, align 8
  %424 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %423, i32 0, i32 0
  %425 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %424, i32 0, i32 0
  %426 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %425, i32 0, i32 1
  %427 = load i32, i32* %426, align 4
  %428 = sdiv i32 %427, 4
  %429 = getelementptr inbounds %struct.cpia2_command, %struct.cpia2_command* %8, i32 0, i32 2
  %430 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %429, i32 0, i32 0
  %431 = load %struct.TYPE_7__*, %struct.TYPE_7__** %430, align 8
  %432 = load i32, i32* %9, align 4
  %433 = add nsw i32 %432, 1
  store i32 %433, i32* %9, align 4
  %434 = sext i32 %432 to i64
  %435 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %431, i64 %434
  %436 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %435, i32 0, i32 0
  store i32 %428, i32* %436, align 4
  %437 = load i32, i32* @CPIA2_VC_VC_HCROP, align 4
  %438 = getelementptr inbounds %struct.cpia2_command, %struct.cpia2_command* %8, i32 0, i32 2
  %439 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %438, i32 0, i32 0
  %440 = load %struct.TYPE_7__*, %struct.TYPE_7__** %439, align 8
  %441 = load i32, i32* %9, align 4
  %442 = sext i32 %441 to i64
  %443 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %440, i64 %442
  %444 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %443, i32 0, i32 1
  store i32 %437, i32* %444, align 4
  %445 = load i32, i32* %11, align 4
  %446 = load i32, i32* @VIDEOSIZE_QCIF, align 4
  %447 = icmp eq i32 %445, %446
  br i1 %447, label %448, label %466

448:                                              ; preds = %392
  %449 = load i32, i32* @STV_IMAGE_QCIF_COLS, align 4
  %450 = sdiv i32 %449, 4
  %451 = load i32, i32* %12, align 4
  %452 = sdiv i32 %451, 4
  %453 = sub nsw i32 %450, %452
  %454 = sdiv i32 %453, 2
  %455 = sext i32 %454 to i64
  %456 = inttoptr i64 %455 to i8*
  %457 = ptrtoint i8* %456 to i32
  %458 = getelementptr inbounds %struct.cpia2_command, %struct.cpia2_command* %8, i32 0, i32 2
  %459 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %458, i32 0, i32 0
  %460 = load %struct.TYPE_7__*, %struct.TYPE_7__** %459, align 8
  %461 = load i32, i32* %9, align 4
  %462 = add nsw i32 %461, 1
  store i32 %462, i32* %9, align 4
  %463 = sext i32 %461 to i64
  %464 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %460, i64 %463
  %465 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %464, i32 0, i32 0
  store i32 %457, i32* %465, align 4
  br label %484

466:                                              ; preds = %392
  %467 = load i32, i32* @STV_IMAGE_CIF_COLS, align 4
  %468 = sdiv i32 %467, 4
  %469 = load i32, i32* %12, align 4
  %470 = sdiv i32 %469, 4
  %471 = sub nsw i32 %468, %470
  %472 = sdiv i32 %471, 2
  %473 = sext i32 %472 to i64
  %474 = inttoptr i64 %473 to i8*
  %475 = ptrtoint i8* %474 to i32
  %476 = getelementptr inbounds %struct.cpia2_command, %struct.cpia2_command* %8, i32 0, i32 2
  %477 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %476, i32 0, i32 0
  %478 = load %struct.TYPE_7__*, %struct.TYPE_7__** %477, align 8
  %479 = load i32, i32* %9, align 4
  %480 = add nsw i32 %479, 1
  store i32 %480, i32* %9, align 4
  %481 = sext i32 %479 to i64
  %482 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %478, i64 %481
  %483 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %482, i32 0, i32 0
  store i32 %475, i32* %483, align 4
  br label %484

484:                                              ; preds = %466, %448
  %485 = load i32, i32* @CPIA2_VC_VC_VCROP, align 4
  %486 = getelementptr inbounds %struct.cpia2_command, %struct.cpia2_command* %8, i32 0, i32 2
  %487 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %486, i32 0, i32 0
  %488 = load %struct.TYPE_7__*, %struct.TYPE_7__** %487, align 8
  %489 = load i32, i32* %9, align 4
  %490 = sext i32 %489 to i64
  %491 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %488, i64 %490
  %492 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %491, i32 0, i32 1
  store i32 %485, i32* %492, align 4
  %493 = load i32, i32* %11, align 4
  %494 = load i32, i32* @VIDEOSIZE_QCIF, align 4
  %495 = icmp eq i32 %493, %494
  br i1 %495, label %496, label %514

496:                                              ; preds = %484
  %497 = load i32, i32* @STV_IMAGE_QCIF_ROWS, align 4
  %498 = sdiv i32 %497, 4
  %499 = load i32, i32* %13, align 4
  %500 = sdiv i32 %499, 4
  %501 = sub nsw i32 %498, %500
  %502 = sdiv i32 %501, 2
  %503 = sext i32 %502 to i64
  %504 = inttoptr i64 %503 to i8*
  %505 = ptrtoint i8* %504 to i32
  %506 = getelementptr inbounds %struct.cpia2_command, %struct.cpia2_command* %8, i32 0, i32 2
  %507 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %506, i32 0, i32 0
  %508 = load %struct.TYPE_7__*, %struct.TYPE_7__** %507, align 8
  %509 = load i32, i32* %9, align 4
  %510 = add nsw i32 %509, 1
  store i32 %510, i32* %9, align 4
  %511 = sext i32 %509 to i64
  %512 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %508, i64 %511
  %513 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %512, i32 0, i32 0
  store i32 %505, i32* %513, align 4
  br label %532

514:                                              ; preds = %484
  %515 = load i32, i32* @STV_IMAGE_CIF_ROWS, align 4
  %516 = sdiv i32 %515, 4
  %517 = load i32, i32* %13, align 4
  %518 = sdiv i32 %517, 4
  %519 = sub nsw i32 %516, %518
  %520 = sdiv i32 %519, 2
  %521 = sext i32 %520 to i64
  %522 = inttoptr i64 %521 to i8*
  %523 = ptrtoint i8* %522 to i32
  %524 = getelementptr inbounds %struct.cpia2_command, %struct.cpia2_command* %8, i32 0, i32 2
  %525 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %524, i32 0, i32 0
  %526 = load %struct.TYPE_7__*, %struct.TYPE_7__** %525, align 8
  %527 = load i32, i32* %9, align 4
  %528 = add nsw i32 %527, 1
  store i32 %528, i32* %9, align 4
  %529 = sext i32 %527 to i64
  %530 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %526, i64 %529
  %531 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %530, i32 0, i32 0
  store i32 %523, i32* %531, align 4
  br label %532

532:                                              ; preds = %514, %496
  %533 = load i32, i32* @CPIA2_VC_VC_HPHASE, align 4
  %534 = getelementptr inbounds %struct.cpia2_command, %struct.cpia2_command* %8, i32 0, i32 2
  %535 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %534, i32 0, i32 0
  %536 = load %struct.TYPE_7__*, %struct.TYPE_7__** %535, align 8
  %537 = load i32, i32* %9, align 4
  %538 = sext i32 %537 to i64
  %539 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %536, i64 %538
  %540 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %539, i32 0, i32 1
  store i32 %533, i32* %540, align 4
  %541 = getelementptr inbounds %struct.cpia2_command, %struct.cpia2_command* %8, i32 0, i32 2
  %542 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %541, i32 0, i32 0
  %543 = load %struct.TYPE_7__*, %struct.TYPE_7__** %542, align 8
  %544 = load i32, i32* %9, align 4
  %545 = add nsw i32 %544, 1
  store i32 %545, i32* %9, align 4
  %546 = sext i32 %544 to i64
  %547 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %543, i64 %546
  %548 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %547, i32 0, i32 0
  store i32 0, i32* %548, align 4
  %549 = load i32, i32* @CPIA2_VC_VC_VPHASE, align 4
  %550 = getelementptr inbounds %struct.cpia2_command, %struct.cpia2_command* %8, i32 0, i32 2
  %551 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %550, i32 0, i32 0
  %552 = load %struct.TYPE_7__*, %struct.TYPE_7__** %551, align 8
  %553 = load i32, i32* %9, align 4
  %554 = sext i32 %553 to i64
  %555 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %552, i64 %554
  %556 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %555, i32 0, i32 1
  store i32 %549, i32* %556, align 4
  %557 = getelementptr inbounds %struct.cpia2_command, %struct.cpia2_command* %8, i32 0, i32 2
  %558 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %557, i32 0, i32 0
  %559 = load %struct.TYPE_7__*, %struct.TYPE_7__** %558, align 8
  %560 = load i32, i32* %9, align 4
  %561 = add nsw i32 %560, 1
  store i32 %561, i32* %9, align 4
  %562 = sext i32 %560 to i64
  %563 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %559, i64 %562
  %564 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %563, i32 0, i32 0
  store i32 0, i32* %564, align 4
  %565 = load i32, i32* @CPIA2_VC_VC_HISPAN, align 4
  %566 = getelementptr inbounds %struct.cpia2_command, %struct.cpia2_command* %8, i32 0, i32 2
  %567 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %566, i32 0, i32 0
  %568 = load %struct.TYPE_7__*, %struct.TYPE_7__** %567, align 8
  %569 = load i32, i32* %9, align 4
  %570 = sext i32 %569 to i64
  %571 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %568, i64 %570
  %572 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %571, i32 0, i32 1
  store i32 %565, i32* %572, align 4
  %573 = getelementptr inbounds %struct.cpia2_command, %struct.cpia2_command* %8, i32 0, i32 2
  %574 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %573, i32 0, i32 0
  %575 = load %struct.TYPE_7__*, %struct.TYPE_7__** %574, align 8
  %576 = load i32, i32* %9, align 4
  %577 = add nsw i32 %576, 1
  store i32 %577, i32* %9, align 4
  %578 = sext i32 %576 to i64
  %579 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %575, i64 %578
  %580 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %579, i32 0, i32 0
  store i32 ptrtoint (i8* inttoptr (i64 31 to i8*) to i32), i32* %580, align 4
  %581 = load i32, i32* @CPIA2_VC_VC_VISPAN, align 4
  %582 = getelementptr inbounds %struct.cpia2_command, %struct.cpia2_command* %8, i32 0, i32 2
  %583 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %582, i32 0, i32 0
  %584 = load %struct.TYPE_7__*, %struct.TYPE_7__** %583, align 8
  %585 = load i32, i32* %9, align 4
  %586 = sext i32 %585 to i64
  %587 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %584, i64 %586
  %588 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %587, i32 0, i32 1
  store i32 %581, i32* %588, align 4
  %589 = getelementptr inbounds %struct.cpia2_command, %struct.cpia2_command* %8, i32 0, i32 2
  %590 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %589, i32 0, i32 0
  %591 = load %struct.TYPE_7__*, %struct.TYPE_7__** %590, align 8
  %592 = load i32, i32* %9, align 4
  %593 = add nsw i32 %592, 1
  store i32 %593, i32* %9, align 4
  %594 = sext i32 %592 to i64
  %595 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %591, i64 %594
  %596 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %595, i32 0, i32 0
  store i32 ptrtoint (i8* inttoptr (i64 31 to i8*) to i32), i32* %596, align 4
  %597 = load i32, i32* @CPIA2_VC_VC_HICROP, align 4
  %598 = getelementptr inbounds %struct.cpia2_command, %struct.cpia2_command* %8, i32 0, i32 2
  %599 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %598, i32 0, i32 0
  %600 = load %struct.TYPE_7__*, %struct.TYPE_7__** %599, align 8
  %601 = load i32, i32* %9, align 4
  %602 = sext i32 %601 to i64
  %603 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %600, i64 %602
  %604 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %603, i32 0, i32 1
  store i32 %597, i32* %604, align 4
  %605 = getelementptr inbounds %struct.cpia2_command, %struct.cpia2_command* %8, i32 0, i32 2
  %606 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %605, i32 0, i32 0
  %607 = load %struct.TYPE_7__*, %struct.TYPE_7__** %606, align 8
  %608 = load i32, i32* %9, align 4
  %609 = add nsw i32 %608, 1
  store i32 %609, i32* %9, align 4
  %610 = sext i32 %608 to i64
  %611 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %607, i64 %610
  %612 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %611, i32 0, i32 0
  store i32 0, i32* %612, align 4
  %613 = load i32, i32* @CPIA2_VC_VC_VICROP, align 4
  %614 = getelementptr inbounds %struct.cpia2_command, %struct.cpia2_command* %8, i32 0, i32 2
  %615 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %614, i32 0, i32 0
  %616 = load %struct.TYPE_7__*, %struct.TYPE_7__** %615, align 8
  %617 = load i32, i32* %9, align 4
  %618 = sext i32 %617 to i64
  %619 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %616, i64 %618
  %620 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %619, i32 0, i32 1
  store i32 %613, i32* %620, align 4
  %621 = getelementptr inbounds %struct.cpia2_command, %struct.cpia2_command* %8, i32 0, i32 2
  %622 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %621, i32 0, i32 0
  %623 = load %struct.TYPE_7__*, %struct.TYPE_7__** %622, align 8
  %624 = load i32, i32* %9, align 4
  %625 = add nsw i32 %624, 1
  store i32 %625, i32* %9, align 4
  %626 = sext i32 %624 to i64
  %627 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %623, i64 %626
  %628 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %627, i32 0, i32 0
  store i32 0, i32* %628, align 4
  %629 = load i32, i32* @CPIA2_VC_VC_HFRACT, align 4
  %630 = getelementptr inbounds %struct.cpia2_command, %struct.cpia2_command* %8, i32 0, i32 2
  %631 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %630, i32 0, i32 0
  %632 = load %struct.TYPE_7__*, %struct.TYPE_7__** %631, align 8
  %633 = load i32, i32* %9, align 4
  %634 = sext i32 %633 to i64
  %635 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %632, i64 %634
  %636 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %635, i32 0, i32 1
  store i32 %629, i32* %636, align 4
  %637 = getelementptr inbounds %struct.cpia2_command, %struct.cpia2_command* %8, i32 0, i32 2
  %638 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %637, i32 0, i32 0
  %639 = load %struct.TYPE_7__*, %struct.TYPE_7__** %638, align 8
  %640 = load i32, i32* %9, align 4
  %641 = add nsw i32 %640, 1
  store i32 %641, i32* %9, align 4
  %642 = sext i32 %640 to i64
  %643 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %639, i64 %642
  %644 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %643, i32 0, i32 0
  store i32 ptrtoint (i8* inttoptr (i64 129 to i8*) to i32), i32* %644, align 4
  %645 = load i32, i32* @CPIA2_VC_VC_VFRACT, align 4
  %646 = getelementptr inbounds %struct.cpia2_command, %struct.cpia2_command* %8, i32 0, i32 2
  %647 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %646, i32 0, i32 0
  %648 = load %struct.TYPE_7__*, %struct.TYPE_7__** %647, align 8
  %649 = load i32, i32* %9, align 4
  %650 = sext i32 %649 to i64
  %651 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %648, i64 %650
  %652 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %651, i32 0, i32 1
  store i32 %645, i32* %652, align 4
  %653 = getelementptr inbounds %struct.cpia2_command, %struct.cpia2_command* %8, i32 0, i32 2
  %654 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %653, i32 0, i32 0
  %655 = load %struct.TYPE_7__*, %struct.TYPE_7__** %654, align 8
  %656 = load i32, i32* %9, align 4
  %657 = add nsw i32 %656, 1
  store i32 %657, i32* %9, align 4
  %658 = sext i32 %656 to i64
  %659 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %655, i64 %658
  %660 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %659, i32 0, i32 0
  store i32 ptrtoint (i8* inttoptr (i64 129 to i8*) to i32), i32* %660, align 4
  %661 = load i32, i32* %9, align 4
  %662 = getelementptr inbounds %struct.cpia2_command, %struct.cpia2_command* %8, i32 0, i32 1
  store i32 %661, i32* %662, align 4
  %663 = load %struct.camera_data*, %struct.camera_data** %5, align 8
  %664 = call i32 @cpia2_send_command(%struct.camera_data* %663, %struct.cpia2_command* %8)
  %665 = load i32, i32* %9, align 4
  store i32 %665, i32* %4, align 4
  br label %666

666:                                              ; preds = %532, %77
  %667 = load i32, i32* %4, align 4
  ret i32 %667
}

declare dso_local i32 @cpia2_match_video_size(i32, i32) #1

declare dso_local i32 @DBG(i8*, ...) #1

declare dso_local i32 @set_vw_size(%struct.camera_data*, i32) #1

declare dso_local i32 @ERR(i8*) #1

declare dso_local i32 @cpia2_send_command(%struct.camera_data*, %struct.cpia2_command*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
