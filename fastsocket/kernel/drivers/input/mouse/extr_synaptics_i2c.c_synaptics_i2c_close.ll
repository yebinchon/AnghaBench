; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/mouse/extr_synaptics_i2c.c_synaptics_i2c_close.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/mouse/extr_synaptics_i2c.c_synaptics_i2c_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.input_dev = type { i32 }
%struct.synaptics_i2c = type { i32, i32 }

@polling_req = common dso_local global i32 0, align 4
@INTERRUPT_EN_REG = common dso_local global i32 0, align 4
@DEV_CONTROL_REG = common dso_local global i32 0, align 4
@DEEP_SLEEP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.input_dev*)* @synaptics_i2c_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @synaptics_i2c_close(%struct.input_dev* %0) #0 {
  %2 = alloca %struct.input_dev*, align 8
  %3 = alloca %struct.synaptics_i2c*, align 8
  store %struct.input_dev* %0, %struct.input_dev** %2, align 8
  %4 = load %struct.input_dev*, %struct.input_dev** %2, align 8
  %5 = call %struct.synaptics_i2c* @input_get_drvdata(%struct.input_dev* %4)
  store %struct.synaptics_i2c* %5, %struct.synaptics_i2c** %3, align 8
  %6 = load i32, i32* @polling_req, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %14, label %8

8:                                                ; preds = %1
  %9 = load %struct.synaptics_i2c*, %struct.synaptics_i2c** %3, align 8
  %10 = getelementptr inbounds %struct.synaptics_i2c, %struct.synaptics_i2c* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @INTERRUPT_EN_REG, align 4
  %13 = call i32 @synaptics_i2c_reg_set(i32 %11, i32 %12, i32 0)
  br label %14

14:                                               ; preds = %8, %1
  %15 = load %struct.synaptics_i2c*, %struct.synaptics_i2c** %3, align 8
  %16 = getelementptr inbounds %struct.synaptics_i2c, %struct.synaptics_i2c* %15, i32 0, i32 1
  %17 = call i32 @cancel_delayed_work_sync(i32* %16)
  %18 = load %struct.synaptics_i2c*, %struct.synaptics_i2c** %3, align 8
  %19 = getelementptr inbounds %struct.synaptics_i2c, %struct.synaptics_i2c* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @DEV_CONTROL_REG, align 4
  %22 = load i32, i32* @DEEP_SLEEP, align 4
  %23 = call i32 @synaptics_i2c_reg_set(i32 %20, i32 %21, i32 %22)
  ret void
}

declare dso_local %struct.synaptics_i2c* @input_get_drvdata(%struct.input_dev*) #1

declare dso_local i32 @synaptics_i2c_reg_set(i32, i32, i32) #1

declare dso_local i32 @cancel_delayed_work_sync(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
