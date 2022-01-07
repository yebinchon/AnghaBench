; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ipath/extr_ipath_file_ops.c_ipath_poll_urgent.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ipath/extr_ipath_file_ops.c_ipath_poll_urgent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipath_portdata = type { i64, i64, i32, i32, %struct.ipath_devdata* }
%struct.ipath_devdata = type { i32 }
%struct.file = type { i32 }
%struct.poll_table_struct = type { i32 }

@POLLIN = common dso_local global i32 0, align 4
@POLLRDNORM = common dso_local global i32 0, align 4
@IPATH_PORT_WAITING_URG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ipath_portdata*, %struct.file*, %struct.poll_table_struct*)* @ipath_poll_urgent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipath_poll_urgent(%struct.ipath_portdata* %0, %struct.file* %1, %struct.poll_table_struct* %2) #0 {
  %4 = alloca %struct.ipath_portdata*, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca %struct.poll_table_struct*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ipath_devdata*, align 8
  store %struct.ipath_portdata* %0, %struct.ipath_portdata** %4, align 8
  store %struct.file* %1, %struct.file** %5, align 8
  store %struct.poll_table_struct* %2, %struct.poll_table_struct** %6, align 8
  store i32 0, i32* %7, align 4
  %9 = load %struct.ipath_portdata*, %struct.ipath_portdata** %4, align 8
  %10 = getelementptr inbounds %struct.ipath_portdata, %struct.ipath_portdata* %9, i32 0, i32 4
  %11 = load %struct.ipath_devdata*, %struct.ipath_devdata** %10, align 8
  store %struct.ipath_devdata* %11, %struct.ipath_devdata** %8, align 8
  %12 = call i32 (...) @rmb()
  %13 = load %struct.ipath_portdata*, %struct.ipath_portdata** %4, align 8
  %14 = call i32 @ipath_poll_hdrqfull(%struct.ipath_portdata* %13)
  store i32 %14, i32* %7, align 4
  %15 = load %struct.ipath_portdata*, %struct.ipath_portdata** %4, align 8
  %16 = getelementptr inbounds %struct.ipath_portdata, %struct.ipath_portdata* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.ipath_portdata*, %struct.ipath_portdata** %4, align 8
  %19 = getelementptr inbounds %struct.ipath_portdata, %struct.ipath_portdata* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %17, %20
  br i1 %21, label %22, label %33

22:                                               ; preds = %3
  %23 = load i32, i32* @POLLIN, align 4
  %24 = load i32, i32* @POLLRDNORM, align 4
  %25 = or i32 %23, %24
  %26 = load i32, i32* %7, align 4
  %27 = or i32 %26, %25
  store i32 %27, i32* %7, align 4
  %28 = load %struct.ipath_portdata*, %struct.ipath_portdata** %4, align 8
  %29 = getelementptr inbounds %struct.ipath_portdata, %struct.ipath_portdata* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.ipath_portdata*, %struct.ipath_portdata** %4, align 8
  %32 = getelementptr inbounds %struct.ipath_portdata, %struct.ipath_portdata* %31, i32 0, i32 1
  store i64 %30, i64* %32, align 8
  br label %33

33:                                               ; preds = %22, %3
  %34 = load i32, i32* %7, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %47, label %36

36:                                               ; preds = %33
  %37 = load i32, i32* @IPATH_PORT_WAITING_URG, align 4
  %38 = load %struct.ipath_portdata*, %struct.ipath_portdata** %4, align 8
  %39 = getelementptr inbounds %struct.ipath_portdata, %struct.ipath_portdata* %38, i32 0, i32 3
  %40 = call i32 @set_bit(i32 %37, i32* %39)
  %41 = call i32 (...) @wmb()
  %42 = load %struct.file*, %struct.file** %5, align 8
  %43 = load %struct.ipath_portdata*, %struct.ipath_portdata** %4, align 8
  %44 = getelementptr inbounds %struct.ipath_portdata, %struct.ipath_portdata* %43, i32 0, i32 2
  %45 = load %struct.poll_table_struct*, %struct.poll_table_struct** %6, align 8
  %46 = call i32 @poll_wait(%struct.file* %42, i32* %44, %struct.poll_table_struct* %45)
  br label %47

47:                                               ; preds = %36, %33
  %48 = load i32, i32* %7, align 4
  ret i32 %48
}

declare dso_local i32 @rmb(...) #1

declare dso_local i32 @ipath_poll_hdrqfull(%struct.ipath_portdata*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @poll_wait(%struct.file*, i32*, %struct.poll_table_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
