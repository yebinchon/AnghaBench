; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_phy_a.c_b43_aphy_op_software_rfkill.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_phy_a.c_b43_aphy_op_software_rfkill.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43_wldev = type { %struct.b43_phy }
%struct.b43_phy = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.b43_wldev*, i32)* @b43_aphy_op_software_rfkill to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @b43_aphy_op_software_rfkill(%struct.b43_wldev* %0, i32 %1) #0 {
  %3 = alloca %struct.b43_wldev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.b43_phy*, align 8
  store %struct.b43_wldev* %0, %struct.b43_wldev** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %7 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %6, i32 0, i32 0
  store %struct.b43_phy* %7, %struct.b43_phy** %5, align 8
  %8 = load i32, i32* %4, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %27, label %10

10:                                               ; preds = %2
  %11 = load %struct.b43_phy*, %struct.b43_phy** %5, align 8
  %12 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %10
  br label %36

16:                                               ; preds = %10
  %17 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %18 = call i32 @b43_radio_write16(%struct.b43_wldev* %17, i32 4, i32 192)
  %19 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %20 = call i32 @b43_radio_write16(%struct.b43_wldev* %19, i32 5, i32 8)
  %21 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %22 = call i32 @b43_phy_mask(%struct.b43_wldev* %21, i32 16, i32 65527)
  %23 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %24 = call i32 @b43_phy_mask(%struct.b43_wldev* %23, i32 17, i32 65527)
  %25 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %26 = call i32 @b43_radio_init2060(%struct.b43_wldev* %25)
  br label %36

27:                                               ; preds = %2
  %28 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %29 = call i32 @b43_radio_write16(%struct.b43_wldev* %28, i32 4, i32 255)
  %30 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %31 = call i32 @b43_radio_write16(%struct.b43_wldev* %30, i32 5, i32 251)
  %32 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %33 = call i32 @b43_phy_set(%struct.b43_wldev* %32, i32 16, i32 8)
  %34 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %35 = call i32 @b43_phy_set(%struct.b43_wldev* %34, i32 17, i32 8)
  br label %36

36:                                               ; preds = %15, %27, %16
  ret void
}

declare dso_local i32 @b43_radio_write16(%struct.b43_wldev*, i32, i32) #1

declare dso_local i32 @b43_phy_mask(%struct.b43_wldev*, i32, i32) #1

declare dso_local i32 @b43_radio_init2060(%struct.b43_wldev*) #1

declare dso_local i32 @b43_phy_set(%struct.b43_wldev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
