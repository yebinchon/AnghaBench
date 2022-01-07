; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/common/tuners/extr_tda8290.c_tda8295_i2c_bridge.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/common/tuners/extr_tda8290.c_tda8295_i2c_bridge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.tda8290_priv* }
%struct.tda8290_priv = type { i32 }

@__const.tda8295_i2c_bridge.enable = private unnamed_addr constant [2 x i8] c"E\C1", align 1
@__const.tda8295_i2c_bridge.disable = private unnamed_addr constant [2 x i8] c"F\00", align 1
@__const.tda8295_i2c_bridge.buf = private unnamed_addr constant [3 x i8] c"E\01\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, i32)* @tda8295_i2c_bridge to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tda8295_i2c_bridge(%struct.dvb_frontend* %0, i32 %1) #0 {
  %3 = alloca %struct.dvb_frontend*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.tda8290_priv*, align 8
  %6 = alloca [2 x i8], align 1
  %7 = alloca [2 x i8], align 1
  %8 = alloca [3 x i8], align 1
  %9 = alloca i8*, align 8
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %11 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %10, i32 0, i32 0
  %12 = load %struct.tda8290_priv*, %struct.tda8290_priv** %11, align 8
  store %struct.tda8290_priv* %12, %struct.tda8290_priv** %5, align 8
  %13 = bitcast [2 x i8]* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %13, i8* align 1 getelementptr inbounds ([2 x i8], [2 x i8]* @__const.tda8295_i2c_bridge.enable, i32 0, i32 0), i64 2, i1 false)
  %14 = bitcast [2 x i8]* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %14, i8* align 1 getelementptr inbounds ([2 x i8], [2 x i8]* @__const.tda8295_i2c_bridge.disable, i32 0, i32 0), i64 2, i1 false)
  %15 = bitcast [3 x i8]* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %15, i8* align 1 getelementptr inbounds ([3 x i8], [3 x i8]* @__const.tda8295_i2c_bridge.buf, i32 0, i32 0), i64 3, i1 false)
  %16 = load i32, i32* %4, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %25

18:                                               ; preds = %2
  %19 = getelementptr inbounds [2 x i8], [2 x i8]* %6, i64 0, i64 0
  store i8* %19, i8** %9, align 8
  %20 = load %struct.tda8290_priv*, %struct.tda8290_priv** %5, align 8
  %21 = getelementptr inbounds %struct.tda8290_priv, %struct.tda8290_priv* %20, i32 0, i32 0
  %22 = load i8*, i8** %9, align 8
  %23 = call i32 @tuner_i2c_xfer_send(i32* %21, i8* %22, i32 2)
  %24 = call i32 @msleep(i32 20)
  br label %57

25:                                               ; preds = %2
  %26 = getelementptr inbounds [2 x i8], [2 x i8]* %7, i64 0, i64 0
  store i8* %26, i8** %9, align 8
  %27 = load %struct.tda8290_priv*, %struct.tda8290_priv** %5, align 8
  %28 = getelementptr inbounds %struct.tda8290_priv, %struct.tda8290_priv* %27, i32 0, i32 0
  %29 = load i8*, i8** %9, align 8
  %30 = load i8*, i8** %9, align 8
  %31 = getelementptr inbounds i8, i8* %30, i64 1
  %32 = call i32 @tuner_i2c_xfer_send_recv(i32* %28, i8* %29, i32 1, i8* %31, i32 1)
  %33 = load i8*, i8** %9, align 8
  %34 = getelementptr inbounds i8, i8* %33, i64 1
  %35 = load i8, i8* %34, align 1
  %36 = getelementptr inbounds [3 x i8], [3 x i8]* %8, i64 0, i64 2
  store i8 %35, i8* %36, align 1
  %37 = getelementptr inbounds [3 x i8], [3 x i8]* %8, i64 0, i64 2
  %38 = load i8, i8* %37, align 1
  %39 = zext i8 %38 to i32
  %40 = and i32 %39, -5
  %41 = trunc i32 %40 to i8
  store i8 %41, i8* %37, align 1
  %42 = load %struct.tda8290_priv*, %struct.tda8290_priv** %5, align 8
  %43 = getelementptr inbounds %struct.tda8290_priv, %struct.tda8290_priv* %42, i32 0, i32 0
  %44 = getelementptr inbounds [3 x i8], [3 x i8]* %8, i64 0, i64 0
  %45 = call i32 @tuner_i2c_xfer_send(i32* %43, i8* %44, i32 3)
  %46 = call i32 @msleep(i32 5)
  %47 = load i8*, i8** %9, align 8
  %48 = getelementptr inbounds i8, i8* %47, i64 1
  %49 = load i8, i8* %48, align 1
  %50 = zext i8 %49 to i32
  %51 = or i32 %50, 4
  %52 = trunc i32 %51 to i8
  store i8 %52, i8* %48, align 1
  %53 = load %struct.tda8290_priv*, %struct.tda8290_priv** %5, align 8
  %54 = getelementptr inbounds %struct.tda8290_priv, %struct.tda8290_priv* %53, i32 0, i32 0
  %55 = load i8*, i8** %9, align 8
  %56 = call i32 @tuner_i2c_xfer_send(i32* %54, i8* %55, i32 2)
  br label %57

57:                                               ; preds = %25, %18
  ret i32 0
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @tuner_i2c_xfer_send(i32*, i8*, i32) #2

declare dso_local i32 @msleep(i32) #2

declare dso_local i32 @tuner_i2c_xfer_send_recv(i32*, i8*, i32, i8*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
