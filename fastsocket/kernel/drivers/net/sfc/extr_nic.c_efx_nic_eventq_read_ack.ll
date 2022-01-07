; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/sfc/extr_nic.c_efx_nic_eventq_read_ack.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/sfc/extr_nic.c_efx_nic_eventq_read_ack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efx_channel = type { i32, i32, i32, %struct.efx_nic* }
%struct.efx_nic = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@FRF_AZ_EVQ_RPTR = common dso_local global i32 0, align 4
@FR_BZ_EVQ_RPTR_STEP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @efx_nic_eventq_read_ack(%struct.efx_channel* %0) #0 {
  %2 = alloca %struct.efx_channel*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.efx_nic*, align 8
  store %struct.efx_channel* %0, %struct.efx_channel** %2, align 8
  %5 = load %struct.efx_channel*, %struct.efx_channel** %2, align 8
  %6 = getelementptr inbounds %struct.efx_channel, %struct.efx_channel* %5, i32 0, i32 3
  %7 = load %struct.efx_nic*, %struct.efx_nic** %6, align 8
  store %struct.efx_nic* %7, %struct.efx_nic** %4, align 8
  %8 = load i32, i32* %3, align 4
  %9 = load i32, i32* @FRF_AZ_EVQ_RPTR, align 4
  %10 = load %struct.efx_channel*, %struct.efx_channel** %2, align 8
  %11 = getelementptr inbounds %struct.efx_channel, %struct.efx_channel* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load %struct.efx_channel*, %struct.efx_channel** %2, align 8
  %14 = getelementptr inbounds %struct.efx_channel, %struct.efx_channel* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = and i32 %12, %15
  %17 = call i32 @EFX_POPULATE_DWORD_1(i32 %8, i32 %9, i32 %16)
  %18 = load %struct.efx_nic*, %struct.efx_nic** %4, align 8
  %19 = load %struct.efx_nic*, %struct.efx_nic** %4, align 8
  %20 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i32, i32* @FR_BZ_EVQ_RPTR_STEP, align 4
  %25 = load %struct.efx_channel*, %struct.efx_channel** %2, align 8
  %26 = getelementptr inbounds %struct.efx_channel, %struct.efx_channel* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = mul nsw i32 %24, %27
  %29 = sext i32 %28 to i64
  %30 = add nsw i64 %23, %29
  %31 = call i32 @efx_writed(%struct.efx_nic* %18, i32* %3, i64 %30)
  ret void
}

declare dso_local i32 @EFX_POPULATE_DWORD_1(i32, i32, i32) #1

declare dso_local i32 @efx_writed(%struct.efx_nic*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
