; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/common/tuners/extr_tda827x.c_tda827xa_set_analog_params.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/common/tuners/extr_tda827x.c_tda827xa_set_analog_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32 }
%struct.dvb_frontend = type { %struct.tda827x_priv* }
%struct.tda827x_priv = type { i32, i32, i32, i32 }
%struct.analog_parameters = type { i32, i64 }
%struct.i2c_msg = type { i8*, i32, i64, i32 }

@V4L2_TUNER_RADIO = common dso_local global i64 0, align 8
@tda827xa_analog = common dso_local global %struct.TYPE_2__* null, align 8
@I2C_M_RD = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [18 x i8] c"AGC2 gain is: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, %struct.analog_parameters*)* @tda827xa_set_analog_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tda827xa_set_analog_params(%struct.dvb_frontend* %0, %struct.analog_parameters* %1) #0 {
  %3 = alloca %struct.dvb_frontend*, align 8
  %4 = alloca %struct.analog_parameters*, align 8
  %5 = alloca [11 x i8], align 1
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.tda827x_priv*, align 8
  %9 = alloca %struct.i2c_msg, align 8
  %10 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %3, align 8
  store %struct.analog_parameters* %1, %struct.analog_parameters** %4, align 8
  %11 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %12 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %11, i32 0, i32 0
  %13 = load %struct.tda827x_priv*, %struct.tda827x_priv** %12, align 8
  store %struct.tda827x_priv* %13, %struct.tda827x_priv** %8, align 8
  %14 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %9, i32 0, i32 0
  %15 = getelementptr inbounds [11 x i8], [11 x i8]* %5, i64 0, i64 0
  store i8* %15, i8** %14, align 8
  %16 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %9, i32 0, i32 1
  store i32 11, i32* %16, align 8
  %17 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %9, i32 0, i32 2
  store i64 0, i64* %17, align 8
  %18 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %9, i32 0, i32 3
  %19 = load %struct.tda827x_priv*, %struct.tda827x_priv** %8, align 8
  %20 = getelementptr inbounds %struct.tda827x_priv, %struct.tda827x_priv* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %18, align 8
  %22 = load %struct.analog_parameters*, %struct.analog_parameters** %4, align 8
  %23 = getelementptr inbounds %struct.analog_parameters, %struct.analog_parameters* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  store i32 %24, i32* %10, align 4
  %25 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %26 = load %struct.analog_parameters*, %struct.analog_parameters** %4, align 8
  %27 = call i32 @tda827x_set_std(%struct.dvb_frontend* %25, %struct.analog_parameters* %26)
  %28 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %29 = load %struct.analog_parameters*, %struct.analog_parameters** %4, align 8
  %30 = call i32 @tda827xa_lna_gain(%struct.dvb_frontend* %28, i32 1, %struct.analog_parameters* %29)
  %31 = call i32 @msleep(i32 10)
  %32 = load %struct.analog_parameters*, %struct.analog_parameters** %4, align 8
  %33 = getelementptr inbounds %struct.analog_parameters, %struct.analog_parameters* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @V4L2_TUNER_RADIO, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %40

37:                                               ; preds = %2
  %38 = load i32, i32* %10, align 4
  %39 = udiv i32 %38, 1000
  store i32 %39, i32* %10, align 4
  br label %40

40:                                               ; preds = %37, %2
  %41 = load i32, i32* %10, align 4
  %42 = load %struct.tda827x_priv*, %struct.tda827x_priv** %8, align 8
  %43 = getelementptr inbounds %struct.tda827x_priv, %struct.tda827x_priv* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = add i32 %41, %44
  store i32 %45, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %46

46:                                               ; preds = %66, %40
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** @tda827xa_analog, align 8
  %48 = load i32, i32* %7, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* %6, align 4
  %54 = mul nsw i32 %53, 62500
  %55 = icmp slt i32 %52, %54
  br i1 %55, label %56, label %69

56:                                               ; preds = %46
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** @tda827xa_analog, align 8
  %58 = load i32, i32* %7, align 4
  %59 = add nsw i32 %58, 1
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %56
  br label %69

