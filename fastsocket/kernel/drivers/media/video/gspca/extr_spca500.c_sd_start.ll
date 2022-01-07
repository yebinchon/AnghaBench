; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_spca500.c_sd_start.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_spca500.c_sd_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gspca_dev = type { i32*, i32, i32, i32 }
%struct.sd = type { i32, i32, i32 }

@D_STREAM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Spca500 Sensor Address 0x%02x\00", align 1
@.str.1 = private unnamed_addr constant [51 x i8] c"Spca500 curr_mode: %d Xmult: 0x%02x, Ymult: 0x%02x\00", align 1
@qtable_creative_pccam = common dso_local global i32 0, align 4
@D_ERR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"spca50x_setup_qtable failed\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"reg_r_wait() failed\00", align 1
@spca500_visual_defaults = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [29 x i8] c"failed to enable drop packet\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"spca500_full_reset failed\00", align 1
@qtable_kodak_ez200 = common dso_local global i32 0, align 4
@qtable_pocketdv = common dso_local global i32 0, align 4
@Clicksmart510_defaults = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gspca_dev*)* @sd_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sd_start(%struct.gspca_dev* %0) #0 {
  %2 = alloca %struct.gspca_dev*, align 8
  %3 = alloca %struct.sd*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.gspca_dev* %0, %struct.gspca_dev** %2, align 8
  %8 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %9 = bitcast %struct.gspca_dev* %8 to %struct.sd*
  store %struct.sd* %9, %struct.sd** %3, align 8
  %10 = load %struct.sd*, %struct.sd** %3, align 8
  %11 = getelementptr inbounds %struct.sd, %struct.sd* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %14 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %17 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @jpeg_define(i32 %12, i32 %15, i32 %18, i32 34)
  %20 = load %struct.sd*, %struct.sd** %3, align 8
  %21 = getelementptr inbounds %struct.sd, %struct.sd* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.sd*, %struct.sd** %3, align 8
  %24 = getelementptr inbounds %struct.sd, %struct.sd* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @jpeg_set_qual(i32 %22, i32 %25)
  %27 = load %struct.sd*, %struct.sd** %3, align 8
  %28 = getelementptr inbounds %struct.sd, %struct.sd* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = icmp eq i32 %29, 134
  br i1 %30, label %31, label %32

31:                                               ; preds = %1
  store i32 22, i32* %6, align 4
  store i32 18, i32* %7, align 4
  br label %33

32:                                               ; preds = %1
  store i32 40, i32* %6, align 4
  store i32 30, i32* %7, align 4
  br label %33

33:                                               ; preds = %32, %31
  %34 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %35 = call i32 @reg_r(%struct.gspca_dev* %34, i32 35332, i32 1)
  %36 = load i32, i32* @D_STREAM, align 4
  %37 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %38 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 (i32, i8*, ...) @PDEBUG(i32 %36, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %41)
  %43 = load i32, i32* @D_STREAM, align 4
  %44 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %45 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* %6, align 4
  %48 = load i32, i32* %7, align 4
  %49 = call i32 (i32, i8*, ...) @PDEBUG(i32 %43, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0), i32 %46, i32 %47, i32 %48)
  %50 = load %struct.sd*, %struct.sd** %3, align 8
  %51 = getelementptr inbounds %struct.sd, %struct.sd* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  switch i32 %52, label %325 [
    i32 134, label %53
    i32 139, label %142
    i32 136, label %142
    i32 135, label %195
    i32 140, label %242
    i32 138, label %242
    i32 141, label %242
    i32 137, label %242
    i32 131, label %242
    i32 129, label %242
    i32 130, label %242
    i32 128, label %242
    i32 142, label %242
    i32 132, label %284
    i32 133, label %284
  ]

