; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ipath/extr_ipath_file_ops.c_ipath_poll_hdrqfull.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ipath/extr_ipath_file_ops.c_ipath_poll_hdrqfull.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipath_portdata = type { i32, i64, i64 }

@IPATH_POLL_TYPE_OVERFLOW = common dso_local global i32 0, align 4
@POLLIN = common dso_local global i32 0, align 4
@POLLRDNORM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ipath_portdata*)* @ipath_poll_hdrqfull to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipath_poll_hdrqfull(%struct.ipath_portdata* %0) #0 {
  %2 = alloca %struct.ipath_portdata*, align 8
  %3 = alloca i32, align 4
  store %struct.ipath_portdata* %0, %struct.ipath_portdata** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = load %struct.ipath_portdata*, %struct.ipath_portdata** %2, align 8
  %5 = getelementptr inbounds %struct.ipath_portdata, %struct.ipath_portdata* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  %7 = load i32, i32* @IPATH_POLL_TYPE_OVERFLOW, align 4
  %8 = and i32 %6, %7
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %29

10:                                               ; preds = %1
  %11 = load %struct.ipath_portdata*, %struct.ipath_portdata** %2, align 8
  %12 = getelementptr inbounds %struct.ipath_portdata, %struct.ipath_portdata* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = load %struct.ipath_portdata*, %struct.ipath_portdata** %2, align 8
  %15 = getelementptr inbounds %struct.ipath_portdata, %struct.ipath_portdata* %14, i32 0, i32 2
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %13, %16
  br i1 %17, label %18, label %29

18:                                               ; preds = %10
  %19 = load i32, i32* @POLLIN, align 4
  %20 = load i32, i32* @POLLRDNORM, align 4
  %21 = or i32 %19, %20
  %22 = load i32, i32* %3, align 4
  %23 = or i32 %22, %21
  store i32 %23, i32* %3, align 4
  %24 = load %struct.ipath_portdata*, %struct.ipath_portdata** %2, align 8
  %25 = getelementptr inbounds %struct.ipath_portdata, %struct.ipath_portdata* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.ipath_portdata*, %struct.ipath_portdata** %2, align 8
  %28 = getelementptr inbounds %struct.ipath_portdata, %struct.ipath_portdata* %27, i32 0, i32 2
  store i64 %26, i64* %28, align 8
  br label %29

29:                                               ; preds = %18, %10, %1
  %30 = load i32, i32* %3, align 4
  ret i32 %30
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
