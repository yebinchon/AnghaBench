; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/sfc/extr_siena.c_siena_push_irq_moderation.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/sfc/extr_siena.c_siena_push_irq_moderation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efx_channel = type { i32, i32, i64 }

@FRF_CZ_TC_TIMER_MODE = common dso_local global i32 0, align 4
@FFE_CZ_TIMER_MODE_INT_HLDOFF = common dso_local global i32 0, align 4
@FRF_CZ_TC_TIMER_VAL = common dso_local global i32 0, align 4
@FFE_CZ_TIMER_MODE_DIS = common dso_local global i32 0, align 4
@FR_BZ_TIMER_COMMAND_P0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.efx_channel*)* @siena_push_irq_moderation to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @siena_push_irq_moderation(%struct.efx_channel* %0) #0 {
  %2 = alloca %struct.efx_channel*, align 8
  %3 = alloca i32, align 4
  store %struct.efx_channel* %0, %struct.efx_channel** %2, align 8
  %4 = load %struct.efx_channel*, %struct.efx_channel** %2, align 8
  %5 = getelementptr inbounds %struct.efx_channel, %struct.efx_channel* %4, i32 0, i32 2
  %6 = load i64, i64* %5, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %18

8:                                                ; preds = %1
  %9 = load i32, i32* %3, align 4
  %10 = load i32, i32* @FRF_CZ_TC_TIMER_MODE, align 4
  %11 = load i32, i32* @FFE_CZ_TIMER_MODE_INT_HLDOFF, align 4
  %12 = load i32, i32* @FRF_CZ_TC_TIMER_VAL, align 4
  %13 = load %struct.efx_channel*, %struct.efx_channel** %2, align 8
  %14 = getelementptr inbounds %struct.efx_channel, %struct.efx_channel* %13, i32 0, i32 2
  %15 = load i64, i64* %14, align 8
  %16 = sub nsw i64 %15, 1
  %17 = call i32 @EFX_POPULATE_DWORD_2(i32 %9, i32 %10, i32 %11, i32 %12, i64 %16)
  br label %24

18:                                               ; preds = %1
  %19 = load i32, i32* %3, align 4
  %20 = load i32, i32* @FRF_CZ_TC_TIMER_MODE, align 4
  %21 = load i32, i32* @FFE_CZ_TIMER_MODE_DIS, align 4
  %22 = load i32, i32* @FRF_CZ_TC_TIMER_VAL, align 4
  %23 = call i32 @EFX_POPULATE_DWORD_2(i32 %19, i32 %20, i32 %21, i32 %22, i64 0)
  br label %24

24:                                               ; preds = %18, %8
  %25 = load %struct.efx_channel*, %struct.efx_channel** %2, align 8
  %26 = getelementptr inbounds %struct.efx_channel, %struct.efx_channel* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @FR_BZ_TIMER_COMMAND_P0, align 4
  %29 = load %struct.efx_channel*, %struct.efx_channel** %2, align 8
  %30 = getelementptr inbounds %struct.efx_channel, %struct.efx_channel* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @efx_writed_page_locked(i32 %27, i32* %3, i32 %28, i32 %31)
  ret void
}

declare dso_local i32 @EFX_POPULATE_DWORD_2(i32, i32, i32, i32, i64) #1

declare dso_local i32 @efx_writed_page_locked(i32, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
