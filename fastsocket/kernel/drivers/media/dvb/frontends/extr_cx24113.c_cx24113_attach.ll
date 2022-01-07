; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_cx24113.c_cx24113_attach.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_cx24113.c_cx24113_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.cx24113_state*, %struct.TYPE_2__ }
%struct.cx24113_state = type { i32, i8*, %struct.i2c_adapter*, %struct.cx24113_config* }
%struct.TYPE_2__ = type { i32 }
%struct.cx24113_config = type { i32 }
%struct.i2c_adapter = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"Unable to kzalloc\0A\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"trying to detect myself\0A\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"CX24113 not found.\0A\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"detected CX24113 variant\0A\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"successfully detected\0A\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"unsupported device id: %x\0A\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"version: %x\0A\00", align 1
@cx24113_tuner_ops = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.dvb_frontend* @cx24113_attach(%struct.dvb_frontend* %0, %struct.cx24113_config* %1, %struct.i2c_adapter* %2) #0 {
  %4 = alloca %struct.dvb_frontend*, align 8
  %5 = alloca %struct.dvb_frontend*, align 8
  %6 = alloca %struct.cx24113_config*, align 8
  %7 = alloca %struct.i2c_adapter*, align 8
  %8 = alloca %struct.cx24113_state*, align 8
  %9 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %5, align 8
  store %struct.cx24113_config* %1, %struct.cx24113_config** %6, align 8
  store %struct.i2c_adapter* %2, %struct.i2c_adapter** %7, align 8
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.cx24113_state* @kzalloc(i32 32, i32 %10)
  store %struct.cx24113_state* %11, %struct.cx24113_state** %8, align 8
  %12 = load %struct.cx24113_state*, %struct.cx24113_state** %8, align 8
  %13 = icmp eq %struct.cx24113_state* %12, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %3
  %15 = call i32 (i8*, ...) @err(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  br label %64

16:                                               ; preds = %3
  %17 = load %struct.cx24113_config*, %struct.cx24113_config** %6, align 8
  %18 = load %struct.cx24113_state*, %struct.cx24113_state** %8, align 8
  %19 = getelementptr inbounds %struct.cx24113_state, %struct.cx24113_state* %18, i32 0, i32 3
  store %struct.cx24113_config* %17, %struct.cx24113_config** %19, align 8
  %20 = load %struct.i2c_adapter*, %struct.i2c_adapter** %7, align 8
  %21 = load %struct.cx24113_state*, %struct.cx24113_state** %8, align 8
  %22 = getelementptr inbounds %struct.cx24113_state, %struct.cx24113_state* %21, i32 0, i32 2
  store %struct.i2c_adapter* %20, %struct.i2c_adapter** %22, align 8
  %23 = call i32 (i8*, ...) @info(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %24 = load %struct.cx24113_state*, %struct.cx24113_state** %8, align 8
  %25 = call i8* @cx24113_readreg(%struct.cx24113_state* %24, i32 0)
  %26 = load %struct.cx24113_state*, %struct.cx24113_state** %8, align 8
  %27 = call i8* @cx24113_readreg(%struct.cx24113_state* %26, i32 0)
  %28 = ptrtoint i8* %27 to i32
  store i32 %28, i32* %9, align 4
  %29 = load i32, i32* %9, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %16
  %32 = call i32 (i8*, ...) @info(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  br label %64

33:                                               ; preds = %16
  %34 = load i32, i32* %9, align 4
  %35 = load %struct.cx24113_state*, %struct.cx24113_state** %8, align 8
  %36 = getelementptr inbounds %struct.cx24113_state, %struct.cx24113_state* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 8
  %37 = load i32, i32* %9, align 4
  switch i32 %37, label %42 [
    i32 67, label %38
    i32 128, label %40
  ]

38:                                               ; preds = %33
  %39 = call i32 (i8*, ...) @info(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  br label %47

40:                                               ; preds = %33
  %41 = call i32 (i8*, ...) @info(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0))
  br label %47

42:                                               ; preds = %33
  %43 = load %struct.cx24113_state*, %struct.cx24113_state** %8, align 8
  %44 = getelementptr inbounds %struct.cx24113_state, %struct.cx24113_state* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = call i32 (i8*, ...) @err(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0), i32 %45)
  br label %64

47:                                               ; preds = %40, %38
  %48 = load %struct.cx24113_state*, %struct.cx24113_state** %8, align 8
  %49 = call i8* @cx24113_readreg(%struct.cx24113_state* %48, i32 1)
  %50 = load %struct.cx24113_state*, %struct.cx24113_state** %8, align 8
  %51 = getelementptr inbounds %struct.cx24113_state, %struct.cx24113_state* %50, i32 0, i32 1
  store i8* %49, i8** %51, align 8
  %52 = load %struct.cx24113_state*, %struct.cx24113_state** %8, align 8
  %53 = getelementptr inbounds %struct.cx24113_state, %struct.cx24113_state* %52, i32 0, i32 1
  %54 = load i8*, i8** %53, align 8
  %55 = call i32 (i8*, ...) @info(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0), i8* %54)
  %56 = load %struct.dvb_frontend*, %struct.dvb_frontend** %5, align 8
  %57 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = call i32 @memcpy(i32* %58, i32* @cx24113_tuner_ops, i32 4)
  %60 = load %struct.cx24113_state*, %struct.cx24113_state** %8, align 8
  %61 = load %struct.dvb_frontend*, %struct.dvb_frontend** %5, align 8
  %62 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %61, i32 0, i32 0
  store %struct.cx24113_state* %60, %struct.cx24113_state** %62, align 8
  %63 = load %struct.dvb_frontend*, %struct.dvb_frontend** %5, align 8
  store %struct.dvb_frontend* %63, %struct.dvb_frontend** %4, align 8
  br label %67

64:                                               ; preds = %42, %31, %14
  %65 = load %struct.cx24113_state*, %struct.cx24113_state** %8, align 8
  %66 = call i32 @kfree(%struct.cx24113_state* %65)
  store %struct.dvb_frontend* null, %struct.dvb_frontend** %4, align 8
  br label %67

67:                                               ; preds = %64, %47
  %68 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  ret %struct.dvb_frontend* %68
}

declare dso_local %struct.cx24113_state* @kzalloc(i32, i32) #1

declare dso_local i32 @err(i8*, ...) #1

declare dso_local i32 @info(i8*, ...) #1

declare dso_local i8* @cx24113_readreg(%struct.cx24113_state*, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @kfree(%struct.cx24113_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
