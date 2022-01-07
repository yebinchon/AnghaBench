; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_phy_n.c_b43_radio_2056_rcal.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_phy_n.c_b43_radio_2056_rcal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43_wldev = type { i32, %struct.b43_phy }
%struct.b43_phy = type { i32 }

@B2056_SYN_PLL_MAST2 = common dso_local global i32 0, align 4
@B2056_SYN_RCAL_MASTER = common dso_local global i32 0, align 4
@B2056_SYN_RCAL_CODE_OUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Radio recalibration timeout\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.b43_wldev*)* @b43_radio_2056_rcal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @b43_radio_2056_rcal(%struct.b43_wldev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.b43_wldev*, align 8
  %4 = alloca %struct.b43_phy*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.b43_wldev* %0, %struct.b43_wldev** %3, align 8
  %7 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %8 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %7, i32 0, i32 1
  store %struct.b43_phy* %8, %struct.b43_phy** %4, align 8
  %9 = load %struct.b43_phy*, %struct.b43_phy** %4, align 8
  %10 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 3
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %56

14:                                               ; preds = %1
  %15 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %16 = load i32, i32* @B2056_SYN_PLL_MAST2, align 4
  %17 = call i32 @b43_radio_read(%struct.b43_wldev* %15, i32 %16)
  store i32 %17, i32* %5, align 4
  %18 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %19 = load i32, i32* @B2056_SYN_PLL_MAST2, align 4
  %20 = load i32, i32* %5, align 4
  %21 = or i32 %20, 7
  %22 = call i32 @b43_radio_write(%struct.b43_wldev* %18, i32 %19, i32 %21)
  %23 = call i32 @udelay(i32 10)
  %24 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %25 = load i32, i32* @B2056_SYN_RCAL_MASTER, align 4
  %26 = call i32 @b43_radio_write(%struct.b43_wldev* %24, i32 %25, i32 1)
  %27 = call i32 @udelay(i32 10)
  %28 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %29 = load i32, i32* @B2056_SYN_RCAL_MASTER, align 4
  %30 = call i32 @b43_radio_write(%struct.b43_wldev* %28, i32 %29, i32 9)
  %31 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %32 = load i32, i32* @B2056_SYN_RCAL_CODE_OUT, align 4
  %33 = call i32 @b43_radio_wait_value(%struct.b43_wldev* %31, i32 %32, i32 128, i32 128, i32 100, i32 1000000)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %40, label %35

35:                                               ; preds = %14
  %36 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %37 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @b43err(i32 %38, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %56

40:                                               ; preds = %14
  %41 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %42 = load i32, i32* @B2056_SYN_RCAL_MASTER, align 4
  %43 = call i32 @b43_radio_write(%struct.b43_wldev* %41, i32 %42, i32 1)
  %44 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %45 = load i32, i32* @B2056_SYN_RCAL_CODE_OUT, align 4
  %46 = call i32 @b43_radio_read(%struct.b43_wldev* %44, i32 %45)
  store i32 %46, i32* %6, align 4
  %47 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %48 = load i32, i32* @B2056_SYN_RCAL_MASTER, align 4
  %49 = call i32 @b43_radio_write(%struct.b43_wldev* %47, i32 %48, i32 0)
  %50 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %51 = load i32, i32* @B2056_SYN_PLL_MAST2, align 4
  %52 = load i32, i32* %5, align 4
  %53 = call i32 @b43_radio_write(%struct.b43_wldev* %50, i32 %51, i32 %52)
  %54 = load i32, i32* %6, align 4
  %55 = and i32 %54, 31
  store i32 %55, i32* %2, align 4
  br label %56

56:                                               ; preds = %40, %35, %13
  %57 = load i32, i32* %2, align 4
  ret i32 %57
}

declare dso_local i32 @b43_radio_read(%struct.b43_wldev*, i32) #1

declare dso_local i32 @b43_radio_write(%struct.b43_wldev*, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @b43_radio_wait_value(%struct.b43_wldev*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @b43err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
