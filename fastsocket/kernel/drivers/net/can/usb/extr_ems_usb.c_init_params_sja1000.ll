; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/can/usb/extr_ems_usb.c_init_params_sja1000.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/can/usb/extr_ems_usb.c_init_params_sja1000.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ems_cpc_msg = type { i32, %struct.TYPE_6__, i64, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.cpc_sja1000_params }
%struct.cpc_sja1000_params = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64 }

@CPC_CMD_TYPE_CAN_PARAMS = common dso_local global i32 0, align 4
@CPC_CC_TYPE_SJA1000 = common dso_local global i32 0, align 4
@SJA1000_DEFAULT_OUTPUT_CONTROL = common dso_local global i32 0, align 4
@SJA1000_MOD_RM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ems_cpc_msg*)* @init_params_sja1000 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_params_sja1000(%struct.ems_cpc_msg* %0) #0 {
  %2 = alloca %struct.ems_cpc_msg*, align 8
  %3 = alloca %struct.cpc_sja1000_params*, align 8
  store %struct.ems_cpc_msg* %0, %struct.ems_cpc_msg** %2, align 8
  %4 = load %struct.ems_cpc_msg*, %struct.ems_cpc_msg** %2, align 8
  %5 = getelementptr inbounds %struct.ems_cpc_msg, %struct.ems_cpc_msg* %4, i32 0, i32 1
  %6 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  store %struct.cpc_sja1000_params* %8, %struct.cpc_sja1000_params** %3, align 8
  %9 = load i32, i32* @CPC_CMD_TYPE_CAN_PARAMS, align 4
  %10 = load %struct.ems_cpc_msg*, %struct.ems_cpc_msg** %2, align 8
  %11 = getelementptr inbounds %struct.ems_cpc_msg, %struct.ems_cpc_msg* %10, i32 0, i32 3
  store i32 %9, i32* %11, align 8
  %12 = load %struct.ems_cpc_msg*, %struct.ems_cpc_msg** %2, align 8
  %13 = getelementptr inbounds %struct.ems_cpc_msg, %struct.ems_cpc_msg* %12, i32 0, i32 0
  store i32 4, i32* %13, align 8
  %14 = load %struct.ems_cpc_msg*, %struct.ems_cpc_msg** %2, align 8
  %15 = getelementptr inbounds %struct.ems_cpc_msg, %struct.ems_cpc_msg* %14, i32 0, i32 2
  store i64 0, i64* %15, align 8
  %16 = load i32, i32* @CPC_CC_TYPE_SJA1000, align 4
  %17 = load %struct.ems_cpc_msg*, %struct.ems_cpc_msg** %2, align 8
  %18 = getelementptr inbounds %struct.ems_cpc_msg, %struct.ems_cpc_msg* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  store i32 %16, i32* %20, align 8
  %21 = load %struct.cpc_sja1000_params*, %struct.cpc_sja1000_params** %3, align 8
  %22 = getelementptr inbounds %struct.cpc_sja1000_params, %struct.cpc_sja1000_params* %21, i32 0, i32 0
  store i32 0, i32* %22, align 8
  %23 = load %struct.cpc_sja1000_params*, %struct.cpc_sja1000_params** %3, align 8
  %24 = getelementptr inbounds %struct.cpc_sja1000_params, %struct.cpc_sja1000_params* %23, i32 0, i32 1
  store i32 0, i32* %24, align 4
  %25 = load %struct.cpc_sja1000_params*, %struct.cpc_sja1000_params** %3, align 8
  %26 = getelementptr inbounds %struct.cpc_sja1000_params, %struct.cpc_sja1000_params* %25, i32 0, i32 2
  store i32 0, i32* %26, align 8
  %27 = load %struct.cpc_sja1000_params*, %struct.cpc_sja1000_params** %3, align 8
  %28 = getelementptr inbounds %struct.cpc_sja1000_params, %struct.cpc_sja1000_params* %27, i32 0, i32 3
  store i32 0, i32* %28, align 4
  %29 = load %struct.cpc_sja1000_params*, %struct.cpc_sja1000_params** %3, align 8
  %30 = getelementptr inbounds %struct.cpc_sja1000_params, %struct.cpc_sja1000_params* %29, i32 0, i32 4
  store i32 255, i32* %30, align 8
  %31 = load %struct.cpc_sja1000_params*, %struct.cpc_sja1000_params** %3, align 8
  %32 = getelementptr inbounds %struct.cpc_sja1000_params, %struct.cpc_sja1000_params* %31, i32 0, i32 5
  store i32 255, i32* %32, align 4
  %33 = load %struct.cpc_sja1000_params*, %struct.cpc_sja1000_params** %3, align 8
  %34 = getelementptr inbounds %struct.cpc_sja1000_params, %struct.cpc_sja1000_params* %33, i32 0, i32 6
  store i32 255, i32* %34, align 8
  %35 = load %struct.cpc_sja1000_params*, %struct.cpc_sja1000_params** %3, align 8
  %36 = getelementptr inbounds %struct.cpc_sja1000_params, %struct.cpc_sja1000_params* %35, i32 0, i32 7
  store i32 255, i32* %36, align 4
  %37 = load %struct.cpc_sja1000_params*, %struct.cpc_sja1000_params** %3, align 8
  %38 = getelementptr inbounds %struct.cpc_sja1000_params, %struct.cpc_sja1000_params* %37, i32 0, i32 11
  store i64 0, i64* %38, align 8
  %39 = load %struct.cpc_sja1000_params*, %struct.cpc_sja1000_params** %3, align 8
  %40 = getelementptr inbounds %struct.cpc_sja1000_params, %struct.cpc_sja1000_params* %39, i32 0, i32 10
  store i64 0, i64* %40, align 8
  %41 = load i32, i32* @SJA1000_DEFAULT_OUTPUT_CONTROL, align 4
  %42 = load %struct.cpc_sja1000_params*, %struct.cpc_sja1000_params** %3, align 8
  %43 = getelementptr inbounds %struct.cpc_sja1000_params, %struct.cpc_sja1000_params* %42, i32 0, i32 9
  store i32 %41, i32* %43, align 4
  %44 = load i32, i32* @SJA1000_MOD_RM, align 4
  %45 = load %struct.cpc_sja1000_params*, %struct.cpc_sja1000_params** %3, align 8
  %46 = getelementptr inbounds %struct.cpc_sja1000_params, %struct.cpc_sja1000_params* %45, i32 0, i32 8
  store i32 %44, i32* %46, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
