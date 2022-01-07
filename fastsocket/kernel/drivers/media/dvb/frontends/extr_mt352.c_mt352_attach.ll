; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_mt352.c_mt352_attach.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_mt352.c_mt352_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt352_config = type { i32 }
%struct.dvb_frontend = type { %struct.mt352_state*, i32 }
%struct.mt352_state = type { %struct.dvb_frontend, i32, %struct.i2c_adapter* }
%struct.i2c_adapter = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@CHIP_ID = common dso_local global i32 0, align 4
@ID_MT352 = common dso_local global i64 0, align 8
@mt352_ops = common dso_local global %struct.mt352_config zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.dvb_frontend* @mt352_attach(%struct.mt352_config* %0, %struct.i2c_adapter* %1) #0 {
  %3 = alloca %struct.dvb_frontend*, align 8
  %4 = alloca %struct.mt352_config*, align 8
  %5 = alloca %struct.i2c_adapter*, align 8
  %6 = alloca %struct.mt352_state*, align 8
  store %struct.mt352_config* %0, %struct.mt352_config** %4, align 8
  store %struct.i2c_adapter* %1, %struct.i2c_adapter** %5, align 8
  store %struct.mt352_state* null, %struct.mt352_state** %6, align 8
  %7 = load i32, i32* @GFP_KERNEL, align 4
  %8 = call %struct.mt352_state* @kzalloc(i32 32, i32 %7)
  store %struct.mt352_state* %8, %struct.mt352_state** %6, align 8
  %9 = load %struct.mt352_state*, %struct.mt352_state** %6, align 8
  %10 = icmp eq %struct.mt352_state* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  br label %37

12:                                               ; preds = %2
  %13 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %14 = load %struct.mt352_state*, %struct.mt352_state** %6, align 8
  %15 = getelementptr inbounds %struct.mt352_state, %struct.mt352_state* %14, i32 0, i32 2
  store %struct.i2c_adapter* %13, %struct.i2c_adapter** %15, align 8
  %16 = load %struct.mt352_state*, %struct.mt352_state** %6, align 8
  %17 = getelementptr inbounds %struct.mt352_state, %struct.mt352_state* %16, i32 0, i32 1
  %18 = load %struct.mt352_config*, %struct.mt352_config** %4, align 8
  %19 = call i32 @memcpy(i32* %17, %struct.mt352_config* %18, i32 4)
  %20 = load %struct.mt352_state*, %struct.mt352_state** %6, align 8
  %21 = load i32, i32* @CHIP_ID, align 4
  %22 = call i64 @mt352_read_register(%struct.mt352_state* %20, i32 %21)
  %23 = load i64, i64* @ID_MT352, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %12
  br label %37

26:                                               ; preds = %12
  %27 = load %struct.mt352_state*, %struct.mt352_state** %6, align 8
  %28 = getelementptr inbounds %struct.mt352_state, %struct.mt352_state* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %28, i32 0, i32 1
  %30 = call i32 @memcpy(i32* %29, %struct.mt352_config* @mt352_ops, i32 4)
  %31 = load %struct.mt352_state*, %struct.mt352_state** %6, align 8
  %32 = load %struct.mt352_state*, %struct.mt352_state** %6, align 8
  %33 = getelementptr inbounds %struct.mt352_state, %struct.mt352_state* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %33, i32 0, i32 0
  store %struct.mt352_state* %31, %struct.mt352_state** %34, align 8
  %35 = load %struct.mt352_state*, %struct.mt352_state** %6, align 8
  %36 = getelementptr inbounds %struct.mt352_state, %struct.mt352_state* %35, i32 0, i32 0
  store %struct.dvb_frontend* %36, %struct.dvb_frontend** %3, align 8
  br label %40

37:                                               ; preds = %25, %11
  %38 = load %struct.mt352_state*, %struct.mt352_state** %6, align 8
  %39 = call i32 @kfree(%struct.mt352_state* %38)
  store %struct.dvb_frontend* null, %struct.dvb_frontend** %3, align 8
  br label %40

40:                                               ; preds = %37, %26
  %41 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  ret %struct.dvb_frontend* %41
}

declare dso_local %struct.mt352_state* @kzalloc(i32, i32) #1

declare dso_local i32 @memcpy(i32*, %struct.mt352_config*, i32) #1

declare dso_local i64 @mt352_read_register(%struct.mt352_state*, i32) #1

declare dso_local i32 @kfree(%struct.mt352_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
