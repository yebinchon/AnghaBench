; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_sonixj.c_sd_start.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_sonixj.c_sd_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gspca_dev = type { i64, i32, %struct.TYPE_4__, i64, i32, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.sd = type { i64, i32, i32, i32, i32, i32, i32 }

@sd_start.reg9a_def = internal constant [6 x i32] [i32 0, i32 64, i32 32, i32 0, i32 0, i32 0], align 16
@sd_start.reg9a_spec = internal constant [6 x i32] [i32 0, i32 64, i32 56, i32 48, i32 0, i32 32], align 16
@sd_start.regd4 = internal constant [3 x i32] [i32 96, i32 0, i32 0], align 4
@sd_start.C0 = internal constant [6 x i32] [i32 45, i32 45, i32 58, i32 5, i32 4, i32 63], align 16
@sd_start.CA = internal constant [4 x i32] [i32 40, i32 216, i32 20, i32 236], align 16
@sd_start.CA_adcm1700 = internal constant [4 x i32] [i32 20, i32 236, i32 10, i32 246], align 16
@sd_start.CA_po2030n = internal constant [4 x i32] [i32 30, i32 226, i32 20, i32 236], align 16
@sd_start.CE = internal constant [4 x i32] [i32 50, i32 221, i32 45, i32 221], align 16
@sd_start.CE_gc0307 = internal constant [4 x i32] [i32 50, i32 206, i32 45, i32 211], align 16
@sd_start.CE_ov76xx = internal constant [4 x i32] [i32 50, i32 221, i32 50, i32 221], align 16
@sd_start.CE_po2030n = internal constant [4 x i32] [i32 20, i32 231, i32 30, i32 221], align 16
@sn_tb = common dso_local global i32** null, align 8
@F_PDN_INV = common dso_local global i32 0, align 4
@S_PDN_INV = common dso_local global i32 0, align 4
@SEN_CLK_EN = common dso_local global i32 0, align 4
@SCL_SEL_OD = common dso_local global i32 0, align 4
@MCK_SIZE_MASK = common dso_local global i32 0, align 4
@SYS_SEL_48M = common dso_local global i32 0, align 4
@S_PWR_DN = common dso_local global i32 0, align 4
@om6802_init0 = common dso_local global i32* null, align 8
@sensor_init = common dso_local global i32*** null, align 8
@DEF_EN = common dso_local global i32 0, align 4
@reg84 = common dso_local global i32* null, align 8
@V_TX_EN = common dso_local global i32 0, align 4
@adcm1700_sensor_param1 = common dso_local global i32** null, align 8
@gc0307_sensor_param1 = common dso_local global i32** null, align 8
@mi0360b_sensor_param1 = common dso_local global i32** null, align 8
@mt9v111_sensor_param1 = common dso_local global i32** null, align 8
@om6802_sensor_param1 = common dso_local global i32** null, align 8
@ov7630_sensor_param1 = common dso_local global i32** null, align 8
@ov7648_sensor_param1 = common dso_local global i32** null, align 8
@ov7660_sensor_param1 = common dso_local global i32** null, align 8
@po1030_sensor_param1 = common dso_local global i32** null, align 8
@po2030n_sensor_param1 = common dso_local global i32** null, align 8
@soi768_sensor_param1 = common dso_local global i32** null, align 8
@sp80708_sensor_param1 = common dso_local global i32** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gspca_dev*)* @sd_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sd_start(%struct.gspca_dev* %0) #0 {
  %2 = alloca %struct.gspca_dev*, align 8
  %3 = alloca %struct.sd*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [2 x i32], align 4
  %8 = alloca i32*, align 8
  %9 = alloca [8 x i32]*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  store %struct.gspca_dev* %0, %struct.gspca_dev** %2, align 8
  %12 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %13 = bitcast %struct.gspca_dev* %12 to %struct.sd*
  store %struct.sd* %13, %struct.sd** %3, align 8
  %14 = load %struct.sd*, %struct.sd** %3, align 8
  %15 = getelementptr inbounds %struct.sd, %struct.sd* %14, i32 0, i32 6
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %18 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %17, i32 0, i32 5
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %21 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %20, i32 0, i32 4
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @jpeg_define(i32 %16, i32 %19, i32 %22, i32 33)
  %24 = load %struct.sd*, %struct.sd** %3, align 8
  %25 = getelementptr inbounds %struct.sd, %struct.sd* %24, i32 0, i32 6
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.sd*, %struct.sd** %3, align 8
  %28 = getelementptr inbounds %struct.sd, %struct.sd* %27, i32 0, i32 5
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @jpeg_set_qual(i32 %26, i32 %29)
  %31 = load i32**, i32*** @sn_tb, align 8
  %32 = load %struct.sd*, %struct.sd** %3, align 8
  %33 = getelementptr inbounds %struct.sd, %struct.sd* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = getelementptr inbounds i32*, i32** %31, i64 %34
  %36 = load i32*, i32** %35, align 8
  store i32* %36, i32** %8, align 8
  %37 = load i32*, i32** %8, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 1
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %5, align 4
  %40 = load %struct.sd*, %struct.sd** %3, align 8
  %41 = getelementptr inbounds %struct.sd, %struct.sd* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @F_PDN_INV, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %1
  %47 = load i32, i32* @S_PDN_INV, align 4
  %48 = load i32, i32* %5, align 4
  %49 = xor i32 %48, %47
  store i32 %49, i32* %5, align 4
  br label %50

