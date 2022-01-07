; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/sfc/extr_mcdi.c_efx_mcdi_await_completion.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/sfc/extr_mcdi.c_efx_mcdi_await_completion.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efx_nic = type { i32 }
%struct.efx_mcdi_iface = type { i64, i32, i32 }

@MCDI_STATE_COMPLETED = common dso_local global i64 0, align 8
@MCDI_RPC_TIMEOUT = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@MCDI_MODE_POLL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.efx_nic*)* @efx_mcdi_await_completion to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @efx_mcdi_await_completion(%struct.efx_nic* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.efx_nic*, align 8
  %4 = alloca %struct.efx_mcdi_iface*, align 8
  store %struct.efx_nic* %0, %struct.efx_nic** %3, align 8
  %5 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %6 = call %struct.efx_mcdi_iface* @efx_mcdi(%struct.efx_nic* %5)
  store %struct.efx_mcdi_iface* %6, %struct.efx_mcdi_iface** %4, align 8
  %7 = load %struct.efx_mcdi_iface*, %struct.efx_mcdi_iface** %4, align 8
  %8 = getelementptr inbounds %struct.efx_mcdi_iface, %struct.efx_mcdi_iface* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.efx_mcdi_iface*, %struct.efx_mcdi_iface** %4, align 8
  %11 = getelementptr inbounds %struct.efx_mcdi_iface, %struct.efx_mcdi_iface* %10, i32 0, i32 1
  %12 = call i64 @atomic_read(i32* %11)
  %13 = load i64, i64* @MCDI_STATE_COMPLETED, align 8
  %14 = icmp eq i64 %12, %13
  %15 = zext i1 %14 to i32
  %16 = load i32, i32* @MCDI_RPC_TIMEOUT, align 4
  %17 = call i64 @wait_event_timeout(i32 %9, i32 %15, i32 %16)
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %1
  %20 = load i32, i32* @ETIMEDOUT, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %32

22:                                               ; preds = %1
  %23 = load %struct.efx_mcdi_iface*, %struct.efx_mcdi_iface** %4, align 8
  %24 = getelementptr inbounds %struct.efx_mcdi_iface, %struct.efx_mcdi_iface* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @MCDI_MODE_POLL, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %22
  %29 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %30 = call i32 @efx_mcdi_poll(%struct.efx_nic* %29)
  store i32 %30, i32* %2, align 4
  br label %32

31:                                               ; preds = %22
  store i32 0, i32* %2, align 4
  br label %32

32:                                               ; preds = %31, %28, %19
  %33 = load i32, i32* %2, align 4
  ret i32 %33
}

declare dso_local %struct.efx_mcdi_iface* @efx_mcdi(%struct.efx_nic*) #1

declare dso_local i64 @wait_event_timeout(i32, i32, i32) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @efx_mcdi_poll(%struct.efx_nic*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