66:                                               ; preds = %56
  %67 = load i32, i32* %7, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %7, align 4
  br label %46

69:                                               ; preds = %65, %46
  %70 = load i32, i32* %6, align 4
  %71 = load %struct.TYPE_2__*, %struct.TYPE_2__** @tda827xa_analog, align 8
  %72 = load i32, i32* %7, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = shl i32 %70, %76
  store i32 %77, i32* %6, align 4
  %78 = getelementptr inbounds [11 x i8], [11 x i8]* %5, i64 0, i64 0
  store i8 0, i8* %78, align 1
  %79 = load i32, i32* %6, align 4
  %80 = ashr i32 %79, 8
  %81 = trunc i32 %80 to i8
  %82 = getelementptr inbounds [11 x i8], [11 x i8]* %5, i64 0, i64 1
  store i8 %81, i8* %82, align 1
  %83 = load i32, i32* %6, align 4
  %84 = trunc i32 %83 to i8
  %85 = getelementptr inbounds [11 x i8], [11 x i8]* %5, i64 0, i64 2
  store i8 %84, i8* %85, align 1
  %86 = getelementptr inbounds [11 x i8], [11 x i8]* %5, i64 0, i64 3
  store i8 0, i8* %86, align 1
  %87 = getelementptr inbounds [11 x i8], [11 x i8]* %5, i64 0, i64 4
  store i8 22, i8* %87, align 1
  %88 = load %struct.TYPE_2__*, %struct.TYPE_2__** @tda827xa_analog, align 8
  %89 = load i32, i32* %7, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i64 %90
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = shl i32 %93, 5
  %95 = load %struct.TYPE_2__*, %struct.TYPE_2__** @tda827xa_analog, align 8
  %96 = load i32, i32* %7, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i64 %97
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 4
  %101 = shl i32 %100, 3
  %102 = add nsw i32 %94, %101
  %103 = load %struct.TYPE_2__*, %struct.TYPE_2__** @tda827xa_analog, align 8
  %104 = load i32, i32* %7, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i64 %105
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %106, i32 0, i32 3
  %108 = load i32, i32* %107, align 4
  %109 = add nsw i32 %102, %108
  %110 = trunc i32 %109 to i8
  %111 = getelementptr inbounds [11 x i8], [11 x i8]* %5, i64 0, i64 5
  store i8 %110, i8* %111, align 1
  %112 = load %struct.TYPE_2__*, %struct.TYPE_2__** @tda827xa_analog, align 8
  %113 = load i32, i32* %7, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %112, i64 %114
  %116 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %115, i32 0, i32 4
  %117 = load i32, i32* %116, align 4
  %118 = shl i32 %117, 4
  %119 = add nsw i32 139, %118
  %120 = trunc i32 %119 to i8
  %121 = getelementptr inbounds [11 x i8], [11 x i8]* %5, i64 0, i64 6
  store i8 %120, i8* %121, align 1
  %122 = getelementptr inbounds [11 x i8], [11 x i8]* %5, i64 0, i64 7
  store i8 28, i8* %122, align 1
  %123 = getelementptr inbounds [11 x i8], [11 x i8]* %5, i64 0, i64 8
  store i8 4, i8* %123, align 1
  %124 = getelementptr inbounds [11 x i8], [11 x i8]* %5, i64 0, i64 9
  store i8 32, i8* %124, align 1
  %125 = getelementptr inbounds [11 x i8], [11 x i8]* %5, i64 0, i64 10
  store i8 0, i8* %125, align 1
  %126 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %9, i32 0, i32 1
  store i32 11, i32* %126, align 8
  %127 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %128 = call i32 @tuner_transfer(%struct.dvb_frontend* %127, %struct.i2c_msg* %9, i32 1)
  %129 = getelementptr inbounds [11 x i8], [11 x i8]* %5, i64 0, i64 0
  store i8 -112, i8* %129, align 1
  %130 = getelementptr inbounds [11 x i8], [11 x i8]* %5, i64 0, i64 1
  store i8 -1, i8* %130, align 1
  %131 = getelementptr inbounds [11 x i8], [11 x i8]* %5, i64 0, i64 2
  store i8 -32, i8* %131, align 1
  %132 = getelementptr inbounds [11 x i8], [11 x i8]* %5, i64 0, i64 3
  store i8 0, i8* %132, align 1
  %133 = load %struct.tda827x_priv*, %struct.tda827x_priv** %8, align 8
  %134 = getelementptr inbounds %struct.tda827x_priv, %struct.tda827x_priv* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = shl i32 %135, 1
  %137 = add nsw i32 153, %136
  %138 = trunc i32 %137 to i8
  %139 = getelementptr inbounds [11 x i8], [11 x i8]* %5, i64 0, i64 4
  store i8 %138, i8* %139, align 1
  %140 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %9, i32 0, i32 1
  store i32 5, i32* %140, align 8
  %141 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %142 = call i32 @tuner_transfer(%struct.dvb_frontend* %141, %struct.i2c_msg* %9, i32 1)
  %143 = getelementptr inbounds [11 x i8], [11 x i8]* %5, i64 0, i64 0
  store i8 -96, i8* %143, align 1
  %144 = getelementptr inbounds [11 x i8], [11 x i8]* %5, i64 0, i64 1
  store i8 -64, i8* %144, align 1
  %145 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %9, i32 0, i32 1
  store i32 2, i32* %145, align 8
  %146 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %147 = call i32 @tuner_transfer(%struct.dvb_frontend* %146, %struct.i2c_msg* %9, i32 1)
  %148 = getelementptr inbounds [11 x i8], [11 x i8]* %5, i64 0, i64 0
  store i8 48, i8* %148, align 1
  %149 = load %struct.TYPE_2__*, %struct.TYPE_2__** @tda827xa_analog, align 8
  %150 = load i32, i32* %7, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %149, i64 %151
  %153 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %152, i32 0, i32 5
  %154 = load i32, i32* %153, align 4
  %155 = add nsw i32 16, %154
  %156 = trunc i32 %155 to i8
  %157 = getelementptr inbounds [11 x i8], [11 x i8]* %5, i64 0, i64 1
  store i8 %156, i8* %157, align 1
  %158 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %159 = call i32 @tuner_transfer(%struct.dvb_frontend* %158, %struct.i2c_msg* %9, i32 1)
  %160 = load i64, i64* @I2C_M_RD, align 8
  %161 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %9, i32 0, i32 2
  store i64 %160, i64* %161, align 8
  %162 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %163 = call i32 @tuner_transfer(%struct.dvb_frontend* %162, %struct.i2c_msg* %9, i32 1)
  %164 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %9, i32 0, i32 2
  store i64 0, i64* %164, align 8
  %165 = getelementptr inbounds [11 x i8], [11 x i8]* %5, i64 0, i64 1
  %166 = load i8, i8* %165, align 1
  %167 = zext i8 %166 to i32
  %168 = ashr i32 %167, 4
  %169 = trunc i32 %168 to i8
  store i8 %169, i8* %165, align 1
  %170 = getelementptr inbounds [11 x i8], [11 x i8]* %5, i64 0, i64 1
  %171 = load i8, i8* %170, align 1
  %172 = call i32 @dprintk(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i8 zeroext %171)
  %173 = getelementptr inbounds [11 x i8], [11 x i8]* %5, i64 0, i64 1
  %174 = load i8, i8* %173, align 1
  %175 = zext i8 %174 to i32
  %176 = icmp slt i32 %175, 1
  br i1 %176, label %177, label %181

