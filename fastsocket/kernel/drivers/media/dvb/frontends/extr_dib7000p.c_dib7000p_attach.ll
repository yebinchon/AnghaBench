; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_dib7000p.c_dib7000p_attach.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_dib7000p.c_dib7000p_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dib7000p_config = type { i32, i32 }
%struct.dvb_frontend = type { %struct.TYPE_9__, %struct.dib7000p_state* }
%struct.TYPE_9__ = type { i64 }
%struct.dib7000p_state = type { i32, %struct.i2c_adapter*, %struct.TYPE_10__, %struct.dvb_frontend, %struct.TYPE_9__, i32, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.i2c_adapter = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@OUTMODE_MPEG2_SERIAL = common dso_local global i64 0, align 8
@OUTMODE_MPEG2_PAR_GATED_CLK = common dso_local global i64 0, align 8
@OUTMODE_MPEG2_FIFO = common dso_local global i64 0, align 8
@dib7000p_ops = common dso_local global %struct.dib7000p_config zeroinitializer, align 4
@DIB7000P = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.dvb_frontend* @dib7000p_attach(%struct.i2c_adapter* %0, i32 %1, %struct.dib7000p_config* %2) #0 {
  %4 = alloca %struct.dvb_frontend*, align 8
  %5 = alloca %struct.i2c_adapter*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.dib7000p_config*, align 8
  %8 = alloca %struct.dvb_frontend*, align 8
  %9 = alloca %struct.dib7000p_state*, align 8
  store %struct.i2c_adapter* %0, %struct.i2c_adapter** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.dib7000p_config* %2, %struct.dib7000p_config** %7, align 8
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.dib7000p_state* @kzalloc(i32 56, i32 %10)
  store %struct.dib7000p_state* %11, %struct.dib7000p_state** %9, align 8
  %12 = load %struct.dib7000p_state*, %struct.dib7000p_state** %9, align 8
  %13 = icmp eq %struct.dib7000p_state* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %3
  store %struct.dvb_frontend* null, %struct.dvb_frontend** %4, align 8
  br label %96

15:                                               ; preds = %3
  %16 = load %struct.dib7000p_state*, %struct.dib7000p_state** %9, align 8
  %17 = getelementptr inbounds %struct.dib7000p_state, %struct.dib7000p_state* %16, i32 0, i32 4
  %18 = load %struct.dib7000p_config*, %struct.dib7000p_config** %7, align 8
  %19 = call i32 @memcpy(%struct.TYPE_9__* %17, %struct.dib7000p_config* %18, i32 8)
  %20 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %21 = load %struct.dib7000p_state*, %struct.dib7000p_state** %9, align 8
  %22 = getelementptr inbounds %struct.dib7000p_state, %struct.dib7000p_state* %21, i32 0, i32 1
  store %struct.i2c_adapter* %20, %struct.i2c_adapter** %22, align 8
  %23 = load i32, i32* %6, align 4
  %24 = load %struct.dib7000p_state*, %struct.dib7000p_state** %9, align 8
  %25 = getelementptr inbounds %struct.dib7000p_state, %struct.dib7000p_state* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 8
  %26 = load %struct.dib7000p_config*, %struct.dib7000p_config** %7, align 8
  %27 = getelementptr inbounds %struct.dib7000p_config, %struct.dib7000p_config* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.dib7000p_state*, %struct.dib7000p_state** %9, align 8
  %30 = getelementptr inbounds %struct.dib7000p_state, %struct.dib7000p_state* %29, i32 0, i32 6
  store i32 %28, i32* %30, align 4
  %31 = load %struct.dib7000p_config*, %struct.dib7000p_config** %7, align 8
  %32 = getelementptr inbounds %struct.dib7000p_config, %struct.dib7000p_config* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.dib7000p_state*, %struct.dib7000p_state** %9, align 8
  %35 = getelementptr inbounds %struct.dib7000p_state, %struct.dib7000p_state* %34, i32 0, i32 5
  store i32 %33, i32* %35, align 8
  %36 = load %struct.dib7000p_state*, %struct.dib7000p_state** %9, align 8
  %37 = getelementptr inbounds %struct.dib7000p_state, %struct.dib7000p_state* %36, i32 0, i32 4
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @OUTMODE_MPEG2_SERIAL, align 8
  %41 = icmp ne i64 %39, %40
  br i1 %41, label %42, label %54

42:                                               ; preds = %15
  %43 = load %struct.dib7000p_state*, %struct.dib7000p_state** %9, align 8
  %44 = getelementptr inbounds %struct.dib7000p_state, %struct.dib7000p_state* %43, i32 0, i32 4
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @OUTMODE_MPEG2_PAR_GATED_CLK, align 8
  %48 = icmp ne i64 %46, %47
  br i1 %48, label %49, label %54

49:                                               ; preds = %42
  %50 = load i64, i64* @OUTMODE_MPEG2_FIFO, align 8
  %51 = load %struct.dib7000p_state*, %struct.dib7000p_state** %9, align 8
  %52 = getelementptr inbounds %struct.dib7000p_state, %struct.dib7000p_state* %51, i32 0, i32 4
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 0
  store i64 %50, i64* %53, align 8
  br label %54

54:                                               ; preds = %49, %42, %15
  %55 = load %struct.dib7000p_state*, %struct.dib7000p_state** %9, align 8
  %56 = getelementptr inbounds %struct.dib7000p_state, %struct.dib7000p_state* %55, i32 0, i32 3
  store %struct.dvb_frontend* %56, %struct.dvb_frontend** %8, align 8
  %57 = load %struct.dib7000p_state*, %struct.dib7000p_state** %9, align 8
  %58 = load %struct.dvb_frontend*, %struct.dvb_frontend** %8, align 8
  %59 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %58, i32 0, i32 1
  store %struct.dib7000p_state* %57, %struct.dib7000p_state** %59, align 8
  %60 = load %struct.dib7000p_state*, %struct.dib7000p_state** %9, align 8
  %61 = getelementptr inbounds %struct.dib7000p_state, %struct.dib7000p_state* %60, i32 0, i32 3
  %62 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %61, i32 0, i32 0
  %63 = call i32 @memcpy(%struct.TYPE_9__* %62, %struct.dib7000p_config* @dib7000p_ops, i32 4)
  %64 = load %struct.dib7000p_state*, %struct.dib7000p_state** %9, align 8
  %65 = call i32 @dib7000p_write_word(%struct.dib7000p_state* %64, i32 1287, i32 3)
  %66 = load %struct.dib7000p_state*, %struct.dib7000p_state** %9, align 8
  %67 = call i64 @dib7000p_identify(%struct.dib7000p_state* %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %54
  br label %93

70:                                               ; preds = %54
  %71 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %72 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.dib7000p_state*, %struct.dib7000p_state** %9, align 8
  %76 = getelementptr inbounds %struct.dib7000p_state, %struct.dib7000p_state* %75, i32 0, i32 2
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 0
  store i32 %74, i32* %79, align 8
  %80 = load %struct.dib7000p_state*, %struct.dib7000p_state** %9, align 8
  %81 = getelementptr inbounds %struct.dib7000p_state, %struct.dib7000p_state* %80, i32 0, i32 2
  %82 = load i32, i32* @DIB7000P, align 4
  %83 = load %struct.dib7000p_state*, %struct.dib7000p_state** %9, align 8
  %84 = getelementptr inbounds %struct.dib7000p_state, %struct.dib7000p_state* %83, i32 0, i32 1
  %85 = load %struct.i2c_adapter*, %struct.i2c_adapter** %84, align 8
  %86 = load %struct.dib7000p_state*, %struct.dib7000p_state** %9, align 8
  %87 = getelementptr inbounds %struct.dib7000p_state, %struct.dib7000p_state* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = call i32 @dibx000_init_i2c_master(%struct.TYPE_10__* %81, i32 %82, %struct.i2c_adapter* %85, i32 %88)
  %90 = load %struct.dib7000p_state*, %struct.dib7000p_state** %9, align 8
  %91 = call i32 @dib7000p_demod_reset(%struct.dib7000p_state* %90)
  %92 = load %struct.dvb_frontend*, %struct.dvb_frontend** %8, align 8
  store %struct.dvb_frontend* %92, %struct.dvb_frontend** %4, align 8
  br label %96

93:                                               ; preds = %69
  %94 = load %struct.dib7000p_state*, %struct.dib7000p_state** %9, align 8
  %95 = call i32 @kfree(%struct.dib7000p_state* %94)
  store %struct.dvb_frontend* null, %struct.dvb_frontend** %4, align 8
  br label %96

96:                                               ; preds = %93, %70, %14
  %97 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  ret %struct.dvb_frontend* %97
}

declare dso_local %struct.dib7000p_state* @kzalloc(i32, i32) #1

declare dso_local i32 @memcpy(%struct.TYPE_9__*, %struct.dib7000p_config*, i32) #1

declare dso_local i32 @dib7000p_write_word(%struct.dib7000p_state*, i32, i32) #1

declare dso_local i64 @dib7000p_identify(%struct.dib7000p_state*) #1

declare dso_local i32 @dibx000_init_i2c_master(%struct.TYPE_10__*, i32, %struct.i2c_adapter*, i32) #1

declare dso_local i32 @dib7000p_demod_reset(%struct.dib7000p_state*) #1

declare dso_local i32 @kfree(%struct.dib7000p_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
