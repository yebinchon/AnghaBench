; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43legacy/extr_phy.c_b43legacy_phy_lo_g_deviation_subval.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43legacy/extr_phy.c_b43legacy_phy_lo_g_deviation_subval.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43legacy_wldev = type { %struct.b43legacy_phy }
%struct.b43legacy_phy = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.b43legacy_wldev*, i32)* @b43legacy_phy_lo_g_deviation_subval to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @b43legacy_phy_lo_g_deviation_subval(%struct.b43legacy_wldev* %0, i32 %1) #0 {
  %3 = alloca %struct.b43legacy_wldev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.b43legacy_phy*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.b43legacy_wldev* %0, %struct.b43legacy_wldev** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %9 = getelementptr inbounds %struct.b43legacy_wldev, %struct.b43legacy_wldev* %8, i32 0, i32 0
  store %struct.b43legacy_phy* %9, %struct.b43legacy_phy** %5, align 8
  %10 = load i64, i64* %7, align 8
  %11 = call i32 @local_irq_save(i64 %10)
  %12 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %5, align 8
  %13 = getelementptr inbounds %struct.b43legacy_phy, %struct.b43legacy_phy* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %39

16:                                               ; preds = %2
  %17 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %18 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %17, i32 21, i32 58112)
  %19 = load i32, i32* %4, align 4
  %20 = shl i32 %19, 8
  store i32 %20, i32* %4, align 4
  %21 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %22 = load i32, i32* %4, align 4
  %23 = or i32 %22, 176
  %24 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %21, i32 2066, i32 %23)
  %25 = call i32 @udelay(i32 5)
  %26 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %27 = load i32, i32* %4, align 4
  %28 = or i32 %27, 178
  %29 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %26, i32 2066, i32 %28)
  %30 = call i32 @udelay(i32 2)
  %31 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %32 = load i32, i32* %4, align 4
  %33 = or i32 %32, 179
  %34 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %31, i32 2066, i32 %33)
  %35 = call i32 @udelay(i32 4)
  %36 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %37 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %36, i32 21, i32 62208)
  %38 = call i32 @udelay(i32 8)
  br label %55

39:                                               ; preds = %2
  %40 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %41 = load i32, i32* %4, align 4
  %42 = or i32 %41, 61344
  %43 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %40, i32 21, i32 %42)
  %44 = call i32 @udelay(i32 2)
  %45 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %46 = load i32, i32* %4, align 4
  %47 = or i32 %46, 61408
  %48 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %45, i32 21, i32 %47)
  %49 = call i32 @udelay(i32 4)
  %50 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %51 = load i32, i32* %4, align 4
  %52 = or i32 %51, 65504
  %53 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %50, i32 21, i32 %52)
  %54 = call i32 @udelay(i32 8)
  br label %55

55:                                               ; preds = %39, %16
  %56 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %57 = call i32 @b43legacy_phy_read(%struct.b43legacy_wldev* %56, i32 45)
  store i32 %57, i32* %6, align 4
  %58 = load i64, i64* %7, align 8
  %59 = call i32 @local_irq_restore(i64 %58)
  %60 = call i32 (...) @b43legacy_voluntary_preempt()
  %61 = load i32, i32* %6, align 4
  ret i32 %61
}

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i32 @b43legacy_phy_write(%struct.b43legacy_wldev*, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @b43legacy_phy_read(%struct.b43legacy_wldev*, i32) #1

declare dso_local i32 @local_irq_restore(i64) #1

declare dso_local i32 @b43legacy_voluntary_preempt(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
