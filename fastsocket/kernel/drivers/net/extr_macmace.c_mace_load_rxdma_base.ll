; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_macmace.c_mace_load_rxdma_base.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_macmace.c_mace_load_rxdma_base.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.mace_data = type { i64, i64 }

@PSC_ENETRD_CMD = common dso_local global i64 0, align 8
@PSC_ENETRD_ADDR = common dso_local global i64 0, align 8
@PSC_ENETRD_LEN = common dso_local global i64 0, align 8
@N_RX_RING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, i32)* @mace_load_rxdma_base to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mace_load_rxdma_base(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.mace_data*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.net_device*, %struct.net_device** %3, align 8
  %7 = call %struct.mace_data* @netdev_priv(%struct.net_device* %6)
  store %struct.mace_data* %7, %struct.mace_data** %5, align 8
  %8 = load i64, i64* @PSC_ENETRD_CMD, align 8
  %9 = load i32, i32* %4, align 4
  %10 = sext i32 %9 to i64
  %11 = add nsw i64 %8, %10
  %12 = call i32 @psc_write_word(i64 %11, i32 256)
  %13 = load i64, i64* @PSC_ENETRD_ADDR, align 8
  %14 = load i32, i32* %4, align 4
  %15 = sext i32 %14 to i64
  %16 = add nsw i64 %13, %15
  %17 = load %struct.mace_data*, %struct.mace_data** %5, align 8
  %18 = getelementptr inbounds %struct.mace_data, %struct.mace_data* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = trunc i64 %19 to i32
  %21 = call i32 @psc_write_long(i64 %16, i32 %20)
  %22 = load i64, i64* @PSC_ENETRD_LEN, align 8
  %23 = load i32, i32* %4, align 4
  %24 = sext i32 %23 to i64
  %25 = add nsw i64 %22, %24
  %26 = load i32, i32* @N_RX_RING, align 4
  %27 = call i32 @psc_write_long(i64 %25, i32 %26)
  %28 = load i64, i64* @PSC_ENETRD_CMD, align 8
  %29 = load i32, i32* %4, align 4
  %30 = sext i32 %29 to i64
  %31 = add nsw i64 %28, %30
  %32 = call i32 @psc_write_word(i64 %31, i32 38912)
  %33 = load %struct.mace_data*, %struct.mace_data** %5, align 8
  %34 = getelementptr inbounds %struct.mace_data, %struct.mace_data* %33, i32 0, i32 0
  store i64 0, i64* %34, align 8
  ret void
}

declare dso_local %struct.mace_data* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @psc_write_word(i64, i32) #1

declare dso_local i32 @psc_write_long(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
