; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/saa7134/extr_saa7134-dvb.c_mt352_pinnacle_tuner_set_params.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/saa7134/extr_saa7134-dvb.c_mt352_pinnacle_tuner_set_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 (%struct.dvb_frontend.0*, i32)* }
%struct.dvb_frontend.0 = type opaque
%struct.TYPE_3__ = type { %struct.saa7134_dev* }
%struct.saa7134_dev = type { i32 }
%struct.dvb_frontend_parameters = type { i32 }
%struct.i2c_msg = type { i32, i32*, i32, i32 }
%struct.v4l2_frequency = type { i32, i32, i64 }

@__const.mt352_pinnacle_tuner_set_params.off = private unnamed_addr constant [2 x i32] [i32 0, i32 241], align 4
@__const.mt352_pinnacle_tuner_set_params.on = private unnamed_addr constant [2 x i32] [i32 0, i32 113], align 4
@V4L2_TUNER_DIGITAL_TV = common dso_local global i32 0, align 4
@tuner = common dso_local global i32 0, align 4
@s_frequency = common dso_local global i32 0, align 4
@antenna_pwr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, %struct.dvb_frontend_parameters*)* @mt352_pinnacle_tuner_set_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mt352_pinnacle_tuner_set_params(%struct.dvb_frontend* %0, %struct.dvb_frontend_parameters* %1) #0 {
  %3 = alloca %struct.dvb_frontend*, align 8
  %4 = alloca %struct.dvb_frontend_parameters*, align 8
  %5 = alloca [2 x i32], align 4
  %6 = alloca [2 x i32], align 4
  %7 = alloca %struct.i2c_msg, align 8
  %8 = alloca %struct.saa7134_dev*, align 8
  %9 = alloca %struct.v4l2_frequency, align 8
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %3, align 8
  store %struct.dvb_frontend_parameters* %1, %struct.dvb_frontend_parameters** %4, align 8
  %10 = bitcast [2 x i32]* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %10, i8* align 4 bitcast ([2 x i32]* @__const.mt352_pinnacle_tuner_set_params.off to i8*), i64 8, i1 false)
  %11 = bitcast [2 x i32]* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %11, i8* align 4 bitcast ([2 x i32]* @__const.mt352_pinnacle_tuner_set_params.on to i8*), i64 8, i1 false)
  %12 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %7, i32 0, i32 0
  store i32 67, i32* %12, align 8
  %13 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %7, i32 0, i32 1
  %14 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 0
  store i32* %14, i32** %13, align 8
  %15 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %7, i32 0, i32 2
  store i32 8, i32* %15, align 8
  %16 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %7, i32 0, i32 3
  store i32 0, i32* %16, align 4
  %17 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %18 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %17, i32 0, i32 1
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load %struct.saa7134_dev*, %struct.saa7134_dev** %20, align 8
  store %struct.saa7134_dev* %21, %struct.saa7134_dev** %8, align 8
  %22 = getelementptr inbounds %struct.v4l2_frequency, %struct.v4l2_frequency* %9, i32 0, i32 2
  store i64 0, i64* %22, align 8
  %23 = load i32, i32* @V4L2_TUNER_DIGITAL_TV, align 4
  %24 = getelementptr inbounds %struct.v4l2_frequency, %struct.v4l2_frequency* %9, i32 0, i32 1
  store i32 %23, i32* %24, align 4
  %25 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %4, align 8
  %26 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = sdiv i32 %27, 1000
  %29 = mul nsw i32 %28, 16
  %30 = sdiv i32 %29, 1000
  %31 = getelementptr inbounds %struct.v4l2_frequency, %struct.v4l2_frequency* %9, i32 0, i32 0
  store i32 %30, i32* %31, align 8
  %32 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %33 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i32 (%struct.dvb_frontend.0*, i32)*, i32 (%struct.dvb_frontend.0*, i32)** %34, align 8
  %36 = icmp ne i32 (%struct.dvb_frontend.0*, i32)* %35, null
  br i1 %36, label %37, label %45

37:                                               ; preds = %2
  %38 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %39 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i32 (%struct.dvb_frontend.0*, i32)*, i32 (%struct.dvb_frontend.0*, i32)** %40, align 8
  %42 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %43 = bitcast %struct.dvb_frontend* %42 to %struct.dvb_frontend.0*
  %44 = call i32 %41(%struct.dvb_frontend.0* %43, i32 1)
  br label %45

45:                                               ; preds = %37, %2
  %46 = load %struct.saa7134_dev*, %struct.saa7134_dev** %8, align 8
  %47 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %46, i32 0, i32 0
  %48 = call i32 @i2c_transfer(i32* %47, %struct.i2c_msg* %7, i32 1)
  %49 = load %struct.saa7134_dev*, %struct.saa7134_dev** %8, align 8
  %50 = load i32, i32* @tuner, align 4
  %51 = load i32, i32* @s_frequency, align 4
  %52 = call i32 @saa_call_all(%struct.saa7134_dev* %49, i32 %50, i32 %51, %struct.v4l2_frequency* %9)
  %53 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  %54 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %7, i32 0, i32 1
  store i32* %53, i32** %54, align 8
  %55 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %56 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = load i32 (%struct.dvb_frontend.0*, i32)*, i32 (%struct.dvb_frontend.0*, i32)** %57, align 8
  %59 = icmp ne i32 (%struct.dvb_frontend.0*, i32)* %58, null
  br i1 %59, label %60, label %68

60:                                               ; preds = %45
  %61 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %62 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = load i32 (%struct.dvb_frontend.0*, i32)*, i32 (%struct.dvb_frontend.0*, i32)** %63, align 8
  %65 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %66 = bitcast %struct.dvb_frontend* %65 to %struct.dvb_frontend.0*
  %67 = call i32 %64(%struct.dvb_frontend.0* %66, i32 1)
  br label %68

68:                                               ; preds = %60, %45
  %69 = load %struct.saa7134_dev*, %struct.saa7134_dev** %8, align 8
  %70 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %69, i32 0, i32 0
  %71 = call i32 @i2c_transfer(i32* %70, %struct.i2c_msg* %7, i32 1)
  %72 = load %struct.saa7134_dev*, %struct.saa7134_dev** %8, align 8
  %73 = load i32, i32* @antenna_pwr, align 4
  %74 = call i32 @pinnacle_antenna_pwr(%struct.saa7134_dev* %72, i32 %73)
  %75 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %76 = call i32 @mt352_pinnacle_init(%struct.dvb_frontend* %75)
  ret i32 %76
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @i2c_transfer(i32*, %struct.i2c_msg*, i32) #2

declare dso_local i32 @saa_call_all(%struct.saa7134_dev*, i32, i32, %struct.v4l2_frequency*) #2

declare dso_local i32 @pinnacle_antenna_pwr(%struct.saa7134_dev*, i32) #2

declare dso_local i32 @mt352_pinnacle_init(%struct.dvb_frontend*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