50:                                               ; preds = %46, %1
  %51 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %52 = load i32, i32* %5, align 4
  %53 = call i32 @reg_w1(%struct.gspca_dev* %51, i32 1, i32 %52)
  %54 = load i32, i32* %5, align 4
  %55 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  store i32 %54, i32* %55, align 4
  %56 = load i32*, i32** %8, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 2
  %58 = load i32, i32* %57, align 4
  %59 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 1
  store i32 %58, i32* %59, align 4
  %60 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %61 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %60, i32 0, i32 3
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %50
  %65 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 1
  %66 = load i32, i32* %65, align 4
  %67 = or i32 %66, 4
  store i32 %67, i32* %65, align 4
  br label %68

68:                                               ; preds = %64, %50
  %69 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %70 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %71 = call i32 @reg_w(%struct.gspca_dev* %69, i32 1, i32* %70, i32 2)
  %72 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %73 = load i32*, i32** %8, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 8
  %75 = call i32 @reg_w(%struct.gspca_dev* %72, i32 8, i32* %74, i32 2)
  %76 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %77 = load i32*, i32** %8, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 23
  %79 = call i32 @reg_w(%struct.gspca_dev* %76, i32 23, i32* %78, i32 5)
  %80 = load %struct.sd*, %struct.sd** %3, align 8
  %81 = getelementptr inbounds %struct.sd, %struct.sd* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  switch i64 %82, label %84 [
    i64 141, label %83
    i64 132, label %83
    i64 131, label %83
    i64 130, label %83
    i64 129, label %83
    i64 128, label %83
  ]

83:                                               ; preds = %68, %68, %68, %68, %68, %68
  store i32* getelementptr inbounds ([6 x i32], [6 x i32]* @sd_start.reg9a_spec, i64 0, i64 0), i32** %10, align 8
  br label %85

84:                                               ; preds = %68
  store i32* getelementptr inbounds ([6 x i32], [6 x i32]* @sd_start.reg9a_def, i64 0, i64 0), i32** %10, align 8
  br label %85

85:                                               ; preds = %84, %83
  %86 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %87 = load i32*, i32** %10, align 8
  %88 = call i32 @reg_w(%struct.gspca_dev* %86, i32 154, i32* %87, i32 6)
  %89 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %90 = call i32 @reg_w(%struct.gspca_dev* %89, i32 212, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @sd_start.regd4, i64 0, i64 0), i32 12)
  %91 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %92 = load i32*, i32** %8, align 8
  %93 = getelementptr inbounds i32, i32* %92, i64 3
  %94 = call i32 @reg_w(%struct.gspca_dev* %91, i32 3, i32* %93, i32 15)
  %95 = load i32*, i32** %8, align 8
  %96 = getelementptr inbounds i32, i32* %95, i64 23
  %97 = load i32, i32* %96, align 4
  store i32 %97, i32* %6, align 4
  %98 = load %struct.sd*, %struct.sd** %3, align 8
  %99 = getelementptr inbounds %struct.sd, %struct.sd* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  switch i64 %100, label %124 [
    i64 141, label %101
    i64 135, label %103
  ]

101:                                              ; preds = %85
  %102 = call i32 @msleep(i32 50)
  br label %124

103:                                              ; preds = %85
  %104 = call i32 @msleep(i32 10)
  %105 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %106 = call i32 @reg_w1(%struct.gspca_dev* %105, i32 2, i32 115)
  %107 = load i32, i32* @SEN_CLK_EN, align 4
  %108 = load i32, i32* %6, align 4
  %109 = or i32 %108, %107
  store i32 %109, i32* %6, align 4
  %110 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %111 = load i32, i32* %6, align 4
  %112 = call i32 @reg_w1(%struct.gspca_dev* %110, i32 23, i32 %111)
  %113 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %114 = call i32 @reg_w1(%struct.gspca_dev* %113, i32 1, i32 34)
  %115 = call i32 @msleep(i32 100)
  %116 = load i32, i32* @SCL_SEL_OD, align 4
  %117 = load i32, i32* @S_PDN_INV, align 4
  %118 = or i32 %116, %117
  store i32 %118, i32* %5, align 4
  %119 = load i32, i32* @MCK_SIZE_MASK, align 4
  %120 = load i32, i32* %6, align 4
  %121 = and i32 %120, %119
  store i32 %121, i32* %6, align 4
  %122 = load i32, i32* %6, align 4
  %123 = or i32 %122, 4
  store i32 %123, i32* %6, align 4
  br label %124

