; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_dib7000m.c_dib7000m_attach.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_dib7000m.c_dib7000m_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dib7000m_config = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.dvb_frontend = type { i32, %struct.dib7000m_state* }
%struct.dib7000m_state = type { i32, i32, %struct.i2c_adapter*, i32, i32, %struct.dvb_frontend, i32 }
%struct.i2c_adapter = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@dib7000m_ops = common dso_local global %struct.dib7000m_config zeroinitializer, align 8
@DIB7000 = common dso_local global i32 0, align 4
@DIB7000MC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.dvb_frontend* @dib7000m_attach(%struct.i2c_adapter* %0, i32 %1, %struct.dib7000m_config* %2) #0 {
  %4 = alloca %struct.dvb_frontend*, align 8
  %5 = alloca %struct.i2c_adapter*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.dib7000m_config*, align 8
  %8 = alloca %struct.dvb_frontend*, align 8
  %9 = alloca %struct.dib7000m_state*, align 8
  store %struct.i2c_adapter* %0, %struct.i2c_adapter** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.dib7000m_config* %2, %struct.dib7000m_config** %7, align 8
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.dib7000m_state* @kzalloc(i32 48, i32 %10)
  store %struct.dib7000m_state* %11, %struct.dib7000m_state** %9, align 8
  %12 = load %struct.dib7000m_state*, %struct.dib7000m_state** %9, align 8
  %13 = icmp eq %struct.dib7000m_state* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %3
  store %struct.dvb_frontend* null, %struct.dvb_frontend** %4, align 8
  br label %80