53:                                               ; preds = %33
  %54 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %55 = load i32, i32* %6, align 4
  %56 = load i32, i32* %7, align 4
  %57 = call i32 @spca500_setmode(%struct.gspca_dev* %54, i32 %55, i32 %56)
  %58 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %59 = call i32 @reg_w(%struct.gspca_dev* %58, i32 0, i32 34058, i32 1)
  %60 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %61 = call i32 @reg_w(%struct.gspca_dev* %60, i32 0, i32 34944, i32 3)
  %62 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %63 = load i32, i32* @qtable_creative_pccam, align 4
  %64 = call i32 @spca50x_setup_qtable(%struct.gspca_dev* %62, i32 0, i32 34816, i32 34880, i32 %63)
  store i32 %64, i32* %4, align 4
  %65 = load i32, i32* %4, align 4
  %66 = icmp slt i32 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %53
  %68 = load i32, i32* @D_ERR, align 4
  %69 = call i32 (i32, i8*, ...) @PDEBUG(i32 %68, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  br label %70

70:                                               ; preds = %67, %53
  %71 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %72 = call i32 @reg_w(%struct.gspca_dev* %71, i32 0, i32 34570, i32 4)
  %73 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %74 = call i32 @reg_w(%struct.gspca_dev* %73, i32 0, i32 32768, i32 4)
  %75 = call i32 @msleep(i32 500)
  %76 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %77 = call i32 @reg_r_wait(%struct.gspca_dev* %76, i32 0, i32 32768, i32 68)
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %70
  %80 = load i32, i32* @D_ERR, align 4
  %81 = call i32 (i32, i8*, ...) @PDEBUG(i32 %80, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0))
  br label %82

82:                                               ; preds = %79, %70
  %83 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %84 = call i32 @reg_r(%struct.gspca_dev* %83, i32 33131, i32 1)
  %85 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %86 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %85, i32 0, i32 0
  %87 = load i32*, i32** %86, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 0
  %89 = load i32, i32* %88, align 4
  store i32 %89, i32* %5, align 4
  %90 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %91 = load i32, i32* %5, align 4
  %92 = call i32 @reg_w(%struct.gspca_dev* %90, i32 0, i32 33131, i32 %91)
  %93 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %94 = call i32 @spca500_synch310(%struct.gspca_dev* %93)
  %95 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %96 = load i32, i32* @spca500_visual_defaults, align 4
  %97 = call i32 @write_vector(%struct.gspca_dev* %95, i32 %96)
  %98 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %99 = load i32, i32* %6, align 4
  %100 = load i32, i32* %7, align 4
  %101 = call i32 @spca500_setmode(%struct.gspca_dev* %98, i32 %99, i32 %100)
  %102 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %103 = call i32 @reg_w(%struct.gspca_dev* %102, i32 0, i32 34058, i32 1)
  store i32 %103, i32* %4, align 4
  %104 = load i32, i32* %4, align 4
  %105 = icmp slt i32 %104, 0
  br i1 %105, label %106, label %109

106:                                              ; preds = %82
  %107 = load i32, i32* @D_ERR, align 4
  %108 = call i32 (i32, i8*, ...) @PDEBUG(i32 %107, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0))
  br label %109

109:                                              ; preds = %106, %82
  %110 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %111 = call i32 @reg_w(%struct.gspca_dev* %110, i32 0, i32 34944, i32 3)
  %112 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %113 = load i32, i32* @qtable_creative_pccam, align 4
  %114 = call i32 @spca50x_setup_qtable(%struct.gspca_dev* %112, i32 0, i32 34816, i32 34880, i32 %113)
  store i32 %114, i32* %4, align 4
  %115 = load i32, i32* %4, align 4
  %116 = icmp slt i32 %115, 0
  br i1 %116, label %117, label %120

117:                                              ; preds = %109
  %118 = load i32, i32* @D_ERR, align 4
  %119 = call i32 (i32, i8*, ...) @PDEBUG(i32 %118, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  br label %120

120:                                              ; preds = %117, %109
  %121 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %122 = call i32 @reg_w(%struct.gspca_dev* %121, i32 0, i32 34570, i32 4)
  %123 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %124 = call i32 @reg_w(%struct.gspca_dev* %123, i32 0, i32 32768, i32 4)
  %125 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %126 = call i32 @reg_r_wait(%struct.gspca_dev* %125, i32 0, i32 32768, i32 68)
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %131

128:                                              ; preds = %120
  %129 = load i32, i32* @D_ERR, align 4
  %130 = call i32 (i32, i8*, ...) @PDEBUG(i32 %129, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0))
  br label %131

