; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/saa7134/extr_saa7134-dvb.c_tda8290_i2c_gate_ctrl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/saa7134/extr_saa7134-dvb.c_tda8290_i2c_gate_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.TYPE_3__*, %struct.tda1004x_state* }
%struct.TYPE_3__ = type { %struct.saa7134_dev* }
%struct.saa7134_dev = type { i32 }
%struct.tda1004x_state = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.i2c_msg = type { i32, i32, i32*, i32 }

@tda8290_i2c_gate_ctrl.tda8290_close = internal global [2 x i32] [i32 33, i32 192], align 4
@tda8290_i2c_gate_ctrl.tda8290_open = internal global [2 x i32] [i32 33, i32 128], align 4
@.str = private unnamed_addr constant [35 x i8] c"could not access tda8290 I2C gate\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, i32)* @tda8290_i2c_gate_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tda8290_i2c_gate_ctrl(%struct.dvb_frontend* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dvb_frontend*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.tda1004x_state*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.i2c_msg, align 8
  %9 = alloca %struct.saa7134_dev*, align 8
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %11 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %10, i32 0, i32 1
  %12 = load %struct.tda1004x_state*, %struct.tda1004x_state** %11, align 8
  store %struct.tda1004x_state* %12, %struct.tda1004x_state** %6, align 8
  %13 = load %struct.tda1004x_state*, %struct.tda1004x_state** %6, align 8
  %14 = getelementptr inbounds %struct.tda1004x_state, %struct.tda1004x_state* %13, i32 0, i32 1
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %7, align 4
  %18 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %8, i32 0, i32 0
  %19 = load i32, i32* %7, align 4
  store i32 %19, i32* %18, align 8
  %20 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %8, i32 0, i32 1
  store i32 2, i32* %20, align 4
  %21 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %8, i32 0, i32 2
  store i32* null, i32** %21, align 8
  %22 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %8, i32 0, i32 3
  store i32 0, i32* %22, align 8
  %23 = load i32, i32* %5, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %2
  %26 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %8, i32 0, i32 2
  store i32* getelementptr inbounds ([2 x i32], [2 x i32]* @tda8290_i2c_gate_ctrl.tda8290_close, i64 0, i64 0), i32** %26, align 8
  br label %29

27:                                               ; preds = %2
  %28 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %8, i32 0, i32 2
  store i32* getelementptr inbounds ([2 x i32], [2 x i32]* @tda8290_i2c_gate_ctrl.tda8290_open, i64 0, i64 0), i32** %28, align 8
  br label %29

29:                                               ; preds = %27, %25
  %30 = load %struct.tda1004x_state*, %struct.tda1004x_state** %6, align 8
  %31 = getelementptr inbounds %struct.tda1004x_state, %struct.tda1004x_state* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @i2c_transfer(i32 %32, %struct.i2c_msg* %8, i32 1)
  %34 = icmp ne i32 %33, 1
  br i1 %34, label %35, label %44

35:                                               ; preds = %29
  %36 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %37 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %36, i32 0, i32 0
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load %struct.saa7134_dev*, %struct.saa7134_dev** %39, align 8
  store %struct.saa7134_dev* %40, %struct.saa7134_dev** %9, align 8
  %41 = call i32 @wprintk(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %42 = load i32, i32* @EIO, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %3, align 4
  br label %46

44:                                               ; preds = %29
  %45 = call i32 @msleep(i32 20)
  store i32 0, i32* %3, align 4
  br label %46

46:                                               ; preds = %44, %35
  %47 = load i32, i32* %3, align 4
  ret i32 %47
}

declare dso_local i32 @i2c_transfer(i32, %struct.i2c_msg*, i32) #1

declare dso_local i32 @wprintk(i8*) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
