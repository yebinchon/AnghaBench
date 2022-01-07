; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/extr_input.c_input_allocate_device.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/extr_input.c_input_allocate_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.input_dev = type { i32, i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32*, i32* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@input_dev_type = common dso_local global i32 0, align 4
@input_class = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.input_dev* @input_allocate_device() #0 {
  %1 = alloca %struct.input_dev*, align 8
  %2 = load i32, i32* @GFP_KERNEL, align 4
  %3 = call %struct.input_dev* @kzalloc(i32 32, i32 %2)
  store %struct.input_dev* %3, %struct.input_dev** %1, align 8
  %4 = load %struct.input_dev*, %struct.input_dev** %1, align 8
  %5 = icmp ne %struct.input_dev* %4, null
  br i1 %5, label %6, label %30

6:                                                ; preds = %0
  %7 = load %struct.input_dev*, %struct.input_dev** %1, align 8
  %8 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %7, i32 0, i32 4
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 1
  store i32* @input_dev_type, i32** %9, align 8
  %10 = load %struct.input_dev*, %struct.input_dev** %1, align 8
  %11 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %10, i32 0, i32 4
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  store i32* @input_class, i32** %12, align 8
  %13 = load %struct.input_dev*, %struct.input_dev** %1, align 8
  %14 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %13, i32 0, i32 4
  %15 = call i32 @device_initialize(%struct.TYPE_2__* %14)
  %16 = load %struct.input_dev*, %struct.input_dev** %1, align 8
  %17 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %16, i32 0, i32 3
  %18 = call i32 @mutex_init(i32* %17)
  %19 = load %struct.input_dev*, %struct.input_dev** %1, align 8
  %20 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %19, i32 0, i32 2
  %21 = call i32 @spin_lock_init(i32* %20)
  %22 = load %struct.input_dev*, %struct.input_dev** %1, align 8
  %23 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %22, i32 0, i32 1
  %24 = call i32 @INIT_LIST_HEAD(i32* %23)
  %25 = load %struct.input_dev*, %struct.input_dev** %1, align 8
  %26 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %25, i32 0, i32 0
  %27 = call i32 @INIT_LIST_HEAD(i32* %26)
  %28 = load i32, i32* @THIS_MODULE, align 4
  %29 = call i32 @__module_get(i32 %28)
  br label %30

30:                                               ; preds = %6, %0
  %31 = load %struct.input_dev*, %struct.input_dev** %1, align 8
  ret %struct.input_dev* %31
}

declare dso_local %struct.input_dev* @kzalloc(i32, i32) #1

declare dso_local i32 @device_initialize(%struct.TYPE_2__*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @__module_get(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
