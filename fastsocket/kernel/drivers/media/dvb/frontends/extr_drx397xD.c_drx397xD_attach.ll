; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_drx397xD.c_drx397xD_attach.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_drx397xD.c_drx397xD_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drx397xD_config = type { i32 }
%struct.dvb_frontend = type { %struct.drx397xD_state*, i32 }
%struct.drx397xD_state = type { %struct.dvb_frontend, i32, %struct.i2c_adapter* }
%struct.i2c_adapter = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@drx397x_ops = common dso_local global %struct.drx397xD_config zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.dvb_frontend* @drx397xD_attach(%struct.drx397xD_config* %0, %struct.i2c_adapter* %1) #0 {
  %3 = alloca %struct.dvb_frontend*, align 8
  %4 = alloca %struct.drx397xD_config*, align 8
  %5 = alloca %struct.i2c_adapter*, align 8
  %6 = alloca %struct.drx397xD_state*, align 8
  store %struct.drx397xD_config* %0, %struct.drx397xD_config** %4, align 8
  store %struct.i2c_adapter* %1, %struct.i2c_adapter** %5, align 8
  %7 = load i32, i32* @GFP_KERNEL, align 4
  %8 = call %struct.drx397xD_state* @kzalloc(i32 32, i32 %7)
  store %struct.drx397xD_state* %8, %struct.drx397xD_state** %6, align 8
  %9 = load %struct.drx397xD_state*, %struct.drx397xD_state** %6, align 8
  %10 = icmp ne %struct.drx397xD_state* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  br label %35

12:                                               ; preds = %2
  %13 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %14 = load %struct.drx397xD_state*, %struct.drx397xD_state** %6, align 8
  %15 = getelementptr inbounds %struct.drx397xD_state, %struct.drx397xD_state* %14, i32 0, i32 2
  store %struct.i2c_adapter* %13, %struct.i2c_adapter** %15, align 8
  %16 = load %struct.drx397xD_state*, %struct.drx397xD_state** %6, align 8
  %17 = getelementptr inbounds %struct.drx397xD_state, %struct.drx397xD_state* %16, i32 0, i32 1
  %18 = load %struct.drx397xD_config*, %struct.drx397xD_config** %4, align 8
  %19 = call i32 @memcpy(i32* %17, %struct.drx397xD_config* %18, i32 4)
  %20 = load %struct.drx397xD_state*, %struct.drx397xD_state** %6, align 8
  %21 = call i64 @RD16(%struct.drx397xD_state* %20, i32 37814297)
  %22 = icmp slt i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %12
  br label %35

24:                                               ; preds = %12
  %25 = load %struct.drx397xD_state*, %struct.drx397xD_state** %6, align 8
  %26 = getelementptr inbounds %struct.drx397xD_state, %struct.drx397xD_state* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %26, i32 0, i32 1
  %28 = call i32 @memcpy(i32* %27, %struct.drx397xD_config* @drx397x_ops, i32 4)
  %29 = load %struct.drx397xD_state*, %struct.drx397xD_state** %6, align 8
  %30 = load %struct.drx397xD_state*, %struct.drx397xD_state** %6, align 8
  %31 = getelementptr inbounds %struct.drx397xD_state, %struct.drx397xD_state* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %31, i32 0, i32 0
  store %struct.drx397xD_state* %29, %struct.drx397xD_state** %32, align 8
  %33 = load %struct.drx397xD_state*, %struct.drx397xD_state** %6, align 8
  %34 = getelementptr inbounds %struct.drx397xD_state, %struct.drx397xD_state* %33, i32 0, i32 0
  store %struct.dvb_frontend* %34, %struct.dvb_frontend** %3, align 8
  br label %38

35:                                               ; preds = %23, %11
  %36 = load %struct.drx397xD_state*, %struct.drx397xD_state** %6, align 8
  %37 = call i32 @kfree(%struct.drx397xD_state* %36)
  store %struct.dvb_frontend* null, %struct.dvb_frontend** %3, align 8
  br label %38

38:                                               ; preds = %35, %24
  %39 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  ret %struct.dvb_frontend* %39
}

declare dso_local %struct.drx397xD_state* @kzalloc(i32, i32) #1

declare dso_local i32 @memcpy(i32*, %struct.drx397xD_config*, i32) #1

declare dso_local i64 @RD16(%struct.drx397xD_state*, i32) #1

declare dso_local i32 @kfree(%struct.drx397xD_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
