; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/common/tuners/extr_tda8290.c_tda8290_init_if.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/common/tuners/extr_tda8290.c_tda8290_init_if.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.tda8290_priv* }
%struct.tda8290_priv = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@__const.tda8290_init_if.set_VS = private unnamed_addr constant [2 x i8] c"0o", align 1
@__const.tda8290_init_if.set_GP00_CF = private unnamed_addr constant [2 x i8] c" \01", align 1
@__const.tda8290_init_if.set_GP01_CF = private unnamed_addr constant [2 x i8] c" \0B", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dvb_frontend*)* @tda8290_init_if to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tda8290_init_if(%struct.dvb_frontend* %0) #0 {
  %2 = alloca %struct.dvb_frontend*, align 8
  %3 = alloca %struct.tda8290_priv*, align 8
  %4 = alloca [2 x i8], align 1
  %5 = alloca [2 x i8], align 1
  %6 = alloca [2 x i8], align 1
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %2, align 8
  %7 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %8 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %7, i32 0, i32 0
  %9 = load %struct.tda8290_priv*, %struct.tda8290_priv** %8, align 8
  store %struct.tda8290_priv* %9, %struct.tda8290_priv** %3, align 8
  %10 = bitcast [2 x i8]* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %10, i8* align 1 getelementptr inbounds ([2 x i8], [2 x i8]* @__const.tda8290_init_if.set_VS, i32 0, i32 0), i64 2, i1 false)
  %11 = bitcast [2 x i8]* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %11, i8* align 1 getelementptr inbounds ([2 x i8], [2 x i8]* @__const.tda8290_init_if.set_GP00_CF, i32 0, i32 0), i64 2, i1 false)
  %12 = bitcast [2 x i8]* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %12, i8* align 1 getelementptr inbounds ([2 x i8], [2 x i8]* @__const.tda8290_init_if.set_GP01_CF, i32 0, i32 0), i64 2, i1 false)
  %13 = load %struct.tda8290_priv*, %struct.tda8290_priv** %3, align 8
  %14 = getelementptr inbounds %struct.tda8290_priv, %struct.tda8290_priv* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp eq i32 %16, 1
  br i1 %17, label %24, label %18

18:                                               ; preds = %1
  %19 = load %struct.tda8290_priv*, %struct.tda8290_priv** %3, align 8
  %20 = getelementptr inbounds %struct.tda8290_priv, %struct.tda8290_priv* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp eq i32 %22, 2
  br i1 %23, label %24, label %29

24:                                               ; preds = %18, %1
  %25 = load %struct.tda8290_priv*, %struct.tda8290_priv** %3, align 8
  %26 = getelementptr inbounds %struct.tda8290_priv, %struct.tda8290_priv* %25, i32 0, i32 0
  %27 = getelementptr inbounds [2 x i8], [2 x i8]* %5, i64 0, i64 0
  %28 = call i32 @tuner_i2c_xfer_send(i32* %26, i8* %27, i32 2)
  br label %34

29:                                               ; preds = %18
  %30 = load %struct.tda8290_priv*, %struct.tda8290_priv** %3, align 8
  %31 = getelementptr inbounds %struct.tda8290_priv, %struct.tda8290_priv* %30, i32 0, i32 0
  %32 = getelementptr inbounds [2 x i8], [2 x i8]* %6, i64 0, i64 0
  %33 = call i32 @tuner_i2c_xfer_send(i32* %31, i8* %32, i32 2)
  br label %34

34:                                               ; preds = %29, %24
  %35 = load %struct.tda8290_priv*, %struct.tda8290_priv** %3, align 8
  %36 = getelementptr inbounds %struct.tda8290_priv, %struct.tda8290_priv* %35, i32 0, i32 0
  %37 = getelementptr inbounds [2 x i8], [2 x i8]* %4, i64 0, i64 0
  %38 = call i32 @tuner_i2c_xfer_send(i32* %36, i8* %37, i32 2)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @tuner_i2c_xfer_send(i32*, i8*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
