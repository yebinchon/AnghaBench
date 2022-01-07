; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/sfc/extr_filter.c_efx_filter_reset_rx_def.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/sfc/extr_filter.c_efx_filter_reset_rx_def.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efx_nic = type { i32, i64, %struct.efx_filter_state* }
%struct.efx_filter_state = type { %struct.efx_filter_table* }
%struct.efx_filter_table = type { i32*, %struct.efx_filter_spec* }
%struct.efx_filter_spec = type { i64 }

@EFX_FILTER_TABLE_RX_DEF = common dso_local global i64 0, align 8
@EFX_FILTER_FLAG_RX_RSS = common dso_local global i32 0, align 4
@EFX_FILTER_FLAG_RX_SCATTER = common dso_local global i32 0, align 4
@EFX_FILTER_PRI_MANUAL = common dso_local global i32 0, align 4
@EFX_FILTER_UC_DEF = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.efx_nic*, i32)* @efx_filter_reset_rx_def to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @efx_filter_reset_rx_def(%struct.efx_nic* %0, i32 %1) #0 {
  %3 = alloca %struct.efx_nic*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.efx_filter_state*, align 8
  %6 = alloca %struct.efx_filter_table*, align 8
  %7 = alloca %struct.efx_filter_spec*, align 8
  %8 = alloca i32, align 4
  store %struct.efx_nic* %0, %struct.efx_nic** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %10 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %9, i32 0, i32 2
  %11 = load %struct.efx_filter_state*, %struct.efx_filter_state** %10, align 8
  store %struct.efx_filter_state* %11, %struct.efx_filter_state** %5, align 8
  %12 = load %struct.efx_filter_state*, %struct.efx_filter_state** %5, align 8
  %13 = getelementptr inbounds %struct.efx_filter_state, %struct.efx_filter_state* %12, i32 0, i32 0
  %14 = load %struct.efx_filter_table*, %struct.efx_filter_table** %13, align 8
  %15 = load i64, i64* @EFX_FILTER_TABLE_RX_DEF, align 8
  %16 = getelementptr inbounds %struct.efx_filter_table, %struct.efx_filter_table* %14, i64 %15
  store %struct.efx_filter_table* %16, %struct.efx_filter_table** %6, align 8
  %17 = load %struct.efx_filter_table*, %struct.efx_filter_table** %6, align 8
  %18 = getelementptr inbounds %struct.efx_filter_table, %struct.efx_filter_table* %17, i32 0, i32 1
  %19 = load %struct.efx_filter_spec*, %struct.efx_filter_spec** %18, align 8
  %20 = load i32, i32* %4, align 4
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds %struct.efx_filter_spec, %struct.efx_filter_spec* %19, i64 %21
  store %struct.efx_filter_spec* %22, %struct.efx_filter_spec** %7, align 8
  store i32 0, i32* %8, align 4
  %23 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %24 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp sgt i32 %25, 1
  br i1 %26, label %27, label %31

27:                                               ; preds = %2
  %28 = load i32, i32* @EFX_FILTER_FLAG_RX_RSS, align 4
  %29 = load i32, i32* %8, align 4
  %30 = or i32 %29, %28
  store i32 %30, i32* %8, align 4
  br label %31

31:                                               ; preds = %27, %2
  %32 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %33 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %31
  %37 = load i32, i32* @EFX_FILTER_FLAG_RX_SCATTER, align 4
  %38 = load i32, i32* %8, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %8, align 4
  br label %40

40:                                               ; preds = %36, %31
  %41 = load %struct.efx_filter_spec*, %struct.efx_filter_spec** %7, align 8
  %42 = load i32, i32* @EFX_FILTER_PRI_MANUAL, align 4
  %43 = load i32, i32* %8, align 4
  %44 = call i32 @efx_filter_init_rx(%struct.efx_filter_spec* %41, i32 %42, i32 %43, i32 0)
  %45 = load i64, i64* @EFX_FILTER_UC_DEF, align 8
  %46 = load i32, i32* %4, align 4
  %47 = zext i32 %46 to i64
  %48 = add nsw i64 %45, %47
  %49 = load %struct.efx_filter_spec*, %struct.efx_filter_spec** %7, align 8
  %50 = getelementptr inbounds %struct.efx_filter_spec, %struct.efx_filter_spec* %49, i32 0, i32 0
  store i64 %48, i64* %50, align 8
  %51 = load i32, i32* %4, align 4
  %52 = shl i32 1, %51
  %53 = load %struct.efx_filter_table*, %struct.efx_filter_table** %6, align 8
  %54 = getelementptr inbounds %struct.efx_filter_table, %struct.efx_filter_table* %53, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 0
  %57 = load i32, i32* %56, align 4
  %58 = or i32 %57, %52
  store i32 %58, i32* %56, align 4
  ret void
}

declare dso_local i32 @efx_filter_init_rx(%struct.efx_filter_spec*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