124:                                              ; preds = %85, %103, %101
  %125 = load i32, i32* @SYS_SEL_48M, align 4
  %126 = load i32, i32* %5, align 4
  %127 = or i32 %126, %125
  store i32 %127, i32* %5, align 4
  %128 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %129 = load i32, i32* %5, align 4
  %130 = call i32 @reg_w1(%struct.gspca_dev* %128, i32 1, i32 %129)
  %131 = load i32, i32* @SEN_CLK_EN, align 4
  %132 = load i32, i32* %6, align 4
  %133 = or i32 %132, %131
  store i32 %133, i32* %6, align 4
  %134 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %135 = load i32, i32* %6, align 4
  %136 = call i32 @reg_w1(%struct.gspca_dev* %134, i32 23, i32 %135)
  %137 = load i32, i32* @S_PWR_DN, align 4
  %138 = xor i32 %137, -1
  %139 = load i32, i32* %5, align 4
  %140 = and i32 %139, %138
  store i32 %140, i32* %5, align 4
  %141 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %142 = load i32, i32* %5, align 4
  %143 = call i32 @reg_w1(%struct.gspca_dev* %141, i32 1, i32 %142)
  %144 = load i32, i32* @SYS_SEL_48M, align 4
  %145 = xor i32 %144, -1
  %146 = load i32, i32* %5, align 4
  %147 = and i32 %146, %145
  store i32 %147, i32* %5, align 4
  %148 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %149 = load i32, i32* %5, align 4
  %150 = call i32 @reg_w1(%struct.gspca_dev* %148, i32 1, i32 %149)
  %151 = load %struct.sd*, %struct.sd** %3, align 8
  %152 = getelementptr inbounds %struct.sd, %struct.sd* %151, i32 0, i32 0
  %153 = load i64, i64* %152, align 8
  switch i64 %153, label %180 [
    i64 140, label %154
    i64 135, label %157
    i64 128, label %176
  ]

154:                                              ; preds = %124
  %155 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %156 = call i32 @hv7131r_probe(%struct.gspca_dev* %155)
  br label %180

157:                                              ; preds = %124
  %158 = call i32 @msleep(i32 10)
  %159 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %160 = load i32, i32* %5, align 4
  %161 = call i32 @reg_w1(%struct.gspca_dev* %159, i32 1, i32 %160)
  %162 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %163 = load i32*, i32** @om6802_init0, align 8
  %164 = getelementptr inbounds i32, i32* %163, i64 0
  %165 = load i32, i32* %164, align 4
  %166 = call i32 @i2c_w8(%struct.gspca_dev* %162, i32 %165)
  %167 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %168 = load i32*, i32** @om6802_init0, align 8
  %169 = getelementptr inbounds i32, i32* %168, i64 1
  %170 = load i32, i32* %169, align 4
  %171 = call i32 @i2c_w8(%struct.gspca_dev* %167, i32 %170)
  %172 = call i32 @msleep(i32 15)
  %173 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %174 = call i32 @reg_w1(%struct.gspca_dev* %173, i32 2, i32 113)
  %175 = call i32 @msleep(i32 150)
  br label %180

176:                                              ; preds = %124
  %177 = call i32 @msleep(i32 100)
  %178 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %179 = call i32 @reg_w1(%struct.gspca_dev* %178, i32 2, i32 98)
  br label %180

