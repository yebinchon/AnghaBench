; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/pt1/extr_va1j5jf8007s.c_va1j5jf8007s_attach.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/pt1/extr_va1j5jf8007s.c_va1j5jf8007s_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.va1j5jf8007s_state*, i32 }
%struct.va1j5jf8007s_state = type { %struct.i2c_adapter*, %struct.va1j5jf8007s_config*, %struct.dvb_frontend }
%struct.va1j5jf8007s_config = type { i32 }
%struct.i2c_adapter = type { i32 }
%struct.i2c_msg = type { i32, i32*, i64, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@va1j5jf8007s_ops = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.dvb_frontend* @va1j5jf8007s_attach(%struct.va1j5jf8007s_config* %0, %struct.i2c_adapter* %1) #0 {
  %3 = alloca %struct.dvb_frontend*, align 8
  %4 = alloca %struct.va1j5jf8007s_config*, align 8
  %5 = alloca %struct.i2c_adapter*, align 8
  %6 = alloca %struct.va1j5jf8007s_state*, align 8
  %7 = alloca %struct.dvb_frontend*, align 8
  %8 = alloca [2 x i32], align 4
  %9 = alloca %struct.i2c_msg, align 8
  store %struct.va1j5jf8007s_config* %0, %struct.va1j5jf8007s_config** %4, align 8
  store %struct.i2c_adapter* %1, %struct.i2c_adapter** %5, align 8
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.va1j5jf8007s_state* @kzalloc(i32 32, i32 %10)
  store %struct.va1j5jf8007s_state* %11, %struct.va1j5jf8007s_state** %6, align 8
  %12 = load %struct.va1j5jf8007s_state*, %struct.va1j5jf8007s_state** %6, align 8
  %13 = icmp ne %struct.va1j5jf8007s_state* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %2
  store %struct.dvb_frontend* null, %struct.dvb_frontend** %3, align 8
  br label %52

15:                                               ; preds = %2
  %16 = load %struct.va1j5jf8007s_config*, %struct.va1j5jf8007s_config** %4, align 8
  %17 = load %struct.va1j5jf8007s_state*, %struct.va1j5jf8007s_state** %6, align 8
  %18 = getelementptr inbounds %struct.va1j5jf8007s_state, %struct.va1j5jf8007s_state* %17, i32 0, i32 1
  store %struct.va1j5jf8007s_config* %16, %struct.va1j5jf8007s_config** %18, align 8
  %19 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %20 = load %struct.va1j5jf8007s_state*, %struct.va1j5jf8007s_state** %6, align 8
  %21 = getelementptr inbounds %struct.va1j5jf8007s_state, %struct.va1j5jf8007s_state* %20, i32 0, i32 0
  store %struct.i2c_adapter* %19, %struct.i2c_adapter** %21, align 8
  %22 = load %struct.va1j5jf8007s_state*, %struct.va1j5jf8007s_state** %6, align 8
  %23 = getelementptr inbounds %struct.va1j5jf8007s_state, %struct.va1j5jf8007s_state* %22, i32 0, i32 2
  store %struct.dvb_frontend* %23, %struct.dvb_frontend** %7, align 8
  %24 = load %struct.dvb_frontend*, %struct.dvb_frontend** %7, align 8
  %25 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %24, i32 0, i32 1
  %26 = call i32 @memcpy(i32* %25, i32* @va1j5jf8007s_ops, i32 4)
  %27 = load %struct.va1j5jf8007s_state*, %struct.va1j5jf8007s_state** %6, align 8
  %28 = load %struct.dvb_frontend*, %struct.dvb_frontend** %7, align 8
  %29 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %28, i32 0, i32 0
  store %struct.va1j5jf8007s_state* %27, %struct.va1j5jf8007s_state** %29, align 8
  %30 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  store i32 1, i32* %30, align 4
  %31 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 1
  store i32 128, i32* %31, align 4
  %32 = load %struct.va1j5jf8007s_state*, %struct.va1j5jf8007s_state** %6, align 8
  %33 = getelementptr inbounds %struct.va1j5jf8007s_state, %struct.va1j5jf8007s_state* %32, i32 0, i32 1
  %34 = load %struct.va1j5jf8007s_config*, %struct.va1j5jf8007s_config** %33, align 8
  %35 = getelementptr inbounds %struct.va1j5jf8007s_config, %struct.va1j5jf8007s_config* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %9, i32 0, i32 3
  store i32 %36, i32* %37, align 8
  %38 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %9, i32 0, i32 2
  store i64 0, i64* %38, align 8
  %39 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %9, i32 0, i32 0
  store i32 8, i32* %39, align 8
  %40 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  %41 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %9, i32 0, i32 1
  store i32* %40, i32** %41, align 8
  %42 = load %struct.va1j5jf8007s_state*, %struct.va1j5jf8007s_state** %6, align 8
  %43 = getelementptr inbounds %struct.va1j5jf8007s_state, %struct.va1j5jf8007s_state* %42, i32 0, i32 0
  %44 = load %struct.i2c_adapter*, %struct.i2c_adapter** %43, align 8
  %45 = call i32 @i2c_transfer(%struct.i2c_adapter* %44, %struct.i2c_msg* %9, i32 1)
  %46 = icmp ne i32 %45, 1
  br i1 %46, label %47, label %50

47:                                               ; preds = %15
  %48 = load %struct.va1j5jf8007s_state*, %struct.va1j5jf8007s_state** %6, align 8
  %49 = call i32 @kfree(%struct.va1j5jf8007s_state* %48)
  store %struct.dvb_frontend* null, %struct.dvb_frontend** %3, align 8
  br label %52

50:                                               ; preds = %15
  %51 = load %struct.dvb_frontend*, %struct.dvb_frontend** %7, align 8
  store %struct.dvb_frontend* %51, %struct.dvb_frontend** %3, align 8
  br label %52

52:                                               ; preds = %50, %47, %14
  %53 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  ret %struct.dvb_frontend* %53
}

declare dso_local %struct.va1j5jf8007s_state* @kzalloc(i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @i2c_transfer(%struct.i2c_adapter*, %struct.i2c_msg*, i32) #1

declare dso_local i32 @kfree(%struct.va1j5jf8007s_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
