; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mfd/extr_da903x.c_da903x_register_notifier.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mfd/extr_da903x.c_da903x_register_notifier.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.notifier_block = type { i32 }
%struct.da903x_chip = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.da903x_chip*, i32)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @da903x_register_notifier(%struct.device* %0, %struct.notifier_block* %1, i32 %2) #0 {
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.notifier_block*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.da903x_chip*, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.notifier_block* %1, %struct.notifier_block** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.device*, %struct.device** %4, align 8
  %9 = call %struct.da903x_chip* @dev_get_drvdata(%struct.device* %8)
  store %struct.da903x_chip* %9, %struct.da903x_chip** %7, align 8
  %10 = load %struct.da903x_chip*, %struct.da903x_chip** %7, align 8
  %11 = getelementptr inbounds %struct.da903x_chip, %struct.da903x_chip* %10, i32 0, i32 1
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32 (%struct.da903x_chip*, i32)*, i32 (%struct.da903x_chip*, i32)** %13, align 8
  %15 = load %struct.da903x_chip*, %struct.da903x_chip** %7, align 8
  %16 = load i32, i32* %6, align 4
  %17 = call i32 %14(%struct.da903x_chip* %15, i32 %16)
  %18 = load %struct.da903x_chip*, %struct.da903x_chip** %7, align 8
  %19 = getelementptr inbounds %struct.da903x_chip, %struct.da903x_chip* %18, i32 0, i32 0
  %20 = load %struct.notifier_block*, %struct.notifier_block** %5, align 8
  %21 = call i32 @blocking_notifier_chain_register(i32* %19, %struct.notifier_block* %20)
  ret i32 %21
}

declare dso_local %struct.da903x_chip* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @blocking_notifier_chain_register(i32*, %struct.notifier_block*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