177:                                              ; preds = %69
  %178 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %179 = load %struct.analog_parameters*, %struct.analog_parameters** %4, align 8
  %180 = call i32 @tda827xa_lna_gain(%struct.dvb_frontend* %178, i32 0, %struct.analog_parameters* %179)
  br label %181

181:                                              ; preds = %177, %69
  %182 = call i32 @msleep(i32 100)
  %183 = getelementptr inbounds [11 x i8], [11 x i8]* %5, i64 0, i64 0
  store i8 96, i8* %183, align 1
  %184 = getelementptr inbounds [11 x i8], [11 x i8]* %5, i64 0, i64 1
  store i8 60, i8* %184, align 1
  %185 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %186 = call i32 @tuner_transfer(%struct.dvb_frontend* %185, %struct.i2c_msg* %9, i32 1)
  %187 = call i32 @msleep(i32 163)
  %188 = getelementptr inbounds [11 x i8], [11 x i8]* %5, i64 0, i64 0
  store i8 80, i8* %188, align 1
  %189 = load %struct.TYPE_2__*, %struct.TYPE_2__** @tda827xa_analog, align 8
  %190 = load i32, i32* %7, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %189, i64 %191
  %193 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %192, i32 0, i32 4
  %194 = load i32, i32* %193, align 4
  %195 = shl i32 %194, 4
  %196 = add nsw i32 143, %195
  %197 = trunc i32 %196 to i8
  %198 = getelementptr inbounds [11 x i8], [11 x i8]* %5, i64 0, i64 1
  store i8 %197, i8* %198, align 1
  %199 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %200 = call i32 @tuner_transfer(%struct.dvb_frontend* %199, %struct.i2c_msg* %9, i32 1)
  %201 = getelementptr inbounds [11 x i8], [11 x i8]* %5, i64 0, i64 0
  store i8 -128, i8* %201, align 1
  %202 = getelementptr inbounds [11 x i8], [11 x i8]* %5, i64 0, i64 1
  store i8 40, i8* %202, align 1
  %203 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %204 = call i32 @tuner_transfer(%struct.dvb_frontend* %203, %struct.i2c_msg* %9, i32 1)
  %205 = getelementptr inbounds [11 x i8], [11 x i8]* %5, i64 0, i64 0
  store i8 -80, i8* %205, align 1
  %206 = getelementptr inbounds [11 x i8], [11 x i8]* %5, i64 0, i64 1
  store i8 1, i8* %206, align 1
  %207 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %208 = call i32 @tuner_transfer(%struct.dvb_frontend* %207, %struct.i2c_msg* %9, i32 1)
  %209 = getelementptr inbounds [11 x i8], [11 x i8]* %5, i64 0, i64 0
  store i8 -64, i8* %209, align 1
  %210 = load %struct.tda827x_priv*, %struct.tda827x_priv** %8, align 8
  %211 = getelementptr inbounds %struct.tda827x_priv, %struct.tda827x_priv* %210, i32 0, i32 1
  %212 = load i32, i32* %211, align 4
  %213 = shl i32 %212, 1
  %214 = add nsw i32 25, %213
  %215 = trunc i32 %214 to i8
  %216 = getelementptr inbounds [11 x i8], [11 x i8]* %5, i64 0, i64 1
  store i8 %215, i8* %216, align 1
  %217 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %218 = call i32 @tuner_transfer(%struct.dvb_frontend* %217, %struct.i2c_msg* %9, i32 1)
  %219 = load %struct.analog_parameters*, %struct.analog_parameters** %4, align 8
  %220 = getelementptr inbounds %struct.analog_parameters, %struct.analog_parameters* %219, i32 0, i32 0
  %221 = load i32, i32* %220, align 8
  %222 = load %struct.tda827x_priv*, %struct.tda827x_priv** %8, align 8
  %223 = getelementptr inbounds %struct.tda827x_priv, %struct.tda827x_priv* %222, i32 0, i32 2
  store i32 %221, i32* %223, align 4
  ret i32 0
}

declare dso_local i32 @tda827x_set_std(%struct.dvb_frontend*, %struct.analog_parameters*) #1

declare dso_local i32 @tda827xa_lna_gain(%struct.dvb_frontend*, i32, %struct.analog_parameters*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @tuner_transfer(%struct.dvb_frontend*, %struct.i2c_msg*, i32) #1

declare dso_local i32 @dprintk(i8*, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
