; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/davinci/extr_dm644x_ccdc.c_ccdc_config_raw.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/davinci/extr_dm644x_ccdc.c_ccdc_config_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccdc_params_raw = type { i32, i32, i32, i32, i32, %struct.TYPE_4__, i64, %struct.ccdc_config_params_raw }
%struct.TYPE_4__ = type { i32, i32, i32, i32 }
%struct.ccdc_config_params_raw = type { i32, %struct.TYPE_3__, i32, i32, i32 }
%struct.TYPE_3__ = type { i32, i64 }

@ccdc_hw_params_raw = common dso_local global %struct.ccdc_params_raw zeroinitializer, align 8
@dev = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"\0AStarting ccdc_config_raw...\00", align 1
@CCDC_LATCH_ON_VSYNC_DISABLE = common dso_local global i32 0, align 4
@CCDC_CCDCFG = common dso_local global i32 0, align 4
@CCDC_VD_POL_MASK = common dso_local global i32 0, align 4
@CCDC_VD_POL_SHIFT = common dso_local global i32 0, align 4
@CCDC_HD_POL_MASK = common dso_local global i32 0, align 4
@CCDC_HD_POL_SHIFT = common dso_local global i32 0, align 4
@CCDC_FID_POL_MASK = common dso_local global i32 0, align 4
@CCDC_FID_POL_SHIFT = common dso_local global i32 0, align 4
@CCDC_FRM_FMT_MASK = common dso_local global i32 0, align 4
@CCDC_FRM_FMT_SHIFT = common dso_local global i32 0, align 4
@CCDC_DATA_SZ_MASK = common dso_local global i32 0, align 4
@CCDC_DATA_SZ_SHIFT = common dso_local global i32 0, align 4
@CCDC_PIX_FMT_MASK = common dso_local global i32 0, align 4
@CCDC_PIX_FMT_SHIFT = common dso_local global i32 0, align 4
@CCDC_WEN_ENABLE = common dso_local global i32 0, align 4
@CCDC_VDHDEN_ENABLE = common dso_local global i32 0, align 4
@CCDC_ALAW_GAMA_WD_MASK = common dso_local global i32 0, align 4
@CCDC_ALAW_ENABLE = common dso_local global i32 0, align 4
@CCDC_ALAW = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"\0AWriting 0x%x to ALAW...\0A\00", align 1
@CCDC_PPC_RAW = common dso_local global i32 0, align 4
@CCDC_DATA_8BITS = common dso_local global i32 0, align 4
@CCDC_DATA_PACK_ENABLE = common dso_local global i32 0, align 4
@CCDC_DISABLE_VIDEO_PORT = common dso_local global i32 0, align 4
@CCDC_DATA_10BITS = common dso_local global i32 0, align 4
@CCDC_FMTCFG_VPIN_MASK = common dso_local global i32 0, align 4
@CCDC_FMTCFG_VPIN_SHIFT = common dso_local global i32 0, align 4
@CCDC_FMTCFG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"\0AWriting 0x%x to FMTCFG...\0A\00", align 1
@CCDC_COLPTN_VAL = common dso_local global i32 0, align 4
@CCDC_COLPTN = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [34 x i8] c"\0AWriting 0xBB11BB11 to COLPTN...\0A\00", align 1
@CCDC_FMT_HORZ_FMTSPH_MASK = common dso_local global i32 0, align 4
@CCDC_FMT_HORZ_FMTSPH_SHIFT = common dso_local global i32 0, align 4
@CCDC_FMT_HORZ_FMTLNH_MASK = common dso_local global i32 0, align 4
@CCDC_FMT_HORZ = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [30 x i8] c"\0AWriting 0x%x to FMT_HORZ...\0A\00", align 1
@CCDC_FMT_VERT_FMTSLV_MASK = common dso_local global i32 0, align 4
@CCDC_FMT_VERT_FMTSLV_SHIFT = common dso_local global i32 0, align 4
@CCDC_FRMFMT_PROGRESSIVE = common dso_local global i32 0, align 4
@CCDC_FMT_VERT_FMTLNV_MASK = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [31 x i8] c"\0Aparams->win.height  0x%x ...\0A\00", align 1
@CCDC_FMT_VERT = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [30 x i8] c"\0AWriting 0x%x to FMT_VERT...\0A\00", align 1
@.str.7 = private unnamed_addr constant [30 x i8] c"\0Abelow regw(val, FMT_VERT)...\00", align 1
@CCDC_32BYTE_ALIGN_VAL = common dso_local global i32 0, align 4
@CCDC_HSIZE_OFF_MASK = common dso_local global i32 0, align 4
@CCDC_HSIZE_OFF = common dso_local global i32 0, align 4
@CCDC_TWO_BYTES_PER_PIXEL = common dso_local global i32 0, align 4
@CCDC_FRMFMT_INTERLACED = common dso_local global i32 0, align 4
@CCDC_INTERLACED_IMAGE_INVERT = common dso_local global i32 0, align 4
@CCDC_SDOFST = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [30 x i8] c"\0AWriting 0x4B6D to SDOFST...\0A\00", align 1
@CCDC_INTERLACED_NO_IMAGE_INVERT = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [30 x i8] c"\0AWriting 0x0249 to SDOFST...\0A\00", align 1
@CCDC_PROGRESSIVE_NO_IMAGE_INVERT = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [30 x i8] c"\0AWriting 0x0000 to SDOFST...\0A\00", align 1
@CCDC_VP_OUT_VERT_NUM_MASK = common dso_local global i32 0, align 4
@CCDC_VP_OUT_VERT_NUM_SHIFT = common dso_local global i32 0, align 4
@CCDC_INTERLACED_HEIGHT_SHIFT = common dso_local global i32 0, align 4
@CCDC_VP_OUT_HORZ_NUM_MASK = common dso_local global i32 0, align 4
@CCDC_VP_OUT_HORZ_NUM_SHIFT = common dso_local global i32 0, align 4
@CCDC_VP_OUT_HORZ_ST_MASK = common dso_local global i32 0, align 4
@CCDC_VP_OUT = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [28 x i8] c"\0AWriting 0x%x to VP_OUT...\0A\00", align 1
@CCDC_SYN_MODE = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [30 x i8] c"\0AWriting 0x%x to SYN_MODE...\0A\00", align 1
@.str.13 = private unnamed_addr constant [27 x i8] c"\0Aend of ccdc_config_raw...\00", align 1
@CCDC_ENABLE_VIDEO_PORT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ccdc_config_raw() #0 {
  %1 = alloca %struct.ccdc_params_raw*, align 8
  %2 = alloca %struct.ccdc_config_params_raw*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.ccdc_params_raw* @ccdc_hw_params_raw, %struct.ccdc_params_raw** %1, align 8
  store %struct.ccdc_config_params_raw* getelementptr inbounds (%struct.ccdc_params_raw, %struct.ccdc_params_raw* @ccdc_hw_params_raw, i32 0, i32 7), %struct.ccdc_config_params_raw** %2, align 8
  store i32 0, i32* %3, align 4
  %5 = load i32, i32* @dev, align 4
  %6 = call i32 (i32, i8*, ...) @dev_dbg(i32 %5, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %7 = call i32 (...) @ccdc_restore_defaults()
  %8 = load i32, i32* @CCDC_LATCH_ON_VSYNC_DISABLE, align 4
  %9 = load i32, i32* @CCDC_CCDCFG, align 4
  %10 = call i32 @regw(i32 %8, i32 %9)
  %11 = load %struct.ccdc_params_raw*, %struct.ccdc_params_raw** %1, align 8
  %12 = getelementptr inbounds %struct.ccdc_params_raw, %struct.ccdc_params_raw* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @CCDC_VD_POL_MASK, align 4
  %15 = and i32 %13, %14
  %16 = load i32, i32* @CCDC_VD_POL_SHIFT, align 4
  %17 = shl i32 %15, %16
  %18 = load %struct.ccdc_params_raw*, %struct.ccdc_params_raw** %1, align 8
  %19 = getelementptr inbounds %struct.ccdc_params_raw, %struct.ccdc_params_raw* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @CCDC_HD_POL_MASK, align 4
  %22 = and i32 %20, %21
  %23 = load i32, i32* @CCDC_HD_POL_SHIFT, align 4
  %24 = shl i32 %22, %23
  %25 = or i32 %17, %24
  %26 = load %struct.ccdc_params_raw*, %struct.ccdc_params_raw** %1, align 8
  %27 = getelementptr inbounds %struct.ccdc_params_raw, %struct.ccdc_params_raw* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @CCDC_FID_POL_MASK, align 4
  %30 = and i32 %28, %29
  %31 = load i32, i32* @CCDC_FID_POL_SHIFT, align 4
  %32 = shl i32 %30, %31
  %33 = or i32 %25, %32
  %34 = load %struct.ccdc_params_raw*, %struct.ccdc_params_raw** %1, align 8
  %35 = getelementptr inbounds %struct.ccdc_params_raw, %struct.ccdc_params_raw* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @CCDC_FRM_FMT_MASK, align 4
  %38 = and i32 %36, %37
  %39 = load i32, i32* @CCDC_FRM_FMT_SHIFT, align 4
  %40 = shl i32 %38, %39
  %41 = or i32 %33, %40
  %42 = load %struct.ccdc_config_params_raw*, %struct.ccdc_config_params_raw** %2, align 8
  %43 = getelementptr inbounds %struct.ccdc_config_params_raw, %struct.ccdc_config_params_raw* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @CCDC_DATA_SZ_MASK, align 4
  %46 = and i32 %44, %45
  %47 = load i32, i32* @CCDC_DATA_SZ_SHIFT, align 4
  %48 = shl i32 %46, %47
  %49 = or i32 %41, %48
  %50 = load %struct.ccdc_params_raw*, %struct.ccdc_params_raw** %1, align 8
  %51 = getelementptr inbounds %struct.ccdc_params_raw, %struct.ccdc_params_raw* %50, i32 0, i32 4
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* @CCDC_PIX_FMT_MASK, align 4
  %54 = and i32 %52, %53
  %55 = load i32, i32* @CCDC_PIX_FMT_SHIFT, align 4
  %56 = shl i32 %54, %55
  %57 = or i32 %49, %56
  %58 = load i32, i32* @CCDC_WEN_ENABLE, align 4
  %59 = or i32 %57, %58
  %60 = load i32, i32* @CCDC_VDHDEN_ENABLE, align 4
  %61 = or i32 %59, %60
  store i32 %61, i32* %3, align 4
  %62 = load %struct.ccdc_config_params_raw*, %struct.ccdc_config_params_raw** %2, align 8
  %63 = getelementptr inbounds %struct.ccdc_config_params_raw, %struct.ccdc_config_params_raw* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %82

67:                                               ; preds = %0
  %68 = load %struct.ccdc_config_params_raw*, %struct.ccdc_config_params_raw** %2, align 8
  %69 = getelementptr inbounds %struct.ccdc_config_params_raw, %struct.ccdc_config_params_raw* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* @CCDC_ALAW_GAMA_WD_MASK, align 4
  %73 = and i32 %71, %72
  %74 = load i32, i32* @CCDC_ALAW_ENABLE, align 4
  %75 = or i32 %73, %74
  store i32 %75, i32* %4, align 4
  %76 = load i32, i32* %4, align 4
  %77 = load i32, i32* @CCDC_ALAW, align 4
  %78 = call i32 @regw(i32 %76, i32 %77)
  %79 = load i32, i32* @dev, align 4
  %80 = load i32, i32* %4, align 4
  %81 = call i32 (i32, i8*, ...) @dev_dbg(i32 %79, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %80)
  br label %82

82:                                               ; preds = %67, %0
  %83 = load %struct.ccdc_params_raw*, %struct.ccdc_params_raw** %1, align 8
  %84 = getelementptr inbounds %struct.ccdc_params_raw, %struct.ccdc_params_raw* %83, i32 0, i32 5
  %85 = load %struct.ccdc_params_raw*, %struct.ccdc_params_raw** %1, align 8
  %86 = getelementptr inbounds %struct.ccdc_params_raw, %struct.ccdc_params_raw* %85, i32 0, i32 3
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* @CCDC_PPC_RAW, align 4
  %89 = call i32 @ccdc_setwin(%struct.TYPE_4__* %84, i32 %87, i32 %88)
  %90 = load %struct.ccdc_config_params_raw*, %struct.ccdc_config_params_raw** %2, align 8
  %91 = getelementptr inbounds %struct.ccdc_config_params_raw, %struct.ccdc_config_params_raw* %90, i32 0, i32 4
  %92 = call i32 @ccdc_config_black_clamp(i32* %91)
  %93 = load %struct.ccdc_config_params_raw*, %struct.ccdc_config_params_raw** %2, align 8
  %94 = getelementptr inbounds %struct.ccdc_config_params_raw, %struct.ccdc_config_params_raw* %93, i32 0, i32 3
  %95 = call i32 @ccdc_config_black_compense(i32* %94)
  %96 = load %struct.ccdc_config_params_raw*, %struct.ccdc_config_params_raw** %2, align 8
  %97 = getelementptr inbounds %struct.ccdc_config_params_raw, %struct.ccdc_config_params_raw* %96, i32 0, i32 2
  %98 = call i32 @ccdc_config_fpc(i32* %97)
  %99 = load %struct.ccdc_config_params_raw*, %struct.ccdc_config_params_raw** %2, align 8
  %100 = getelementptr inbounds %struct.ccdc_config_params_raw, %struct.ccdc_config_params_raw* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = load i32, i32* @CCDC_DATA_8BITS, align 4
  %103 = icmp eq i32 %101, %102
  br i1 %103, label %110, label %104

104:                                              ; preds = %82
  %105 = load %struct.ccdc_config_params_raw*, %struct.ccdc_config_params_raw** %2, align 8
  %106 = getelementptr inbounds %struct.ccdc_config_params_raw, %struct.ccdc_config_params_raw* %105, i32 0, i32 1
  %107 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %106, i32 0, i32 1
  %108 = load i64, i64* %107, align 8
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %114

110:                                              ; preds = %104, %82
  %111 = load i32, i32* @CCDC_DATA_PACK_ENABLE, align 4
  %112 = load i32, i32* %3, align 4
  %113 = or i32 %112, %111
  store i32 %113, i32* %3, align 4
  br label %114

114:                                              ; preds = %110, %104
  %115 = load i32, i32* @CCDC_DISABLE_VIDEO_PORT, align 4
  store i32 %115, i32* %4, align 4
  %116 = load %struct.ccdc_config_params_raw*, %struct.ccdc_config_params_raw** %2, align 8
  %117 = getelementptr inbounds %struct.ccdc_config_params_raw, %struct.ccdc_config_params_raw* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = load i32, i32* @CCDC_DATA_8BITS, align 4
  %120 = icmp eq i32 %118, %119
  br i1 %120, label %121, label %129

121:                                              ; preds = %114
  %122 = load i32, i32* @CCDC_DATA_10BITS, align 4
  %123 = load i32, i32* @CCDC_FMTCFG_VPIN_MASK, align 4
  %124 = and i32 %122, %123
  %125 = load i32, i32* @CCDC_FMTCFG_VPIN_SHIFT, align 4
  %126 = shl i32 %124, %125
  %127 = load i32, i32* %4, align 4
  %128 = or i32 %127, %126
  store i32 %128, i32* %4, align 4
  br label %139

129:                                              ; preds = %114
  %130 = load %struct.ccdc_config_params_raw*, %struct.ccdc_config_params_raw** %2, align 8
  %131 = getelementptr inbounds %struct.ccdc_config_params_raw, %struct.ccdc_config_params_raw* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = load i32, i32* @CCDC_FMTCFG_VPIN_MASK, align 4
  %134 = and i32 %132, %133
  %135 = load i32, i32* @CCDC_FMTCFG_VPIN_SHIFT, align 4
  %136 = shl i32 %134, %135
  %137 = load i32, i32* %4, align 4
  %138 = or i32 %137, %136
  store i32 %138, i32* %4, align 4
  br label %139

139:                                              ; preds = %129, %121
  %140 = load i32, i32* %4, align 4
  %141 = load i32, i32* @CCDC_FMTCFG, align 4
  %142 = call i32 @regw(i32 %140, i32 %141)
  %143 = load i32, i32* @dev, align 4
  %144 = load i32, i32* %4, align 4
  %145 = call i32 (i32, i8*, ...) @dev_dbg(i32 %143, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 %144)
  %146 = load i32, i32* @CCDC_COLPTN_VAL, align 4
  %147 = load i32, i32* @CCDC_COLPTN, align 4
  %148 = call i32 @regw(i32 %146, i32 %147)
  %149 = load i32, i32* @dev, align 4
  %150 = call i32 (i32, i8*, ...) @dev_dbg(i32 %149, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0))
  %151 = load %struct.ccdc_params_raw*, %struct.ccdc_params_raw** %1, align 8
  %152 = getelementptr inbounds %struct.ccdc_params_raw, %struct.ccdc_params_raw* %151, i32 0, i32 5
  %153 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 4
  %155 = load i32, i32* @CCDC_FMT_HORZ_FMTSPH_MASK, align 4
  %156 = and i32 %154, %155
  %157 = load i32, i32* @CCDC_FMT_HORZ_FMTSPH_SHIFT, align 4
  %158 = shl i32 %156, %157
  %159 = load %struct.ccdc_params_raw*, %struct.ccdc_params_raw** %1, align 8
  %160 = getelementptr inbounds %struct.ccdc_params_raw, %struct.ccdc_params_raw* %159, i32 0, i32 5
  %161 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %160, i32 0, i32 1
  %162 = load i32, i32* %161, align 4
  %163 = load i32, i32* @CCDC_FMT_HORZ_FMTLNH_MASK, align 4
  %164 = and i32 %162, %163
  %165 = or i32 %158, %164
  store i32 %165, i32* %4, align 4
  %166 = load i32, i32* %4, align 4
  %167 = load i32, i32* @CCDC_FMT_HORZ, align 4
  %168 = call i32 @regw(i32 %166, i32 %167)
  %169 = load i32, i32* @dev, align 4
  %170 = load i32, i32* %4, align 4
  %171 = call i32 (i32, i8*, ...) @dev_dbg(i32 %169, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0), i32 %170)
  %172 = load %struct.ccdc_params_raw*, %struct.ccdc_params_raw** %1, align 8
  %173 = getelementptr inbounds %struct.ccdc_params_raw, %struct.ccdc_params_raw* %172, i32 0, i32 5
  %174 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %173, i32 0, i32 2
  %175 = load i32, i32* %174, align 4
  %176 = load i32, i32* @CCDC_FMT_VERT_FMTSLV_MASK, align 4
  %177 = and i32 %175, %176
  %178 = load i32, i32* @CCDC_FMT_VERT_FMTSLV_SHIFT, align 4
  %179 = shl i32 %177, %178
  store i32 %179, i32* %4, align 4
  %180 = load %struct.ccdc_params_raw*, %struct.ccdc_params_raw** %1, align 8
  %181 = getelementptr inbounds %struct.ccdc_params_raw, %struct.ccdc_params_raw* %180, i32 0, i32 3
  %182 = load i32, i32* %181, align 4
  %183 = load i32, i32* @CCDC_FRMFMT_PROGRESSIVE, align 4
  %184 = icmp eq i32 %182, %183
  br i1 %184, label %185, label %194

