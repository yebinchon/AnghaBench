; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_wa.c_b43_wa_nst.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_wa.c_b43_wa_nst.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43_wldev = type { %struct.b43_phy }
%struct.b43_phy = type { i64, i32 }

@B43_PHYTYPE_A = common dso_local global i64 0, align 8
@b43_tab_noisescalea2 = common dso_local global i32 0, align 4
@b43_tab_noisescalea3 = common dso_local global i32 0, align 4
@b43_tab_noisescaleg3 = common dso_local global i32 0, align 4
@B43_PHY_ENCORE = common dso_local global i32 0, align 4
@B43_PHY_ENCORE_EN = common dso_local global i32 0, align 4
@b43_tab_noisescaleg2 = common dso_local global i32 0, align 4
@b43_tab_noisescaleg1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.b43_wldev*)* @b43_wa_nst to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @b43_wa_nst(%struct.b43_wldev* %0) #0 {
  %2 = alloca %struct.b43_wldev*, align 8
  %3 = alloca %struct.b43_phy*, align 8
  store %struct.b43_wldev* %0, %struct.b43_wldev** %2, align 8
  %4 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %5 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %4, i32 0, i32 0
  store %struct.b43_phy* %5, %struct.b43_phy** %3, align 8
  %6 = load %struct.b43_phy*, %struct.b43_phy** %3, align 8
  %7 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @B43_PHYTYPE_A, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %44

11:                                               ; preds = %1
  %12 = load %struct.b43_phy*, %struct.b43_phy** %3, align 8
  %13 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = icmp sle i32 %14, 1
  br i1 %15, label %16, label %19

16:                                               ; preds = %11
  %17 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %18 = call i32 @b43_write_null_nst(%struct.b43_wldev* %17)
  br label %43

19:                                               ; preds = %11
  %20 = load %struct.b43_phy*, %struct.b43_phy** %3, align 8
  %21 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = icmp eq i32 %22, 2
  br i1 %23, label %24, label %28

24:                                               ; preds = %19
  %25 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %26 = load i32, i32* @b43_tab_noisescalea2, align 4
  %27 = call i32 @b43_write_nst(%struct.b43_wldev* %25, i32 %26)
  br label %42

28:                                               ; preds = %19
  %29 = load %struct.b43_phy*, %struct.b43_phy** %3, align 8
  %30 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = icmp eq i32 %31, 3
  br i1 %32, label %33, label %37

33:                                               ; preds = %28
  %34 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %35 = load i32, i32* @b43_tab_noisescalea3, align 4
  %36 = call i32 @b43_write_nst(%struct.b43_wldev* %34, i32 %35)
  br label %41

37:                                               ; preds = %28
  %38 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %39 = load i32, i32* @b43_tab_noisescaleg3, align 4
  %40 = call i32 @b43_write_nst(%struct.b43_wldev* %38, i32 %39)
  br label %41

41:                                               ; preds = %37, %33
  br label %42

42:                                               ; preds = %41, %24
  br label %43

43:                                               ; preds = %42, %16
  br label %70

44:                                               ; preds = %1
  %45 = load %struct.b43_phy*, %struct.b43_phy** %3, align 8
  %46 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = icmp sge i32 %47, 6
  br i1 %48, label %49, label %65

49:                                               ; preds = %44
  %50 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %51 = load i32, i32* @B43_PHY_ENCORE, align 4
  %52 = call i32 @b43_phy_read(%struct.b43_wldev* %50, i32 %51)
  %53 = load i32, i32* @B43_PHY_ENCORE_EN, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %49
  %57 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %58 = load i32, i32* @b43_tab_noisescaleg3, align 4
  %59 = call i32 @b43_write_nst(%struct.b43_wldev* %57, i32 %58)
  br label %64

60:                                               ; preds = %49
  %61 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %62 = load i32, i32* @b43_tab_noisescaleg2, align 4
  %63 = call i32 @b43_write_nst(%struct.b43_wldev* %61, i32 %62)
  br label %64

64:                                               ; preds = %60, %56
  br label %69

65:                                               ; preds = %44
  %66 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %67 = load i32, i32* @b43_tab_noisescaleg1, align 4
  %68 = call i32 @b43_write_nst(%struct.b43_wldev* %66, i32 %67)
  br label %69

69:                                               ; preds = %65, %64
  br label %70

70:                                               ; preds = %69, %43
  ret void
}

declare dso_local i32 @b43_write_null_nst(%struct.b43_wldev*) #1

declare dso_local i32 @b43_write_nst(%struct.b43_wldev*, i32) #1

declare dso_local i32 @b43_phy_read(%struct.b43_wldev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
