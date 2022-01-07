; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/common/tuners/extr_tda8290.c_tda8290_init_tuner.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/common/tuners/extr_tda8290.c_tda8290_init_tuner.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.tda8290_priv* }
%struct.tda8290_priv = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.i2c_msg = type { i8*, i32, i32, i32 }

@__const.tda8290_init_tuner.tda8275_init = private unnamed_addr constant [14 x i8] c"\00\00\00@\DC\04\AF?*\04\FF\00\00@", align 1
@__const.tda8290_init_tuner.tda8275a_init = private unnamed_addr constant [14 x i8] c"\00\00\00\00\DC\05\8B\0C\04 \FF\00\00K", align 1
@TDA8275A = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dvb_frontend*)* @tda8290_init_tuner to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tda8290_init_tuner(%struct.dvb_frontend* %0) #0 {
  %2 = alloca %struct.dvb_frontend*, align 8
  %3 = alloca %struct.tda8290_priv*, align 8
  %4 = alloca [14 x i8], align 1
  %5 = alloca [14 x i8], align 1
  %6 = alloca %struct.i2c_msg, align 8
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %2, align 8
  %7 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %8 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %7, i32 0, i32 0
  %9 = load %struct.tda8290_priv*, %struct.tda8290_priv** %8, align 8
  store %struct.tda8290_priv* %9, %struct.tda8290_priv** %3, align 8
  %10 = bitcast [14 x i8]* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %10, i8* align 1 getelementptr inbounds ([14 x i8], [14 x i8]* @__const.tda8290_init_tuner.tda8275_init, i32 0, i32 0), i64 14, i1 false)
  %11 = bitcast [14 x i8]* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %11, i8* align 1 getelementptr inbounds ([14 x i8], [14 x i8]* @__const.tda8290_init_tuner.tda8275a_init, i32 0, i32 0), i64 14, i1 false)
  %12 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %6, i32 0, i32 0
  %13 = getelementptr inbounds [14 x i8], [14 x i8]* %4, i64 0, i64 0
  store i8* %13, i8** %12, align 8
  %14 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %6, i32 0, i32 1
  store i32 14, i32* %14, align 8
  %15 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %6, i32 0, i32 2
  store i32 0, i32* %15, align 4
  %16 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %6, i32 0, i32 3
  %17 = load %struct.tda8290_priv*, %struct.tda8290_priv** %3, align 8
  %18 = getelementptr inbounds %struct.tda8290_priv, %struct.tda8290_priv* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %16, align 8
  %20 = load %struct.tda8290_priv*, %struct.tda8290_priv** %3, align 8
  %21 = getelementptr inbounds %struct.tda8290_priv, %struct.tda8290_priv* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @TDA8275A, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %1
  %27 = getelementptr inbounds [14 x i8], [14 x i8]* %5, i64 0, i64 0
  %28 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %6, i32 0, i32 0
  store i8* %27, i8** %28, align 8
  br label %29

29:                                               ; preds = %26, %1
  %30 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %31 = call i32 @tda8290_i2c_bridge(%struct.dvb_frontend* %30, i32 1)
  %32 = load %struct.tda8290_priv*, %struct.tda8290_priv** %3, align 8
  %33 = getelementptr inbounds %struct.tda8290_priv, %struct.tda8290_priv* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @i2c_transfer(i32 %35, %struct.i2c_msg* %6, i32 1)
  %37 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %38 = call i32 @tda8290_i2c_bridge(%struct.dvb_frontend* %37, i32 0)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @tda8290_i2c_bridge(%struct.dvb_frontend*, i32) #2

declare dso_local i32 @i2c_transfer(i32, %struct.i2c_msg*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