185:                                              ; preds = %139
  %186 = load %struct.ccdc_params_raw*, %struct.ccdc_params_raw** %1, align 8
  %187 = getelementptr inbounds %struct.ccdc_params_raw, %struct.ccdc_params_raw* %186, i32 0, i32 5
  %188 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %187, i32 0, i32 3
  %189 = load i32, i32* %188, align 4
  %190 = load i32, i32* @CCDC_FMT_VERT_FMTLNV_MASK, align 4
  %191 = and i32 %189, %190
  %192 = load i32, i32* %4, align 4
  %193 = or i32 %192, %191
  store i32 %193, i32* %4, align 4
  br label %204

194:                                              ; preds = %139
  %195 = load %struct.ccdc_params_raw*, %struct.ccdc_params_raw** %1, align 8
  %196 = getelementptr inbounds %struct.ccdc_params_raw, %struct.ccdc_params_raw* %195, i32 0, i32 5
  %197 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %196, i32 0, i32 3
  %198 = load i32, i32* %197, align 4
  %199 = lshr i32 %198, 1
  %200 = load i32, i32* @CCDC_FMT_VERT_FMTLNV_MASK, align 4
  %201 = and i32 %199, %200
  %202 = load i32, i32* %4, align 4
  %203 = or i32 %202, %201
  store i32 %203, i32* %4, align 4
  br label %204

