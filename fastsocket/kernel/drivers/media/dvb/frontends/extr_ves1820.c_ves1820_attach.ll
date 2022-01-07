; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_ves1820.c_ves1820_attach.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_ves1820.c_ves1820_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.ves1820_state*, %struct.TYPE_4__ }
%struct.ves1820_state = type { %struct.dvb_frontend, %struct.ves1820_config*, i32, %struct.i2c_adapter*, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }
%struct.ves1820_config = type { i32 }
%struct.i2c_adapter = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ves1820_inittab = common dso_local global i32* null, align 8
@verbose = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [21 x i8] c"ves1820: pwm=0x%02x\0A\00", align 1
@ves1820_ops = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.dvb_frontend* @ves1820_attach(%struct.ves1820_config* %0, %struct.i2c_adapter* %1, i32 %2) #0 {
  %4 = alloca %struct.dvb_frontend*, align 8
  %5 = alloca %struct.ves1820_config*, align 8
  %6 = alloca %struct.i2c_adapter*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ves1820_state*, align 8
  store %struct.ves1820_config* %0, %struct.ves1820_config** %5, align 8
  store %struct.i2c_adapter* %1, %struct.i2c_adapter** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.ves1820_state* null, %struct.ves1820_state** %8, align 8
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.ves1820_state* @kzalloc(i32 48, i32 %9)
  store %struct.ves1820_state* %10, %struct.ves1820_state** %8, align 8
  %11 = load %struct.ves1820_state*, %struct.ves1820_state** %8, align 8
  %12 = icmp eq %struct.ves1820_state* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %3
  br label %77

14:                                               ; preds = %3
  %15 = load i32*, i32** @ves1820_inittab, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 0
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.ves1820_state*, %struct.ves1820_state** %8, align 8
  %19 = getelementptr inbounds %struct.ves1820_state, %struct.ves1820_state* %18, i32 0, i32 4
  store i32 %17, i32* %19, align 8
  %20 = load %struct.ves1820_config*, %struct.ves1820_config** %5, align 8
  %21 = load %struct.ves1820_state*, %struct.ves1820_state** %8, align 8
  %22 = getelementptr inbounds %struct.ves1820_state, %struct.ves1820_state* %21, i32 0, i32 1
  store %struct.ves1820_config* %20, %struct.ves1820_config** %22, align 8
  %23 = load %struct.i2c_adapter*, %struct.i2c_adapter** %6, align 8
  %24 = load %struct.ves1820_state*, %struct.ves1820_state** %8, align 8
  %25 = getelementptr inbounds %struct.ves1820_state, %struct.ves1820_state* %24, i32 0, i32 3
  store %struct.i2c_adapter* %23, %struct.i2c_adapter** %25, align 8
  %26 = load i32, i32* %7, align 4
  %27 = load %struct.ves1820_state*, %struct.ves1820_state** %8, align 8
  %28 = getelementptr inbounds %struct.ves1820_state, %struct.ves1820_state* %27, i32 0, i32 2
  store i32 %26, i32* %28, align 8
  %29 = load %struct.ves1820_state*, %struct.ves1820_state** %8, align 8
  %30 = call i32 @ves1820_readreg(%struct.ves1820_state* %29, i32 26)
  %31 = and i32 %30, 240
  %32 = icmp ne i32 %31, 112
  br i1 %32, label %33, label %34

33:                                               ; preds = %14
  br label %77

34:                                               ; preds = %14
  %35 = load i64, i64* @verbose, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %34
  %38 = load %struct.ves1820_state*, %struct.ves1820_state** %8, align 8
  %39 = getelementptr inbounds %struct.ves1820_state, %struct.ves1820_state* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @printk(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %40)
  br label %42

42:                                               ; preds = %37, %34
  %43 = load %struct.ves1820_state*, %struct.ves1820_state** %8, align 8
  %44 = getelementptr inbounds %struct.ves1820_state, %struct.ves1820_state* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %44, i32 0, i32 1
  %46 = call i32 @memcpy(%struct.TYPE_4__* %45, i32* @ves1820_ops, i32 4)
  %47 = load %struct.ves1820_state*, %struct.ves1820_state** %8, align 8
  %48 = getelementptr inbounds %struct.ves1820_state, %struct.ves1820_state* %47, i32 0, i32 1
  %49 = load %struct.ves1820_config*, %struct.ves1820_config** %48, align 8
  %50 = getelementptr inbounds %struct.ves1820_config, %struct.ves1820_config* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = sdiv i32 %51, 2
  %53 = sdiv i32 %52, 64
  %54 = load %struct.ves1820_state*, %struct.ves1820_state** %8, align 8
  %55 = getelementptr inbounds %struct.ves1820_state, %struct.ves1820_state* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 0
  store i32 %53, i32* %58, align 8
  %59 = load %struct.ves1820_state*, %struct.ves1820_state** %8, align 8
  %60 = getelementptr inbounds %struct.ves1820_state, %struct.ves1820_state* %59, i32 0, i32 1
  %61 = load %struct.ves1820_config*, %struct.ves1820_config** %60, align 8
  %62 = getelementptr inbounds %struct.ves1820_config, %struct.ves1820_config* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = sdiv i32 %63, 2
  %65 = sdiv i32 %64, 4
  %66 = load %struct.ves1820_state*, %struct.ves1820_state** %8, align 8
  %67 = getelementptr inbounds %struct.ves1820_state, %struct.ves1820_state* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 1
  store i32 %65, i32* %70, align 4
  %71 = load %struct.ves1820_state*, %struct.ves1820_state** %8, align 8
  %72 = load %struct.ves1820_state*, %struct.ves1820_state** %8, align 8
  %73 = getelementptr inbounds %struct.ves1820_state, %struct.ves1820_state* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %73, i32 0, i32 0
  store %struct.ves1820_state* %71, %struct.ves1820_state** %74, align 8
  %75 = load %struct.ves1820_state*, %struct.ves1820_state** %8, align 8
  %76 = getelementptr inbounds %struct.ves1820_state, %struct.ves1820_state* %75, i32 0, i32 0
  store %struct.dvb_frontend* %76, %struct.dvb_frontend** %4, align 8
  br label %80

77:                                               ; preds = %33, %13
  %78 = load %struct.ves1820_state*, %struct.ves1820_state** %8, align 8
  %79 = call i32 @kfree(%struct.ves1820_state* %78)
  store %struct.dvb_frontend* null, %struct.dvb_frontend** %4, align 8
  br label %80

80:                                               ; preds = %77, %42
  %81 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  ret %struct.dvb_frontend* %81
}

declare dso_local %struct.ves1820_state* @kzalloc(i32, i32) #1

declare dso_local i32 @ves1820_readreg(%struct.ves1820_state*, i32) #1

declare dso_local i32 @printk(i8*, i32) #1

declare dso_local i32 @memcpy(%struct.TYPE_4__*, i32*, i32) #1

declare dso_local i32 @kfree(%struct.ves1820_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
