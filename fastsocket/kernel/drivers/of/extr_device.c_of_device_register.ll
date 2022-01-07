; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/of/extr_device.c_of_device_register.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/of/extr_device.c_of_device_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.of_device = type { %struct.TYPE_4__, i32* }
%struct.TYPE_4__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @of_device_register(%struct.of_device* %0) #0 {
  %2 = alloca %struct.of_device*, align 8
  store %struct.of_device* %0, %struct.of_device** %2, align 8
  %3 = load %struct.of_device*, %struct.of_device** %2, align 8
  %4 = getelementptr inbounds %struct.of_device, %struct.of_device* %3, i32 0, i32 1
  %5 = load i32*, i32** %4, align 8
  %6 = icmp eq i32* %5, null
  %7 = zext i1 %6 to i32
  %8 = call i32 @BUG_ON(i32 %7)
  %9 = load %struct.of_device*, %struct.of_device** %2, align 8
  %10 = getelementptr inbounds %struct.of_device, %struct.of_device* %9, i32 0, i32 0
  %11 = call i32 @device_initialize(%struct.TYPE_4__* %10)
  %12 = load %struct.of_device*, %struct.of_device** %2, align 8
  %13 = getelementptr inbounds %struct.of_device, %struct.of_device* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %25, label %17

17:                                               ; preds = %1
  %18 = load %struct.of_device*, %struct.of_device** %2, align 8
  %19 = getelementptr inbounds %struct.of_device, %struct.of_device* %18, i32 0, i32 0
  %20 = load %struct.of_device*, %struct.of_device** %2, align 8
  %21 = getelementptr inbounds %struct.of_device, %struct.of_device* %20, i32 0, i32 1
  %22 = load i32*, i32** %21, align 8
  %23 = call i32 @of_node_to_nid(i32* %22)
  %24 = call i32 @set_dev_node(%struct.TYPE_4__* %19, i32 %23)
  br label %25

25:                                               ; preds = %17, %1
  %26 = load %struct.of_device*, %struct.of_device** %2, align 8
  %27 = getelementptr inbounds %struct.of_device, %struct.of_device* %26, i32 0, i32 0
  %28 = call i32 @device_add(%struct.TYPE_4__* %27)
  ret i32 %28
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @device_initialize(%struct.TYPE_4__*) #1

declare dso_local i32 @set_dev_node(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @of_node_to_nid(i32*) #1

declare dso_local i32 @device_add(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
