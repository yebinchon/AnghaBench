; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_phy_g.c_b43_synth_pu_workaround.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_phy_g.c_b43_synth_pu_workaround.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43_wldev = type { %struct.b43_phy }
%struct.b43_phy = type { i32, i32 }

@B43_MMIO_CHANNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.b43_wldev*, i32)* @b43_synth_pu_workaround to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @b43_synth_pu_workaround(%struct.b43_wldev* %0, i32 %1) #0 {
  %3 = alloca %struct.b43_wldev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.b43_phy*, align 8
  store %struct.b43_wldev* %0, %struct.b43_wldev** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %7 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %6, i32 0, i32 0
  store %struct.b43_phy* %7, %struct.b43_phy** %5, align 8
  %8 = call i32 (...) @might_sleep()
  %9 = load %struct.b43_phy*, %struct.b43_phy** %5, align 8
  %10 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 8272
  br i1 %12, label %18, label %13

13:                                               ; preds = %2
  %14 = load %struct.b43_phy*, %struct.b43_phy** %5, align 8
  %15 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = icmp sge i32 %16, 6
  br i1 %17, label %18, label %19

18:                                               ; preds = %13, %2
  br label %41

19:                                               ; preds = %13
  %20 = load i32, i32* %4, align 4
  %21 = icmp sle i32 %20, 10
  br i1 %21, label %22, label %29

22:                                               ; preds = %19
  %23 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %24 = load i32, i32* @B43_MMIO_CHANNEL, align 4
  %25 = load i32, i32* %4, align 4
  %26 = add nsw i32 %25, 4
  %27 = call i32 @channel2freq_bg(i32 %26)
  %28 = call i32 @b43_write16(%struct.b43_wldev* %23, i32 %24, i32 %27)
  br label %34

29:                                               ; preds = %19
  %30 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %31 = load i32, i32* @B43_MMIO_CHANNEL, align 4
  %32 = call i32 @channel2freq_bg(i32 1)
  %33 = call i32 @b43_write16(%struct.b43_wldev* %30, i32 %31, i32 %32)
  br label %34

34:                                               ; preds = %29, %22
  %35 = call i32 @msleep(i32 1)
  %36 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %37 = load i32, i32* @B43_MMIO_CHANNEL, align 4
  %38 = load i32, i32* %4, align 4
  %39 = call i32 @channel2freq_bg(i32 %38)
  %40 = call i32 @b43_write16(%struct.b43_wldev* %36, i32 %37, i32 %39)
  br label %41

41:                                               ; preds = %34, %18
  ret void
}

declare dso_local i32 @might_sleep(...) #1

declare dso_local i32 @b43_write16(%struct.b43_wldev*, i32, i32) #1

declare dso_local i32 @channel2freq_bg(i32) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
