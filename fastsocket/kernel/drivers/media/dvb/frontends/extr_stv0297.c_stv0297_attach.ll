; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_stv0297.c_stv0297_attach.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_stv0297.c_stv0297_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.stv0297_state*, i32 }
%struct.stv0297_state = type { %struct.dvb_frontend, i64, i64, %struct.i2c_adapter*, %struct.stv0297_config* }
%struct.stv0297_config = type { i32 }
%struct.i2c_adapter = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@stv0297_ops = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.dvb_frontend* @stv0297_attach(%struct.stv0297_config* %0, %struct.i2c_adapter* %1) #0 {
  %3 = alloca %struct.dvb_frontend*, align 8
  %4 = alloca %struct.stv0297_config*, align 8
  %5 = alloca %struct.i2c_adapter*, align 8
  %6 = alloca %struct.stv0297_state*, align 8
  store %struct.stv0297_config* %0, %struct.stv0297_config** %4, align 8
  store %struct.i2c_adapter* %1, %struct.i2c_adapter** %5, align 8
  store %struct.stv0297_state* null, %struct.stv0297_state** %6, align 8
  %7 = load i32, i32* @GFP_KERNEL, align 4
  %8 = call %struct.stv0297_state* @kzalloc(i32 48, i32 %7)
  store %struct.stv0297_state* %8, %struct.stv0297_state** %6, align 8
  %9 = load %struct.stv0297_state*, %struct.stv0297_state** %6, align 8
  %10 = icmp eq %struct.stv0297_state* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  br label %39

12:                                               ; preds = %2
  %13 = load %struct.stv0297_config*, %struct.stv0297_config** %4, align 8
  %14 = load %struct.stv0297_state*, %struct.stv0297_state** %6, align 8
  %15 = getelementptr inbounds %struct.stv0297_state, %struct.stv0297_state* %14, i32 0, i32 4
  store %struct.stv0297_config* %13, %struct.stv0297_config** %15, align 8
  %16 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %17 = load %struct.stv0297_state*, %struct.stv0297_state** %6, align 8
  %18 = getelementptr inbounds %struct.stv0297_state, %struct.stv0297_state* %17, i32 0, i32 3
  store %struct.i2c_adapter* %16, %struct.i2c_adapter** %18, align 8
  %19 = load %struct.stv0297_state*, %struct.stv0297_state** %6, align 8
  %20 = getelementptr inbounds %struct.stv0297_state, %struct.stv0297_state* %19, i32 0, i32 2
  store i64 0, i64* %20, align 8
  %21 = load %struct.stv0297_state*, %struct.stv0297_state** %6, align 8
  %22 = getelementptr inbounds %struct.stv0297_state, %struct.stv0297_state* %21, i32 0, i32 1
  store i64 0, i64* %22, align 8
  %23 = load %struct.stv0297_state*, %struct.stv0297_state** %6, align 8
  %24 = call i32 @stv0297_readreg(%struct.stv0297_state* %23, i32 128)
  %25 = and i32 %24, 112
  %26 = icmp ne i32 %25, 32
  br i1 %26, label %27, label %28

27:                                               ; preds = %12
  br label %39

28:                                               ; preds = %12
  %29 = load %struct.stv0297_state*, %struct.stv0297_state** %6, align 8
  %30 = getelementptr inbounds %struct.stv0297_state, %struct.stv0297_state* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %30, i32 0, i32 1
  %32 = call i32 @memcpy(i32* %31, i32* @stv0297_ops, i32 4)
  %33 = load %struct.stv0297_state*, %struct.stv0297_state** %6, align 8
  %34 = load %struct.stv0297_state*, %struct.stv0297_state** %6, align 8
  %35 = getelementptr inbounds %struct.stv0297_state, %struct.stv0297_state* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %35, i32 0, i32 0
  store %struct.stv0297_state* %33, %struct.stv0297_state** %36, align 8
  %37 = load %struct.stv0297_state*, %struct.stv0297_state** %6, align 8
  %38 = getelementptr inbounds %struct.stv0297_state, %struct.stv0297_state* %37, i32 0, i32 0
  store %struct.dvb_frontend* %38, %struct.dvb_frontend** %3, align 8
  br label %42

39:                                               ; preds = %27, %11
  %40 = load %struct.stv0297_state*, %struct.stv0297_state** %6, align 8
  %41 = call i32 @kfree(%struct.stv0297_state* %40)
  store %struct.dvb_frontend* null, %struct.dvb_frontend** %3, align 8
  br label %42

42:                                               ; preds = %39, %28
  %43 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  ret %struct.dvb_frontend* %43
}

declare dso_local %struct.stv0297_state* @kzalloc(i32, i32) #1

declare dso_local i32 @stv0297_readreg(%struct.stv0297_state*, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @kfree(%struct.stv0297_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