204:                                              ; preds = %194, %185
  %205 = load i32, i32* @dev, align 4
  %206 = load %struct.ccdc_params_raw*, %struct.ccdc_params_raw** %1, align 8
  %207 = getelementptr inbounds %struct.ccdc_params_raw, %struct.ccdc_params_raw* %206, i32 0, i32 5
  %208 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %207, i32 0, i32 3
  %209 = load i32, i32* %208, align 4
  %210 = call i32 (i32, i8*, ...) @dev_dbg(i32 %205, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0), i32 %209)
  %211 = load i32, i32* %4, align 4
  %212 = load i32, i32* @CCDC_FMT_VERT, align 4
  %213 = call i32 @regw(i32 %211, i32 %212)
  %214 = load i32, i32* @dev, align 4
  %215 = load i32, i32* %4, align 4
  %216 = call i32 (i32, i8*, ...) @dev_dbg(i32 %214, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0), i32 %215)
  %217 = load i32, i32* @dev, align 4
  %218 = call i32 (i32, i8*, ...) @dev_dbg(i32 %217, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.7, i64 0, i64 0))
  %219 = load %struct.ccdc_config_params_raw*, %struct.ccdc_config_params_raw** %2, align 8
  %220 = getelementptr inbounds %struct.ccdc_config_params_raw, %struct.ccdc_config_params_raw* %219, i32 0, i32 0
  %221 = load i32, i32* %220, align 8
  %222 = load i32, i32* @CCDC_DATA_8BITS, align 4
  %223 = icmp eq i32 %221, %222
  br i1 %223, label %230, label %224

