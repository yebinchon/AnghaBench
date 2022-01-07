; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/extr_main.c_brcms_b_bmac_down_prep.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/extr_main.c_brcms_b_bmac_down_prep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcms_hardware = type { %struct.TYPE_3__*, %struct.TYPE_4__*, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32, i64 }

@BCMA_CLKMODE_FAST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.brcms_hardware*)* @brcms_b_bmac_down_prep to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @brcms_b_bmac_down_prep(%struct.brcms_hardware* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.brcms_hardware*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.brcms_hardware* %0, %struct.brcms_hardware** %3, align 8
  store i32 0, i32* %5, align 4
  %6 = load %struct.brcms_hardware*, %struct.brcms_hardware** %3, align 8
  %7 = getelementptr inbounds %struct.brcms_hardware, %struct.brcms_hardware* %6, i32 0, i32 2
  %8 = load i32, i32* %7, align 8
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %12, label %10

10:                                               ; preds = %1
  %11 = load i32, i32* %5, align 4
  store i32 %11, i32* %2, align 4
  br label %46

12:                                               ; preds = %1
  %13 = load %struct.brcms_hardware*, %struct.brcms_hardware** %3, align 8
  %14 = getelementptr inbounds %struct.brcms_hardware, %struct.brcms_hardware* %13, i32 0, i32 1
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = call i32 @brcms_deviceremoved(%struct.TYPE_4__* %15)
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* %4, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %12
  %20 = load %struct.brcms_hardware*, %struct.brcms_hardware** %3, align 8
  %21 = getelementptr inbounds %struct.brcms_hardware, %struct.brcms_hardware* %20, i32 0, i32 1
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 1
  store i64 0, i64* %23, align 8
  br label %34

24:                                               ; preds = %12
  %25 = load %struct.brcms_hardware*, %struct.brcms_hardware** %3, align 8
  %26 = getelementptr inbounds %struct.brcms_hardware, %struct.brcms_hardware* %25, i32 0, i32 1
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @brcms_intrsoff(i32 %29)
  %31 = load %struct.brcms_hardware*, %struct.brcms_hardware** %3, align 8
  %32 = load i32, i32* @BCMA_CLKMODE_FAST, align 4
  %33 = call i32 @brcms_b_clkctl_clk(%struct.brcms_hardware* %31, i32 %32)
  br label %34

34:                                               ; preds = %24, %19
  %35 = load %struct.brcms_hardware*, %struct.brcms_hardware** %3, align 8
  %36 = getelementptr inbounds %struct.brcms_hardware, %struct.brcms_hardware* %35, i32 0, i32 0
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i64 @wlc_phy_down(i32 %39)
  %41 = load i32, i32* %5, align 4
  %42 = sext i32 %41 to i64
  %43 = add nsw i64 %42, %40
  %44 = trunc i64 %43 to i32
  store i32 %44, i32* %5, align 4
  %45 = load i32, i32* %5, align 4
  store i32 %45, i32* %2, align 4
  br label %46

46:                                               ; preds = %34, %10
  %47 = load i32, i32* %2, align 4
  ret i32 %47
}

declare dso_local i32 @brcms_deviceremoved(%struct.TYPE_4__*) #1

declare dso_local i32 @brcms_intrsoff(i32) #1

declare dso_local i32 @brcms_b_clkctl_clk(%struct.brcms_hardware*, i32) #1

declare dso_local i64 @wlc_phy_down(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
