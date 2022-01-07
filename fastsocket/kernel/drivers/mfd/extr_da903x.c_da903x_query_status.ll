; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mfd/extr_da903x.c_da903x_query_status.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mfd/extr_da903x.c_da903x_query_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.da903x_chip = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.da903x_chip*, i32*)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @da903x_query_status(%struct.device* %0, i32 %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.da903x_chip*, align 8
  %6 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.device*, %struct.device** %3, align 8
  %8 = call %struct.da903x_chip* @dev_get_drvdata(%struct.device* %7)
  store %struct.da903x_chip* %8, %struct.da903x_chip** %5, align 8
  store i32 0, i32* %6, align 4
  %9 = load %struct.da903x_chip*, %struct.da903x_chip** %5, align 8
  %10 = getelementptr inbounds %struct.da903x_chip, %struct.da903x_chip* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32 (%struct.da903x_chip*, i32*)*, i32 (%struct.da903x_chip*, i32*)** %12, align 8
  %14 = load %struct.da903x_chip*, %struct.da903x_chip** %5, align 8
  %15 = call i32 %13(%struct.da903x_chip* %14, i32* %6)
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* %4, align 4
  %18 = and i32 %16, %17
  %19 = load i32, i32* %4, align 4
  %20 = icmp eq i32 %18, %19
  %21 = zext i1 %20 to i32
  ret i32 %21
}

declare dso_local %struct.da903x_chip* @dev_get_drvdata(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