15:                                               ; preds = %3
  %16 = load %struct.dib7000m_state*, %struct.dib7000m_state** %9, align 8
  %17 = getelementptr inbounds %struct.dib7000m_state, %struct.dib7000m_state* %16, i32 0, i32 6
  %18 = load %struct.dib7000m_config*, %struct.dib7000m_config** %7, align 8
  %19 = call i32 @memcpy(i32* %17, %struct.dib7000m_config* %18, i32 8)
  %20 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %21 = load %struct.dib7000m_state*, %struct.dib7000m_state** %9, align 8
  %22 = getelementptr inbounds %struct.dib7000m_state, %struct.dib7000m_state* %21, i32 0, i32 2
  store %struct.i2c_adapter* %20, %struct.i2c_adapter** %22, align 8
  %23 = load i32, i32* %6, align 4
  %24 = load %struct.dib7000m_state*, %struct.dib7000m_state** %9, align 8
  %25 = getelementptr inbounds %struct.dib7000m_state, %struct.dib7000m_state* %24, i32 0, i32 1
  store i32 %23, i32* %25, align 4
  %26 = load %struct.dib7000m_state*, %struct.dib7000m_state** %9, align 8
  %27 = getelementptr inbounds %struct.dib7000m_state, %struct.dib7000m_state* %26, i32 0, i32 5
  store %struct.dvb_frontend* %27, %struct.dvb_frontend** %8, align 8
  %28 = load %struct.dib7000m_state*, %struct.dib7000m_state** %9, align 8
  %29 = load %struct.dvb_frontend*, %struct.dvb_frontend** %8, align 8
  %30 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %29, i32 0, i32 1
  store %struct.dib7000m_state* %28, %struct.dib7000m_state** %30, align 8
  %31 = load %struct.dib7000m_state*, %struct.dib7000m_state** %9, align 8
  %32 = getelementptr inbounds %struct.dib7000m_state, %struct.dib7000m_state* %31, i32 0, i32 5
  %33 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %32, i32 0, i32 0
  %34 = call i32 @memcpy(i32* %33, %struct.dib7000m_config* @dib7000m_ops, i32 4)
  %35 = load %struct.dib7000m_config*, %struct.dib7000m_config** %7, align 8
  %36 = getelementptr inbounds %struct.dib7000m_config, %struct.dib7000m_config* %35, i32 0, i32 0
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.dib7000m_state*, %struct.dib7000m_state** %9, align 8
  %41 = getelementptr inbounds %struct.dib7000m_state, %struct.dib7000m_state* %40, i32 0, i32 4
  store i32 %39, i32* %41, align 4
  %42 = load %struct.dib7000m_state*, %struct.dib7000m_state** %9, align 8
  %43 = call i64 @dib7000m_identify(%struct.dib7000m_state* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %15
  br label %77

46:                                               ; preds = %15
  %47 = load %struct.dib7000m_state*, %struct.dib7000m_state** %9, align 8
  %48 = getelementptr inbounds %struct.dib7000m_state, %struct.dib7000m_state* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = icmp eq i32 %49, 16384
  br i1 %50, label %51, label %62

51:                                               ; preds = %46
  %52 = load %struct.dib7000m_state*, %struct.dib7000m_state** %9, align 8
  %53 = getelementptr inbounds %struct.dib7000m_state, %struct.dib7000m_state* %52, i32 0, i32 3
  %54 = load i32, i32* @DIB7000, align 4
  %55 = load %struct.dib7000m_state*, %struct.dib7000m_state** %9, align 8
  %56 = getelementptr inbounds %struct.dib7000m_state, %struct.dib7000m_state* %55, i32 0, i32 2
  %57 = load %struct.i2c_adapter*, %struct.i2c_adapter** %56, align 8
  %58 = load %struct.dib7000m_state*, %struct.dib7000m_state** %9, align 8
  %59 = getelementptr inbounds %struct.dib7000m_state, %struct.dib7000m_state* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @dibx000_init_i2c_master(i32* %53, i32 %54, %struct.i2c_adapter* %57, i32 %60)
  br label %73

62:                                               ; preds = %46
  %63 = load %struct.dib7000m_state*, %struct.dib7000m_state** %9, align 8
  %64 = getelementptr inbounds %struct.dib7000m_state, %struct.dib7000m_state* %63, i32 0, i32 3
  %65 = load i32, i32* @DIB7000MC, align 4
  %66 = load %struct.dib7000m_state*, %struct.dib7000m_state** %9, align 8
  %67 = getelementptr inbounds %struct.dib7000m_state, %struct.dib7000m_state* %66, i32 0, i32 2
  %68 = load %struct.i2c_adapter*, %struct.i2c_adapter** %67, align 8
  %69 = load %struct.dib7000m_state*, %struct.dib7000m_state** %9, align 8
  %70 = getelementptr inbounds %struct.dib7000m_state, %struct.dib7000m_state* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @dibx000_init_i2c_master(i32* %64, i32 %65, %struct.i2c_adapter* %68, i32 %71)
  br label %73

73:                                               ; preds = %62, %51
  %74 = load %struct.dib7000m_state*, %struct.dib7000m_state** %9, align 8
  %75 = call i32 @dib7000m_demod_reset(%struct.dib7000m_state* %74)
  %76 = load %struct.dvb_frontend*, %struct.dvb_frontend** %8, align 8
  store %struct.dvb_frontend* %76, %struct.dvb_frontend** %4, align 8
  br label %80

77:                                               ; preds = %45
  %78 = load %struct.dib7000m_state*, %struct.dib7000m_state** %9, align 8
  %79 = call i32 @kfree(%struct.dib7000m_state* %78)
  store %struct.dvb_frontend* null, %struct.dvb_frontend** %4, align 8
  br label %80

80:                                               ; preds = %77, %73, %14
  %81 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  ret %struct.dvb_frontend* %81
}

declare dso_local %struct.dib7000m_state* @kzalloc(i32, i32) #1

declare dso_local i32 @memcpy(i32*, %struct.dib7000m_config*, i32) #1

declare dso_local i64 @dib7000m_identify(%struct.dib7000m_state*) #1

declare dso_local i32 @dibx000_init_i2c_master(i32*, i32, %struct.i2c_adapter*, i32) #1

declare dso_local i32 @dib7000m_demod_reset(%struct.dib7000m_state*) #1

declare dso_local i32 @kfree(%struct.dib7000m_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
