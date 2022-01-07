; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_isl6405.c_isl6405_attach.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_isl6405.c_isl6405_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.TYPE_2__, %struct.isl6405* }
%struct.TYPE_2__ = type { i32, i64 (%struct.dvb_frontend.0*, i32)*, i32 }
%struct.dvb_frontend.0 = type opaque
%struct.isl6405 = type { i32, i32, i32, %struct.i2c_adapter*, i32 }
%struct.i2c_adapter = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ISL6405_ISEL2 = common dso_local global i32 0, align 4
@ISL6405_ISEL1 = common dso_local global i32 0, align 4
@SEC_VOLTAGE_OFF = common dso_local global i32 0, align 4
@isl6405_release = common dso_local global i32 0, align 4
@isl6405_enable_high_lnb_voltage = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.dvb_frontend* @isl6405_attach(%struct.dvb_frontend* %0, %struct.i2c_adapter* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.dvb_frontend*, align 8
  %7 = alloca %struct.dvb_frontend*, align 8
  %8 = alloca %struct.i2c_adapter*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.isl6405*, align 8
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %7, align 8
  store %struct.i2c_adapter* %1, %struct.i2c_adapter** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call %struct.isl6405* @kmalloc(i32 32, i32 %13)
  store %struct.isl6405* %14, %struct.isl6405** %12, align 8
  %15 = load %struct.isl6405*, %struct.isl6405** %12, align 8
  %16 = icmp ne %struct.isl6405* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %5
  store %struct.dvb_frontend* null, %struct.dvb_frontend** %6, align 8
  br label %69

18:                                               ; preds = %5
  %19 = load i32, i32* %10, align 4
  %20 = and i32 %19, 128
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %18
  %23 = load i32, i32* @ISL6405_ISEL2, align 4
  %24 = load %struct.isl6405*, %struct.isl6405** %12, align 8
  %25 = getelementptr inbounds %struct.isl6405, %struct.isl6405* %24, i32 0, i32 4
  store i32 %23, i32* %25, align 8
  br label %30

26:                                               ; preds = %18
  %27 = load i32, i32* @ISL6405_ISEL1, align 4
  %28 = load %struct.isl6405*, %struct.isl6405** %12, align 8
  %29 = getelementptr inbounds %struct.isl6405, %struct.isl6405* %28, i32 0, i32 4
  store i32 %27, i32* %29, align 8
  br label %30

30:                                               ; preds = %26, %22
  %31 = load %struct.i2c_adapter*, %struct.i2c_adapter** %8, align 8
  %32 = load %struct.isl6405*, %struct.isl6405** %12, align 8
  %33 = getelementptr inbounds %struct.isl6405, %struct.isl6405* %32, i32 0, i32 3
  store %struct.i2c_adapter* %31, %struct.i2c_adapter** %33, align 8
  %34 = load i32, i32* %9, align 4
  %35 = load %struct.isl6405*, %struct.isl6405** %12, align 8
  %36 = getelementptr inbounds %struct.isl6405, %struct.isl6405* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 8
  %37 = load %struct.isl6405*, %struct.isl6405** %12, align 8
  %38 = load %struct.dvb_frontend*, %struct.dvb_frontend** %7, align 8
  %39 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %38, i32 0, i32 1
  store %struct.isl6405* %37, %struct.isl6405** %39, align 8
  %40 = load i32, i32* %10, align 4
  %41 = load %struct.isl6405*, %struct.isl6405** %12, align 8
  %42 = getelementptr inbounds %struct.isl6405, %struct.isl6405* %41, i32 0, i32 1
  store i32 %40, i32* %42, align 4
  %43 = load i32, i32* %11, align 4
  %44 = xor i32 %43, -1
  %45 = load %struct.isl6405*, %struct.isl6405** %12, align 8
  %46 = getelementptr inbounds %struct.isl6405, %struct.isl6405* %45, i32 0, i32 2
  store i32 %44, i32* %46, align 8
  %47 = load %struct.dvb_frontend*, %struct.dvb_frontend** %7, align 8
  %48 = load i32, i32* @SEC_VOLTAGE_OFF, align 4
  %49 = call i64 @isl6405_set_voltage(%struct.dvb_frontend* %47, i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %30
  %52 = load %struct.isl6405*, %struct.isl6405** %12, align 8
  %53 = call i32 @kfree(%struct.isl6405* %52)
  %54 = load %struct.dvb_frontend*, %struct.dvb_frontend** %7, align 8
  %55 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %54, i32 0, i32 1
  store %struct.isl6405* null, %struct.isl6405** %55, align 8
  store %struct.dvb_frontend* null, %struct.dvb_frontend** %6, align 8
  br label %69

56:                                               ; preds = %30
  %57 = load i32, i32* @isl6405_release, align 4
  %58 = load %struct.dvb_frontend*, %struct.dvb_frontend** %7, align 8
  %59 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 2
  store i32 %57, i32* %60, align 8
  %61 = load %struct.dvb_frontend*, %struct.dvb_frontend** %7, align 8
  %62 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 1
  store i64 (%struct.dvb_frontend.0*, i32)* bitcast (i64 (%struct.dvb_frontend*, i32)* @isl6405_set_voltage to i64 (%struct.dvb_frontend.0*, i32)*), i64 (%struct.dvb_frontend.0*, i32)** %63, align 8
  %64 = load i32, i32* @isl6405_enable_high_lnb_voltage, align 4
  %65 = load %struct.dvb_frontend*, %struct.dvb_frontend** %7, align 8
  %66 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  store i32 %64, i32* %67, align 8
  %68 = load %struct.dvb_frontend*, %struct.dvb_frontend** %7, align 8
  store %struct.dvb_frontend* %68, %struct.dvb_frontend** %6, align 8
  br label %69

69:                                               ; preds = %56, %51, %17
  %70 = load %struct.dvb_frontend*, %struct.dvb_frontend** %6, align 8
  ret %struct.dvb_frontend* %70
}

declare dso_local %struct.isl6405* @kmalloc(i32, i32) #1

declare dso_local i64 @isl6405_set_voltage(%struct.dvb_frontend*, i32) #1

declare dso_local i32 @kfree(%struct.isl6405*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
