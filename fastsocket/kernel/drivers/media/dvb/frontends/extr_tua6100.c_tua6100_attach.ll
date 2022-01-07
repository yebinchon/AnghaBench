; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_tua6100.c_tua6100_attach.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_tua6100.c_tua6100_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.tua6100_priv*, %struct.TYPE_2__ }
%struct.tua6100_priv = type { i32, %struct.i2c_adapter* }
%struct.TYPE_2__ = type { i32, i32 (%struct.dvb_frontend.0*, i32)* }
%struct.dvb_frontend.0 = type opaque
%struct.i2c_adapter = type { i32 }
%struct.i2c_msg = type { i32, i32*, i32, i32 }

@__const.tua6100_attach.b1 = private unnamed_addr constant [1 x i32] [i32 128], align 4
@I2C_M_RD = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@tua6100_tuner_ops = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.dvb_frontend* @tua6100_attach(%struct.dvb_frontend* %0, i32 %1, %struct.i2c_adapter* %2) #0 {
  %4 = alloca %struct.dvb_frontend*, align 8
  %5 = alloca %struct.dvb_frontend*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.i2c_adapter*, align 8
  %8 = alloca %struct.tua6100_priv*, align 8
  %9 = alloca [1 x i32], align 4
  %10 = alloca [1 x i32], align 4
  %11 = alloca [2 x %struct.i2c_msg], align 16
  %12 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.i2c_adapter* %2, %struct.i2c_adapter** %7, align 8
  store %struct.tua6100_priv* null, %struct.tua6100_priv** %8, align 8
  %13 = bitcast [1 x i32]* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %13, i8* align 4 bitcast ([1 x i32]* @__const.tua6100_attach.b1 to i8*), i64 4, i1 false)
  %14 = bitcast [1 x i32]* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %14, i8 0, i64 4, i1 false)
  %15 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %11, i64 0, i64 0
  %16 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %15, i32 0, i32 0
  %17 = load i32, i32* %6, align 4
  store i32 %17, i32* %16, align 8
  %18 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %15, i32 0, i32 1
  %19 = getelementptr inbounds [1 x i32], [1 x i32]* %9, i64 0, i64 0
  store i32* %19, i32** %18, align 8
  %20 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %15, i32 0, i32 2
  store i32 1, i32* %20, align 8
  %21 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %15, i32 0, i32 3
  store i32 0, i32* %21, align 4
  %22 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %15, i64 1
  %23 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %22, i32 0, i32 0
  %24 = load i32, i32* %6, align 4
  store i32 %24, i32* %23, align 8
  %25 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %22, i32 0, i32 1
  %26 = getelementptr inbounds [1 x i32], [1 x i32]* %10, i64 0, i64 0
  store i32* %26, i32** %25, align 8
  %27 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %22, i32 0, i32 2
  store i32 1, i32* %27, align 8
  %28 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %22, i32 0, i32 3
  %29 = load i32, i32* @I2C_M_RD, align 4
  store i32 %29, i32* %28, align 4
  %30 = load %struct.dvb_frontend*, %struct.dvb_frontend** %5, align 8
  %31 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 1
  %33 = load i32 (%struct.dvb_frontend.0*, i32)*, i32 (%struct.dvb_frontend.0*, i32)** %32, align 8
  %34 = icmp ne i32 (%struct.dvb_frontend.0*, i32)* %33, null
  br i1 %34, label %35, label %43

35:                                               ; preds = %3
  %36 = load %struct.dvb_frontend*, %struct.dvb_frontend** %5, align 8
  %37 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 1
  %39 = load i32 (%struct.dvb_frontend.0*, i32)*, i32 (%struct.dvb_frontend.0*, i32)** %38, align 8
  %40 = load %struct.dvb_frontend*, %struct.dvb_frontend** %5, align 8
  %41 = bitcast %struct.dvb_frontend* %40 to %struct.dvb_frontend.0*
  %42 = call i32 %39(%struct.dvb_frontend.0* %41, i32 1)
  br label %43

