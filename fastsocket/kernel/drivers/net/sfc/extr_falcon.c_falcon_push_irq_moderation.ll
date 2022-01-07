; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/sfc/extr_falcon.c_falcon_push_irq_moderation.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/sfc/extr_falcon.c_falcon_push_irq_moderation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efx_channel = type { i32, i64, %struct.efx_nic* }
%struct.efx_nic = type { i32 }

@FRF_AB_TC_TIMER_MODE = common dso_local global i32 0, align 4
@FFE_BB_TIMER_MODE_INT_HLDOFF = common dso_local global i32 0, align 4
@FRF_AB_TC_TIMER_VAL = common dso_local global i32 0, align 4
@FFE_BB_TIMER_MODE_DIS = common dso_local global i32 0, align 4
@FR_AA_TIMER_COMMAND_KER = common dso_local global i64 0, align 8
@FR_BZ_TIMER_COMMAND_P0 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.efx_channel*)* @falcon_push_irq_moderation to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @falcon_push_irq_moderation(%struct.efx_channel* %0) #0 {
  %2 = alloca %struct.efx_channel*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.efx_nic*, align 8
  store %struct.efx_channel* %0, %struct.efx_channel** %2, align 8
  %5 = load %struct.efx_channel*, %struct.efx_channel** %2, align 8
  %6 = getelementptr inbounds %struct.efx_channel, %struct.efx_channel* %5, i32 0, i32 2
  %7 = load %struct.efx_nic*, %struct.efx_nic** %6, align 8
  store %struct.efx_nic* %7, %struct.efx_nic** %4, align 8
  %8 = load %struct.efx_channel*, %struct.efx_channel** %2, align 8
  %9 = getelementptr inbounds %struct.efx_channel, %struct.efx_channel* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %22

12:                                               ; preds = %1
  %13 = load i32, i32* %3, align 4
  %14 = load i32, i32* @FRF_AB_TC_TIMER_MODE, align 4
  %15 = load i32, i32* @FFE_BB_TIMER_MODE_INT_HLDOFF, align 4
  %16 = load i32, i32* @FRF_AB_TC_TIMER_VAL, align 4
  %17 = load %struct.efx_channel*, %struct.efx_channel** %2, align 8
  %18 = getelementptr inbounds %struct.efx_channel, %struct.efx_channel* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = sub nsw i64 %19, 1
  %21 = call i32 @EFX_POPULATE_DWORD_2(i32 %13, i32 %14, i32 %15, i32 %16, i64 %20)
  br label %28

22:                                               ; preds = %1
  %23 = load i32, i32* %3, align 4
  %24 = load i32, i32* @FRF_AB_TC_TIMER_MODE, align 4
  %25 = load i32, i32* @FFE_BB_TIMER_MODE_DIS, align 4
  %26 = load i32, i32* @FRF_AB_TC_TIMER_VAL, align 4
  %27 = call i32 @EFX_POPULATE_DWORD_2(i32 %23, i32 %24, i32 %25, i32 %26, i64 0)
  br label %28

28:                                               ; preds = %22, %12
  %29 = load i64, i64* @FR_AA_TIMER_COMMAND_KER, align 8
  %30 = load i64, i64* @FR_BZ_TIMER_COMMAND_P0, align 8
  %31 = icmp ne i64 %29, %30
  %32 = zext i1 %31 to i32
  %33 = call i32 @BUILD_BUG_ON(i32 %32)
  %34 = load %struct.efx_nic*, %struct.efx_nic** %4, align 8
  %35 = load i64, i64* @FR_BZ_TIMER_COMMAND_P0, align 8
  %36 = load %struct.efx_channel*, %struct.efx_channel** %2, align 8
  %37 = getelementptr inbounds %struct.efx_channel, %struct.efx_channel* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @efx_writed_page_locked(%struct.efx_nic* %34, i32* %3, i64 %35, i32 %38)
  ret void
}

declare dso_local i32 @EFX_POPULATE_DWORD_2(i32, i32, i32, i32, i64) #1

declare dso_local i32 @BUILD_BUG_ON(i32) #1

declare dso_local i32 @efx_writed_page_locked(%struct.efx_nic*, i32*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
