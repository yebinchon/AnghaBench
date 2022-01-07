; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ipath/extr_ipath_verbs.c_enable_timer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ipath/extr_ipath_verbs.c_enable_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipath_devdata = type { i32, i32, %struct.TYPE_5__, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i64, i64, i32 }
%struct.TYPE_4__ = type { i32, i32 }

@IPATH_GPIO_INTR = common dso_local global i32 0, align 4
@IPATH_GPIO_PORT0_BIT = common dso_local global i32 0, align 4
@__verbs_timer = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ipath_devdata*)* @enable_timer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @enable_timer(%struct.ipath_devdata* %0) #0 {
  %2 = alloca %struct.ipath_devdata*, align 8
  store %struct.ipath_devdata* %0, %struct.ipath_devdata** %2, align 8
  %3 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %4 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 8
  %6 = load i32, i32* @IPATH_GPIO_INTR, align 4
  %7 = and i32 %5, %6
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %33

9:                                                ; preds = %1
  %10 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %11 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %12 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %11, i32 0, i32 3
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @ipath_write_kreg(%struct.ipath_devdata* %10, i32 %15, i32 1985225488)
  %17 = load i32, i32* @IPATH_GPIO_PORT0_BIT, align 4
  %18 = shl i32 1, %17
  %19 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %20 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = or i32 %21, %18
  store i32 %22, i32* %20, align 4
  %23 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %24 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %25 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %24, i32 0, i32 3
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %30 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @ipath_write_kreg(%struct.ipath_devdata* %23, i32 %28, i32 %31)
  br label %33

33:                                               ; preds = %9, %1
  %34 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %35 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %34, i32 0, i32 2
  %36 = call i32 @init_timer(%struct.TYPE_5__* %35)
  %37 = load i32, i32* @__verbs_timer, align 4
  %38 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %39 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %38, i32 0, i32 2
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 2
  store i32 %37, i32* %40, align 8
  %41 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %42 = ptrtoint %struct.ipath_devdata* %41 to i64
  %43 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %44 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %43, i32 0, i32 2
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  store i64 %42, i64* %45, align 8
  %46 = load i64, i64* @jiffies, align 8
  %47 = add nsw i64 %46, 1
  %48 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %49 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %48, i32 0, i32 2
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 1
  store i64 %47, i64* %50, align 8
  %51 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %52 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %51, i32 0, i32 2
  %53 = call i32 @add_timer(%struct.TYPE_5__* %52)
  ret i32 0
}

declare dso_local i32 @ipath_write_kreg(%struct.ipath_devdata*, i32, i32) #1

declare dso_local i32 @init_timer(%struct.TYPE_5__*) #1

declare dso_local i32 @add_timer(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
