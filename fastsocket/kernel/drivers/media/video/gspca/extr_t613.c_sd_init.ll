; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_t613.c_sd_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_t613.c_sd_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.additional_sensor_data = type { i32*, i32*, i32, i32, i32, i32*, i32*, i32*, i32, i32, i32 }
%struct.gspca_dev = type { i32 }
%struct.sd = type { i64 }

@sd_init.read_indexs = internal constant [14 x i32] [i32 10, i32 11, i32 102, i32 128, i32 129, i32 142, i32 143, i32 165, i32 166, i32 168, i32 187, i32 188, i32 198, i32 0], align 16
@sd_init.n1 = internal constant [6 x i32] [i32 8, i32 3, i32 9, i32 3, i32 18, i32 4], align 16
@sd_init.n2 = internal constant [2 x i32] [i32 8, i32 0], align 4
@D_PROBE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"sensor tas5130a\00", align 1
@SENSOR_TAS5130A = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [14 x i8] c"sensor lt168g\00", align 1
@SENSOR_LT168G = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [15 x i8] c"sensor 'other'\00", align 1
@SENSOR_OTHER = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [14 x i8] c"sensor om6802\00", align 1
@SENSOR_OM6802 = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [20 x i8] c"unknown sensor %04x\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@sensor_reset = common dso_local global i32* null, align 8
@.str.5 = private unnamed_addr constant [22 x i8] c"Bad sensor reset %02x\00", align 1
@EIO = common dso_local global i32 0, align 4
@D_STREAM = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [20 x i8] c"Reg 0x%02x = 0x%02x\00", align 1
@sensor_data = common dso_local global %struct.additional_sensor_data* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gspca_dev*)* @sd_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sd_init(%struct.gspca_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.gspca_dev*, align 8
  %4 = alloca %struct.sd*, align 8
  %5 = alloca %struct.additional_sensor_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.gspca_dev* %0, %struct.gspca_dev** %3, align 8
  %9 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %10 = bitcast %struct.gspca_dev* %9 to %struct.sd*
  store %struct.sd* %10, %struct.sd** %4, align 8
  store i32 0, i32* %8, align 4
  %11 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %12 = call i32 @reg_r(%struct.gspca_dev* %11, i32 6)
  %13 = shl i32 %12, 8
  %14 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %15 = call i32 @reg_r(%struct.gspca_dev* %14, i32 7)
  %16 = or i32 %13, %15
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %7, align 4
  %18 = and i32 %17, 65295
  switch i32 %18, label %43 [
    i32 2049, label %19
    i32 2050, label %25
    i32 2051, label %31
    i32 2055, label %37
  ]

19:                                               ; preds = %1
  %20 = load i32, i32* @D_PROBE, align 4
  %21 = call i32 (i32, i8*, ...) @PDEBUG(i32 %20, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %22 = load i64, i64* @SENSOR_TAS5130A, align 8
  %23 = load %struct.sd*, %struct.sd** %4, align 8
  %24 = getelementptr inbounds %struct.sd, %struct.sd* %23, i32 0, i32 0
  store i64 %22, i64* %24, align 8
  br label %48

25:                                               ; preds = %1
  %26 = load i32, i32* @D_PROBE, align 4
  %27 = call i32 (i32, i8*, ...) @PDEBUG(i32 %26, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %28 = load i64, i64* @SENSOR_LT168G, align 8
  %29 = load %struct.sd*, %struct.sd** %4, align 8
  %30 = getelementptr inbounds %struct.sd, %struct.sd* %29, i32 0, i32 0
  store i64 %28, i64* %30, align 8
  br label %48

31:                                               ; preds = %1
  %32 = load i32, i32* @D_PROBE, align 4
  %33 = call i32 (i32, i8*, ...) @PDEBUG(i32 %32, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  %34 = load i64, i64* @SENSOR_OTHER, align 8
  %35 = load %struct.sd*, %struct.sd** %4, align 8
  %36 = getelementptr inbounds %struct.sd, %struct.sd* %35, i32 0, i32 0
  store i64 %34, i64* %36, align 8
  br label %48

37:                                               ; preds = %1
  %38 = load i32, i32* @D_PROBE, align 4
  %39 = call i32 (i32, i8*, ...) @PDEBUG(i32 %38, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  %40 = load i64, i64* @SENSOR_OM6802, align 8
  %41 = load %struct.sd*, %struct.sd** %4, align 8
  %42 = getelementptr inbounds %struct.sd, %struct.sd* %41, i32 0, i32 0
  store i64 %40, i64* %42, align 8
  br label %48

43:                                               ; preds = %1
  %44 = load i32, i32* %7, align 4
  %45 = call i32 @err(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i32 %44)
  %46 = load i32, i32* @EINVAL, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %2, align 4
  br label %233

48:                                               ; preds = %37, %31, %25, %19
  %49 = load %struct.sd*, %struct.sd** %4, align 8
  %50 = getelementptr inbounds %struct.sd, %struct.sd* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @SENSOR_OM6802, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %83

54:                                               ; preds = %48
  %55 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %56 = call i32 @reg_w_buf(%struct.gspca_dev* %55, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @sd_init.n1, i64 0, i64 0), i32 24)
  store i32 5, i32* %6, align 4
  br label %57

57:                                               ; preds = %71, %54
  %58 = load i32, i32* %6, align 4
  %59 = add nsw i32 %58, -1
  store i32 %59, i32* %6, align 4
  %60 = icmp sge i32 %59, 0
  br i1 %60, label %61, label %72

61:                                               ; preds = %57
  %62 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %63 = load i32*, i32** @sensor_reset, align 8
  %64 = call i32 @reg_w_buf(%struct.gspca_dev* %62, i32* %63, i32 8)
  %65 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %66 = call i32 @reg_r(%struct.gspca_dev* %65, i32 99)
  store i32 %66, i32* %8, align 4
  %67 = call i32 @msleep(i32 100)
  %68 = load i32, i32* %8, align 4
  %69 = icmp eq i32 %68, 23
  br i1 %69, label %70, label %71

70:                                               ; preds = %61
  br label %72

71:                                               ; preds = %61
  br label %57

72:                                               ; preds = %70, %57
  %73 = load i32, i32* %6, align 4
  %74 = icmp slt i32 %73, 0
  br i1 %74, label %75, label %80

75:                                               ; preds = %72
  %76 = load i32, i32* %8, align 4
  %77 = call i32 @err(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0), i32 %76)
  %78 = load i32, i32* @EIO, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %2, align 4
  br label %233

80:                                               ; preds = %72
  %81 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %82 = call i32 @reg_w_buf(%struct.gspca_dev* %81, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @sd_init.n2, i64 0, i64 0), i32 8)
  br label %83

83:                                               ; preds = %80, %48
  store i32 0, i32* %6, align 4
  br label %84

84:                                               ; preds = %90, %83
  %85 = load i32, i32* %6, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds [14 x i32], [14 x i32]* @sd_init.read_indexs, i64 0, i64 %86
  %88 = load i32, i32* %87, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %106

90:                                               ; preds = %84
  %91 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %92 = load i32, i32* %6, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds [14 x i32], [14 x i32]* @sd_init.read_indexs, i64 0, i64 %93
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @reg_r(%struct.gspca_dev* %91, i32 %95)
  store i32 %96, i32* %8, align 4
  %97 = load i32, i32* @D_STREAM, align 4
  %98 = load i32, i32* %6, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds [14 x i32], [14 x i32]* @sd_init.read_indexs, i64 0, i64 %99
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* %8, align 4
  %103 = call i32 (i32, i8*, ...) @PDEBUG(i32 %97, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0), i32 %101, i32 %102)
  %104 = load i32, i32* %6, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %6, align 4
  br label %84

106:                                              ; preds = %84
  %107 = load %struct.additional_sensor_data*, %struct.additional_sensor_data** @sensor_data, align 8
  %108 = load %struct.sd*, %struct.sd** %4, align 8
  %109 = getelementptr inbounds %struct.sd, %struct.sd* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = getelementptr inbounds %struct.additional_sensor_data, %struct.additional_sensor_data* %107, i64 %110
  store %struct.additional_sensor_data* %111, %struct.additional_sensor_data** %5, align 8
  %112 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %113 = load %struct.additional_sensor_data*, %struct.additional_sensor_data** %5, align 8
  %114 = getelementptr inbounds %struct.additional_sensor_data, %struct.additional_sensor_data* %113, i32 0, i32 0
  %115 = load i32*, i32** %114, align 8
  %116 = call i32 @reg_w_buf(%struct.gspca_dev* %112, i32* %115, i32 8)
  %117 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %118 = load %struct.additional_sensor_data*, %struct.additional_sensor_data** %5, align 8
  %119 = getelementptr inbounds %struct.additional_sensor_data, %struct.additional_sensor_data* %118, i32 0, i32 1
  %120 = load i32*, i32** %119, align 8
  %121 = load %struct.additional_sensor_data*, %struct.additional_sensor_data** %5, align 8
  %122 = getelementptr inbounds %struct.additional_sensor_data, %struct.additional_sensor_data* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 8
  %124 = call i32 @reg_w_buf(%struct.gspca_dev* %117, i32* %120, i32 %123)
  %125 = load %struct.sd*, %struct.sd** %4, align 8
  %126 = getelementptr inbounds %struct.sd, %struct.sd* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = load i64, i64* @SENSOR_LT168G, align 8
  %129 = icmp eq i64 %127, %128
  br i1 %129, label %130, label %138

130:                                              ; preds = %106
  %131 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %132 = call i32 @reg_r(%struct.gspca_dev* %131, i32 128)
  store i32 %132, i32* %8, align 4
  %133 = load i32, i32* @D_STREAM, align 4
  %134 = load i32, i32* %8, align 4
  %135 = call i32 (i32, i8*, ...) @PDEBUG(i32 %133, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0), i32 128, i32 %134)
  %136 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %137 = call i32 @reg_w(%struct.gspca_dev* %136, i32 27776)
  br label %138