180:                                              ; preds = %124, %176, %157, %154
  %181 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %182 = load i32***, i32**** @sensor_init, align 8
  %183 = load %struct.sd*, %struct.sd** %3, align 8
  %184 = getelementptr inbounds %struct.sd, %struct.sd* %183, i32 0, i32 0
  %185 = load i64, i64* %184, align 8
  %186 = getelementptr inbounds i32**, i32*** %182, i64 %185
  %187 = load i32**, i32*** %186, align 8
  %188 = call i32 @i2c_w_seq(%struct.gspca_dev* %181, i32** %187)
  %189 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %190 = load i32*, i32** %8, align 8
  %191 = getelementptr inbounds i32, i32* %190, i64 21
  %192 = load i32, i32* %191, align 4
  %193 = call i32 @reg_w1(%struct.gspca_dev* %189, i32 21, i32 %192)
  %194 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %195 = load i32*, i32** %8, align 8
  %196 = getelementptr inbounds i32, i32* %195, i64 22
  %197 = load i32, i32* %196, align 4
  %198 = call i32 @reg_w1(%struct.gspca_dev* %194, i32 22, i32 %197)
  %199 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %200 = load i32*, i32** %8, align 8
  %201 = getelementptr inbounds i32, i32* %200, i64 18
  %202 = load i32, i32* %201, align 4
  %203 = call i32 @reg_w1(%struct.gspca_dev* %199, i32 18, i32 %202)
  %204 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %205 = load i32*, i32** %8, align 8
  %206 = getelementptr inbounds i32, i32* %205, i64 19
  %207 = load i32, i32* %206, align 4
  %208 = call i32 @reg_w1(%struct.gspca_dev* %204, i32 19, i32 %207)
  %209 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %210 = load i32*, i32** %8, align 8
  %211 = getelementptr inbounds i32, i32* %210, i64 24
  %212 = load i32, i32* %211, align 4
  %213 = call i32 @reg_w1(%struct.gspca_dev* %209, i32 24, i32 %212)
  %214 = load %struct.sd*, %struct.sd** %3, align 8
  %215 = getelementptr inbounds %struct.sd, %struct.sd* %214, i32 0, i32 0
  %216 = load i64, i64* %215, align 8
  %217 = icmp eq i64 %216, 142
  br i1 %217, label %218, label %223

218:                                              ; preds = %180
  %219 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %220 = call i32 @reg_w1(%struct.gspca_dev* %219, i32 210, i32 58)
  %221 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %222 = call i32 @reg_w1(%struct.gspca_dev* %221, i32 211, i32 48)
  br label %228

223:                                              ; preds = %180
  %224 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %225 = call i32 @reg_w1(%struct.gspca_dev* %224, i32 210, i32 106)
  %226 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %227 = call i32 @reg_w1(%struct.gspca_dev* %226, i32 211, i32 80)
  br label %228

228:                                              ; preds = %223, %218
  %229 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %230 = call i32 @reg_w1(%struct.gspca_dev* %229, i32 198, i32 0)
  %231 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %232 = call i32 @reg_w1(%struct.gspca_dev* %231, i32 199, i32 0)
  %233 = load %struct.sd*, %struct.sd** %3, align 8
  %234 = getelementptr inbounds %struct.sd, %struct.sd* %233, i32 0, i32 0
  %235 = load i64, i64* %234, align 8
  %236 = icmp eq i64 %235, 142
  br i1 %236, label %237, label %242

237:                                              ; preds = %228
  %238 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %239 = call i32 @reg_w1(%struct.gspca_dev* %238, i32 200, i32 44)
  %240 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %241 = call i32 @reg_w1(%struct.gspca_dev* %240, i32 201, i32 36)
  br label %247

242:                                              ; preds = %228
  %243 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %244 = call i32 @reg_w1(%struct.gspca_dev* %243, i32 200, i32 80)
  %245 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %246 = call i32 @reg_w1(%struct.gspca_dev* %245, i32 201, i32 60)
  br label %247

247:                                              ; preds = %242, %237
  %248 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %249 = load i32*, i32** %8, align 8
  %250 = getelementptr inbounds i32, i32* %249, i64 24
  %251 = load i32, i32* %250, align 4
  %252 = call i32 @reg_w1(%struct.gspca_dev* %248, i32 24, i32 %251)
  %253 = load %struct.sd*, %struct.sd** %3, align 8
  %254 = getelementptr inbounds %struct.sd, %struct.sd* %253, i32 0, i32 0
  %255 = load i64, i64* %254, align 8
  switch i64 %255, label %257 [
    i64 135, label %256
  ]

256:                                              ; preds = %247
  br label %261

257:                                              ; preds = %247
  %258 = load i32, i32* @DEF_EN, align 4
  %259 = load i32, i32* %6, align 4
  %260 = or i32 %259, %258
  store i32 %260, i32* %6, align 4
  br label %261

