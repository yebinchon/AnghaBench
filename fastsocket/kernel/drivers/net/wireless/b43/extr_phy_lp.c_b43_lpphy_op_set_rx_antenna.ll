; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_phy_lp.c_b43_lpphy_op_set_rx_antenna.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_phy_lp.c_b43_lpphy_op_set_rx_antenna.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43_wldev = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@B43_ANTENNA_AUTO1 = common dso_local global i32 0, align 4
@B43_HF_ANTDIVHELP = common dso_local global i32 0, align 4
@B43_LPPHY_CRSGAIN_CTL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.b43_wldev*, i32)* @b43_lpphy_op_set_rx_antenna to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @b43_lpphy_op_set_rx_antenna(%struct.b43_wldev* %0, i32 %1) #0 {
  %3 = alloca %struct.b43_wldev*, align 8
  %4 = alloca i32, align 4
  store %struct.b43_wldev* %0, %struct.b43_wldev** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %6 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = icmp sge i32 %8, 2
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  br label %49

11:                                               ; preds = %2
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* @B43_ANTENNA_AUTO1, align 4
  %14 = icmp sgt i32 %12, %13
  %15 = zext i1 %14 to i32
  %16 = call i64 @B43_WARN_ON(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %11
  br label %49

19:                                               ; preds = %11
  %20 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %21 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %22 = call i32 @b43_hf_read(%struct.b43_wldev* %21)
  %23 = load i32, i32* @B43_HF_ANTDIVHELP, align 4
  %24 = xor i32 %23, -1
  %25 = and i32 %22, %24
  %26 = call i32 @b43_hf_write(%struct.b43_wldev* %20, i32 %25)
  %27 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %28 = load i32, i32* @B43_LPPHY_CRSGAIN_CTL, align 4
  %29 = load i32, i32* %4, align 4
  %30 = and i32 %29, 2
  %31 = call i32 @b43_phy_maskset(%struct.b43_wldev* %27, i32 %28, i32 65533, i32 %30)
  %32 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %33 = load i32, i32* @B43_LPPHY_CRSGAIN_CTL, align 4
  %34 = load i32, i32* %4, align 4
  %35 = and i32 %34, 1
  %36 = call i32 @b43_phy_maskset(%struct.b43_wldev* %32, i32 %33, i32 65534, i32 %35)
  %37 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %38 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %39 = call i32 @b43_hf_read(%struct.b43_wldev* %38)
  %40 = load i32, i32* @B43_HF_ANTDIVHELP, align 4
  %41 = or i32 %39, %40
  %42 = call i32 @b43_hf_write(%struct.b43_wldev* %37, i32 %41)
  %43 = load i32, i32* %4, align 4
  %44 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %45 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 1
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  store i32 %43, i32* %48, align 4
  br label %49

49:                                               ; preds = %19, %18, %10
  ret void
}

declare dso_local i64 @B43_WARN_ON(i32) #1

declare dso_local i32 @b43_hf_write(%struct.b43_wldev*, i32) #1

declare dso_local i32 @b43_hf_read(%struct.b43_wldev*) #1

declare dso_local i32 @b43_phy_maskset(%struct.b43_wldev*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