138:                                              ; preds = %130, %106
  %139 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %140 = load %struct.additional_sensor_data*, %struct.additional_sensor_data** %5, align 8
  %141 = getelementptr inbounds %struct.additional_sensor_data, %struct.additional_sensor_data* %140, i32 0, i32 10
  %142 = load i32, i32* %141, align 8
  %143 = call i32 @reg_w_ixbuf(%struct.gspca_dev* %139, i32 208, i32 %142, i32 4)
  %144 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %145 = load %struct.additional_sensor_data*, %struct.additional_sensor_data** %5, align 8
  %146 = getelementptr inbounds %struct.additional_sensor_data, %struct.additional_sensor_data* %145, i32 0, i32 9
  %147 = load i32, i32* %146, align 4
  %148 = call i32 @reg_w_ixbuf(%struct.gspca_dev* %144, i32 199, i32 %147, i32 4)
  %149 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %150 = load %struct.additional_sensor_data*, %struct.additional_sensor_data** %5, align 8
  %151 = getelementptr inbounds %struct.additional_sensor_data, %struct.additional_sensor_data* %150, i32 0, i32 8
  %152 = load i32, i32* %151, align 8
  %153 = call i32 @reg_w_ixbuf(%struct.gspca_dev* %149, i32 224, i32 %152, i32 4)
  %154 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %155 = load %struct.additional_sensor_data*, %struct.additional_sensor_data** %5, align 8
  %156 = getelementptr inbounds %struct.additional_sensor_data, %struct.additional_sensor_data* %155, i32 0, i32 3
  %157 = load i32, i32* %156, align 4
  %158 = shl i32 %157, 8
  %159 = add nsw i32 %158, 128
  %160 = call i32 @reg_w(%struct.gspca_dev* %154, i32 %159)
  %161 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %162 = load %struct.additional_sensor_data*, %struct.additional_sensor_data** %5, align 8
  %163 = getelementptr inbounds %struct.additional_sensor_data, %struct.additional_sensor_data* %162, i32 0, i32 3
  %164 = load i32, i32* %163, align 4
  %165 = shl i32 %164, 8
  %166 = add nsw i32 %165, 128
  %167 = call i32 @reg_w(%struct.gspca_dev* %161, i32 %166)
  %168 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %169 = load %struct.additional_sensor_data*, %struct.additional_sensor_data** %5, align 8
  %170 = getelementptr inbounds %struct.additional_sensor_data, %struct.additional_sensor_data* %169, i32 0, i32 4
  %171 = load i32, i32* %170, align 8
  %172 = shl i32 %171, 8
  %173 = add nsw i32 %172, 142
  %174 = call i32 @reg_w(%struct.gspca_dev* %168, i32 %173)
  %175 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %176 = call i32 @setbrightness(%struct.gspca_dev* %175)
  %177 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %178 = call i32 @setcontrast(%struct.gspca_dev* %177)
  %179 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %180 = call i32 @setgamma(%struct.gspca_dev* %179)
  %181 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %182 = call i32 @setcolors(%struct.gspca_dev* %181)
  %183 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %184 = call i32 @setsharpness(%struct.gspca_dev* %183)
  %185 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %186 = call i32 @init_gains(%struct.gspca_dev* %185)
  %187 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %188 = call i32 @setfreq(%struct.gspca_dev* %187)
  %189 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %190 = load %struct.additional_sensor_data*, %struct.additional_sensor_data** %5, align 8
  %191 = getelementptr inbounds %struct.additional_sensor_data, %struct.additional_sensor_data* %190, i32 0, i32 5
  %192 = load i32*, i32** %191, align 8
  %193 = call i32 @reg_w_buf(%struct.gspca_dev* %189, i32* %192, i32 8)
  %194 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %195 = load %struct.additional_sensor_data*, %struct.additional_sensor_data** %5, align 8
  %196 = getelementptr inbounds %struct.additional_sensor_data, %struct.additional_sensor_data* %195, i32 0, i32 6
  %197 = load i32*, i32** %196, align 8
  %198 = call i32 @reg_w_buf(%struct.gspca_dev* %194, i32* %197, i32 8)
  %199 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %200 = load %struct.additional_sensor_data*, %struct.additional_sensor_data** %5, align 8
  %201 = getelementptr inbounds %struct.additional_sensor_data, %struct.additional_sensor_data* %200, i32 0, i32 7
  %202 = load i32*, i32** %201, align 8
  %203 = call i32 @reg_w_buf(%struct.gspca_dev* %199, i32* %202, i32 8)
  %204 = load %struct.sd*, %struct.sd** %4, align 8
  %205 = getelementptr inbounds %struct.sd, %struct.sd* %204, i32 0, i32 0
  %206 = load i64, i64* %205, align 8
  %207 = load i64, i64* @SENSOR_LT168G, align 8
  %208 = icmp eq i64 %206, %207
  br i1 %208, label %209, label %217