261:                                              ; preds = %257, %256
  %262 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %263 = load i32, i32* %6, align 4
  %264 = call i32 @reg_w1(%struct.gspca_dev* %262, i32 23, i32 %263)
  %265 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %266 = call i32 @reg_w1(%struct.gspca_dev* %265, i32 5, i32 0)
  %267 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %268 = call i32 @reg_w1(%struct.gspca_dev* %267, i32 7, i32 0)
  %269 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %270 = call i32 @reg_w1(%struct.gspca_dev* %269, i32 6, i32 0)
  %271 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %272 = load i32*, i32** %8, align 8
  %273 = getelementptr inbounds i32, i32* %272, i64 20
  %274 = load i32, i32* %273, align 4
  %275 = call i32 @reg_w1(%struct.gspca_dev* %271, i32 20, i32 %274)
  %276 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %277 = call i32 @setgamma(%struct.gspca_dev* %276)
  store i32 0, i32* %4, align 4
  br label %278

278:                                              ; preds = %285, %261
  %279 = load i32, i32* %4, align 4
  %280 = icmp slt i32 %279, 8
  br i1 %280, label %281, label %288

281:                                              ; preds = %278
  %282 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %283 = load i32*, i32** @reg84, align 8
  %284 = call i32 @reg_w(%struct.gspca_dev* %282, i32 132, i32* %283, i32 8)
  br label %285

285:                                              ; preds = %281
  %286 = load i32, i32* %4, align 4
  %287 = add nsw i32 %286, 1
  store i32 %287, i32* %4, align 4
  br label %278

288:                                              ; preds = %278
  %289 = load %struct.sd*, %struct.sd** %3, align 8
  %290 = getelementptr inbounds %struct.sd, %struct.sd* %289, i32 0, i32 0
  %291 = load i64, i64* %290, align 8
  switch i64 %291, label %304 [
    i64 142, label %292
    i64 132, label %292
    i64 128, label %292
    i64 141, label %295
    i64 136, label %295
    i64 138, label %295
    i64 134, label %298
    i64 133, label %298
    i64 130, label %301
    i64 129, label %301
  ]

292:                                              ; preds = %288, %288, %288
  %293 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %294 = call i32 @reg_w1(%struct.gspca_dev* %293, i32 154, i32 5)
  br label %307

295:                                              ; preds = %288, %288, %288
  %296 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %297 = call i32 @reg_w1(%struct.gspca_dev* %296, i32 154, i32 7)
  br label %307

298:                                              ; preds = %288, %288
  %299 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %300 = call i32 @reg_w1(%struct.gspca_dev* %299, i32 154, i32 10)
  br label %307

301:                                              ; preds = %288, %288
  %302 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %303 = call i32 @reg_w1(%struct.gspca_dev* %302, i32 154, i32 6)
  br label %307

304:                                              ; preds = %288
  %305 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %306 = call i32 @reg_w1(%struct.gspca_dev* %305, i32 154, i32 8)
  br label %307

307:                                              ; preds = %304, %301, %298, %295, %292
  %308 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %309 = call i32 @setsharpness(%struct.gspca_dev* %308)
  %310 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %311 = load i32*, i32** @reg84, align 8
  %312 = call i32 @reg_w(%struct.gspca_dev* %310, i32 132, i32* %311, i32 8)
  %313 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %314 = call i32 @reg_w1(%struct.gspca_dev* %313, i32 5, i32 32)
  %315 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %316 = call i32 @reg_w1(%struct.gspca_dev* %315, i32 7, i32 32)
  %317 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %318 = call i32 @reg_w1(%struct.gspca_dev* %317, i32 6, i32 32)
  store [8 x i32]* null, [8 x i32]** %9, align 8
  %319 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %320 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %319, i32 0, i32 2
  %321 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %320, i32 0, i32 0
  %322 = load %struct.TYPE_3__*, %struct.TYPE_3__** %321, align 8
  %323 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %324 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %323, i32 0, i32 0
  %325 = load i64, i64* %324, align 8
  %326 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %322, i64 %325
  %327 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %326, i32 0, i32 0
  %328 = load i32, i32* %327, align 4
  store i32 %328, i32* %11, align 4
  %329 = load i32, i32* @SYS_SEL_48M, align 4
  %330 = load i32, i32* @V_TX_EN, align 4
  %331 = or i32 %329, %330
  %332 = load i32, i32* %5, align 4
  %333 = or i32 %332, %331
  store i32 %333, i32* %5, align 4
  %334 = load i32, i32* @MCK_SIZE_MASK, align 4
  %335 = xor i32 %334, -1
  %336 = load i32, i32* %6, align 4
  %337 = and i32 %336, %335
  store i32 %337, i32* %6, align 4
  %338 = load i32, i32* %6, align 4
  %339 = or i32 %338, 2
  store i32 %339, i32* %6, align 4
  %340 = load %struct.sd*, %struct.sd** %3, align 8
  %341 = getelementptr inbounds %struct.sd, %struct.sd* %340, i32 0, i32 0
  %342 = load i64, i64* %341, align 8
  switch i64 %342, label %429 [
    i64 142, label %343
    i64 141, label %346
    i64 140, label %349
    i64 139, label %349
    i64 138, label %368
    i64 137, label %371
    i64 136, label %386
    i64 135, label %389
    i64 134, label %402
    i64 133, label %405
    i64 132, label %414
    i64 131, label %417
    i64 130, label %420
    i64 129, label %423
    i64 128, label %426
  ]

