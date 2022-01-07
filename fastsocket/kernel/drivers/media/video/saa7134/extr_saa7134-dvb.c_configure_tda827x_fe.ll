; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/saa7134/extr_saa7134-dvb.c_configure_tda827x_fe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/saa7134/extr_saa7134-dvb.c_configure_tda827x_fe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.saa7134_dev = type { i32, i32 }
%struct.tda1004x_config = type { i32, i64 }
%struct.tda827x_config = type { i32 }
%struct.videobuf_dvb_frontend = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@tda10046_attach = common dso_local global i32 0, align 4
@tda8290_i2c_gate_ctrl = common dso_local global i32 0, align 4
@tda827x_attach = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"no tda827x tuner found at addr: %02x\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.saa7134_dev*, %struct.tda1004x_config*, %struct.tda827x_config*)* @configure_tda827x_fe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @configure_tda827x_fe(%struct.saa7134_dev* %0, %struct.tda1004x_config* %1, %struct.tda827x_config* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.saa7134_dev*, align 8
  %6 = alloca %struct.tda1004x_config*, align 8
  %7 = alloca %struct.tda827x_config*, align 8
  %8 = alloca %struct.videobuf_dvb_frontend*, align 8
  store %struct.saa7134_dev* %0, %struct.saa7134_dev** %5, align 8
  store %struct.tda1004x_config* %1, %struct.tda1004x_config** %6, align 8
  store %struct.tda827x_config* %2, %struct.tda827x_config** %7, align 8
  %9 = load %struct.saa7134_dev*, %struct.saa7134_dev** %5, align 8
  %10 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %9, i32 0, i32 1
  %11 = call %struct.videobuf_dvb_frontend* @videobuf_dvb_get_frontend(i32* %10, i32 1)
  store %struct.videobuf_dvb_frontend* %11, %struct.videobuf_dvb_frontend** %8, align 8
  %12 = load i32, i32* @tda10046_attach, align 4
  %13 = load %struct.tda1004x_config*, %struct.tda1004x_config** %6, align 8
  %14 = load %struct.saa7134_dev*, %struct.saa7134_dev** %5, align 8
  %15 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %14, i32 0, i32 0
  %16 = call %struct.TYPE_6__* (i32, ...) @dvb_attach(i32 %12, %struct.tda1004x_config* %13, i32* %15)
  %17 = load %struct.videobuf_dvb_frontend*, %struct.videobuf_dvb_frontend** %8, align 8
  %18 = getelementptr inbounds %struct.videobuf_dvb_frontend, %struct.videobuf_dvb_frontend* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  store %struct.TYPE_6__* %16, %struct.TYPE_6__** %19, align 8
  %20 = load %struct.videobuf_dvb_frontend*, %struct.videobuf_dvb_frontend** %8, align 8
  %21 = getelementptr inbounds %struct.videobuf_dvb_frontend, %struct.videobuf_dvb_frontend* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %22, align 8
  %24 = icmp ne %struct.TYPE_6__* %23, null
  br i1 %24, label %25, label %58

25:                                               ; preds = %3
  %26 = load %struct.tda1004x_config*, %struct.tda1004x_config** %6, align 8
  %27 = getelementptr inbounds %struct.tda1004x_config, %struct.tda1004x_config* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %38

30:                                               ; preds = %25
  %31 = load i32, i32* @tda8290_i2c_gate_ctrl, align 4
  %32 = load %struct.videobuf_dvb_frontend*, %struct.videobuf_dvb_frontend** %8, align 8
  %33 = getelementptr inbounds %struct.videobuf_dvb_frontend, %struct.videobuf_dvb_frontend* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  store i32 %31, i32* %37, align 4
  br label %38

38:                                               ; preds = %30, %25
  %39 = load i32, i32* @tda827x_attach, align 4
  %40 = load %struct.videobuf_dvb_frontend*, %struct.videobuf_dvb_frontend** %8, align 8
  %41 = getelementptr inbounds %struct.videobuf_dvb_frontend, %struct.videobuf_dvb_frontend* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %42, align 8
  %44 = load %struct.tda1004x_config*, %struct.tda1004x_config** %6, align 8
  %45 = getelementptr inbounds %struct.tda1004x_config, %struct.tda1004x_config* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.saa7134_dev*, %struct.saa7134_dev** %5, align 8
  %48 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %47, i32 0, i32 0
  %49 = load %struct.tda827x_config*, %struct.tda827x_config** %7, align 8
  %50 = call %struct.TYPE_6__* (i32, ...) @dvb_attach(i32 %39, %struct.TYPE_6__* %43, i32 %46, i32* %48, %struct.tda827x_config* %49)
  %51 = icmp ne %struct.TYPE_6__* %50, null
  br i1 %51, label %52, label %53

52:                                               ; preds = %38
  store i32 0, i32* %4, align 4
  br label %61

53:                                               ; preds = %38
  %54 = load %struct.tda1004x_config*, %struct.tda1004x_config** %6, align 8
  %55 = getelementptr inbounds %struct.tda1004x_config, %struct.tda1004x_config* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @wprintk(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %56)
  br label %58

58:                                               ; preds = %53, %3
  %59 = load i32, i32* @EINVAL, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %4, align 4
  br label %61

61:                                               ; preds = %58, %52
  %62 = load i32, i32* %4, align 4
  ret i32 %62
}

declare dso_local %struct.videobuf_dvb_frontend* @videobuf_dvb_get_frontend(i32*, i32) #1

declare dso_local %struct.TYPE_6__* @dvb_attach(i32, ...) #1

declare dso_local i32 @wprintk(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
