; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_tsi108_eth.c_tsi108_stat_carry.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_tsi108_eth.c_tsi108_stat_carry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.tsi108_prv_data = type { i32, i32, %struct.TYPE_2__, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@TSI108_STAT_CARRY1 = common dso_local global i32 0, align 4
@TSI108_STAT_CARRY2 = common dso_local global i32 0, align 4
@TSI108_STAT_CARRY1_RXBYTES = common dso_local global i32 0, align 4
@TSI108_STAT_RXBYTES_CARRY = common dso_local global i32 0, align 4
@TSI108_STAT_CARRY1_RXPKTS = common dso_local global i32 0, align 4
@TSI108_STAT_RXPKTS_CARRY = common dso_local global i32 0, align 4
@TSI108_STAT_CARRY1_RXFCS = common dso_local global i32 0, align 4
@TSI108_STAT_RXFCS_CARRY = common dso_local global i32 0, align 4
@TSI108_STAT_CARRY1_RXMCAST = common dso_local global i32 0, align 4
@TSI108_STAT_RXMCAST_CARRY = common dso_local global i32 0, align 4
@TSI108_STAT_CARRY1_RXALIGN = common dso_local global i32 0, align 4
@TSI108_STAT_RXALIGN_CARRY = common dso_local global i32 0, align 4
@TSI108_STAT_CARRY1_RXLENGTH = common dso_local global i32 0, align 4
@TSI108_STAT_RXLENGTH_CARRY = common dso_local global i32 0, align 4
@TSI108_STAT_CARRY1_RXRUNT = common dso_local global i32 0, align 4
@TSI108_STAT_RXRUNT_CARRY = common dso_local global i32 0, align 4
@TSI108_STAT_CARRY1_RXJUMBO = common dso_local global i32 0, align 4
@TSI108_STAT_RXJUMBO_CARRY = common dso_local global i32 0, align 4
@TSI108_STAT_CARRY1_RXFRAG = common dso_local global i32 0, align 4
@TSI108_STAT_RXFRAG_CARRY = common dso_local global i32 0, align 4
@TSI108_STAT_CARRY1_RXJABBER = common dso_local global i32 0, align 4
@TSI108_STAT_RXJABBER_CARRY = common dso_local global i32 0, align 4
@TSI108_STAT_CARRY1_RXDROP = common dso_local global i32 0, align 4
@TSI108_STAT_RXDROP_CARRY = common dso_local global i32 0, align 4
@TSI108_STAT_CARRY2_TXBYTES = common dso_local global i32 0, align 4
@TSI108_STAT_TXBYTES_CARRY = common dso_local global i32 0, align 4
@TSI108_STAT_CARRY2_TXPKTS = common dso_local global i32 0, align 4
@TSI108_STAT_TXPKTS_CARRY = common dso_local global i32 0, align 4
@TSI108_STAT_CARRY2_TXEXDEF = common dso_local global i32 0, align 4
@TSI108_STAT_TXEXDEF_CARRY = common dso_local global i32 0, align 4
@TSI108_STAT_CARRY2_TXEXCOL = common dso_local global i32 0, align 4
@TSI108_STAT_TXEXCOL_CARRY = common dso_local global i32 0, align 4
@TSI108_STAT_CARRY2_TXTCOL = common dso_local global i32 0, align 4
@TSI108_STAT_TXTCOL_CARRY = common dso_local global i32 0, align 4
@TSI108_STAT_CARRY2_TXPAUSE = common dso_local global i32 0, align 4
@TSI108_STAT_TXPAUSEDROP_CARRY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @tsi108_stat_carry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tsi108_stat_carry(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.tsi108_prv_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %6 = load %struct.net_device*, %struct.net_device** %2, align 8
  %7 = call %struct.tsi108_prv_data* @netdev_priv(%struct.net_device* %6)
  store %struct.tsi108_prv_data* %7, %struct.tsi108_prv_data** %3, align 8
  %8 = load %struct.tsi108_prv_data*, %struct.tsi108_prv_data** %3, align 8
  %9 = getelementptr inbounds %struct.tsi108_prv_data, %struct.tsi108_prv_data* %8, i32 0, i32 0
  %10 = call i32 @spin_lock_irq(i32* %9)
  %11 = load i32, i32* @TSI108_STAT_CARRY1, align 4
  %12 = call i32 @TSI_READ(i32 %11)
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* @TSI108_STAT_CARRY2, align 4
  %14 = call i32 @TSI_READ(i32 %13)
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* @TSI108_STAT_CARRY1, align 4
  %16 = load i32, i32* %4, align 4
  %17 = call i32 @TSI_WRITE(i32 %15, i32 %16)
  %18 = load i32, i32* @TSI108_STAT_CARRY2, align 4
  %19 = load i32, i32* %5, align 4
  %20 = call i32 @TSI_WRITE(i32 %18, i32 %19)
  %21 = load i32, i32* %4, align 4
  %22 = load i32, i32* @TSI108_STAT_CARRY1_RXBYTES, align 4
  %23 = load i32, i32* @TSI108_STAT_RXBYTES_CARRY, align 4
  %24 = load %struct.tsi108_prv_data*, %struct.tsi108_prv_data** %3, align 8
  %25 = getelementptr inbounds %struct.tsi108_prv_data, %struct.tsi108_prv_data* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 9
  %27 = call i32 @tsi108_stat_carry_one(i32 %21, i32 %22, i32 %23, i32* %26)
  %28 = load i32, i32* %4, align 4
  %29 = load i32, i32* @TSI108_STAT_CARRY1_RXPKTS, align 4
  %30 = load i32, i32* @TSI108_STAT_RXPKTS_CARRY, align 4
  %31 = load %struct.tsi108_prv_data*, %struct.tsi108_prv_data** %3, align 8
  %32 = getelementptr inbounds %struct.tsi108_prv_data, %struct.tsi108_prv_data* %31, i32 0, i32 2
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 8
  %34 = call i32 @tsi108_stat_carry_one(i32 %28, i32 %29, i32 %30, i32* %33)
  %35 = load i32, i32* %4, align 4
  %36 = load i32, i32* @TSI108_STAT_CARRY1_RXFCS, align 4
  %37 = load i32, i32* @TSI108_STAT_RXFCS_CARRY, align 4
  %38 = load %struct.tsi108_prv_data*, %struct.tsi108_prv_data** %3, align 8
  %39 = getelementptr inbounds %struct.tsi108_prv_data, %struct.tsi108_prv_data* %38, i32 0, i32 8
  %40 = call i32 @tsi108_stat_carry_one(i32 %35, i32 %36, i32 %37, i32* %39)
  %41 = load i32, i32* %4, align 4
  %42 = load i32, i32* @TSI108_STAT_CARRY1_RXMCAST, align 4
  %43 = load i32, i32* @TSI108_STAT_RXMCAST_CARRY, align 4
  %44 = load %struct.tsi108_prv_data*, %struct.tsi108_prv_data** %3, align 8
  %45 = getelementptr inbounds %struct.tsi108_prv_data, %struct.tsi108_prv_data* %44, i32 0, i32 2
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 7
  %47 = call i32 @tsi108_stat_carry_one(i32 %41, i32 %42, i32 %43, i32* %46)
  %48 = load i32, i32* %4, align 4
  %49 = load i32, i32* @TSI108_STAT_CARRY1_RXALIGN, align 4
  %50 = load i32, i32* @TSI108_STAT_RXALIGN_CARRY, align 4
  %51 = load %struct.tsi108_prv_data*, %struct.tsi108_prv_data** %3, align 8
  %52 = getelementptr inbounds %struct.tsi108_prv_data, %struct.tsi108_prv_data* %51, i32 0, i32 2
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 6
  %54 = call i32 @tsi108_stat_carry_one(i32 %48, i32 %49, i32 %50, i32* %53)
  %55 = load i32, i32* %4, align 4
  %56 = load i32, i32* @TSI108_STAT_CARRY1_RXLENGTH, align 4
  %57 = load i32, i32* @TSI108_STAT_RXLENGTH_CARRY, align 4
  %58 = load %struct.tsi108_prv_data*, %struct.tsi108_prv_data** %3, align 8
  %59 = getelementptr inbounds %struct.tsi108_prv_data, %struct.tsi108_prv_data* %58, i32 0, i32 2
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 5
  %61 = call i32 @tsi108_stat_carry_one(i32 %55, i32 %56, i32 %57, i32* %60)
  %62 = load i32, i32* %4, align 4
  %63 = load i32, i32* @TSI108_STAT_CARRY1_RXRUNT, align 4
  %64 = load i32, i32* @TSI108_STAT_RXRUNT_CARRY, align 4
  %65 = load %struct.tsi108_prv_data*, %struct.tsi108_prv_data** %3, align 8
  %66 = getelementptr inbounds %struct.tsi108_prv_data, %struct.tsi108_prv_data* %65, i32 0, i32 7
  %67 = call i32 @tsi108_stat_carry_one(i32 %62, i32 %63, i32 %64, i32* %66)
  %68 = load i32, i32* %4, align 4
  %69 = load i32, i32* @TSI108_STAT_CARRY1_RXJUMBO, align 4
  %70 = load i32, i32* @TSI108_STAT_RXJUMBO_CARRY, align 4
  %71 = load %struct.tsi108_prv_data*, %struct.tsi108_prv_data** %3, align 8
  %72 = getelementptr inbounds %struct.tsi108_prv_data, %struct.tsi108_prv_data* %71, i32 0, i32 6
  %73 = call i32 @tsi108_stat_carry_one(i32 %68, i32 %69, i32 %70, i32* %72)
  %74 = load i32, i32* %4, align 4
  %75 = load i32, i32* @TSI108_STAT_CARRY1_RXFRAG, align 4
  %76 = load i32, i32* @TSI108_STAT_RXFRAG_CARRY, align 4
  %77 = load %struct.tsi108_prv_data*, %struct.tsi108_prv_data** %3, align 8
  %78 = getelementptr inbounds %struct.tsi108_prv_data, %struct.tsi108_prv_data* %77, i32 0, i32 5
  %79 = call i32 @tsi108_stat_carry_one(i32 %74, i32 %75, i32 %76, i32* %78)
  %80 = load i32, i32* %4, align 4
  %81 = load i32, i32* @TSI108_STAT_CARRY1_RXJABBER, align 4
  %82 = load i32, i32* @TSI108_STAT_RXJABBER_CARRY, align 4
  %83 = load %struct.tsi108_prv_data*, %struct.tsi108_prv_data** %3, align 8
  %84 = getelementptr inbounds %struct.tsi108_prv_data, %struct.tsi108_prv_data* %83, i32 0, i32 4
  %85 = call i32 @tsi108_stat_carry_one(i32 %80, i32 %81, i32 %82, i32* %84)
  %86 = load i32, i32* %4, align 4
  %87 = load i32, i32* @TSI108_STAT_CARRY1_RXDROP, align 4
  %88 = load i32, i32* @TSI108_STAT_RXDROP_CARRY, align 4
  %89 = load %struct.tsi108_prv_data*, %struct.tsi108_prv_data** %3, align 8
  %90 = getelementptr inbounds %struct.tsi108_prv_data, %struct.tsi108_prv_data* %89, i32 0, i32 2
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 4
  %92 = call i32 @tsi108_stat_carry_one(i32 %86, i32 %87, i32 %88, i32* %91)
  %93 = load i32, i32* %5, align 4
  %94 = load i32, i32* @TSI108_STAT_CARRY2_TXBYTES, align 4
  %95 = load i32, i32* @TSI108_STAT_TXBYTES_CARRY, align 4
  %96 = load %struct.tsi108_prv_data*, %struct.tsi108_prv_data** %3, align 8
  %97 = getelementptr inbounds %struct.tsi108_prv_data, %struct.tsi108_prv_data* %96, i32 0, i32 2
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 3
  %99 = call i32 @tsi108_stat_carry_one(i32 %93, i32 %94, i32 %95, i32* %98)
  %100 = load i32, i32* %5, align 4
  %101 = load i32, i32* @TSI108_STAT_CARRY2_TXPKTS, align 4
  %102 = load i32, i32* @TSI108_STAT_TXPKTS_CARRY, align 4
  %103 = load %struct.tsi108_prv_data*, %struct.tsi108_prv_data** %3, align 8
  %104 = getelementptr inbounds %struct.tsi108_prv_data, %struct.tsi108_prv_data* %103, i32 0, i32 2
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i32 0, i32 2
  %106 = call i32 @tsi108_stat_carry_one(i32 %100, i32 %101, i32 %102, i32* %105)
  %107 = load i32, i32* %5, align 4
  %108 = load i32, i32* @TSI108_STAT_CARRY2_TXEXDEF, align 4
  %109 = load i32, i32* @TSI108_STAT_TXEXDEF_CARRY, align 4
  %110 = load %struct.tsi108_prv_data*, %struct.tsi108_prv_data** %3, align 8
  %111 = getelementptr inbounds %struct.tsi108_prv_data, %struct.tsi108_prv_data* %110, i32 0, i32 2
  %112 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %111, i32 0, i32 1
  %113 = call i32 @tsi108_stat_carry_one(i32 %107, i32 %108, i32 %109, i32* %112)
  %114 = load i32, i32* %5, align 4
  %115 = load i32, i32* @TSI108_STAT_CARRY2_TXEXCOL, align 4
  %116 = load i32, i32* @TSI108_STAT_TXEXCOL_CARRY, align 4
  %117 = load %struct.tsi108_prv_data*, %struct.tsi108_prv_data** %3, align 8
  %118 = getelementptr inbounds %struct.tsi108_prv_data, %struct.tsi108_prv_data* %117, i32 0, i32 3
  %119 = call i32 @tsi108_stat_carry_one(i32 %114, i32 %115, i32 %116, i32* %118)
  %120 = load i32, i32* %5, align 4
  %121 = load i32, i32* @TSI108_STAT_CARRY2_TXTCOL, align 4
  %122 = load i32, i32* @TSI108_STAT_TXTCOL_CARRY, align 4
  %123 = load %struct.tsi108_prv_data*, %struct.tsi108_prv_data** %3, align 8
  %124 = getelementptr inbounds %struct.tsi108_prv_data, %struct.tsi108_prv_data* %123, i32 0, i32 2
  %125 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %124, i32 0, i32 0
  %126 = call i32 @tsi108_stat_carry_one(i32 %120, i32 %121, i32 %122, i32* %125)
  %127 = load i32, i32* %5, align 4
  %128 = load i32, i32* @TSI108_STAT_CARRY2_TXPAUSE, align 4
  %129 = load i32, i32* @TSI108_STAT_TXPAUSEDROP_CARRY, align 4
  %130 = load %struct.tsi108_prv_data*, %struct.tsi108_prv_data** %3, align 8
  %131 = getelementptr inbounds %struct.tsi108_prv_data, %struct.tsi108_prv_data* %130, i32 0, i32 1
  %132 = call i32 @tsi108_stat_carry_one(i32 %127, i32 %128, i32 %129, i32* %131)
  %133 = load %struct.tsi108_prv_data*, %struct.tsi108_prv_data** %3, align 8
  %134 = getelementptr inbounds %struct.tsi108_prv_data, %struct.tsi108_prv_data* %133, i32 0, i32 0
  %135 = call i32 @spin_unlock_irq(i32* %134)
  ret void
}

declare dso_local %struct.tsi108_prv_data* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @TSI_READ(i32) #1

declare dso_local i32 @TSI_WRITE(i32, i32) #1

declare dso_local i32 @tsi108_stat_carry_one(i32, i32, i32, i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