209:                                              ; preds = %138
  %210 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %211 = call i32 @reg_r(%struct.gspca_dev* %210, i32 128)
  store i32 %211, i32* %8, align 4
  %212 = load i32, i32* @D_STREAM, align 4
  %213 = load i32, i32* %8, align 4
  %214 = call i32 (i32, i8*, ...) @PDEBUG(i32 %212, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0), i32 128, i32 %213)
  %215 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %216 = call i32 @reg_w(%struct.gspca_dev* %215, i32 27776)
  br label %217

217:                                              ; preds = %209, %138
  %218 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %219 = load %struct.additional_sensor_data*, %struct.additional_sensor_data** %5, align 8
  %220 = getelementptr inbounds %struct.additional_sensor_data, %struct.additional_sensor_data* %219, i32 0, i32 10
  %221 = load i32, i32* %220, align 8
  %222 = call i32 @reg_w_ixbuf(%struct.gspca_dev* %218, i32 208, i32 %221, i32 4)
  %223 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %224 = load %struct.additional_sensor_data*, %struct.additional_sensor_data** %5, align 8
  %225 = getelementptr inbounds %struct.additional_sensor_data, %struct.additional_sensor_data* %224, i32 0, i32 9
  %226 = load i32, i32* %225, align 4
  %227 = call i32 @reg_w_ixbuf(%struct.gspca_dev* %223, i32 199, i32 %226, i32 4)
  %228 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %229 = load %struct.additional_sensor_data*, %struct.additional_sensor_data** %5, align 8
  %230 = getelementptr inbounds %struct.additional_sensor_data, %struct.additional_sensor_data* %229, i32 0, i32 8
  %231 = load i32, i32* %230, align 8
  %232 = call i32 @reg_w_ixbuf(%struct.gspca_dev* %228, i32 224, i32 %231, i32 4)
  store i32 0, i32* %2, align 4
  br label %233

233:                                              ; preds = %217, %75, %43
  %234 = load i32, i32* %2, align 4
  ret i32 %234
}

declare dso_local i32 @reg_r(%struct.gspca_dev*, i32) #1

declare dso_local i32 @PDEBUG(i32, i8*, ...) #1

declare dso_local i32 @err(i8*, i32) #1

declare dso_local i32 @reg_w_buf(%struct.gspca_dev*, i32*, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @reg_w(%struct.gspca_dev*, i32) #1

declare dso_local i32 @reg_w_ixbuf(%struct.gspca_dev*, i32, i32, i32) #1

declare dso_local i32 @setbrightness(%struct.gspca_dev*) #1

declare dso_local i32 @setcontrast(%struct.gspca_dev*) #1

declare dso_local i32 @setgamma(%struct.gspca_dev*) #1

declare dso_local i32 @setcolors(%struct.gspca_dev*) #1

declare dso_local i32 @setsharpness(%struct.gspca_dev*) #1

declare dso_local i32 @init_gains(%struct.gspca_dev*) #1

declare dso_local i32 @setfreq(%struct.gspca_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