131:                                              ; preds = %128, %120
  %132 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %133 = call i32 @reg_r(%struct.gspca_dev* %132, i32 33131, i32 1)
  %134 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %135 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %134, i32 0, i32 0
  %136 = load i32*, i32** %135, align 8
  %137 = getelementptr inbounds i32, i32* %136, i64 0
  %138 = load i32, i32* %137, align 4
  store i32 %138, i32* %5, align 4
  %139 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %140 = load i32, i32* %5, align 4
  %141 = call i32 @reg_w(%struct.gspca_dev* %139, i32 0, i32 33131, i32 %140)
  br label %325

142:                                              ; preds = %33, %33
  %143 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %144 = call i32 @spca500_full_reset(%struct.gspca_dev* %143)
  store i32 %144, i32* %4, align 4
  %145 = load i32, i32* %4, align 4
  %146 = icmp slt i32 %145, 0
  br i1 %146, label %147, label %150

147:                                              ; preds = %142
  %148 = load i32, i32* @D_ERR, align 4
  %149 = call i32 (i32, i8*, ...) @PDEBUG(i32 %148, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0))
  br label %150

150:                                              ; preds = %147, %142
  %151 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %152 = call i32 @reg_w(%struct.gspca_dev* %151, i32 0, i32 34058, i32 1)
  store i32 %152, i32* %4, align 4
  %153 = load i32, i32* %4, align 4
  %154 = icmp slt i32 %153, 0
  br i1 %154, label %155, label %158

155:                                              ; preds = %150
  %156 = load i32, i32* @D_ERR, align 4
  %157 = call i32 (i32, i8*, ...) @PDEBUG(i32 %156, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0))
  br label %158

158:                                              ; preds = %155, %150
  %159 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %160 = call i32 @reg_w(%struct.gspca_dev* %159, i32 0, i32 34944, i32 3)
  %161 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %162 = load i32, i32* @qtable_creative_pccam, align 4
  %163 = call i32 @spca50x_setup_qtable(%struct.gspca_dev* %161, i32 0, i32 34816, i32 34880, i32 %162)
  store i32 %163, i32* %4, align 4
  %164 = load i32, i32* %4, align 4
  %165 = icmp slt i32 %164, 0
  br i1 %165, label %166, label %169

166:                                              ; preds = %158
  %167 = load i32, i32* @D_ERR, align 4
  %168 = call i32 (i32, i8*, ...) @PDEBUG(i32 %167, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  br label %169

169:                                              ; preds = %166, %158
  %170 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %171 = load i32, i32* %6, align 4
  %172 = load i32, i32* %7, align 4
  %173 = call i32 @spca500_setmode(%struct.gspca_dev* %170, i32 %171, i32 %172)
  %174 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %175 = call i32 @reg_w(%struct.gspca_dev* %174, i32 32, i32 1, i32 4)
  %176 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %177 = call i32 @reg_w(%struct.gspca_dev* %176, i32 0, i32 32768, i32 4)
  %178 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %179 = call i32 @reg_r_wait(%struct.gspca_dev* %178, i32 0, i32 32768, i32 68)
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %184

181:                                              ; preds = %169
  %182 = load i32, i32* @D_ERR, align 4
  %183 = call i32 (i32, i8*, ...) @PDEBUG(i32 %182, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0))
  br label %184

184:                                              ; preds = %181, %169
  %185 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %186 = call i32 @reg_r(%struct.gspca_dev* %185, i32 33131, i32 1)
  %187 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %188 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %187, i32 0, i32 0
  %189 = load i32*, i32** %188, align 8
  %190 = getelementptr inbounds i32, i32* %189, i64 0
  %191 = load i32, i32* %190, align 4
  store i32 %191, i32* %5, align 4
  %192 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %193 = load i32, i32* %5, align 4
  %194 = call i32 @reg_w(%struct.gspca_dev* %192, i32 0, i32 33131, i32 %193)
  br label %325

195:                                              ; preds = %33
  %196 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %197 = call i32 @spca500_full_reset(%struct.gspca_dev* %196)
  store i32 %197, i32* %4, align 4
  %198 = load i32, i32* %4, align 4
  %199 = icmp slt i32 %198, 0
  br i1 %199, label %200, label %203

200:                                              ; preds = %195
  %201 = load i32, i32* @D_ERR, align 4
  %202 = call i32 (i32, i8*, ...) @PDEBUG(i32 %201, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0))
  br label %203

