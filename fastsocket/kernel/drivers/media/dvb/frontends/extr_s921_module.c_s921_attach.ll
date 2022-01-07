; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_s921_module.c_s921_attach.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_s921_module.c_s921_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.s921_state*, i32 }
%struct.s921_state = type { %struct.dvb_frontend, %struct.TYPE_2__, %struct.i2c_adapter*, i32 }
%struct.TYPE_2__ = type { %struct.s921_state*, i32*, i32* }
%struct.s921_config = type { i32 }
%struct.i2c_adapter = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@s921_write = common dso_local global i32 0, align 4
@s921_read = common dso_local global i32 0, align 4
@ISDB_T_CMD_INIT = common dso_local global i32 0, align 4
@demod_s921 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.dvb_frontend* @s921_attach(%struct.s921_config* %0, %struct.i2c_adapter* %1) #0 {
  %3 = alloca %struct.dvb_frontend*, align 8
  %4 = alloca %struct.s921_config*, align 8
  %5 = alloca %struct.i2c_adapter*, align 8
  %6 = alloca %struct.s921_state*, align 8
  store %struct.s921_config* %0, %struct.s921_config** %4, align 8
  store %struct.i2c_adapter* %1, %struct.i2c_adapter** %5, align 8
  %7 = load i32, i32* @GFP_KERNEL, align 4
  %8 = call %struct.s921_state* @kzalloc(i32 56, i32 %7)
  store %struct.s921_state* %8, %struct.s921_state** %6, align 8
  %9 = load %struct.s921_state*, %struct.s921_state** %6, align 8
  %10 = icmp eq %struct.s921_state* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  store %struct.dvb_frontend* null, %struct.dvb_frontend** %3, align 8
  br label %45

12:                                               ; preds = %2
  %13 = load %struct.s921_config*, %struct.s921_config** %4, align 8
  %14 = getelementptr inbounds %struct.s921_config, %struct.s921_config* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.s921_state*, %struct.s921_state** %6, align 8
  %17 = getelementptr inbounds %struct.s921_state, %struct.s921_state* %16, i32 0, i32 3
  store i32 %15, i32* %17, align 8
  %18 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %19 = load %struct.s921_state*, %struct.s921_state** %6, align 8
  %20 = getelementptr inbounds %struct.s921_state, %struct.s921_state* %19, i32 0, i32 2
  store %struct.i2c_adapter* %18, %struct.i2c_adapter** %20, align 8
  %21 = load %struct.s921_state*, %struct.s921_state** %6, align 8
  %22 = getelementptr inbounds %struct.s921_state, %struct.s921_state* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 2
  store i32* @s921_write, i32** %23, align 8
  %24 = load %struct.s921_state*, %struct.s921_state** %6, align 8
  %25 = getelementptr inbounds %struct.s921_state, %struct.s921_state* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 1
  store i32* @s921_read, i32** %26, align 8
  %27 = load %struct.s921_state*, %struct.s921_state** %6, align 8
  %28 = load %struct.s921_state*, %struct.s921_state** %6, align 8
  %29 = getelementptr inbounds %struct.s921_state, %struct.s921_state* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  store %struct.s921_state* %27, %struct.s921_state** %30, align 8
  %31 = load %struct.s921_state*, %struct.s921_state** %6, align 8
  %32 = getelementptr inbounds %struct.s921_state, %struct.s921_state* %31, i32 0, i32 1
  %33 = load i32, i32* @ISDB_T_CMD_INIT, align 4
  %34 = call i32 @s921_isdb_cmd(%struct.TYPE_2__* %32, i32 %33, i32* null)
  %35 = load %struct.s921_state*, %struct.s921_state** %6, align 8
  %36 = getelementptr inbounds %struct.s921_state, %struct.s921_state* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %36, i32 0, i32 1
  %38 = call i32 @memcpy(i32* %37, i32* @demod_s921, i32 4)
  %39 = load %struct.s921_state*, %struct.s921_state** %6, align 8
  %40 = load %struct.s921_state*, %struct.s921_state** %6, align 8
  %41 = getelementptr inbounds %struct.s921_state, %struct.s921_state* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %41, i32 0, i32 0
  store %struct.s921_state* %39, %struct.s921_state** %42, align 8
  %43 = load %struct.s921_state*, %struct.s921_state** %6, align 8
  %44 = getelementptr inbounds %struct.s921_state, %struct.s921_state* %43, i32 0, i32 0
  store %struct.dvb_frontend* %44, %struct.dvb_frontend** %3, align 8
  br label %45

45:                                               ; preds = %12, %11
  %46 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  ret %struct.dvb_frontend* %46
}

declare dso_local %struct.s921_state* @kzalloc(i32, i32) #1

declare dso_local i32 @s921_isdb_cmd(%struct.TYPE_2__*, i32, i32*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
