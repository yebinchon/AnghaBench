; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath5k/extr_pcu.c_ath5k_hw_set_lladdr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath5k/extr_pcu.c_ath5k_hw_set_lladdr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath5k_hw = type { i32 }
%struct.ath_common = type { i32 }

@ETH_ALEN = common dso_local global i32 0, align 4
@AR5K_STA_ID1 = common dso_local global i32 0, align 4
@AR5K_STA_ID0 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ath5k_hw_set_lladdr(%struct.ath5k_hw* %0, i32* %1) #0 {
  %3 = alloca %struct.ath5k_hw*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.ath_common*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ath5k_hw* %0, %struct.ath5k_hw** %3, align 8
  store i32* %1, i32** %4, align 8
  %9 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %10 = call %struct.ath_common* @ath5k_hw_common(%struct.ath5k_hw* %9)
  store %struct.ath_common* %10, %struct.ath_common** %5, align 8
  %11 = load %struct.ath_common*, %struct.ath_common** %5, align 8
  %12 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32*, i32** %4, align 8
  %15 = load i32, i32* @ETH_ALEN, align 4
  %16 = call i32 @memcpy(i32 %13, i32* %14, i32 %15)
  %17 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %18 = load i32, i32* @AR5K_STA_ID1, align 4
  %19 = call i32 @ath5k_hw_reg_read(%struct.ath5k_hw* %17, i32 %18)
  %20 = and i32 %19, -65536
  store i32 %20, i32* %8, align 4
  %21 = load i32*, i32** %4, align 8
  %22 = call i32 @get_unaligned_le32(i32* %21)
  store i32 %22, i32* %6, align 4
  %23 = load i32*, i32** %4, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 4
  %25 = call i32 @get_unaligned_le16(i32* %24)
  store i32 %25, i32* %7, align 4
  %26 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* @AR5K_STA_ID0, align 4
  %29 = call i32 @ath5k_hw_reg_write(%struct.ath5k_hw* %26, i32 %27, i32 %28)
  %30 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %31 = load i32, i32* %8, align 4
  %32 = load i32, i32* %7, align 4
  %33 = or i32 %31, %32
  %34 = load i32, i32* @AR5K_STA_ID1, align 4
  %35 = call i32 @ath5k_hw_reg_write(%struct.ath5k_hw* %30, i32 %33, i32 %34)
  ret i32 0
}

declare dso_local %struct.ath_common* @ath5k_hw_common(%struct.ath5k_hw*) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @ath5k_hw_reg_read(%struct.ath5k_hw*, i32) #1

declare dso_local i32 @get_unaligned_le32(i32*) #1

declare dso_local i32 @get_unaligned_le16(i32*) #1

declare dso_local i32 @ath5k_hw_reg_write(%struct.ath5k_hw*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
