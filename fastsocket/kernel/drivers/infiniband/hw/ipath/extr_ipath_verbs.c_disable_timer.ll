; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ipath/extr_ipath_verbs.c_disable_timer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ipath/extr_ipath_verbs.c_disable_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipath_devdata = type { i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@IPATH_GPIO_INTR = common dso_local global i32 0, align 4
@IPATH_GPIO_PORT0_BIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ipath_devdata*)* @disable_timer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @disable_timer(%struct.ipath_devdata* %0) #0 {
  %2 = alloca %struct.ipath_devdata*, align 8
  store %struct.ipath_devdata* %0, %struct.ipath_devdata** %2, align 8
  %3 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %4 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 8
  %6 = load i32, i32* @IPATH_GPIO_INTR, align 4
  %7 = and i32 %5, %6
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %27

9:                                                ; preds = %1
  %10 = load i32, i32* @IPATH_GPIO_PORT0_BIT, align 4
  %11 = shl i32 1, %10
  %12 = xor i32 %11, -1
  %13 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %14 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 8
  %16 = and i32 %15, %12
  store i32 %16, i32* %14, align 8
  %17 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %18 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %19 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %18, i32 0, i32 3
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %24 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @ipath_write_kreg(%struct.ipath_devdata* %17, i32 %22, i32 %25)
  br label %27

27:                                               ; preds = %9, %1
  %28 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %29 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %28, i32 0, i32 1
  %30 = call i32 @del_timer_sync(i32* %29)
  ret i32 0
}

declare dso_local i32 @ipath_write_kreg(%struct.ipath_devdata*, i32, i32) #1

declare dso_local i32 @del_timer_sync(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
