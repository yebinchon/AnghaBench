; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/iseries/extr_call_pci.h_HvCallPci_getDeviceInfo.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/iseries/extr_call_pci.h_HvCallPci_getDeviceInfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.HvCallPci_DsaAddr = type { i32, i32, i32 }

@HvCallPciGetDeviceInfo = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, i32, i32, i64, i32)* @HvCallPci_getDeviceInfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @HvCallPci_getDeviceInfo(i32 %0, i32 %1, i32 %2, i64 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.HvCallPci_DsaAddr, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  store i32 %4, i32* %10, align 4
  %12 = bitcast %struct.HvCallPci_DsaAddr* %11 to i64*
  store i64 0, i64* %12, align 4
  %13 = load i32, i32* %6, align 4
  %14 = getelementptr inbounds %struct.HvCallPci_DsaAddr, %struct.HvCallPci_DsaAddr* %11, i32 0, i32 2
  store i32 %13, i32* %14, align 4
  %15 = load i32, i32* %7, align 4
  %16 = getelementptr inbounds %struct.HvCallPci_DsaAddr, %struct.HvCallPci_DsaAddr* %11, i32 0, i32 0
  store i32 %15, i32* %16, align 4
  %17 = load i32, i32* %8, align 4
  %18 = shl i32 %17, 4
  %19 = getelementptr inbounds %struct.HvCallPci_DsaAddr, %struct.HvCallPci_DsaAddr* %11, i32 0, i32 1
  store i32 %18, i32* %19, align 4
  %20 = load i32, i32* @HvCallPciGetDeviceInfo, align 4
  %21 = bitcast %struct.HvCallPci_DsaAddr* %11 to i64*
  %22 = load i64, i64* %21, align 4
  %23 = load i64, i64* %9, align 8
  %24 = load i32, i32* %10, align 4
  %25 = call i64 @HvCall3(i32 %20, i64 %22, i64 %23, i32 %24)
  ret i64 %25
}

declare dso_local i64 @HvCall3(i32, i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