224:                                              ; preds = %204
  %225 = load %struct.ccdc_config_params_raw*, %struct.ccdc_config_params_raw** %2, align 8
  %226 = getelementptr inbounds %struct.ccdc_config_params_raw, %struct.ccdc_config_params_raw* %225, i32 0, i32 1
  %227 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %226, i32 0, i32 1
  %228 = load i64, i64* %227, align 8
  %229 = icmp ne i64 %228, 0
  br i1 %229, label %230, label %241

230:                                              ; preds = %224, %204
  %231 = load %struct.ccdc_params_raw*, %struct.ccdc_params_raw** %1, align 8
  %232 = getelementptr inbounds %struct.ccdc_params_raw, %struct.ccdc_params_raw* %231, i32 0, i32 5
  %233 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %232, i32 0, i32 1
  %234 = load i32, i32* %233, align 4
  %235 = load i32, i32* @CCDC_32BYTE_ALIGN_VAL, align 4
  %236 = add i32 %234, %235
  %237 = load i32, i32* @CCDC_HSIZE_OFF_MASK, align 4
  %238 = and i32 %236, %237
  %239 = load i32, i32* @CCDC_HSIZE_OFF, align 4
  %240 = call i32 @regw(i32 %238, i32 %239)
  br label %254

241:                                              ; preds = %224
  %242 = load %struct.ccdc_params_raw*, %struct.ccdc_params_raw** %1, align 8
  %243 = getelementptr inbounds %struct.ccdc_params_raw, %struct.ccdc_params_raw* %242, i32 0, i32 5
  %244 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %243, i32 0, i32 1
  %245 = load i32, i32* %244, align 4
  %246 = load i32, i32* @CCDC_TWO_BYTES_PER_PIXEL, align 4
  %247 = mul i32 %245, %246
  %248 = load i32, i32* @CCDC_32BYTE_ALIGN_VAL, align 4
  %249 = add i32 %247, %248
  %250 = load i32, i32* @CCDC_HSIZE_OFF_MASK, align 4
  %251 = and i32 %249, %250
  %252 = load i32, i32* @CCDC_HSIZE_OFF, align 4
  %253 = call i32 @regw(i32 %251, i32 %252)
  br label %254