203:                                              ; preds = %200, %195
  %204 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %205 = call i32 @reg_w(%struct.gspca_dev* %204, i32 0, i32 34058, i32 1)
  %206 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %207 = call i32 @reg_w(%struct.gspca_dev* %206, i32 0, i32 34944, i32 0)
  %208 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %209 = load i32, i32* @qtable_kodak_ez200, align 4
  %210 = call i32 @spca50x_setup_qtable(%struct.gspca_dev* %208, i32 0, i32 34816, i32 34880, i32 %209)
  store i32 %210, i32* %4, align 4
  %211 = load i32, i32* %4, align 4
  %212 = icmp slt i32 %211, 0
  br i1 %212, label %213, label %216

213:                                              ; preds = %203
  %214 = load i32, i32* @D_ERR, align 4
  %215 = call i32 (i32, i8*, ...) @PDEBUG(i32 %214, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  br label %216

216:                                              ; preds = %213, %203
  %217 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %218 = load i32, i32* %6, align 4
  %219 = load i32, i32* %7, align 4
  %220 = call i32 @spca500_setmode(%struct.gspca_dev* %217, i32 %218, i32 %219)
  %221 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %222 = call i32 @reg_w(%struct.gspca_dev* %221, i32 32, i32 1, i32 4)
  %223 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %224 = call i32 @reg_w(%struct.gspca_dev* %223, i32 0, i32 32768, i32 4)
  %225 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %226 = call i32 @reg_r_wait(%struct.gspca_dev* %225, i32 0, i32 32768, i32 68)
  %227 = icmp ne i32 %226, 0
  br i1 %227, label %228, label %231

228:                                              ; preds = %216
  %229 = load i32, i32* @D_ERR, align 4
  %230 = call i32 (i32, i8*, ...) @PDEBUG(i32 %229, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0))
  br label %231

231:                                              ; preds = %228, %216
  %232 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %233 = call i32 @reg_r(%struct.gspca_dev* %232, i32 33131, i32 1)
  %234 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %235 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %234, i32 0, i32 0
  %236 = load i32*, i32** %235, align 8
  %237 = getelementptr inbounds i32, i32* %236, i64 0
  %238 = load i32, i32* %237, align 4
  store i32 %238, i32* %5, align 4
  %239 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %240 = load i32, i32* %5, align 4
  %241 = call i32 @reg_w(%struct.gspca_dev* %239, i32 0, i32 33131, i32 %240)
  br label %325

242:                                              ; preds = %33, %33, %33, %33, %33, %33, %33, %33, %33
  %243 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %244 = call i32 @spca500_reinit(%struct.gspca_dev* %243)
  %245 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %246 = call i32 @reg_w(%struct.gspca_dev* %245, i32 0, i32 3329, i32 1)
  %247 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %248 = call i32 @reg_w(%struct.gspca_dev* %247, i32 0, i32 34058, i32 1)
  %249 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %250 = load i32, i32* @qtable_pocketdv, align 4
  %251 = call i32 @spca50x_setup_qtable(%struct.gspca_dev* %249, i32 0, i32 34816, i32 34880, i32 %250)
  store i32 %251, i32* %4, align 4
  %252 = load i32, i32* %4, align 4
  %253 = icmp slt i32 %252, 0
  br i1 %253, label %254, label %257

