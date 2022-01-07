; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/common/tuners/extr_tda8290.c_tda8295_agc1_out.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/common/tuners/extr_tda8290.c_tda8295_agc1_out.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.tda8290_priv* }
%struct.tda8290_priv = type { i32 }

@__const.tda8295_agc1_out.buf = private unnamed_addr constant [2 x i8] c"\02\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dvb_frontend*, i32)* @tda8295_agc1_out to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tda8295_agc1_out(%struct.dvb_frontend* %0, i32 %1) #0 {
  %3 = alloca %struct.dvb_frontend*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.tda8290_priv*, align 8
  %6 = alloca [2 x i8], align 1
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %8 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %7, i32 0, i32 0
  %9 = load %struct.tda8290_priv*, %struct.tda8290_priv** %8, align 8
  store %struct.tda8290_priv* %9, %struct.tda8290_priv** %5, align 8
  %10 = bitcast [2 x i8]* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %10, i8* align 1 getelementptr inbounds ([2 x i8], [2 x i8]* @__const.tda8295_agc1_out.buf, i32 0, i32 0), i64 2, i1 false)
  %11 = load %struct.tda8290_priv*, %struct.tda8290_priv** %5, align 8
  %12 = getelementptr inbounds %struct.tda8290_priv, %struct.tda8290_priv* %11, i32 0, i32 0
  %13 = getelementptr inbounds [2 x i8], [2 x i8]* %6, i64 0, i64 0
  %14 = getelementptr inbounds [2 x i8], [2 x i8]* %6, i64 0, i64 1
  %15 = call i32 @tuner_i2c_xfer_send_recv(i32* %12, i8* %13, i32 1, i8* %14, i32 1)
  %16 = load i32, i32* %4, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %2
  %19 = getelementptr inbounds [2 x i8], [2 x i8]* %6, i64 0, i64 1
  %20 = load i8, i8* %19, align 1
  %21 = zext i8 %20 to i32
  %22 = and i32 %21, -65
  %23 = trunc i32 %22 to i8
  store i8 %23, i8* %19, align 1
  br label %30

24:                                               ; preds = %2
  %25 = getelementptr inbounds [2 x i8], [2 x i8]* %6, i64 0, i64 1
  %26 = load i8, i8* %25, align 1
  %27 = zext i8 %26 to i32
  %28 = or i32 %27, 64
  %29 = trunc i32 %28 to i8
  store i8 %29, i8* %25, align 1
  br label %30

30:                                               ; preds = %24, %18
  %31 = load %struct.tda8290_priv*, %struct.tda8290_priv** %5, align 8
  %32 = getelementptr inbounds %struct.tda8290_priv, %struct.tda8290_priv* %31, i32 0, i32 0
  %33 = getelementptr inbounds [2 x i8], [2 x i8]* %6, i64 0, i64 0
  %34 = call i32 @tuner_i2c_xfer_send(i32* %32, i8* %33, i32 2)
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
