; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_tsi108_eth.c_tsi108_write_mii.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_tsi108_eth.c_tsi108_write_mii.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tsi108_prv_data = type { i32 }

@TSI108_MAC_MII_ADDR = common dso_local global i32 0, align 4
@TSI108_MAC_MII_ADDR_PHY = common dso_local global i32 0, align 4
@TSI108_MAC_MII_ADDR_REG = common dso_local global i32 0, align 4
@TSI108_MAC_MII_DATAOUT = common dso_local global i32 0, align 4
@TSI108_MAC_MII_IND = common dso_local global i32 0, align 4
@TSI108_MAC_MII_IND_BUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tsi108_prv_data*, i32, i32)* @tsi108_write_mii to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tsi108_write_mii(%struct.tsi108_prv_data* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.tsi108_prv_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.tsi108_prv_data* %0, %struct.tsi108_prv_data** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 100, i32* %7, align 4
  %8 = load i32, i32* @TSI108_MAC_MII_ADDR, align 4
  %9 = load %struct.tsi108_prv_data*, %struct.tsi108_prv_data** %4, align 8
  %10 = getelementptr inbounds %struct.tsi108_prv_data, %struct.tsi108_prv_data* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @TSI108_MAC_MII_ADDR_PHY, align 4
  %13 = shl i32 %11, %12
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* @TSI108_MAC_MII_ADDR_REG, align 4
  %16 = shl i32 %14, %15
  %17 = or i32 %13, %16
  %18 = call i32 @TSI_WRITE_PHY(i32 %8, i32 %17)
  %19 = load i32, i32* @TSI108_MAC_MII_DATAOUT, align 4
  %20 = load i32, i32* %6, align 4
  %21 = call i32 @TSI_WRITE_PHY(i32 %19, i32 %20)
  br label %22

22:                                               ; preds = %33, %3
  %23 = load i32, i32* %7, align 4
  %24 = add i32 %23, -1
  store i32 %24, i32* %7, align 4
  %25 = icmp ne i32 %23, 0
  br i1 %25, label %26, label %35

26:                                               ; preds = %22
  %27 = load i32, i32* @TSI108_MAC_MII_IND, align 4
  %28 = call i32 @TSI_READ_PHY(i32 %27)
  %29 = load i32, i32* @TSI108_MAC_MII_IND_BUSY, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %26
  br label %35

33:                                               ; preds = %26
  %34 = call i32 @udelay(i32 10)
  br label %22

35:                                               ; preds = %32, %22
  ret void
}

declare dso_local i32 @TSI_WRITE_PHY(i32, i32) #1

declare dso_local i32 @TSI_READ_PHY(i32) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
