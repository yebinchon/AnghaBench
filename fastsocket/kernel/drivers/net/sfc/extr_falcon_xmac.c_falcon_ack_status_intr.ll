; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/sfc/extr_falcon_xmac.c_falcon_ack_status_intr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/sfc/extr_falcon_xmac.c_falcon_ack_status_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efx_nic = type { %struct.TYPE_2__, %struct.falcon_nic_data* }
%struct.TYPE_2__ = type { i32 }
%struct.falcon_nic_data = type { i64 }

@EFX_REV_FALCON_B0 = common dso_local global i64 0, align 8
@FR_AB_XM_MGT_INT_MSK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.efx_nic*)* @falcon_ack_status_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @falcon_ack_status_intr(%struct.efx_nic* %0) #0 {
  %2 = alloca %struct.efx_nic*, align 8
  %3 = alloca %struct.falcon_nic_data*, align 8
  %4 = alloca i32, align 4
  store %struct.efx_nic* %0, %struct.efx_nic** %2, align 8
  %5 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %6 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %5, i32 0, i32 1
  %7 = load %struct.falcon_nic_data*, %struct.falcon_nic_data** %6, align 8
  store %struct.falcon_nic_data* %7, %struct.falcon_nic_data** %3, align 8
  %8 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %9 = call i64 @efx_nic_rev(%struct.efx_nic* %8)
  %10 = load i64, i64* @EFX_REV_FALCON_B0, align 8
  %11 = icmp ne i64 %9, %10
  br i1 %11, label %16, label %12

12:                                               ; preds = %1
  %13 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %14 = call i64 @LOOPBACK_INTERNAL(%struct.efx_nic* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %12, %1
  br label %38

17:                                               ; preds = %12
  %18 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %19 = call i32 @EFX_WORKAROUND_5147(%struct.efx_nic* %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %17
  %22 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %23 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %21, %17
  br label %38

28:                                               ; preds = %21
  %29 = load %struct.falcon_nic_data*, %struct.falcon_nic_data** %3, align 8
  %30 = getelementptr inbounds %struct.falcon_nic_data, %struct.falcon_nic_data* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %28
  br label %38

34:                                               ; preds = %28
  %35 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %36 = load i32, i32* @FR_AB_XM_MGT_INT_MSK, align 4
  %37 = call i32 @efx_reado(%struct.efx_nic* %35, i32* %4, i32 %36)
  br label %38

38:                                               ; preds = %34, %33, %27, %16
  ret void
}

declare dso_local i64 @efx_nic_rev(%struct.efx_nic*) #1

declare dso_local i64 @LOOPBACK_INTERNAL(%struct.efx_nic*) #1

declare dso_local i32 @EFX_WORKAROUND_5147(%struct.efx_nic*) #1

declare dso_local i32 @efx_reado(%struct.efx_nic*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