343:                                              ; preds = %307
  %344 = load i32**, i32*** @adcm1700_sensor_param1, align 8
  %345 = bitcast i32** %344 to [8 x i32]*
  store [8 x i32]* %345, [8 x i32]** %9, align 8
  br label %429

346:                                              ; preds = %307
  %347 = load i32**, i32*** @gc0307_sensor_param1, align 8
  %348 = bitcast i32** %347 to [8 x i32]*
  store [8 x i32]* %348, [8 x i32]** %9, align 8
  br label %429

349:                                              ; preds = %307, %307
  %350 = load i32, i32* %11, align 4
  %351 = icmp ne i32 %350, 0
  br i1 %351, label %352, label %356

352:                                              ; preds = %349
  %353 = load i32, i32* @SYS_SEL_48M, align 4
  %354 = load i32, i32* %5, align 4
  %355 = or i32 %354, %353
  store i32 %355, i32* %5, align 4
  br label %361

356:                                              ; preds = %349
  %357 = load i32, i32* @SYS_SEL_48M, align 4
  %358 = xor i32 %357, -1
  %359 = load i32, i32* %5, align 4
  %360 = and i32 %359, %358
  store i32 %360, i32* %5, align 4
  br label %361

361:                                              ; preds = %356, %352
  %362 = load i32, i32* @MCK_SIZE_MASK, align 4
  %363 = xor i32 %362, -1
  %364 = load i32, i32* %6, align 4
  %365 = and i32 %364, %363
  store i32 %365, i32* %6, align 4
  %366 = load i32, i32* %6, align 4
  %367 = or i32 %366, 1
  store i32 %367, i32* %6, align 4
  br label %429

368:                                              ; preds = %307
  %369 = load i32**, i32*** @mi0360b_sensor_param1, align 8
  %370 = bitcast i32** %369 to [8 x i32]*
  store [8 x i32]* %370, [8 x i32]** %9, align 8
  br label %429

371:                                              ; preds = %307
  %372 = load i32, i32* %11, align 4
  %373 = icmp ne i32 %372, 0
  br i1 %373, label %374, label %385

374:                                              ; preds = %371
  %375 = load i32, i32* @SYS_SEL_48M, align 4
  %376 = xor i32 %375, -1
  %377 = load i32, i32* %5, align 4
  %378 = and i32 %377, %376
  store i32 %378, i32* %5, align 4
  %379 = load i32, i32* @MCK_SIZE_MASK, align 4
  %380 = xor i32 %379, -1
  %381 = load i32, i32* %6, align 4
  %382 = and i32 %381, %380
  store i32 %382, i32* %6, align 4
  %383 = load i32, i32* %6, align 4
  %384 = or i32 %383, 1
  store i32 %384, i32* %6, align 4
  br label %385

385:                                              ; preds = %374, %371
  br label %429

386:                                              ; preds = %307
  %387 = load i32**, i32*** @mt9v111_sensor_param1, align 8
  %388 = bitcast i32** %387 to [8 x i32]*
  store [8 x i32]* %388, [8 x i32]** %9, align 8
  br label %429

389:                                              ; preds = %307
  %390 = load i32**, i32*** @om6802_sensor_param1, align 8
  %391 = bitcast i32** %390 to [8 x i32]*
  store [8 x i32]* %391, [8 x i32]** %9, align 8
  %392 = load i32, i32* %11, align 4
  %393 = icmp ne i32 %392, 0
  br i1 %393, label %401, label %394

394:                                              ; preds = %389
  %395 = load i32, i32* @MCK_SIZE_MASK, align 4
  %396 = xor i32 %395, -1
  %397 = load i32, i32* %6, align 4
  %398 = and i32 %397, %396
  store i32 %398, i32* %6, align 4
  %399 = load i32, i32* %6, align 4
  %400 = or i32 %399, 4
  store i32 %400, i32* %6, align 4
  br label %401

401:                                              ; preds = %394, %389
  br label %429

402:                                              ; preds = %307
  %403 = load i32**, i32*** @ov7630_sensor_param1, align 8
  %404 = bitcast i32** %403 to [8 x i32]*
  store [8 x i32]* %404, [8 x i32]** %9, align 8
  br label %429

