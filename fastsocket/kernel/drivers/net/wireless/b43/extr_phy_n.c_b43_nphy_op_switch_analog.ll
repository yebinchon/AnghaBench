; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_phy_n.c_b43_nphy_op_switch_analog.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_phy_n.c_b43_nphy_op_switch_analog.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43_wldev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@B43_NPHY_AFECTL_C1 = common dso_local global i32 0, align 4
@B43_NPHY_AFECTL_OVER1 = common dso_local global i32 0, align 4
@B43_NPHY_AFECTL_C2 = common dso_local global i32 0, align 4
@B43_NPHY_AFECTL_OVER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.b43_wldev*, i32)* @b43_nphy_op_switch_analog to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @b43_nphy_op_switch_analog(%struct.b43_wldev* %0, i32 %1) #0 {
  %3 = alloca %struct.b43_wldev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.b43_wldev* %0, %struct.b43_wldev** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp ne i32 %7, 0
  %9 = zext i1 %8 to i64
  %10 = select i1 %8, i32 0, i32 32767
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %4, align 4
  %12 = icmp ne i32 %11, 0
  %13 = zext i1 %12 to i64
  %14 = select i1 %12, i32 13, i32 253
  store i32 %14, i32* %6, align 4
  %15 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %16 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp sge i32 %18, 3
  br i1 %19, label %20, label %58

20:                                               ; preds = %2
  %21 = load i32, i32* %4, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %40

23:                                               ; preds = %20
  %24 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %25 = load i32, i32* @B43_NPHY_AFECTL_C1, align 4
  %26 = load i32, i32* %6, align 4
  %27 = call i32 @b43_phy_write(%struct.b43_wldev* %24, i32 %25, i32 %26)
  %28 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %29 = load i32, i32* @B43_NPHY_AFECTL_OVER1, align 4
  %30 = load i32, i32* %5, align 4
  %31 = call i32 @b43_phy_write(%struct.b43_wldev* %28, i32 %29, i32 %30)
  %32 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %33 = load i32, i32* @B43_NPHY_AFECTL_C2, align 4
  %34 = load i32, i32* %6, align 4
  %35 = call i32 @b43_phy_write(%struct.b43_wldev* %32, i32 %33, i32 %34)
  %36 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %37 = load i32, i32* @B43_NPHY_AFECTL_OVER, align 4
  %38 = load i32, i32* %5, align 4
  %39 = call i32 @b43_phy_write(%struct.b43_wldev* %36, i32 %37, i32 %38)
  br label %57

40:                                               ; preds = %20
  %41 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %42 = load i32, i32* @B43_NPHY_AFECTL_OVER1, align 4
  %43 = load i32, i32* %5, align 4
  %44 = call i32 @b43_phy_write(%struct.b43_wldev* %41, i32 %42, i32 %43)
  %45 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %46 = load i32, i32* @B43_NPHY_AFECTL_C1, align 4
  %47 = load i32, i32* %6, align 4
  %48 = call i32 @b43_phy_write(%struct.b43_wldev* %45, i32 %46, i32 %47)
  %49 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %50 = load i32, i32* @B43_NPHY_AFECTL_OVER, align 4
  %51 = load i32, i32* %5, align 4
  %52 = call i32 @b43_phy_write(%struct.b43_wldev* %49, i32 %50, i32 %51)
  %53 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %54 = load i32, i32* @B43_NPHY_AFECTL_C2, align 4
  %55 = load i32, i32* %6, align 4
  %56 = call i32 @b43_phy_write(%struct.b43_wldev* %53, i32 %54, i32 %55)
  br label %57

57:                                               ; preds = %40, %23
  br label %63

58:                                               ; preds = %2
  %59 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %60 = load i32, i32* @B43_NPHY_AFECTL_OVER, align 4
  %61 = load i32, i32* %5, align 4
  %62 = call i32 @b43_phy_write(%struct.b43_wldev* %59, i32 %60, i32 %61)
  br label %63

63:                                               ; preds = %58, %57
  ret void
}

declare dso_local i32 @b43_phy_write(%struct.b43_wldev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
