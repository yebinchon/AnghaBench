; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_lgdt3304.c_lgdt3304_attach.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_lgdt3304.c_lgdt3304_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.lgdt3304_state*, i32 }
%struct.lgdt3304_state = type { %struct.dvb_frontend, %struct.i2c_adapter*, i32 }
%struct.lgdt3304_config = type { i32 }
%struct.i2c_adapter = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@demod_lgdt3304 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.dvb_frontend* @lgdt3304_attach(%struct.lgdt3304_config* %0, %struct.i2c_adapter* %1) #0 {
  %3 = alloca %struct.dvb_frontend*, align 8
  %4 = alloca %struct.lgdt3304_config*, align 8
  %5 = alloca %struct.i2c_adapter*, align 8
  %6 = alloca %struct.lgdt3304_state*, align 8
  store %struct.lgdt3304_config* %0, %struct.lgdt3304_config** %4, align 8
  store %struct.i2c_adapter* %1, %struct.i2c_adapter** %5, align 8
  %7 = load i32, i32* @GFP_KERNEL, align 4
  %8 = call %struct.lgdt3304_state* @kzalloc(i32 32, i32 %7)
  store %struct.lgdt3304_state* %8, %struct.lgdt3304_state** %6, align 8
  %9 = load %struct.lgdt3304_state*, %struct.lgdt3304_state** %6, align 8
  %10 = icmp eq %struct.lgdt3304_state* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  store %struct.dvb_frontend* null, %struct.dvb_frontend** %3, align 8
  br label %31

12:                                               ; preds = %2
  %13 = load %struct.lgdt3304_config*, %struct.lgdt3304_config** %4, align 8
  %14 = getelementptr inbounds %struct.lgdt3304_config, %struct.lgdt3304_config* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.lgdt3304_state*, %struct.lgdt3304_state** %6, align 8
  %17 = getelementptr inbounds %struct.lgdt3304_state, %struct.lgdt3304_state* %16, i32 0, i32 2
  store i32 %15, i32* %17, align 8
  %18 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %19 = load %struct.lgdt3304_state*, %struct.lgdt3304_state** %6, align 8
  %20 = getelementptr inbounds %struct.lgdt3304_state, %struct.lgdt3304_state* %19, i32 0, i32 1
  store %struct.i2c_adapter* %18, %struct.i2c_adapter** %20, align 8
  %21 = load %struct.lgdt3304_state*, %struct.lgdt3304_state** %6, align 8
  %22 = getelementptr inbounds %struct.lgdt3304_state, %struct.lgdt3304_state* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %22, i32 0, i32 1
  %24 = call i32 @memcpy(i32* %23, i32* @demod_lgdt3304, i32 4)
  %25 = load %struct.lgdt3304_state*, %struct.lgdt3304_state** %6, align 8
  %26 = load %struct.lgdt3304_state*, %struct.lgdt3304_state** %6, align 8
  %27 = getelementptr inbounds %struct.lgdt3304_state, %struct.lgdt3304_state* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %27, i32 0, i32 0
  store %struct.lgdt3304_state* %25, %struct.lgdt3304_state** %28, align 8
  %29 = load %struct.lgdt3304_state*, %struct.lgdt3304_state** %6, align 8
  %30 = getelementptr inbounds %struct.lgdt3304_state, %struct.lgdt3304_state* %29, i32 0, i32 0
  store %struct.dvb_frontend* %30, %struct.dvb_frontend** %3, align 8
  br label %31

31:                                               ; preds = %12, %11
  %32 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  ret %struct.dvb_frontend* %32
}

declare dso_local %struct.lgdt3304_state* @kzalloc(i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