405:                                              ; preds = %307
  %406 = load i32**, i32*** @ov7648_sensor_param1, align 8
  %407 = bitcast i32** %406 to [8 x i32]*
  store [8 x i32]* %407, [8 x i32]** %9, align 8
  %408 = load i32, i32* @MCK_SIZE_MASK, align 4
  %409 = xor i32 %408, -1
  %410 = load i32, i32* %6, align 4
  %411 = and i32 %410, %409
  store i32 %411, i32* %6, align 4
  %412 = load i32, i32* %6, align 4
  %413 = or i32 %412, 1
  store i32 %413, i32* %6, align 4
  br label %429

414:                                              ; preds = %307
  %415 = load i32**, i32*** @ov7660_sensor_param1, align 8
  %416 = bitcast i32** %415 to [8 x i32]*
  store [8 x i32]* %416, [8 x i32]** %9, align 8
  br label %429

417:                                              ; preds = %307
  %418 = load i32**, i32*** @po1030_sensor_param1, align 8
  %419 = bitcast i32** %418 to [8 x i32]*
  store [8 x i32]* %419, [8 x i32]** %9, align 8
  br label %429

420:                                              ; preds = %307
  %421 = load i32**, i32*** @po2030n_sensor_param1, align 8
  %422 = bitcast i32** %421 to [8 x i32]*
  store [8 x i32]* %422, [8 x i32]** %9, align 8
  br label %429

423:                                              ; preds = %307
  %424 = load i32**, i32*** @soi768_sensor_param1, align 8
  %425 = bitcast i32** %424 to [8 x i32]*
  store [8 x i32]* %425, [8 x i32]** %9, align 8
  br label %429

426:                                              ; preds = %307
  %427 = load i32**, i32*** @sp80708_sensor_param1, align 8
  %428 = bitcast i32** %427 to [8 x i32]*
  store [8 x i32]* %428, [8 x i32]** %9, align 8
  br label %429

429:                                              ; preds = %307, %426, %423, %420, %417, %414, %405, %402, %401, %386, %385, %368, %361, %346, %343
  %430 = load [8 x i32]*, [8 x i32]** %9, align 8
  %431 = icmp ne [8 x i32]* %430, null
  br i1 %431, label %432, label %437

432:                                              ; preds = %429
  %433 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %434 = load [8 x i32]*, [8 x i32]** %9, align 8
  %435 = bitcast [8 x i32]* %434 to i32**
  %436 = call i32 @i2c_w_seq(%struct.gspca_dev* %433, i32** %435)
  br label %437

437:                                              ; preds = %432, %429
  %438 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %439 = call i32 @reg_w(%struct.gspca_dev* %438, i32 192, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @sd_start.C0, i64 0, i64 0), i32 6)
  %440 = load %struct.sd*, %struct.sd** %3, align 8
  %441 = getelementptr inbounds %struct.sd, %struct.sd* %440, i32 0, i32 0
  %442 = load i64, i64* %441, align 8
  switch i64 %442, label %449 [
    i64 142, label %443
    i64 141, label %443
    i64 129, label %443
    i64 130, label %446
  ]

443:                                              ; preds = %437, %437, %437
  %444 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %445 = call i32 @reg_w(%struct.gspca_dev* %444, i32 202, i32* getelementptr inbounds ([4 x i32], [4 x i32]* @sd_start.CA_adcm1700, i64 0, i64 0), i32 4)
  br label %452

446:                                              ; preds = %437
  %447 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %448 = call i32 @reg_w(%struct.gspca_dev* %447, i32 202, i32* getelementptr inbounds ([4 x i32], [4 x i32]* @sd_start.CA_po2030n, i64 0, i64 0), i32 4)
  br label %452

449:                                              ; preds = %437
  %450 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %451 = call i32 @reg_w(%struct.gspca_dev* %450, i32 202, i32* getelementptr inbounds ([4 x i32], [4 x i32]* @sd_start.CA, i64 0, i64 0), i32 4)
  br label %452

452:                                              ; preds = %449, %446, %443
  %453 = load %struct.sd*, %struct.sd** %3, align 8
  %454 = getelementptr inbounds %struct.sd, %struct.sd* %453, i32 0, i32 0
  %455 = load i64, i64* %454, align 8
  switch i64 %455, label %465 [
    i64 142, label %456
    i64 134, label %456
    i64 133, label %456
    i64 132, label %456
    i64 129, label %456
    i64 141, label %459
    i64 130, label %462
  ]

456:                                              ; preds = %452, %452, %452, %452, %452
  %457 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %458 = call i32 @reg_w(%struct.gspca_dev* %457, i32 206, i32* getelementptr inbounds ([4 x i32], [4 x i32]* @sd_start.CE_ov76xx, i64 0, i64 0), i32 4)
  br label %468

