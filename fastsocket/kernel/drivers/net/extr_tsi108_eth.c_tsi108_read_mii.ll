; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_tsi108_eth.c_tsi108_read_mii.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_tsi108_eth.c_tsi108_read_mii.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tsi108_prv_data = type { i32 }

@TSI108_MAC_MII_ADDR = common dso_local global i32 0, align 4
@TSI108_MAC_MII_ADDR_PHY = common dso_local global i32 0, align 4
@TSI108_MAC_MII_ADDR_REG = common dso_local global i32 0, align 4
@TSI108_MAC_MII_CMD = common dso_local global i32 0, align 4
@TSI108_MAC_MII_CMD_READ = common dso_local global i32 0, align 4
@TSI108_MAC_MII_IND = common dso_local global i32 0, align 4
@TSI108_MAC_MII_IND_NOTVALID = common dso_local global i32 0, align 4
@TSI108_MAC_MII_IND_BUSY = common dso_local global i32 0, align 4
@TSI108_MAC_MII_DATAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tsi108_prv_data*, i32)* @tsi108_read_mii to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tsi108_read_mii(%struct.tsi108_prv_data* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tsi108_prv_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.tsi108_prv_data* %0, %struct.tsi108_prv_data** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* @TSI108_MAC_MII_ADDR, align 4
  %8 = load %struct.tsi108_prv_data*, %struct.tsi108_prv_data** %4, align 8
  %9 = getelementptr inbounds %struct.tsi108_prv_data, %struct.tsi108_prv_data* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @TSI108_MAC_MII_ADDR_PHY, align 4
  %12 = shl i32 %10, %11
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* @TSI108_MAC_MII_ADDR_REG, align 4
  %15 = shl i32 %13, %14
  %16 = or i32 %12, %15
  %17 = call i32 @TSI_WRITE_PHY(i32 %7, i32 %16)
  %18 = load i32, i32* @TSI108_MAC_MII_CMD, align 4
  %19 = call i32 @TSI_WRITE_PHY(i32 %18, i32 0)
  %20 = load i32, i32* @TSI108_MAC_MII_CMD, align 4
  %21 = load i32, i32* @TSI108_MAC_MII_CMD_READ, align 4
  %22 = call i32 @TSI_WRITE_PHY(i32 %20, i32 %21)
  store i32 0, i32* %6, align 4
  br label %23

23:                                               ; preds = %37, %2
  %24 = load i32, i32* %6, align 4
  %25 = icmp ult i32 %24, 100
  br i1 %25, label %26, label %40

26:                                               ; preds = %23
  %27 = load i32, i32* @TSI108_MAC_MII_IND, align 4
  %28 = call i32 @TSI_READ_PHY(i32 %27)
  %29 = load i32, i32* @TSI108_MAC_MII_IND_NOTVALID, align 4
  %30 = load i32, i32* @TSI108_MAC_MII_IND_BUSY, align 4
  %31 = or i32 %29, %30
  %32 = and i32 %28, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %26
  br label %40

35:                                               ; preds = %26
  %36 = call i32 @udelay(i32 10)
  br label %37

37:                                               ; preds = %35
  %38 = load i32, i32* %6, align 4
  %39 = add i32 %38, 1
  store i32 %39, i32* %6, align 4
  br label %23

40:                                               ; preds = %34, %23
  %41 = load i32, i32* %6, align 4
  %42 = icmp eq i32 %41, 100
  br i1 %42, label %43, label %44

43:                                               ; preds = %40
  store i32 65535, i32* %3, align 4
  br label %47

44:                                               ; preds = %40
  %45 = load i32, i32* @TSI108_MAC_MII_DATAIN, align 4
  %46 = call i32 @TSI_READ_PHY(i32 %45)
  store i32 %46, i32* %3, align 4
  br label %47

47:                                               ; preds = %44, %43
  %48 = load i32, i32* %3, align 4
  ret i32 %48
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
