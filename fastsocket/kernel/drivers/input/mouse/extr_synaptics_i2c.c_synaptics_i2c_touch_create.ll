; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/mouse/extr_synaptics_i2c.c_synaptics_i2c_touch_create.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/mouse/extr_synaptics_i2c.c_synaptics_i2c_touch_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.synaptics_i2c = type { i32, i32, i32, i32, %struct.i2c_client* }
%struct.i2c_client = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@no_decel = common dso_local global i32 0, align 4
@scan_rate = common dso_local global i32 0, align 4
@synaptics_i2c_work_handler = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.synaptics_i2c* @synaptics_i2c_touch_create(%struct.i2c_client* %0) #0 {
  %2 = alloca %struct.synaptics_i2c*, align 8
  %3 = alloca %struct.i2c_client*, align 8
  %4 = alloca %struct.synaptics_i2c*, align 8
  store %struct.i2c_client* %0, %struct.i2c_client** %3, align 8
  %5 = load i32, i32* @GFP_KERNEL, align 4
  %6 = call %struct.synaptics_i2c* @kzalloc(i32 24, i32 %5)
  store %struct.synaptics_i2c* %6, %struct.synaptics_i2c** %4, align 8
  %7 = load %struct.synaptics_i2c*, %struct.synaptics_i2c** %4, align 8
  %8 = icmp ne %struct.synaptics_i2c* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  store %struct.synaptics_i2c* null, %struct.synaptics_i2c** %2, align 8
  br label %31

10:                                               ; preds = %1
  %11 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %12 = load %struct.synaptics_i2c*, %struct.synaptics_i2c** %4, align 8
  %13 = getelementptr inbounds %struct.synaptics_i2c, %struct.synaptics_i2c* %12, i32 0, i32 4
  store %struct.i2c_client* %11, %struct.i2c_client** %13, align 8
  %14 = load i32, i32* @no_decel, align 4
  %15 = load %struct.synaptics_i2c*, %struct.synaptics_i2c** %4, align 8
  %16 = getelementptr inbounds %struct.synaptics_i2c, %struct.synaptics_i2c* %15, i32 0, i32 3
  store i32 %14, i32* %16, align 4
  %17 = load i32, i32* @scan_rate, align 4
  %18 = load %struct.synaptics_i2c*, %struct.synaptics_i2c** %4, align 8
  %19 = getelementptr inbounds %struct.synaptics_i2c, %struct.synaptics_i2c* %18, i32 0, i32 2
  store i32 %17, i32* %19, align 8
  %20 = load %struct.synaptics_i2c*, %struct.synaptics_i2c** %4, align 8
  %21 = load i32, i32* @scan_rate, align 4
  %22 = call i32 @set_scan_rate(%struct.synaptics_i2c* %20, i32 %21)
  %23 = load %struct.synaptics_i2c*, %struct.synaptics_i2c** %4, align 8
  %24 = getelementptr inbounds %struct.synaptics_i2c, %struct.synaptics_i2c* %23, i32 0, i32 1
  %25 = load i32, i32* @synaptics_i2c_work_handler, align 4
  %26 = call i32 @INIT_DELAYED_WORK(i32* %24, i32 %25)
  %27 = load %struct.synaptics_i2c*, %struct.synaptics_i2c** %4, align 8
  %28 = getelementptr inbounds %struct.synaptics_i2c, %struct.synaptics_i2c* %27, i32 0, i32 0
  %29 = call i32 @spin_lock_init(i32* %28)
  %30 = load %struct.synaptics_i2c*, %struct.synaptics_i2c** %4, align 8
  store %struct.synaptics_i2c* %30, %struct.synaptics_i2c** %2, align 8
  br label %31

31:                                               ; preds = %10, %9
  %32 = load %struct.synaptics_i2c*, %struct.synaptics_i2c** %2, align 8
  ret %struct.synaptics_i2c* %32
}

declare dso_local %struct.synaptics_i2c* @kzalloc(i32, i32) #1

declare dso_local i32 @set_scan_rate(%struct.synaptics_i2c*, i32) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
