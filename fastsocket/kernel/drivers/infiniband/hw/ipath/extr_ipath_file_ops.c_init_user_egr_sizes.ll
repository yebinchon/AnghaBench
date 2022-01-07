; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ipath/extr_ipath_file_ops.c_init_user_egr_sizes.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ipath/extr_ipath_file_ops.c_init_user_egr_sizes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipath_portdata = type { i32, i32, i32, %struct.ipath_devdata* }
%struct.ipath_devdata = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ipath_portdata*)* @init_user_egr_sizes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_user_egr_sizes(%struct.ipath_portdata* %0) #0 {
  %2 = alloca %struct.ipath_portdata*, align 8
  %3 = alloca %struct.ipath_devdata*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ipath_portdata* %0, %struct.ipath_portdata** %2, align 8
  %7 = load %struct.ipath_portdata*, %struct.ipath_portdata** %2, align 8
  %8 = getelementptr inbounds %struct.ipath_portdata, %struct.ipath_portdata* %7, i32 0, i32 3
  %9 = load %struct.ipath_devdata*, %struct.ipath_devdata** %8, align 8
  store %struct.ipath_devdata* %9, %struct.ipath_devdata** %3, align 8
  store i32 32768, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %12 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = udiv i32 %10, %13
  store i32 %14, i32* %4, align 4
  %15 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %16 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* %4, align 4
  %20 = add i32 %18, %19
  %21 = sub i32 %20, 1
  %22 = load i32, i32* %4, align 4
  %23 = udiv i32 %21, %22
  %24 = load %struct.ipath_portdata*, %struct.ipath_portdata** %2, align 8
  %25 = getelementptr inbounds %struct.ipath_portdata, %struct.ipath_portdata* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 8
  %26 = load i32, i32* %4, align 4
  %27 = load %struct.ipath_portdata*, %struct.ipath_portdata** %2, align 8
  %28 = getelementptr inbounds %struct.ipath_portdata, %struct.ipath_portdata* %27, i32 0, i32 1
  store i32 %26, i32* %28, align 4
  %29 = load i32, i32* %6, align 4
  %30 = load %struct.ipath_portdata*, %struct.ipath_portdata** %2, align 8
  %31 = getelementptr inbounds %struct.ipath_portdata, %struct.ipath_portdata* %30, i32 0, i32 2
  store i32 %29, i32* %31, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