254:                                              ; preds = %242
  %255 = load i32, i32* @D_ERR, align 4
  %256 = call i32 (i32, i8*, ...) @PDEBUG(i32 %255, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  br label %257

257:                                              ; preds = %254, %242
  %258 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %259 = call i32 @reg_w(%struct.gspca_dev* %258, i32 0, i32 34944, i32 2)
  %260 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %261 = call i32 @reg_w(%struct.gspca_dev* %260, i32 0, i32 32778, i32 0)
  %262 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %263 = call i32 @reg_w(%struct.gspca_dev* %262, i32 0, i32 33295, i32 1)
  %264 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %265 = call i32 @reg_w(%struct.gspca_dev* %264, i32 0, i32 34570, i32 4)
  %266 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %267 = load i32, i32* %6, align 4
  %268 = load i32, i32* %7, align 4
  %269 = call i32 @spca500_setmode(%struct.gspca_dev* %266, i32 %267, i32 %268)
  %270 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %271 = call i32 @reg_w(%struct.gspca_dev* %270, i32 0, i32 32768, i32 4)
  %272 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %273 = call i32 @reg_r_wait(%struct.gspca_dev* %272, i32 0, i32 32768, i32 68)
  %274 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %275 = call i32 @reg_r(%struct.gspca_dev* %274, i32 33131, i32 1)
  %276 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %277 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %276, i32 0, i32 0
  %278 = load i32*, i32** %277, align 8
  %279 = getelementptr inbounds i32, i32* %278, i64 0
  %280 = load i32, i32* %279, align 4
  store i32 %280, i32* %5, align 4
  %281 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %282 = load i32, i32* %5, align 4
  %283 = call i32 @reg_w(%struct.gspca_dev* %281, i32 0, i32 33131, i32 %282)
  br label %325

284:                                              ; preds = %33, %33
  %285 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %286 = call i32 @reg_w(%struct.gspca_dev* %285, i32 2, i32 0, i32 0)
  %287 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %288 = call i32 @reg_w(%struct.gspca_dev* %287, i32 0, i32 34058, i32 1)
  %289 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %290 = load i32, i32* @qtable_creative_pccam, align 4
  %291 = call i32 @spca50x_setup_qtable(%struct.gspca_dev* %289, i32 0, i32 34816, i32 34880, i32 %290)
  store i32 %291, i32* %4, align 4
  %292 = load i32, i32* %4, align 4
  %293 = icmp slt i32 %292, 0
  br i1 %293, label %294, label %297

294:                                              ; preds = %284
  %295 = load i32, i32* @D_ERR, align 4
  %296 = call i32 (i32, i8*, ...) @PDEBUG(i32 %295, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  br label %297

297:                                              ; preds = %294, %284
  %298 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %299 = call i32 @reg_w(%struct.gspca_dev* %298, i32 0, i32 34944, i32 3)
  %300 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %301 = call i32 @reg_w(%struct.gspca_dev* %300, i32 0, i32 32778, i32 0)
  %302 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %303 = call i32 @reg_w(%struct.gspca_dev* %302, i32 0, i32 34570, i32 4)
  %304 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %305 = load i32, i32* %6, align 4
  %306 = load i32, i32* %7, align 4
  %307 = call i32 @spca500_setmode(%struct.gspca_dev* %304, i32 %305, i32 %306)
  %308 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %309 = call i32 @reg_w(%struct.gspca_dev* %308, i32 0, i32 32768, i32 4)
  %310 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %311 = call i32 @reg_r_wait(%struct.gspca_dev* %310, i32 0, i32 32768, i32 68)
  %312 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %313 = call i32 @reg_r(%struct.gspca_dev* %312, i32 33131, i32 1)
  %314 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %315 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %314, i32 0, i32 0
  %316 = load i32*, i32** %315, align 8
  %317 = getelementptr inbounds i32, i32* %316, i64 0
  %318 = load i32, i32* %317, align 4
  store i32 %318, i32* %5, align 4
  %319 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %320 = load i32, i32* %5, align 4
  %321 = call i32 @reg_w(%struct.gspca_dev* %319, i32 0, i32 33131, i32 %320)
  %322 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %323 = load i32, i32* @Clicksmart510_defaults, align 4
  %324 = call i32 @write_vector(%struct.gspca_dev* %322, i32 %323)
  br label %325

325:                                              ; preds = %33, %297, %257, %231, %184, %131
  ret i32 0
}

declare dso_local i32 @jpeg_define(i32, i32, i32, i32) #1

declare dso_local i32 @jpeg_set_qual(i32, i32) #1

declare dso_local i32 @reg_r(%struct.gspca_dev*, i32, i32) #1

declare dso_local i32 @PDEBUG(i32, i8*, ...) #1

declare dso_local i32 @spca500_setmode(%struct.gspca_dev*, i32, i32) #1

declare dso_local i32 @reg_w(%struct.gspca_dev*, i32, i32, i32) #1

declare dso_local i32 @spca50x_setup_qtable(%struct.gspca_dev*, i32, i32, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @reg_r_wait(%struct.gspca_dev*, i32, i32, i32) #1

declare dso_local i32 @spca500_synch310(%struct.gspca_dev*) #1

declare dso_local i32 @write_vector(%struct.gspca_dev*, i32) #1

declare dso_local i32 @spca500_full_reset(%struct.gspca_dev*) #1

declare dso_local i32 @spca500_reinit(%struct.gspca_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