459:                                              ; preds = %452
  %460 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %461 = call i32 @reg_w(%struct.gspca_dev* %460, i32 206, i32* getelementptr inbounds ([4 x i32], [4 x i32]* @sd_start.CE_gc0307, i64 0, i64 0), i32 4)
  br label %468

462:                                              ; preds = %452
  %463 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %464 = call i32 @reg_w(%struct.gspca_dev* %463, i32 206, i32* getelementptr inbounds ([4 x i32], [4 x i32]* @sd_start.CE_po2030n, i64 0, i64 0), i32 4)
  br label %468

465:                                              ; preds = %452
  %466 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %467 = call i32 @reg_w(%struct.gspca_dev* %466, i32 206, i32* getelementptr inbounds ([4 x i32], [4 x i32]* @sd_start.CE, i64 0, i64 0), i32 4)
  br label %468

468:                                              ; preds = %465, %462, %459, %456
  %469 = load i32*, i32** %8, align 8
  %470 = getelementptr inbounds i32, i32* %469, i64 24
  %471 = load i32, i32* %470, align 4
  %472 = load i32, i32* %11, align 4
  %473 = shl i32 %472, 4
  %474 = or i32 %471, %473
  %475 = or i32 %474, 64
  %476 = load %struct.sd*, %struct.sd** %3, align 8
  %477 = getelementptr inbounds %struct.sd, %struct.sd* %476, i32 0, i32 2
  store i32 %475, i32* %477, align 4
  %478 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %479 = load %struct.sd*, %struct.sd** %3, align 8
  %480 = getelementptr inbounds %struct.sd, %struct.sd* %479, i32 0, i32 2
  %481 = load i32, i32* %480, align 4
  %482 = call i32 @reg_w1(%struct.gspca_dev* %478, i32 24, i32 %481)
  %483 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %484 = call i32 @setjpegqual(%struct.gspca_dev* %483)
  %485 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %486 = load i32, i32* %6, align 4
  %487 = call i32 @reg_w1(%struct.gspca_dev* %485, i32 23, i32 %486)
  %488 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %489 = load i32, i32* %5, align 4
  %490 = call i32 @reg_w1(%struct.gspca_dev* %488, i32 1, i32 %489)
  %491 = load i32, i32* %5, align 4
  %492 = load %struct.sd*, %struct.sd** %3, align 8
  %493 = getelementptr inbounds %struct.sd, %struct.sd* %492, i32 0, i32 3
  store i32 %491, i32* %493, align 8
  %494 = load i32, i32* %6, align 4
  %495 = load %struct.sd*, %struct.sd** %3, align 8
  %496 = getelementptr inbounds %struct.sd, %struct.sd* %495, i32 0, i32 4
  store i32 %494, i32* %496, align 4
  %497 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %498 = call i32 @sethvflip(%struct.gspca_dev* %497)
  %499 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %500 = call i32 @setbrightness(%struct.gspca_dev* %499)
  %501 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %502 = call i32 @setcontrast(%struct.gspca_dev* %501)
  %503 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %504 = call i32 @setcolors(%struct.gspca_dev* %503)
  %505 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %506 = call i32 @setautogain(%struct.gspca_dev* %505)
  %507 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %508 = call i32 @setfreq(%struct.gspca_dev* %507)
  %509 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %510 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %509, i32 0, i32 1
  %511 = load i32, i32* %510, align 8
  ret i32 %511
}

declare dso_local i32 @jpeg_define(i32, i32, i32, i32) #1

declare dso_local i32 @jpeg_set_qual(i32, i32) #1

declare dso_local i32 @reg_w1(%struct.gspca_dev*, i32, i32) #1

declare dso_local i32 @reg_w(%struct.gspca_dev*, i32, i32*, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @hv7131r_probe(%struct.gspca_dev*) #1

declare dso_local i32 @i2c_w8(%struct.gspca_dev*, i32) #1

declare dso_local i32 @i2c_w_seq(%struct.gspca_dev*, i32**) #1

declare dso_local i32 @setgamma(%struct.gspca_dev*) #1

declare dso_local i32 @setsharpness(%struct.gspca_dev*) #1

declare dso_local i32 @setjpegqual(%struct.gspca_dev*) #1

declare dso_local i32 @sethvflip(%struct.gspca_dev*) #1

declare dso_local i32 @setbrightness(%struct.gspca_dev*) #1

declare dso_local i32 @setcontrast(%struct.gspca_dev*) #1

declare dso_local i32 @setcolors(%struct.gspca_dev*) #1

declare dso_local i32 @setautogain(%struct.gspca_dev*) #1

declare dso_local i32 @setfreq(%struct.gspca_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
