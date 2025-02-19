; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/sn/extr_ioc3.c_get_pending_intrs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/sn/extr_ioc3.c_get_pending_intrs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ioc3_driver_data = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ioc3_driver_data*)* @get_pending_intrs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_pending_intrs(%struct.ioc3_driver_data* %0) #0 {
  %2 = alloca %struct.ioc3_driver_data*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  store %struct.ioc3_driver_data* %0, %struct.ioc3_driver_data** %2, align 8
  store i32 0, i32* %4, align 4
  %5 = load %struct.ioc3_driver_data*, %struct.ioc3_driver_data** %2, align 8
  %6 = getelementptr inbounds %struct.ioc3_driver_data, %struct.ioc3_driver_data* %5, i32 0, i32 0
  %7 = load i64, i64* %3, align 8
  %8 = call i32 @spin_lock_irqsave(i32* %6, i64 %7)
  %9 = load %struct.ioc3_driver_data*, %struct.ioc3_driver_data** %2, align 8
  %10 = getelementptr inbounds %struct.ioc3_driver_data, %struct.ioc3_driver_data* %9, i32 0, i32 1
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 1
  %13 = call i32 @readl(i32* %12)
  store i32 %13, i32* %4, align 4
  %14 = load %struct.ioc3_driver_data*, %struct.ioc3_driver_data** %2, align 8
  %15 = getelementptr inbounds %struct.ioc3_driver_data, %struct.ioc3_driver_data* %14, i32 0, i32 1
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = call i32 @readl(i32* %17)
  %19 = load i32, i32* %4, align 4
  %20 = and i32 %19, %18
  store i32 %20, i32* %4, align 4
  %21 = load %struct.ioc3_driver_data*, %struct.ioc3_driver_data** %2, align 8
  %22 = getelementptr inbounds %struct.ioc3_driver_data, %struct.ioc3_driver_data* %21, i32 0, i32 0
  %23 = load i64, i64* %3, align 8
  %24 = call i32 @spin_unlock_irqrestore(i32* %22, i64 %23)
  %25 = load i32, i32* %4, align 4
  ret i32 %25
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @readl(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
