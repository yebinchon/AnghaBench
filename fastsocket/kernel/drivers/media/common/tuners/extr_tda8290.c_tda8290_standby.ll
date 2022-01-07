; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/common/tuners/extr_tda8290.c_tda8290_standby.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/common/tuners/extr_tda8290.c_tda8290_standby.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.tda8290_priv* }
%struct.tda8290_priv = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.i2c_msg = type { i8*, i32, i32, i32 }

@__const.tda8290_standby.cb1 = private unnamed_addr constant [2 x i8] c"0\D0", align 1
@__const.tda8290_standby.tda8290_standby = private unnamed_addr constant [2 x i8] c"\00\02", align 1
@__const.tda8290_standby.tda8290_agc_tri = private unnamed_addr constant [2 x i8] c"\02 ", align 1
@TDA8275A = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dvb_frontend*)* @tda8290_standby to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tda8290_standby(%struct.dvb_frontend* %0) #0 {
  %2 = alloca %struct.dvb_frontend*, align 8
  %3 = alloca %struct.tda8290_priv*, align 8
  %4 = alloca [2 x i8], align 1
  %5 = alloca [2 x i8], align 1
  %6 = alloca [2 x i8], align 1
  %7 = alloca %struct.i2c_msg, align 8
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %2, align 8
  %8 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %9 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %8, i32 0, i32 0
  %10 = load %struct.tda8290_priv*, %struct.tda8290_priv** %9, align 8
  store %struct.tda8290_priv* %10, %struct.tda8290_priv** %3, align 8
  %11 = bitcast [2 x i8]* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %11, i8* align 1 getelementptr inbounds ([2 x i8], [2 x i8]* @__const.tda8290_standby.cb1, i32 0, i32 0), i64 2, i1 false)
  %12 = bitcast [2 x i8]* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %12, i8* align 1 getelementptr inbounds ([2 x i8], [2 x i8]* @__const.tda8290_standby.tda8290_standby, i32 0, i32 0), i64 2, i1 false)
  %13 = bitcast [2 x i8]* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %13, i8* align 1 getelementptr inbounds ([2 x i8], [2 x i8]* @__const.tda8290_standby.tda8290_agc_tri, i32 0, i32 0), i64 2, i1 false)
  %14 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %7, i32 0, i32 0
  %15 = getelementptr inbounds [2 x i8], [2 x i8]* %4, i64 0, i64 0
  store i8* %15, i8** %14, align 8
  %16 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %7, i32 0, i32 1
  store i32 2, i32* %16, align 8
  %17 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %7, i32 0, i32 2
  store i32 0, i32* %17, align 4
  %18 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %7, i32 0, i32 3
  %19 = load %struct.tda8290_priv*, %struct.tda8290_priv** %3, align 8
  %20 = getelementptr inbounds %struct.tda8290_priv, %struct.tda8290_priv* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %18, align 8
  %22 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %23 = call i32 @tda8290_i2c_bridge(%struct.dvb_frontend* %22, i32 1)
  %24 = load %struct.tda8290_priv*, %struct.tda8290_priv** %3, align 8
  %25 = getelementptr inbounds %struct.tda8290_priv, %struct.tda8290_priv* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @TDA8275A, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %1
  %31 = getelementptr inbounds [2 x i8], [2 x i8]* %4, i64 0, i64 1
  store i8 -112, i8* %31, align 1
  br label %32

32:                                               ; preds = %30, %1
  %33 = load %struct.tda8290_priv*, %struct.tda8290_priv** %3, align 8
  %34 = getelementptr inbounds %struct.tda8290_priv, %struct.tda8290_priv* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @i2c_transfer(i32 %36, %struct.i2c_msg* %7, i32 1)
  %38 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %39 = call i32 @tda8290_i2c_bridge(%struct.dvb_frontend* %38, i32 0)
  %40 = load %struct.tda8290_priv*, %struct.tda8290_priv** %3, align 8
  %41 = getelementptr inbounds %struct.tda8290_priv, %struct.tda8290_priv* %40, i32 0, i32 1
  %42 = getelementptr inbounds [2 x i8], [2 x i8]* %6, i64 0, i64 0
  %43 = call i32 @tuner_i2c_xfer_send(%struct.TYPE_2__* %41, i8* %42, i32 2)
  %44 = load %struct.tda8290_priv*, %struct.tda8290_priv** %3, align 8
  %45 = getelementptr inbounds %struct.tda8290_priv, %struct.tda8290_priv* %44, i32 0, i32 1
  %46 = getelementptr inbounds [2 x i8], [2 x i8]* %5, i64 0, i64 0
  %47 = call i32 @tuner_i2c_xfer_send(%struct.TYPE_2__* %45, i8* %46, i32 2)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @tda8290_i2c_bridge(%struct.dvb_frontend*, i32) #2

declare dso_local i32 @i2c_transfer(i32, %struct.i2c_msg*, i32) #2

declare dso_local i32 @tuner_i2c_xfer_send(%struct.TYPE_2__*, i8*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