254:                                              ; preds = %241, %230
  %255 = load %struct.ccdc_params_raw*, %struct.ccdc_params_raw** %1, align 8
  %256 = getelementptr inbounds %struct.ccdc_params_raw, %struct.ccdc_params_raw* %255, i32 0, i32 3
  %257 = load i32, i32* %256, align 4
  %258 = load i32, i32* @CCDC_FRMFMT_INTERLACED, align 4
  %259 = icmp eq i32 %257, %258
  br i1 %259, label %260, label %278

260:                                              ; preds = %254
  %261 = load %struct.ccdc_params_raw*, %struct.ccdc_params_raw** %1, align 8
  %262 = getelementptr inbounds %struct.ccdc_params_raw, %struct.ccdc_params_raw* %261, i32 0, i32 6
  %263 = load i64, i64* %262, align 8
  %264 = icmp ne i64 %263, 0
  br i1 %264, label %265, label %271

265:                                              ; preds = %260
  %266 = load i32, i32* @CCDC_INTERLACED_IMAGE_INVERT, align 4
  %267 = load i32, i32* @CCDC_SDOFST, align 4
  %268 = call i32 @regw(i32 %266, i32 %267)
  %269 = load i32, i32* @dev, align 4
  %270 = call i32 (i32, i8*, ...) @dev_dbg(i32 %269, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.8, i64 0, i64 0))
  br label %277