43:                                               ; preds = %35, %3
  %44 = load %struct.i2c_adapter*, %struct.i2c_adapter** %7, align 8
  %45 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %11, i64 0, i64 0
  %46 = call i32 @i2c_transfer(%struct.i2c_adapter* %44, %struct.i2c_msg* %45, i32 2)
  store i32 %46, i32* %12, align 4
  %47 = load %struct.dvb_frontend*, %struct.dvb_frontend** %5, align 8
  %48 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 1
  %50 = load i32 (%struct.dvb_frontend.0*, i32)*, i32 (%struct.dvb_frontend.0*, i32)** %49, align 8
  %51 = icmp ne i32 (%struct.dvb_frontend.0*, i32)* %50, null
  br i1 %51, label %52, label %60

52:                                               ; preds = %43
  %53 = load %struct.dvb_frontend*, %struct.dvb_frontend** %5, align 8
  %54 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 1
  %56 = load i32 (%struct.dvb_frontend.0*, i32)*, i32 (%struct.dvb_frontend.0*, i32)** %55, align 8
  %57 = load %struct.dvb_frontend*, %struct.dvb_frontend** %5, align 8
  %58 = bitcast %struct.dvb_frontend* %57 to %struct.dvb_frontend.0*
  %59 = call i32 %56(%struct.dvb_frontend.0* %58, i32 0)
  br label %60

60:                                               ; preds = %52, %43
  %61 = load i32, i32* %12, align 4
  %62 = icmp ne i32 %61, 2
  br i1 %62, label %63, label %64

63:                                               ; preds = %60
  store %struct.dvb_frontend* null, %struct.dvb_frontend** %4, align 8
  br label %85

64:                                               ; preds = %60
  %65 = load i32, i32* @GFP_KERNEL, align 4
  %66 = call %struct.tua6100_priv* @kzalloc(i32 16, i32 %65)
  store %struct.tua6100_priv* %66, %struct.tua6100_priv** %8, align 8
  %67 = load %struct.tua6100_priv*, %struct.tua6100_priv** %8, align 8
  %68 = icmp eq %struct.tua6100_priv* %67, null
  br i1 %68, label %69, label %70

69:                                               ; preds = %64
  store %struct.dvb_frontend* null, %struct.dvb_frontend** %4, align 8
  br label %85

70:                                               ; preds = %64
  %71 = load i32, i32* %6, align 4
  %72 = load %struct.tua6100_priv*, %struct.tua6100_priv** %8, align 8
  %73 = getelementptr inbounds %struct.tua6100_priv, %struct.tua6100_priv* %72, i32 0, i32 0
  store i32 %71, i32* %73, align 8
  %74 = load %struct.i2c_adapter*, %struct.i2c_adapter** %7, align 8
  %75 = load %struct.tua6100_priv*, %struct.tua6100_priv** %8, align 8
  %76 = getelementptr inbounds %struct.tua6100_priv, %struct.tua6100_priv* %75, i32 0, i32 1
  store %struct.i2c_adapter* %74, %struct.i2c_adapter** %76, align 8
  %77 = load %struct.dvb_frontend*, %struct.dvb_frontend** %5, align 8
  %78 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 0
  %80 = call i32 @memcpy(i32* %79, i32* @tua6100_tuner_ops, i32 4)
  %81 = load %struct.tua6100_priv*, %struct.tua6100_priv** %8, align 8
  %82 = load %struct.dvb_frontend*, %struct.dvb_frontend** %5, align 8
  %83 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %82, i32 0, i32 0
  store %struct.tua6100_priv* %81, %struct.tua6100_priv** %83, align 8
  %84 = load %struct.dvb_frontend*, %struct.dvb_frontend** %5, align 8
  store %struct.dvb_frontend* %84, %struct.dvb_frontend** %4, align 8
  br label %85

85:                                               ; preds = %70, %69, %63
  %86 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  ret %struct.dvb_frontend* %86
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @i2c_transfer(%struct.i2c_adapter*, %struct.i2c_msg*, i32) #2

declare dso_local %struct.tua6100_priv* @kzalloc(i32, i32) #2

declare dso_local i32 @memcpy(i32*, i32*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
