; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/crypto/amcc/extr_crypto4xx_core.c_crypto4xx_get_sdp.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/crypto/amcc/extr_crypto4xx_core.c_crypto4xx_get_sdp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ce_sd = type { i32 }
%struct.crypto4xx_device = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ce_sd* (%struct.crypto4xx_device*, i64*, i32)* @crypto4xx_get_sdp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ce_sd* @crypto4xx_get_sdp(%struct.crypto4xx_device* %0, i64* %1, i32 %2) #0 {
  %4 = alloca %struct.crypto4xx_device*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i32, align 4
  store %struct.crypto4xx_device* %0, %struct.crypto4xx_device** %4, align 8
  store i64* %1, i64** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.crypto4xx_device*, %struct.crypto4xx_device** %4, align 8
  %8 = getelementptr inbounds %struct.crypto4xx_device, %struct.crypto4xx_device* %7, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = load i32, i32* %6, align 4
  %11 = sext i32 %10 to i64
  %12 = mul i64 4, %11
  %13 = add i64 %9, %12
  %14 = load i64*, i64** %5, align 8
  store i64 %13, i64* %14, align 8
  %15 = load %struct.crypto4xx_device*, %struct.crypto4xx_device** %4, align 8
  %16 = getelementptr inbounds %struct.crypto4xx_device, %struct.crypto4xx_device* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i32, i32* %6, align 4
  %19 = sext i32 %18 to i64
  %20 = mul i64 4, %19
  %21 = add i64 %17, %20
  %22 = inttoptr i64 %21 to %struct.ce_sd*
  ret %struct.ce_sd* %22
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
