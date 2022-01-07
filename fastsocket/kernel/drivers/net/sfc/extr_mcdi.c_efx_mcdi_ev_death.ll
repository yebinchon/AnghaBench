; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/sfc/extr_mcdi.c_efx_mcdi_ev_death.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/sfc/extr_mcdi.c_efx_mcdi_ev_death.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efx_nic = type { i32 }
%struct.efx_mcdi_iface = type { i64, i32, i32, i32, i64 }

@MCDI_MODE_EVENTS = common dso_local global i64 0, align 8
@RESET_TYPE_MC_FAILURE = common dso_local global i32 0, align 4
@MCDI_STATUS_DELAY_COUNT = common dso_local global i32 0, align 4
@MCDI_STATUS_DELAY_US = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.efx_nic*, i32)* @efx_mcdi_ev_death to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @efx_mcdi_ev_death(%struct.efx_nic* %0, i32 %1) #0 {
  %3 = alloca %struct.efx_nic*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.efx_mcdi_iface*, align 8
  %6 = alloca i32, align 4
  store %struct.efx_nic* %0, %struct.efx_nic** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %8 = call %struct.efx_mcdi_iface* @efx_mcdi(%struct.efx_nic* %7)
  store %struct.efx_mcdi_iface* %8, %struct.efx_mcdi_iface** %5, align 8
  %9 = load %struct.efx_mcdi_iface*, %struct.efx_mcdi_iface** %5, align 8
  %10 = getelementptr inbounds %struct.efx_mcdi_iface, %struct.efx_mcdi_iface* %9, i32 0, i32 2
  %11 = call i32 @spin_lock(i32* %10)
  %12 = load %struct.efx_mcdi_iface*, %struct.efx_mcdi_iface** %5, align 8
  %13 = call i64 @efx_mcdi_complete(%struct.efx_mcdi_iface* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %32

15:                                               ; preds = %2
  %16 = load %struct.efx_mcdi_iface*, %struct.efx_mcdi_iface** %5, align 8
  %17 = getelementptr inbounds %struct.efx_mcdi_iface, %struct.efx_mcdi_iface* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @MCDI_MODE_EVENTS, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %31

21:                                               ; preds = %15
  %22 = load i32, i32* %4, align 4
  %23 = load %struct.efx_mcdi_iface*, %struct.efx_mcdi_iface** %5, align 8
  %24 = getelementptr inbounds %struct.efx_mcdi_iface, %struct.efx_mcdi_iface* %23, i32 0, i32 1
  store i32 %22, i32* %24, align 8
  %25 = load %struct.efx_mcdi_iface*, %struct.efx_mcdi_iface** %5, align 8
  %26 = getelementptr inbounds %struct.efx_mcdi_iface, %struct.efx_mcdi_iface* %25, i32 0, i32 4
  store i64 0, i64* %26, align 8
  %27 = load %struct.efx_mcdi_iface*, %struct.efx_mcdi_iface** %5, align 8
  %28 = getelementptr inbounds %struct.efx_mcdi_iface, %struct.efx_mcdi_iface* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 8
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %28, align 8
  br label %31

31:                                               ; preds = %21, %15
  br label %52

32:                                               ; preds = %2
  %33 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %34 = load i32, i32* @RESET_TYPE_MC_FAILURE, align 4
  %35 = call i32 @efx_schedule_reset(%struct.efx_nic* %33, i32 %34)
  store i32 0, i32* %6, align 4
  br label %36

36:                                               ; preds = %48, %32
  %37 = load i32, i32* %6, align 4
  %38 = load i32, i32* @MCDI_STATUS_DELAY_COUNT, align 4
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %40, label %51

40:                                               ; preds = %36
  %41 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %42 = call i64 @efx_mcdi_poll_reboot(%struct.efx_nic* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %40
  br label %51

45:                                               ; preds = %40
  %46 = load i32, i32* @MCDI_STATUS_DELAY_US, align 4
  %47 = call i32 @udelay(i32 %46)
  br label %48

48:                                               ; preds = %45
  %49 = load i32, i32* %6, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %6, align 4
  br label %36

51:                                               ; preds = %44, %36
  br label %52

52:                                               ; preds = %51, %31
  %53 = load %struct.efx_mcdi_iface*, %struct.efx_mcdi_iface** %5, align 8
  %54 = getelementptr inbounds %struct.efx_mcdi_iface, %struct.efx_mcdi_iface* %53, i32 0, i32 2
  %55 = call i32 @spin_unlock(i32* %54)
  ret void
}

declare dso_local %struct.efx_mcdi_iface* @efx_mcdi(%struct.efx_nic*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @efx_mcdi_complete(%struct.efx_mcdi_iface*) #1

declare dso_local i32 @efx_schedule_reset(%struct.efx_nic*, i32) #1

declare dso_local i64 @efx_mcdi_poll_reboot(%struct.efx_nic*) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
