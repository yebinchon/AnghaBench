; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/common/tuners/extr_tda8290.c_tda8290_i2c_bridge.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/common/tuners/extr_tda8290.c_tda8290_i2c_bridge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.tda8290_priv* }
%struct.tda8290_priv = type { i32 }

@__const.tda8290_i2c_bridge.enable = private unnamed_addr constant [2 x i8] c"!\C0", align 1
@__const.tda8290_i2c_bridge.disable = private unnamed_addr constant [2 x i8] c"!\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, i32)* @tda8290_i2c_bridge to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tda8290_i2c_bridge(%struct.dvb_frontend* %0, i32 %1) #0 {
  %3 = alloca %struct.dvb_frontend*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.tda8290_priv*, align 8
  %6 = alloca [2 x i8], align 1
  %7 = alloca [2 x i8], align 1
  %8 = alloca i8*, align 8
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %10 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %9, i32 0, i32 0
  %11 = load %struct.tda8290_priv*, %struct.tda8290_priv** %10, align 8
  store %struct.tda8290_priv* %11, %struct.tda8290_priv** %5, align 8
  %12 = bitcast [2 x i8]* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %12, i8* align 1 getelementptr inbounds ([2 x i8], [2 x i8]* @__const.tda8290_i2c_bridge.enable, i32 0, i32 0), i64 2, i1 false)
  %13 = bitcast [2 x i8]* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %13, i8* align 1 getelementptr inbounds ([2 x i8], [2 x i8]* @__const.tda8290_i2c_bridge.disable, i32 0, i32 0), i64 2, i1 false)
  %14 = load i32, i32* %4, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %23

16:                                               ; preds = %2
  %17 = getelementptr inbounds [2 x i8], [2 x i8]* %6, i64 0, i64 0
  store i8* %17, i8** %8, align 8
  %18 = load %struct.tda8290_priv*, %struct.tda8290_priv** %5, align 8
  %19 = getelementptr inbounds %struct.tda8290_priv, %struct.tda8290_priv* %18, i32 0, i32 0
  %20 = load i8*, i8** %8, align 8
  %21 = call i32 @tuner_i2c_xfer_send(i32* %19, i8* %20, i32 2)
  %22 = call i32 @msleep(i32 20)
  br label %29

23:                                               ; preds = %2
  %24 = getelementptr inbounds [2 x i8], [2 x i8]* %7, i64 0, i64 0
  store i8* %24, i8** %8, align 8
  %25 = load %struct.tda8290_priv*, %struct.tda8290_priv** %5, align 8
  %26 = getelementptr inbounds %struct.tda8290_priv, %struct.tda8290_priv* %25, i32 0, i32 0
  %27 = load i8*, i8** %8, align 8
  %28 = call i32 @tuner_i2c_xfer_send(i32* %26, i8* %27, i32 2)
  br label %29

29:                                               ; preds = %23, %16
  ret i32 0
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @tuner_i2c_xfer_send(i32*, i8*, i32) #2

declare dso_local i32 @msleep(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
