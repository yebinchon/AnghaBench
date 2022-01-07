; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_verbs.c_qib_modify_port.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_verbs.c_qib_modify_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_device = type { i32 }
%struct.ib_port_modify = type { i32, i32 }
%struct.qib_ibport = type { i64, i32 }
%struct.qib_pportdata = type { i32 }

@IB_PORT_SHUTDOWN = common dso_local global i32 0, align 4
@QIB_IB_LINKDOWN = common dso_local global i32 0, align 4
@IB_PORT_RESET_QKEY_CNTR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_device*, i32, i32, %struct.ib_port_modify*)* @qib_modify_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qib_modify_port(%struct.ib_device* %0, i32 %1, i32 %2, %struct.ib_port_modify* %3) #0 {
  %5 = alloca %struct.ib_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.ib_port_modify*, align 8
  %9 = alloca %struct.qib_ibport*, align 8
  %10 = alloca %struct.qib_pportdata*, align 8
  store %struct.ib_device* %0, %struct.ib_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store %struct.ib_port_modify* %3, %struct.ib_port_modify** %8, align 8
  %11 = load %struct.ib_device*, %struct.ib_device** %5, align 8
  %12 = load i32, i32* %6, align 4
  %13 = call %struct.qib_ibport* @to_iport(%struct.ib_device* %11, i32 %12)
  store %struct.qib_ibport* %13, %struct.qib_ibport** %9, align 8
  %14 = load %struct.qib_ibport*, %struct.qib_ibport** %9, align 8
  %15 = call %struct.qib_pportdata* @ppd_from_ibp(%struct.qib_ibport* %14)
  store %struct.qib_pportdata* %15, %struct.qib_pportdata** %10, align 8
  %16 = load %struct.ib_port_modify*, %struct.ib_port_modify** %8, align 8
  %17 = getelementptr inbounds %struct.ib_port_modify, %struct.ib_port_modify* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.qib_ibport*, %struct.qib_ibport** %9, align 8
  %20 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = or i32 %21, %18
  store i32 %22, i32* %20, align 8
  %23 = load %struct.ib_port_modify*, %struct.ib_port_modify** %8, align 8
  %24 = getelementptr inbounds %struct.ib_port_modify, %struct.ib_port_modify* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = xor i32 %25, -1
  %27 = load %struct.qib_ibport*, %struct.qib_ibport** %9, align 8
  %28 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = and i32 %29, %26
  store i32 %30, i32* %28, align 8
  %31 = load %struct.ib_port_modify*, %struct.ib_port_modify** %8, align 8
  %32 = getelementptr inbounds %struct.ib_port_modify, %struct.ib_port_modify* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %40, label %35

35:                                               ; preds = %4
  %36 = load %struct.ib_port_modify*, %struct.ib_port_modify** %8, align 8
  %37 = getelementptr inbounds %struct.ib_port_modify, %struct.ib_port_modify* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %35, %4
  %41 = load %struct.qib_ibport*, %struct.qib_ibport** %9, align 8
  %42 = call i32 @qib_cap_mask_chg(%struct.qib_ibport* %41)
  br label %43

43:                                               ; preds = %40, %35
  %44 = load i32, i32* %7, align 4
  %45 = load i32, i32* @IB_PORT_SHUTDOWN, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %43
  %49 = load %struct.qib_pportdata*, %struct.qib_pportdata** %10, align 8
  %50 = load i32, i32* @QIB_IB_LINKDOWN, align 4
  %51 = call i32 @qib_set_linkstate(%struct.qib_pportdata* %49, i32 %50)
  br label %52

52:                                               ; preds = %48, %43
  %53 = load i32, i32* %7, align 4
  %54 = load i32, i32* @IB_PORT_RESET_QKEY_CNTR, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %52
  %58 = load %struct.qib_ibport*, %struct.qib_ibport** %9, align 8
  %59 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %58, i32 0, i32 0
  store i64 0, i64* %59, align 8
  br label %60

60:                                               ; preds = %57, %52
  ret i32 0
}

declare dso_local %struct.qib_ibport* @to_iport(%struct.ib_device*, i32) #1

declare dso_local %struct.qib_pportdata* @ppd_from_ibp(%struct.qib_ibport*) #1

declare dso_local i32 @qib_cap_mask_chg(%struct.qib_ibport*) #1

declare dso_local i32 @qib_set_linkstate(%struct.qib_pportdata*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
