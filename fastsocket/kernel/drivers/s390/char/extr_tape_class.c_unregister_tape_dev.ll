; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/char/extr_tape_class.c_unregister_tape_dev.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/char/extr_tape_class.c_unregister_tape_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.tape_class_device = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@tape_class = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @unregister_tape_dev(%struct.device* %0, %struct.tape_class_device* %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.tape_class_device*, align 8
  store %struct.device* %0, %struct.device** %3, align 8
  store %struct.tape_class_device* %1, %struct.tape_class_device** %4, align 8
  %5 = load %struct.tape_class_device*, %struct.tape_class_device** %4, align 8
  %6 = icmp ne %struct.tape_class_device* %5, null
  br i1 %6, label %7, label %31

7:                                                ; preds = %2
  %8 = load %struct.tape_class_device*, %struct.tape_class_device** %4, align 8
  %9 = call i32 @IS_ERR(%struct.tape_class_device* %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %31, label %11

11:                                               ; preds = %7
  %12 = load %struct.device*, %struct.device** %3, align 8
  %13 = getelementptr inbounds %struct.device, %struct.device* %12, i32 0, i32 0
  %14 = load %struct.tape_class_device*, %struct.tape_class_device** %4, align 8
  %15 = getelementptr inbounds %struct.tape_class_device, %struct.tape_class_device* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @sysfs_remove_link(i32* %13, i32 %16)
  %18 = load i32, i32* @tape_class, align 4
  %19 = load %struct.tape_class_device*, %struct.tape_class_device** %4, align 8
  %20 = getelementptr inbounds %struct.tape_class_device, %struct.tape_class_device* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @device_destroy(i32 %18, i32 %23)
  %25 = load %struct.tape_class_device*, %struct.tape_class_device** %4, align 8
  %26 = getelementptr inbounds %struct.tape_class_device, %struct.tape_class_device* %25, i32 0, i32 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = call i32 @cdev_del(%struct.TYPE_2__* %27)
  %29 = load %struct.tape_class_device*, %struct.tape_class_device** %4, align 8
  %30 = call i32 @kfree(%struct.tape_class_device* %29)
  br label %31

31:                                               ; preds = %11, %7, %2
  ret void
}

declare dso_local i32 @IS_ERR(%struct.tape_class_device*) #1

declare dso_local i32 @sysfs_remove_link(i32*, i32) #1

declare dso_local i32 @device_destroy(i32, i32) #1

declare dso_local i32 @cdev_del(%struct.TYPE_2__*) #1

declare dso_local i32 @kfree(%struct.tape_class_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