271:                                              ; preds = %260
  %272 = load i32, i32* @CCDC_INTERLACED_NO_IMAGE_INVERT, align 4
  %273 = load i32, i32* @CCDC_SDOFST, align 4
  %274 = call i32 @regw(i32 %272, i32 %273)
  %275 = load i32, i32* @dev, align 4
  %276 = call i32 (i32, i8*, ...) @dev_dbg(i32 %275, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.9, i64 0, i64 0))
  br label %277

277:                                              ; preds = %271, %265
  br label %291

278:                                              ; preds = %254
  %279 = load %struct.ccdc_params_raw*, %struct.ccdc_params_raw** %1, align 8
  %280 = getelementptr inbounds %struct.ccdc_params_raw, %struct.ccdc_params_raw* %279, i32 0, i32 3
  %281 = load i32, i32* %280, align 4
  %282 = load i32, i32* @CCDC_FRMFMT_PROGRESSIVE, align 4
  %283 = icmp eq i32 %281, %282
  br i1 %283, label %284, label %290

284:                                              ; preds = %278
  %285 = load i32, i32* @CCDC_PROGRESSIVE_NO_IMAGE_INVERT, align 4
  %286 = load i32, i32* @CCDC_SDOFST, align 4
  %287 = call i32 @regw(i32 %285, i32 %286)
  %288 = load i32, i32* @dev, align 4
  %289 = call i32 (i32, i8*, ...) @dev_dbg(i32 %288, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.10, i64 0, i64 0))
  br label %290

