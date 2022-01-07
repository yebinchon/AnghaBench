; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ipath/extr_ipath_verbs.c_ipath_modify_port.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ipath/extr_ipath_verbs.c_ipath_modify_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_device = type { i32 }
%struct.ib_port_modify = type { i32, i32 }
%struct.ipath_ibdev = type { i64, i32, i32 }

@IB_PORT_SHUTDOWN = common dso_local global i32 0, align 4
@IPATH_IB_LINKDOWN = common dso_local global i32 0, align 4
@IB_PORT_RESET_QKEY_CNTR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_device*, i32, i32, %struct.ib_port_modify*)* @ipath_modify_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipath_modify_port(%struct.ib_device* %0, i32 %1, i32 %2, %struct.ib_port_modify* %3) #0 {
  %5 = alloca %struct.ib_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.ib_port_modify*, align 8
  %9 = alloca %struct.ipath_ibdev*, align 8
  store %struct.ib_device* %0, %struct.ib_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store %struct.ib_port_modify* %3, %struct.ib_port_modify** %8, align 8
  %10 = load %struct.ib_device*, %struct.ib_device** %5, align 8
  %11 = call %struct.ipath_ibdev* @to_idev(%struct.ib_device* %10)
  store %struct.ipath_ibdev* %11, %struct.ipath_ibdev** %9, align 8
  %12 = load %struct.ib_port_modify*, %struct.ib_port_modify** %8, align 8
  %13 = getelementptr inbounds %struct.ib_port_modify, %struct.ib_port_modify* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.ipath_ibdev*, %struct.ipath_ibdev** %9, align 8
  %16 = getelementptr inbounds %struct.ipath_ibdev, %struct.ipath_ibdev* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = or i32 %17, %14
  store i32 %18, i32* %16, align 4
  %19 = load %struct.ib_port_modify*, %struct.ib_port_modify** %8, align 8
  %20 = getelementptr inbounds %struct.ib_port_modify, %struct.ib_port_modify* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = xor i32 %21, -1
  %23 = load %struct.ipath_ibdev*, %struct.ipath_ibdev** %9, align 8
  %24 = getelementptr inbounds %struct.ipath_ibdev, %struct.ipath_ibdev* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = and i32 %25, %22
  store i32 %26, i32* %24, align 4
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* @IB_PORT_SHUTDOWN, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %4
  %32 = load %struct.ipath_ibdev*, %struct.ipath_ibdev** %9, align 8
  %33 = getelementptr inbounds %struct.ipath_ibdev, %struct.ipath_ibdev* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @IPATH_IB_LINKDOWN, align 4
  %36 = call i32 @ipath_set_linkstate(i32 %34, i32 %35)
  br label %37

37:                                               ; preds = %31, %4
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* @IB_PORT_RESET_QKEY_CNTR, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %37
  %43 = load %struct.ipath_ibdev*, %struct.ipath_ibdev** %9, align 8
  %44 = getelementptr inbounds %struct.ipath_ibdev, %struct.ipath_ibdev* %43, i32 0, i32 0
  store i64 0, i64* %44, align 8
  br label %45

45:                                               ; preds = %42, %37
  ret i32 0
}

declare dso_local %struct.ipath_ibdev* @to_idev(%struct.ib_device*) #1

declare dso_local i32 @ipath_set_linkstate(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
