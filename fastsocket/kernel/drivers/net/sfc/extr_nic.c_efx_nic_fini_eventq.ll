; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/sfc/extr_nic.c_efx_nic_fini_eventq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/sfc/extr_nic.c_efx_nic_fini_eventq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efx_channel = type { i32, i32, %struct.efx_nic* }
%struct.efx_nic = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@EFX_REV_SIENA_A0 = common dso_local global i64 0, align 8
@FR_BZ_TIMER_TBL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @efx_nic_fini_eventq(%struct.efx_channel* %0) #0 {
  %2 = alloca %struct.efx_channel*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.efx_nic*, align 8
  store %struct.efx_channel* %0, %struct.efx_channel** %2, align 8
  %5 = load %struct.efx_channel*, %struct.efx_channel** %2, align 8
  %6 = getelementptr inbounds %struct.efx_channel, %struct.efx_channel* %5, i32 0, i32 2
  %7 = load %struct.efx_nic*, %struct.efx_nic** %6, align 8
  store %struct.efx_nic* %7, %struct.efx_nic** %4, align 8
  %8 = load i32, i32* %3, align 4
  %9 = call i32 @EFX_ZERO_OWORD(i32 %8)
  %10 = load %struct.efx_nic*, %struct.efx_nic** %4, align 8
  %11 = load %struct.efx_nic*, %struct.efx_nic** %4, align 8
  %12 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.efx_channel*, %struct.efx_channel** %2, align 8
  %17 = getelementptr inbounds %struct.efx_channel, %struct.efx_channel* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @efx_writeo_table(%struct.efx_nic* %10, i32* %3, i32 %15, i32 %18)
  %20 = load %struct.efx_nic*, %struct.efx_nic** %4, align 8
  %21 = call i64 @efx_nic_rev(%struct.efx_nic* %20)
  %22 = load i64, i64* @EFX_REV_SIENA_A0, align 8
  %23 = icmp sge i64 %21, %22
  br i1 %23, label %24, label %31

24:                                               ; preds = %1
  %25 = load %struct.efx_nic*, %struct.efx_nic** %4, align 8
  %26 = load i32, i32* @FR_BZ_TIMER_TBL, align 4
  %27 = load %struct.efx_channel*, %struct.efx_channel** %2, align 8
  %28 = getelementptr inbounds %struct.efx_channel, %struct.efx_channel* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @efx_writeo_table(%struct.efx_nic* %25, i32* %3, i32 %26, i32 %29)
  br label %31

31:                                               ; preds = %24, %1
  %32 = load %struct.efx_nic*, %struct.efx_nic** %4, align 8
  %33 = load %struct.efx_channel*, %struct.efx_channel** %2, align 8
  %34 = getelementptr inbounds %struct.efx_channel, %struct.efx_channel* %33, i32 0, i32 0
  %35 = call i32 @efx_fini_special_buffer(%struct.efx_nic* %32, i32* %34)
  ret void
}

declare dso_local i32 @EFX_ZERO_OWORD(i32) #1

declare dso_local i32 @efx_writeo_table(%struct.efx_nic*, i32*, i32, i32) #1

declare dso_local i64 @efx_nic_rev(%struct.efx_nic*) #1

declare dso_local i32 @efx_fini_special_buffer(%struct.efx_nic*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