290:                                              ; preds = %284, %278
  br label %291

291:                                              ; preds = %290, %277
  %292 = load %struct.ccdc_params_raw*, %struct.ccdc_params_raw** %1, align 8
  %293 = getelementptr inbounds %struct.ccdc_params_raw, %struct.ccdc_params_raw* %292, i32 0, i32 3
  %294 = load i32, i32* %293, align 4
  %295 = load i32, i32* @CCDC_FRMFMT_PROGRESSIVE, align 4
  %296 = icmp eq i32 %294, %295
  br i1 %296, label %297, label %307

297:                                              ; preds = %291
  %298 = load %struct.ccdc_params_raw*, %struct.ccdc_params_raw** %1, align 8
  %299 = getelementptr inbounds %struct.ccdc_params_raw, %struct.ccdc_params_raw* %298, i32 0, i32 5
  %300 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %299, i32 0, i32 3
  %301 = load i32, i32* %300, align 4
  %302 = sub i32 %301, 1
  %303 = load i32, i32* @CCDC_VP_OUT_VERT_NUM_MASK, align 4
  %304 = and i32 %302, %303
  %305 = load i32, i32* @CCDC_VP_OUT_VERT_NUM_SHIFT, align 4
  %306 = shl i32 %304, %305
  store i32 %306, i32* %4, align 4
  br label %319

