; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/of/extr_of_i2c.c_of_find_i2c_device_by_node.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/of/extr_of_i2c.c_of_find_i2c_device_by_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.device_node = type { i32 }
%struct.device = type { i32 }

@i2c_bus_type = common dso_local global i32 0, align 4
@of_dev_node_match = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.i2c_client* @of_find_i2c_device_by_node(%struct.device_node* %0) #0 {
  %2 = alloca %struct.i2c_client*, align 8
  %3 = alloca %struct.device_node*, align 8
  %4 = alloca %struct.device*, align 8
  store %struct.device_node* %0, %struct.device_node** %3, align 8
  %5 = load %struct.device_node*, %struct.device_node** %3, align 8
  %6 = load i32, i32* @of_dev_node_match, align 4
  %7 = call %struct.device* @bus_find_device(i32* @i2c_bus_type, i32* null, %struct.device_node* %5, i32 %6)
  store %struct.device* %7, %struct.device** %4, align 8
  %8 = load %struct.device*, %struct.device** %4, align 8
  %9 = icmp ne %struct.device* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  store %struct.i2c_client* null, %struct.i2c_client** %2, align 8
  br label %14

11:                                               ; preds = %1
  %12 = load %struct.device*, %struct.device** %4, align 8
  %13 = call %struct.i2c_client* @to_i2c_client(%struct.device* %12)
  store %struct.i2c_client* %13, %struct.i2c_client** %2, align 8
  br label %14

14:                                               ; preds = %11, %10
  %15 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  ret %struct.i2c_client* %15
}

declare dso_local %struct.device* @bus_find_device(i32*, i32*, %struct.device_node*, i32) #1

declare dso_local %struct.i2c_client* @to_i2c_client(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
