; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_phy_lcn.c_b43_phy_switch_macfreq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_phy_lcn.c_b43_phy_switch_macfreq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43_wldev = type { %struct.TYPE_3__, %struct.TYPE_4__* }
%struct.TYPE_3__ = type { i64 }
%struct.TYPE_4__ = type { i32 }

@B43_MMIO_TSF_CLK_FRAC_LOW = common dso_local global i32 0, align 4
@B43_MMIO_TSF_CLK_FRAC_HIGH = common dso_local global i32 0, align 4
@B43_PHYTYPE_LCN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.b43_wldev*, i32)* @b43_phy_switch_macfreq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @b43_phy_switch_macfreq(%struct.b43_wldev* %0, i32 %1) #0 {
  %3 = alloca %struct.b43_wldev*, align 8
  %4 = alloca i32, align 4
  store %struct.b43_wldev* %0, %struct.b43_wldev** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %6 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %5, i32 0, i32 1
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = icmp eq i32 %9, 43224
  br i1 %10, label %18, label %11

11:                                               ; preds = %2
  %12 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %13 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %12, i32 0, i32 1
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp eq i32 %16, 43225
  br i1 %17, label %18, label %42

18:                                               ; preds = %11, %2
  %19 = load i32, i32* %4, align 4
  switch i32 %19, label %34 [
    i32 2, label %20
    i32 1, label %27
  ]

20:                                               ; preds = %18
  %21 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %22 = load i32, i32* @B43_MMIO_TSF_CLK_FRAC_LOW, align 4
  %23 = call i32 @b43_write16(%struct.b43_wldev* %21, i32 %22, i32 8322)
  %24 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %25 = load i32, i32* @B43_MMIO_TSF_CLK_FRAC_HIGH, align 4
  %26 = call i32 @b43_write16(%struct.b43_wldev* %24, i32 %25, i32 8)
  br label %41

27:                                               ; preds = %18
  %28 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %29 = load i32, i32* @B43_MMIO_TSF_CLK_FRAC_LOW, align 4
  %30 = call i32 @b43_write16(%struct.b43_wldev* %28, i32 %29, i32 21313)
  %31 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %32 = load i32, i32* @B43_MMIO_TSF_CLK_FRAC_HIGH, align 4
  %33 = call i32 @b43_write16(%struct.b43_wldev* %31, i32 %32, i32 8)
  br label %41

34:                                               ; preds = %18
  %35 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %36 = load i32, i32* @B43_MMIO_TSF_CLK_FRAC_LOW, align 4
  %37 = call i32 @b43_write16(%struct.b43_wldev* %35, i32 %36, i32 34953)
  %38 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %39 = load i32, i32* @B43_MMIO_TSF_CLK_FRAC_HIGH, align 4
  %40 = call i32 @b43_write16(%struct.b43_wldev* %38, i32 %39, i32 8)
  br label %41

41:                                               ; preds = %34, %27, %20
  br label %67

42:                                               ; preds = %11
  %43 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %44 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @B43_PHYTYPE_LCN, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %66

49:                                               ; preds = %42
  %50 = load i32, i32* %4, align 4
  switch i32 %50, label %58 [
    i32 1, label %51
  ]

51:                                               ; preds = %49
  %52 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %53 = load i32, i32* @B43_MMIO_TSF_CLK_FRAC_LOW, align 4
  %54 = call i32 @b43_write16(%struct.b43_wldev* %52, i32 %53, i32 31968)
  %55 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %56 = load i32, i32* @B43_MMIO_TSF_CLK_FRAC_HIGH, align 4
  %57 = call i32 @b43_write16(%struct.b43_wldev* %55, i32 %56, i32 12)
  br label %65

58:                                               ; preds = %49
  %59 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %60 = load i32, i32* @B43_MMIO_TSF_CLK_FRAC_LOW, align 4
  %61 = call i32 @b43_write16(%struct.b43_wldev* %59, i32 %60, i32 52429)
  %62 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %63 = load i32, i32* @B43_MMIO_TSF_CLK_FRAC_HIGH, align 4
  %64 = call i32 @b43_write16(%struct.b43_wldev* %62, i32 %63, i32 12)
  br label %65

65:                                               ; preds = %58, %51
  br label %66

66:                                               ; preds = %65, %42
  br label %67

67:                                               ; preds = %66, %41
  ret void
}

declare dso_local i32 @b43_write16(%struct.b43_wldev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
