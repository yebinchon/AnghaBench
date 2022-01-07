; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/powermac/extr_low_i2c.c_pmac_i2c_match_adapter.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/powermac/extr_low_i2c.c_pmac_i2c_match_adapter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device_node = type { i32 }
%struct.i2c_adapter = type { i32 }
%struct.pmac_i2c_bus = type { %struct.i2c_adapter* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pmac_i2c_match_adapter(%struct.device_node* %0, %struct.i2c_adapter* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca %struct.i2c_adapter*, align 8
  %6 = alloca %struct.pmac_i2c_bus*, align 8
  store %struct.device_node* %0, %struct.device_node** %4, align 8
  store %struct.i2c_adapter* %1, %struct.i2c_adapter** %5, align 8
  %7 = load %struct.device_node*, %struct.device_node** %4, align 8
  %8 = call %struct.pmac_i2c_bus* @pmac_i2c_find_bus(%struct.device_node* %7)
  store %struct.pmac_i2c_bus* %8, %struct.pmac_i2c_bus** %6, align 8
  %9 = load %struct.pmac_i2c_bus*, %struct.pmac_i2c_bus** %6, align 8
  %10 = icmp eq %struct.pmac_i2c_bus* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %19

12:                                               ; preds = %2
  %13 = load %struct.pmac_i2c_bus*, %struct.pmac_i2c_bus** %6, align 8
  %14 = getelementptr inbounds %struct.pmac_i2c_bus, %struct.pmac_i2c_bus* %13, i32 0, i32 0
  %15 = load %struct.i2c_adapter*, %struct.i2c_adapter** %14, align 8
  %16 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %17 = icmp eq %struct.i2c_adapter* %15, %16
  %18 = zext i1 %17 to i32
  store i32 %18, i32* %3, align 4
  br label %19

19:                                               ; preds = %12, %11
  %20 = load i32, i32* %3, align 4
  ret i32 %20
}

declare dso_local %struct.pmac_i2c_bus* @pmac_i2c_find_bus(%struct.device_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
