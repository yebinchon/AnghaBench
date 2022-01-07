; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/mouse/extr_synaptics_i2c.c_synaptics_i2c_set_input_params.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/mouse/extr_synaptics_i2c.c_synaptics_i2c_set_input_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.synaptics_i2c = type { %struct.TYPE_8__*, %struct.input_dev* }
%struct.TYPE_8__ = type { i32, %struct.TYPE_5__*, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.input_dev = type { i32, i32, i32, i32, i32, %struct.TYPE_7__, %struct.TYPE_6__, i32, i32 }
%struct.TYPE_7__ = type { i32* }
%struct.TYPE_6__ = type { i32, i32 }

@BUS_I2C = common dso_local global i32 0, align 4
@INFO_QUERY_REG0 = common dso_local global i32 0, align 4
@synaptics_i2c_open = common dso_local global i32 0, align 4
@synaptics_i2c_close = common dso_local global i32 0, align 4
@EV_REL = common dso_local global i32 0, align 4
@REL_X = common dso_local global i32 0, align 4
@REL_Y = common dso_local global i32 0, align 4
@EV_KEY = common dso_local global i32 0, align 4
@BTN_LEFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.synaptics_i2c*)* @synaptics_i2c_set_input_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @synaptics_i2c_set_input_params(%struct.synaptics_i2c* %0) #0 {
  %2 = alloca %struct.synaptics_i2c*, align 8
  %3 = alloca %struct.input_dev*, align 8
  store %struct.synaptics_i2c* %0, %struct.synaptics_i2c** %2, align 8
  %4 = load %struct.synaptics_i2c*, %struct.synaptics_i2c** %2, align 8
  %5 = getelementptr inbounds %struct.synaptics_i2c, %struct.synaptics_i2c* %4, i32 0, i32 1
  %6 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  store %struct.input_dev* %6, %struct.input_dev** %3, align 8
  %7 = load %struct.synaptics_i2c*, %struct.synaptics_i2c** %2, align 8
  %8 = getelementptr inbounds %struct.synaptics_i2c, %struct.synaptics_i2c* %7, i32 0, i32 0
  %9 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 8
  %12 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %13 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %12, i32 0, i32 8
  store i32 %11, i32* %13, align 4
  %14 = load %struct.synaptics_i2c*, %struct.synaptics_i2c** %2, align 8
  %15 = getelementptr inbounds %struct.synaptics_i2c, %struct.synaptics_i2c* %14, i32 0, i32 0
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 1
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %22 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %21, i32 0, i32 7
  store i32 %20, i32* %22, align 8
  %23 = load i32, i32* @BUS_I2C, align 4
  %24 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %25 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %24, i32 0, i32 6
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 1
  store i32 %23, i32* %26, align 4
  %27 = load %struct.synaptics_i2c*, %struct.synaptics_i2c** %2, align 8
  %28 = getelementptr inbounds %struct.synaptics_i2c, %struct.synaptics_i2c* %27, i32 0, i32 0
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %28, align 8
  %30 = load i32, i32* @INFO_QUERY_REG0, align 4
  %31 = call i32 @synaptics_i2c_word_get(%struct.TYPE_8__* %29, i32 %30)
  %32 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %33 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %32, i32 0, i32 6
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  store i32 %31, i32* %34, align 8
  %35 = load %struct.synaptics_i2c*, %struct.synaptics_i2c** %2, align 8
  %36 = getelementptr inbounds %struct.synaptics_i2c, %struct.synaptics_i2c* %35, i32 0, i32 0
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 0
  %39 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %40 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %39, i32 0, i32 5
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 0
  store i32* %38, i32** %41, align 8
  %42 = load i32, i32* @synaptics_i2c_open, align 4
  %43 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %44 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %43, i32 0, i32 4
  store i32 %42, i32* %44, align 8
  %45 = load i32, i32* @synaptics_i2c_close, align 4
  %46 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %47 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %46, i32 0, i32 3
  store i32 %45, i32* %47, align 4
  %48 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %49 = load %struct.synaptics_i2c*, %struct.synaptics_i2c** %2, align 8
  %50 = call i32 @input_set_drvdata(%struct.input_dev* %48, %struct.synaptics_i2c* %49)
  %51 = load i32, i32* @EV_REL, align 4
  %52 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %53 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @__set_bit(i32 %51, i32 %54)
  %56 = load i32, i32* @REL_X, align 4
  %57 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %58 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @__set_bit(i32 %56, i32 %59)
  %61 = load i32, i32* @REL_Y, align 4
  %62 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %63 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @__set_bit(i32 %61, i32 %64)
  %66 = load i32, i32* @EV_KEY, align 4
  %67 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %68 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @__set_bit(i32 %66, i32 %69)
  %71 = load i32, i32* @BTN_LEFT, align 4
  %72 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %73 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @__set_bit(i32 %71, i32 %74)
  ret void
}

declare dso_local i32 @synaptics_i2c_word_get(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @input_set_drvdata(%struct.input_dev*, %struct.synaptics_i2c*) #1

declare dso_local i32 @__set_bit(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
