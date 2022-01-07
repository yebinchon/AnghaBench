; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/sfc/extr_mcdi.c_efx_mcdi_ev_cpl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/sfc/extr_mcdi.c_efx_mcdi_ev_cpl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efx_nic = type { i32 }
%struct.efx_mcdi_iface = type { i32, i32, i32, i32, i64 }

@SEQ_MASK = common dso_local global i32 0, align 4
@hw = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"MC response mismatch tx seq 0x%x rx seq 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.efx_nic*, i32, i32, i32)* @efx_mcdi_ev_cpl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @efx_mcdi_ev_cpl(%struct.efx_nic* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.efx_nic*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.efx_mcdi_iface*, align 8
  %10 = alloca i32, align 4
  store %struct.efx_nic* %0, %struct.efx_nic** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load %struct.efx_nic*, %struct.efx_nic** %5, align 8
  %12 = call %struct.efx_mcdi_iface* @efx_mcdi(%struct.efx_nic* %11)
  store %struct.efx_mcdi_iface* %12, %struct.efx_mcdi_iface** %9, align 8
  store i32 0, i32* %10, align 4
  %13 = load %struct.efx_mcdi_iface*, %struct.efx_mcdi_iface** %9, align 8
  %14 = getelementptr inbounds %struct.efx_mcdi_iface, %struct.efx_mcdi_iface* %13, i32 0, i32 3
  %15 = call i32 @spin_lock(i32* %14)
  %16 = load i32, i32* %6, align 4
  %17 = load %struct.efx_mcdi_iface*, %struct.efx_mcdi_iface** %9, align 8
  %18 = getelementptr inbounds %struct.efx_mcdi_iface, %struct.efx_mcdi_iface* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = xor i32 %16, %19
  %21 = load i32, i32* @SEQ_MASK, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %46

24:                                               ; preds = %4
  %25 = load %struct.efx_mcdi_iface*, %struct.efx_mcdi_iface** %9, align 8
  %26 = getelementptr inbounds %struct.efx_mcdi_iface, %struct.efx_mcdi_iface* %25, i32 0, i32 4
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %24
  %30 = load %struct.efx_mcdi_iface*, %struct.efx_mcdi_iface** %9, align 8
  %31 = getelementptr inbounds %struct.efx_mcdi_iface, %struct.efx_mcdi_iface* %30, i32 0, i32 4
  %32 = load i64, i64* %31, align 8
  %33 = add nsw i64 %32, -1
  store i64 %33, i64* %31, align 8
  br label %45

34:                                               ; preds = %24
  %35 = load %struct.efx_nic*, %struct.efx_nic** %5, align 8
  %36 = load i32, i32* @hw, align 4
  %37 = load %struct.efx_nic*, %struct.efx_nic** %5, align 8
  %38 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* %6, align 4
  %41 = load %struct.efx_mcdi_iface*, %struct.efx_mcdi_iface** %9, align 8
  %42 = getelementptr inbounds %struct.efx_mcdi_iface, %struct.efx_mcdi_iface* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @netif_err(%struct.efx_nic* %35, i32 %36, i32 %39, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %40, i32 %43)
  br label %45

45:                                               ; preds = %34, %29
  br label %53

46:                                               ; preds = %4
  %47 = load i32, i32* %8, align 4
  %48 = load %struct.efx_mcdi_iface*, %struct.efx_mcdi_iface** %9, align 8
  %49 = getelementptr inbounds %struct.efx_mcdi_iface, %struct.efx_mcdi_iface* %48, i32 0, i32 1
  store i32 %47, i32* %49, align 4
  %50 = load i32, i32* %7, align 4
  %51 = load %struct.efx_mcdi_iface*, %struct.efx_mcdi_iface** %9, align 8
  %52 = getelementptr inbounds %struct.efx_mcdi_iface, %struct.efx_mcdi_iface* %51, i32 0, i32 2
  store i32 %50, i32* %52, align 8
  store i32 1, i32* %10, align 4
  br label %53

53:                                               ; preds = %46, %45
  %54 = load %struct.efx_mcdi_iface*, %struct.efx_mcdi_iface** %9, align 8
  %55 = getelementptr inbounds %struct.efx_mcdi_iface, %struct.efx_mcdi_iface* %54, i32 0, i32 3
  %56 = call i32 @spin_unlock(i32* %55)
  %57 = load i32, i32* %10, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %53
  %60 = load %struct.efx_mcdi_iface*, %struct.efx_mcdi_iface** %9, align 8
  %61 = call i32 @efx_mcdi_complete(%struct.efx_mcdi_iface* %60)
  br label %62

62:                                               ; preds = %59, %53
  ret void
}

declare dso_local %struct.efx_mcdi_iface* @efx_mcdi(%struct.efx_nic*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @netif_err(%struct.efx_nic*, i32, i32, i8*, i32, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @efx_mcdi_complete(%struct.efx_mcdi_iface*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
