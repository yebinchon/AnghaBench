; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/common/tuners/extr_tda8290.c_tda8295_agc2_out.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/common/tuners/extr_tda8290.c_tda8295_agc2_out.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.tda8290_priv* }
%struct.tda8290_priv = type { i32 }

@__const.tda8295_agc2_out.set_gpio_cf = private unnamed_addr constant [2 x i8] c"D\00", align 1
@__const.tda8295_agc2_out.set_gpio_val = private unnamed_addr constant [2 x i8] c"F\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dvb_frontend*, i32)* @tda8295_agc2_out to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tda8295_agc2_out(%struct.dvb_frontend* %0, i32 %1) #0 {
  %3 = alloca %struct.dvb_frontend*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.tda8290_priv*, align 8
  %6 = alloca [2 x i8], align 1
  %7 = alloca [2 x i8], align 1
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %9 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %8, i32 0, i32 0
  %10 = load %struct.tda8290_priv*, %struct.tda8290_priv** %9, align 8
  store %struct.tda8290_priv* %10, %struct.tda8290_priv** %5, align 8
  %11 = bitcast [2 x i8]* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %11, i8* align 1 getelementptr inbounds ([2 x i8], [2 x i8]* @__const.tda8295_agc2_out.set_gpio_cf, i32 0, i32 0), i64 2, i1 false)
  %12 = bitcast [2 x i8]* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %12, i8* align 1 getelementptr inbounds ([2 x i8], [2 x i8]* @__const.tda8295_agc2_out.set_gpio_val, i32 0, i32 0), i64 2, i1 false)
  %13 = load %struct.tda8290_priv*, %struct.tda8290_priv** %5, align 8
  %14 = getelementptr inbounds %struct.tda8290_priv, %struct.tda8290_priv* %13, i32 0, i32 0
  %15 = getelementptr inbounds [2 x i8], [2 x i8]* %6, i64 0, i64 0
  %16 = getelementptr inbounds [2 x i8], [2 x i8]* %6, i64 0, i64 1
  %17 = call i32 @tuner_i2c_xfer_send_recv(i32* %14, i8* %15, i32 1, i8* %16, i32 1)
  %18 = load %struct.tda8290_priv*, %struct.tda8290_priv** %5, align 8
  %19 = getelementptr inbounds %struct.tda8290_priv, %struct.tda8290_priv* %18, i32 0, i32 0
  %20 = getelementptr inbounds [2 x i8], [2 x i8]* %7, i64 0, i64 0
  %21 = getelementptr inbounds [2 x i8], [2 x i8]* %7, i64 0, i64 1
  %22 = call i32 @tuner_i2c_xfer_send_recv(i32* %19, i8* %20, i32 1, i8* %21, i32 1)
  %23 = getelementptr inbounds [2 x i8], [2 x i8]* %6, i64 0, i64 1
  %24 = load i8, i8* %23, align 1
  %25 = zext i8 %24 to i32
  %26 = and i32 %25, 240
  %27 = trunc i32 %26 to i8
  store i8 %27, i8* %23, align 1
  %28 = load i32, i32* %4, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %41

30:                                               ; preds = %2
  %31 = getelementptr inbounds [2 x i8], [2 x i8]* %6, i64 0, i64 1
  %32 = load i8, i8* %31, align 1
  %33 = zext i8 %32 to i32
  %34 = or i32 %33, 1
  %35 = trunc i32 %34 to i8
  store i8 %35, i8* %31, align 1
  %36 = getelementptr inbounds [2 x i8], [2 x i8]* %7, i64 0, i64 1
  %37 = load i8, i8* %36, align 1
  %38 = zext i8 %37 to i32
  %39 = and i32 %38, 254
  %40 = trunc i32 %39 to i8
  store i8 %40, i8* %36, align 1
  br label %41

41:                                               ; preds = %30, %2
  %42 = load %struct.tda8290_priv*, %struct.tda8290_priv** %5, align 8
  %43 = getelementptr inbounds %struct.tda8290_priv, %struct.tda8290_priv* %42, i32 0, i32 0
  %44 = getelementptr inbounds [2 x i8], [2 x i8]* %6, i64 0, i64 0
  %45 = call i32 @tuner_i2c_xfer_send(i32* %43, i8* %44, i32 2)
  %46 = load %struct.tda8290_priv*, %struct.tda8290_priv** %5, align 8
  %47 = getelementptr inbounds %struct.tda8290_priv, %struct.tda8290_priv* %46, i32 0, i32 0
  %48 = getelementptr inbounds [2 x i8], [2 x i8]* %7, i64 0, i64 0
  %49 = call i32 @tuner_i2c_xfer_send(i32* %47, i8* %48, i32 2)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @tuner_i2c_xfer_send_recv(i32*, i8*, i32, i8*, i32) #2

declare dso_local i32 @tuner_i2c_xfer_send(i32*, i8*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
