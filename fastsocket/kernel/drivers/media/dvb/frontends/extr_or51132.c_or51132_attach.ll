; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_or51132.c_or51132_attach.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_or51132.c_or51132_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.or51132_state*, i32 }
%struct.or51132_state = type { i32, i32, %struct.dvb_frontend, %struct.i2c_adapter*, %struct.or51132_config* }
%struct.or51132_config = type { i32 }
%struct.i2c_adapter = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@or51132_ops = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.dvb_frontend* @or51132_attach(%struct.or51132_config* %0, %struct.i2c_adapter* %1) #0 {
  %3 = alloca %struct.dvb_frontend*, align 8
  %4 = alloca %struct.or51132_config*, align 8
  %5 = alloca %struct.i2c_adapter*, align 8
  %6 = alloca %struct.or51132_state*, align 8
  store %struct.or51132_config* %0, %struct.or51132_config** %4, align 8
  store %struct.i2c_adapter* %1, %struct.i2c_adapter** %5, align 8
  store %struct.or51132_state* null, %struct.or51132_state** %6, align 8
  %7 = load i32, i32* @GFP_KERNEL, align 4
  %8 = call %struct.or51132_state* @kzalloc(i32 40, i32 %7)
  store %struct.or51132_state* %8, %struct.or51132_state** %6, align 8
  %9 = load %struct.or51132_state*, %struct.or51132_state** %6, align 8
  %10 = icmp eq %struct.or51132_state* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  store %struct.dvb_frontend* null, %struct.dvb_frontend** %3, align 8
  br label %33

12:                                               ; preds = %2
  %13 = load %struct.or51132_config*, %struct.or51132_config** %4, align 8
  %14 = load %struct.or51132_state*, %struct.or51132_state** %6, align 8
  %15 = getelementptr inbounds %struct.or51132_state, %struct.or51132_state* %14, i32 0, i32 4
  store %struct.or51132_config* %13, %struct.or51132_config** %15, align 8
  %16 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %17 = load %struct.or51132_state*, %struct.or51132_state** %6, align 8
  %18 = getelementptr inbounds %struct.or51132_state, %struct.or51132_state* %17, i32 0, i32 3
  store %struct.i2c_adapter* %16, %struct.i2c_adapter** %18, align 8
  %19 = load %struct.or51132_state*, %struct.or51132_state** %6, align 8
  %20 = getelementptr inbounds %struct.or51132_state, %struct.or51132_state* %19, i32 0, i32 0
  store i32 -1, i32* %20, align 8
  %21 = load %struct.or51132_state*, %struct.or51132_state** %6, align 8
  %22 = getelementptr inbounds %struct.or51132_state, %struct.or51132_state* %21, i32 0, i32 1
  store i32 -1, i32* %22, align 4
  %23 = load %struct.or51132_state*, %struct.or51132_state** %6, align 8
  %24 = getelementptr inbounds %struct.or51132_state, %struct.or51132_state* %23, i32 0, i32 2
  %25 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %24, i32 0, i32 1
  %26 = call i32 @memcpy(i32* %25, i32* @or51132_ops, i32 4)
  %27 = load %struct.or51132_state*, %struct.or51132_state** %6, align 8
  %28 = load %struct.or51132_state*, %struct.or51132_state** %6, align 8
  %29 = getelementptr inbounds %struct.or51132_state, %struct.or51132_state* %28, i32 0, i32 2
  %30 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %29, i32 0, i32 0
  store %struct.or51132_state* %27, %struct.or51132_state** %30, align 8
  %31 = load %struct.or51132_state*, %struct.or51132_state** %6, align 8
  %32 = getelementptr inbounds %struct.or51132_state, %struct.or51132_state* %31, i32 0, i32 2
  store %struct.dvb_frontend* %32, %struct.dvb_frontend** %3, align 8
  br label %33

33:                                               ; preds = %12, %11
  %34 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  ret %struct.dvb_frontend* %34
}

declare dso_local %struct.or51132_state* @kzalloc(i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
