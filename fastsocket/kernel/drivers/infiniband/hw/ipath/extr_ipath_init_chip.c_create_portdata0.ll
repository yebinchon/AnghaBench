; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ipath/extr_ipath_init_chip.c_create_portdata0.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ipath/extr_ipath_init_chip.c_create_portdata0.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipath_portdata = type { i32, i32, i32*, %struct.ipath_devdata* }
%struct.ipath_devdata = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@IPATH_DEFAULT_P_KEY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ipath_portdata* (%struct.ipath_devdata*)* @create_portdata0 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ipath_portdata* @create_portdata0(%struct.ipath_devdata* %0) #0 {
  %2 = alloca %struct.ipath_devdata*, align 8
  %3 = alloca %struct.ipath_portdata*, align 8
  store %struct.ipath_devdata* %0, %struct.ipath_devdata** %2, align 8
  store %struct.ipath_portdata* null, %struct.ipath_portdata** %3, align 8
  %4 = load i32, i32* @GFP_KERNEL, align 4
  %5 = call %struct.ipath_portdata* @kzalloc(i32 24, i32 %4)
  store %struct.ipath_portdata* %5, %struct.ipath_portdata** %3, align 8
  %6 = load %struct.ipath_portdata*, %struct.ipath_portdata** %3, align 8
  %7 = icmp ne %struct.ipath_portdata* %6, null
  br i1 %7, label %8, label %21

8:                                                ; preds = %1
  %9 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %10 = load %struct.ipath_portdata*, %struct.ipath_portdata** %3, align 8
  %11 = getelementptr inbounds %struct.ipath_portdata, %struct.ipath_portdata* %10, i32 0, i32 3
  store %struct.ipath_devdata* %9, %struct.ipath_devdata** %11, align 8
  %12 = load %struct.ipath_portdata*, %struct.ipath_portdata** %3, align 8
  %13 = getelementptr inbounds %struct.ipath_portdata, %struct.ipath_portdata* %12, i32 0, i32 0
  store i32 1, i32* %13, align 8
  %14 = load i32, i32* @IPATH_DEFAULT_P_KEY, align 4
  %15 = load %struct.ipath_portdata*, %struct.ipath_portdata** %3, align 8
  %16 = getelementptr inbounds %struct.ipath_portdata, %struct.ipath_portdata* %15, i32 0, i32 2
  %17 = load i32*, i32** %16, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 0
  store i32 %14, i32* %18, align 4
  %19 = load %struct.ipath_portdata*, %struct.ipath_portdata** %3, align 8
  %20 = getelementptr inbounds %struct.ipath_portdata, %struct.ipath_portdata* %19, i32 0, i32 1
  store i32 1, i32* %20, align 4
  br label %21

21:                                               ; preds = %8, %1
  %22 = load %struct.ipath_portdata*, %struct.ipath_portdata** %3, align 8
  ret %struct.ipath_portdata* %22
}

declare dso_local %struct.ipath_portdata* @kzalloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
