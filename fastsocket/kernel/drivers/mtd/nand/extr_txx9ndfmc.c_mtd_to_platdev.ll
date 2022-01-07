; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/nand/extr_txx9ndfmc.c_mtd_to_platdev.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/nand/extr_txx9ndfmc.c_mtd_to_platdev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.mtd_info = type { %struct.nand_chip* }
%struct.nand_chip = type { %struct.txx9ndfmc_priv* }
%struct.txx9ndfmc_priv = type { %struct.platform_device* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.platform_device* (%struct.mtd_info*)* @mtd_to_platdev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.platform_device* @mtd_to_platdev(%struct.mtd_info* %0) #0 {
  %2 = alloca %struct.mtd_info*, align 8
  %3 = alloca %struct.nand_chip*, align 8
  %4 = alloca %struct.txx9ndfmc_priv*, align 8
  store %struct.mtd_info* %0, %struct.mtd_info** %2, align 8
  %5 = load %struct.mtd_info*, %struct.mtd_info** %2, align 8
  %6 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %5, i32 0, i32 0
  %7 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  store %struct.nand_chip* %7, %struct.nand_chip** %3, align 8
  %8 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %9 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %8, i32 0, i32 0
  %10 = load %struct.txx9ndfmc_priv*, %struct.txx9ndfmc_priv** %9, align 8
  store %struct.txx9ndfmc_priv* %10, %struct.txx9ndfmc_priv** %4, align 8
  %11 = load %struct.txx9ndfmc_priv*, %struct.txx9ndfmc_priv** %4, align 8
  %12 = getelementptr inbounds %struct.txx9ndfmc_priv, %struct.txx9ndfmc_priv* %11, i32 0, i32 0
  %13 = load %struct.platform_device*, %struct.platform_device** %12, align 8
  ret %struct.platform_device* %13
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
