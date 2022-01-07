; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/extr_main.c_brcms_b_set_cwmin.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/extr_main.c_brcms_b_set_cwmin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcms_hardware = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@objaddr = common dso_local global i32 0, align 4
@OBJADDR_SCR_SEL = common dso_local global i32 0, align 4
@S_DOT11_CWMIN = common dso_local global i32 0, align 4
@objdata = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.brcms_hardware*, i32)* @brcms_b_set_cwmin to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @brcms_b_set_cwmin(%struct.brcms_hardware* %0, i32 %1) #0 {
  %3 = alloca %struct.brcms_hardware*, align 8
  %4 = alloca i32, align 4
  store %struct.brcms_hardware* %0, %struct.brcms_hardware** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = load %struct.brcms_hardware*, %struct.brcms_hardware** %3, align 8
  %7 = getelementptr inbounds %struct.brcms_hardware, %struct.brcms_hardware* %6, i32 0, i32 1
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  store i32 %5, i32* %9, align 4
  %10 = load %struct.brcms_hardware*, %struct.brcms_hardware** %3, align 8
  %11 = getelementptr inbounds %struct.brcms_hardware, %struct.brcms_hardware* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @objaddr, align 4
  %14 = call i32 @D11REGOFFS(i32 %13)
  %15 = load i32, i32* @OBJADDR_SCR_SEL, align 4
  %16 = load i32, i32* @S_DOT11_CWMIN, align 4
  %17 = or i32 %15, %16
  %18 = call i32 @bcma_write32(i32 %12, i32 %14, i32 %17)
  %19 = load %struct.brcms_hardware*, %struct.brcms_hardware** %3, align 8
  %20 = getelementptr inbounds %struct.brcms_hardware, %struct.brcms_hardware* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @objaddr, align 4
  %23 = call i32 @D11REGOFFS(i32 %22)
  %24 = call i32 @bcma_read32(i32 %21, i32 %23)
  %25 = load %struct.brcms_hardware*, %struct.brcms_hardware** %3, align 8
  %26 = getelementptr inbounds %struct.brcms_hardware, %struct.brcms_hardware* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @objdata, align 4
  %29 = call i32 @D11REGOFFS(i32 %28)
  %30 = load i32, i32* %4, align 4
  %31 = call i32 @bcma_write32(i32 %27, i32 %29, i32 %30)
  ret void
}

declare dso_local i32 @bcma_write32(i32, i32, i32) #1

declare dso_local i32 @D11REGOFFS(i32) #1

declare dso_local i32 @bcma_read32(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
