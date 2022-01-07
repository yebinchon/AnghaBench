; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_dib8000.c_dib8000_attach.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_dib8000.c_dib8000_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dib8000_config = type { %struct.TYPE_4__*, i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.dvb_frontend = type { %struct.TYPE_5__, %struct.dib8000_state* }
%struct.TYPE_5__ = type { i64 }
%struct.dib8000_state = type { %struct.TYPE_6__, i32, i32, %struct.dvb_frontend, %struct.TYPE_5__, i32, i32 }
%struct.TYPE_6__ = type { i32, %struct.i2c_adapter* }
%struct.i2c_adapter = type { i32 }

@.str = private unnamed_addr constant [15 x i8] c"dib8000_attach\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@OUTMODE_MPEG2_SERIAL = common dso_local global i64 0, align 8
@OUTMODE_MPEG2_PAR_GATED_CLK = common dso_local global i64 0, align 8
@OUTMODE_MPEG2_FIFO = common dso_local global i64 0, align 8
@dib8000_ops = common dso_local global %struct.dib8000_config zeroinitializer, align 8
@DIB8000 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.dvb_frontend* @dib8000_attach(%struct.i2c_adapter* %0, i32 %1, %struct.dib8000_config* %2) #0 {
  %4 = alloca %struct.dvb_frontend*, align 8
  %5 = alloca %struct.i2c_adapter*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.dib8000_config*, align 8
  %8 = alloca %struct.dvb_frontend*, align 8
  %9 = alloca %struct.dib8000_state*, align 8
  store %struct.i2c_adapter* %0, %struct.i2c_adapter** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.dib8000_config* %2, %struct.dib8000_config** %7, align 8
  %10 = call i32 @dprintk(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.dib8000_state* @kzalloc(i32 56, i32 %11)
  store %struct.dib8000_state* %12, %struct.dib8000_state** %9, align 8
  %13 = load %struct.dib8000_state*, %struct.dib8000_state** %9, align 8
  %14 = icmp eq %struct.dib8000_state* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %3
  store %struct.dvb_frontend* null, %struct.dvb_frontend** %4, align 8
  br label %104

16:                                               ; preds = %3
  %17 = load %struct.dib8000_state*, %struct.dib8000_state** %9, align 8
  %18 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %17, i32 0, i32 4
  %19 = load %struct.dib8000_config*, %struct.dib8000_config** %7, align 8
  %20 = call i32 @memcpy(%struct.TYPE_5__* %18, %struct.dib8000_config* %19, i32 16)
  %21 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %22 = load %struct.dib8000_state*, %struct.dib8000_state** %9, align 8
  %23 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 1
  store %struct.i2c_adapter* %21, %struct.i2c_adapter** %24, align 8
  %25 = load i32, i32* %6, align 4
  %26 = load %struct.dib8000_state*, %struct.dib8000_state** %9, align 8
  %27 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  store i32 %25, i32* %28, align 8
  %29 = load %struct.dib8000_config*, %struct.dib8000_config** %7, align 8
  %30 = getelementptr inbounds %struct.dib8000_config, %struct.dib8000_config* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.dib8000_state*, %struct.dib8000_state** %9, align 8
  %33 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %32, i32 0, i32 6
  store i32 %31, i32* %33, align 4
  %34 = load %struct.dib8000_config*, %struct.dib8000_config** %7, align 8
  %35 = getelementptr inbounds %struct.dib8000_config, %struct.dib8000_config* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.dib8000_state*, %struct.dib8000_state** %9, align 8
  %38 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %37, i32 0, i32 5
  store i32 %36, i32* %38, align 8
  %39 = load %struct.dib8000_state*, %struct.dib8000_state** %9, align 8
  %40 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %39, i32 0, i32 4
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @OUTMODE_MPEG2_SERIAL, align 8
  %44 = icmp ne i64 %42, %43
  br i1 %44, label %45, label %57

45:                                               ; preds = %16
  %46 = load %struct.dib8000_state*, %struct.dib8000_state** %9, align 8
  %47 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %46, i32 0, i32 4
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @OUTMODE_MPEG2_PAR_GATED_CLK, align 8
  %51 = icmp ne i64 %49, %50
  br i1 %51, label %52, label %57

52:                                               ; preds = %45
  %53 = load i64, i64* @OUTMODE_MPEG2_FIFO, align 8
  %54 = load %struct.dib8000_state*, %struct.dib8000_state** %9, align 8
  %55 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %54, i32 0, i32 4
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 0
  store i64 %53, i64* %56, align 8
  br label %57

57:                                               ; preds = %52, %45, %16
  %58 = load %struct.dib8000_state*, %struct.dib8000_state** %9, align 8
  %59 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %58, i32 0, i32 3
  store %struct.dvb_frontend* %59, %struct.dvb_frontend** %8, align 8
  %60 = load %struct.dib8000_state*, %struct.dib8000_state** %9, align 8
  %61 = load %struct.dvb_frontend*, %struct.dvb_frontend** %8, align 8
  %62 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %61, i32 0, i32 1
  store %struct.dib8000_state* %60, %struct.dib8000_state** %62, align 8
  %63 = load %struct.dib8000_state*, %struct.dib8000_state** %9, align 8
  %64 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %63, i32 0, i32 3
  %65 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %64, i32 0, i32 0
  %66 = call i32 @memcpy(%struct.TYPE_5__* %65, %struct.dib8000_config* @dib8000_ops, i32 4)
  %67 = load %struct.dib8000_config*, %struct.dib8000_config** %7, align 8
  %68 = getelementptr inbounds %struct.dib8000_config, %struct.dib8000_config* %67, i32 0, i32 0
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.dib8000_state*, %struct.dib8000_state** %9, align 8
  %73 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %72, i32 0, i32 2
  store i32 %71, i32* %73, align 4
  %74 = load %struct.dib8000_state*, %struct.dib8000_state** %9, align 8
  %75 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %74, i32 0, i32 0
  %76 = call i64 @dib8000_identify(%struct.TYPE_6__* %75)
  %77 = icmp eq i64 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %57
  br label %101

79:                                               ; preds = %57
  %80 = load %struct.dib8000_state*, %struct.dib8000_state** %9, align 8
  %81 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %80, i32 0, i32 1
  %82 = load i32, i32* @DIB8000, align 4
  %83 = load %struct.dib8000_state*, %struct.dib8000_state** %9, align 8
  %84 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 1
  %86 = load %struct.i2c_adapter*, %struct.i2c_adapter** %85, align 8
  %87 = load %struct.dib8000_state*, %struct.dib8000_state** %9, align 8
  %88 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = call i32 @dibx000_init_i2c_master(i32* %81, i32 %82, %struct.i2c_adapter* %86, i32 %90)
  %92 = load %struct.dvb_frontend*, %struct.dvb_frontend** %8, align 8
  %93 = call i32 @dib8000_reset(%struct.dvb_frontend* %92)
  %94 = load %struct.dib8000_state*, %struct.dib8000_state** %9, align 8
  %95 = load %struct.dib8000_state*, %struct.dib8000_state** %9, align 8
  %96 = call i32 @dib8000_read_word(%struct.dib8000_state* %95, i32 285)
  %97 = and i32 %96, -97
  %98 = or i32 %97, 96
  %99 = call i32 @dib8000_write_word(%struct.dib8000_state* %94, i32 285, i32 %98)
  %100 = load %struct.dvb_frontend*, %struct.dvb_frontend** %8, align 8
  store %struct.dvb_frontend* %100, %struct.dvb_frontend** %4, align 8
  br label %104

101:                                              ; preds = %78
  %102 = load %struct.dib8000_state*, %struct.dib8000_state** %9, align 8
  %103 = call i32 @kfree(%struct.dib8000_state* %102)
  store %struct.dvb_frontend* null, %struct.dvb_frontend** %4, align 8
  br label %104

104:                                              ; preds = %101, %79, %15
  %105 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  ret %struct.dvb_frontend* %105
}

declare dso_local i32 @dprintk(i8*) #1

declare dso_local %struct.dib8000_state* @kzalloc(i32, i32) #1

declare dso_local i32 @memcpy(%struct.TYPE_5__*, %struct.dib8000_config*, i32) #1

declare dso_local i64 @dib8000_identify(%struct.TYPE_6__*) #1

declare dso_local i32 @dibx000_init_i2c_master(i32*, i32, %struct.i2c_adapter*, i32) #1

declare dso_local i32 @dib8000_reset(%struct.dvb_frontend*) #1

declare dso_local i32 @dib8000_write_word(%struct.dib8000_state*, i32, i32) #1

declare dso_local i32 @dib8000_read_word(%struct.dib8000_state*, i32) #1

declare dso_local i32 @kfree(%struct.dib8000_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
