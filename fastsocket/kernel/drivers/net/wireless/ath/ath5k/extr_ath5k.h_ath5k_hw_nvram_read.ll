; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath5k/extr_ath5k.h_ath5k_hw_nvram_read.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath5k/extr_ath5k.h_ath5k_hw_nvram_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath5k_hw = type { i32 }
%struct.ath_common = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.ath_common*, i32, i32*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath5k_hw*, i32, i32*)* @ath5k_hw_nvram_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath5k_hw_nvram_read(%struct.ath5k_hw* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.ath5k_hw*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.ath_common*, align 8
  store %struct.ath5k_hw* %0, %struct.ath5k_hw** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %8 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %9 = call %struct.ath_common* @ath5k_hw_common(%struct.ath5k_hw* %8)
  store %struct.ath_common* %9, %struct.ath_common** %7, align 8
  %10 = load %struct.ath_common*, %struct.ath_common** %7, align 8
  %11 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32 (%struct.ath_common*, i32, i32*)*, i32 (%struct.ath_common*, i32, i32*)** %13, align 8
  %15 = load %struct.ath_common*, %struct.ath_common** %7, align 8
  %16 = load i32, i32* %5, align 4
  %17 = load i32*, i32** %6, align 8
  %18 = call i32 %14(%struct.ath_common* %15, i32 %16, i32* %17)
  ret i32 %18
}

declare dso_local %struct.ath_common* @ath5k_hw_common(%struct.ath5k_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