307:                                              ; preds = %291
  %308 = load %struct.ccdc_params_raw*, %struct.ccdc_params_raw** %1, align 8
  %309 = getelementptr inbounds %struct.ccdc_params_raw, %struct.ccdc_params_raw* %308, i32 0, i32 5
  %310 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %309, i32 0, i32 3
  %311 = load i32, i32* %310, align 4
  %312 = load i32, i32* @CCDC_INTERLACED_HEIGHT_SHIFT, align 4
  %313 = lshr i32 %311, %312
  %314 = sub i32 %313, 1
  %315 = load i32, i32* @CCDC_VP_OUT_VERT_NUM_MASK, align 4
  %316 = and i32 %314, %315
  %317 = load i32, i32* @CCDC_VP_OUT_VERT_NUM_SHIFT, align 4
  %318 = shl i32 %316, %317
  store i32 %318, i32* %4, align 4
  br label %319

319:                                              ; preds = %307, %297
  %320 = load %struct.ccdc_params_raw*, %struct.ccdc_params_raw** %1, align 8
  %321 = getelementptr inbounds %struct.ccdc_params_raw, %struct.ccdc_params_raw* %320, i32 0, i32 5
  %322 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %321, i32 0, i32 1
  %323 = load i32, i32* %322, align 4
  %324 = load i32, i32* @CCDC_VP_OUT_HORZ_NUM_MASK, align 4
  %325 = and i32 %323, %324
  %326 = load i32, i32* @CCDC_VP_OUT_HORZ_NUM_SHIFT, align 4
  %327 = shl i32 %325, %326
  %328 = load i32, i32* %4, align 4
  %329 = or i32 %328, %327
  store i32 %329, i32* %4, align 4
  %330 = load %struct.ccdc_params_raw*, %struct.ccdc_params_raw** %1, align 8
  %331 = getelementptr inbounds %struct.ccdc_params_raw, %struct.ccdc_params_raw* %330, i32 0, i32 5
  %332 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %331, i32 0, i32 0
  %333 = load i32, i32* %332, align 4
  %334 = load i32, i32* @CCDC_VP_OUT_HORZ_ST_MASK, align 4
  %335 = and i32 %333, %334
  %336 = load i32, i32* %4, align 4
  %337 = or i32 %336, %335
  store i32 %337, i32* %4, align 4
  %338 = load i32, i32* %4, align 4
  %339 = load i32, i32* @CCDC_VP_OUT, align 4
  %340 = call i32 @regw(i32 %338, i32 %339)
  %341 = load i32, i32* @dev, align 4
  %342 = load i32, i32* %4, align 4
  %343 = call i32 (i32, i8*, ...) @dev_dbg(i32 %341, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.11, i64 0, i64 0), i32 %342)
  %344 = load i32, i32* %3, align 4
  %345 = load i32, i32* @CCDC_SYN_MODE, align 4
  %346 = call i32 @regw(i32 %344, i32 %345)
  %347 = load i32, i32* @dev, align 4
  %348 = load i32, i32* %3, align 4
  %349 = call i32 (i32, i8*, ...) @dev_dbg(i32 %347, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.12, i64 0, i64 0), i32 %348)
  %350 = call i32 (...) @ccdc_sbl_reset()
  %351 = load i32, i32* @dev, align 4
  %352 = call i32 (i32, i8*, ...) @dev_dbg(i32 %351, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.13, i64 0, i64 0))
  %353 = call i32 (...) @ccdc_readregs()
  ret void
}

declare dso_local i32 @dev_dbg(i32, i8*, ...) #1

declare dso_local i32 @ccdc_restore_defaults(...) #1

declare dso_local i32 @regw(i32, i32) #1

declare dso_local i32 @ccdc_setwin(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i32 @ccdc_config_black_clamp(i32*) #1

declare dso_local i32 @ccdc_config_black_compense(i32*) #1

declare dso_local i32 @ccdc_config_fpc(i32*) #1

declare dso_local i32 @ccdc_sbl_reset(...) #1

declare dso_local i32 @ccdc_readregs(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
