; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_phy_a.c_b43_radio_init2060.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_phy_a.c_b43_radio_init2060.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43_wldev = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.b43_wldev*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.b43_wldev*)* @b43_radio_init2060 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @b43_radio_init2060(%struct.b43_wldev* %0) #0 {
  %2 = alloca %struct.b43_wldev*, align 8
  store %struct.b43_wldev* %0, %struct.b43_wldev** %2, align 8
  %3 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %4 = call i32 @b43_radio_write16(%struct.b43_wldev* %3, i32 4, i32 192)
  %5 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %6 = call i32 @b43_radio_write16(%struct.b43_wldev* %5, i32 5, i32 8)
  %7 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %8 = call i32 @b43_radio_write16(%struct.b43_wldev* %7, i32 9, i32 64)
  %9 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %10 = call i32 @b43_radio_write16(%struct.b43_wldev* %9, i32 5, i32 170)
  %11 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %12 = call i32 @b43_radio_write16(%struct.b43_wldev* %11, i32 50, i32 143)
  %13 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %14 = call i32 @b43_radio_write16(%struct.b43_wldev* %13, i32 6, i32 143)
  %15 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %16 = call i32 @b43_radio_write16(%struct.b43_wldev* %15, i32 52, i32 143)
  %17 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %18 = call i32 @b43_radio_write16(%struct.b43_wldev* %17, i32 44, i32 7)
  %19 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %20 = call i32 @b43_radio_write16(%struct.b43_wldev* %19, i32 130, i32 128)
  %21 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %22 = call i32 @b43_radio_write16(%struct.b43_wldev* %21, i32 128, i32 0)
  %23 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %24 = call i32 @b43_radio_write16(%struct.b43_wldev* %23, i32 63, i32 218)
  %25 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %26 = call i32 @b43_radio_mask(%struct.b43_wldev* %25, i32 5, i32 -9)
  %27 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %28 = call i32 @b43_radio_mask(%struct.b43_wldev* %27, i32 129, i32 -17)
  %29 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %30 = call i32 @b43_radio_mask(%struct.b43_wldev* %29, i32 129, i32 -33)
  %31 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %32 = call i32 @b43_radio_mask(%struct.b43_wldev* %31, i32 129, i32 -33)
  %33 = call i32 @msleep(i32 1)
  %34 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %35 = call i32 @b43_radio_maskset(%struct.b43_wldev* %34, i32 129, i32 -33, i32 16)
  %36 = call i32 @msleep(i32 1)
  %37 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %38 = call i32 @b43_radio_maskset(%struct.b43_wldev* %37, i32 5, i32 -9, i32 8)
  %39 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %40 = call i32 @b43_radio_mask(%struct.b43_wldev* %39, i32 133, i32 -17)
  %41 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %42 = call i32 @b43_radio_mask(%struct.b43_wldev* %41, i32 5, i32 -9)
  %43 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %44 = call i32 @b43_radio_mask(%struct.b43_wldev* %43, i32 129, i32 -65)
  %45 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %46 = call i32 @b43_radio_maskset(%struct.b43_wldev* %45, i32 129, i32 -65, i32 64)
  %47 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %48 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %49 = call i32 @b43_radio_read16(%struct.b43_wldev* %48, i32 129)
  %50 = and i32 %49, -9
  %51 = or i32 %50, 8
  %52 = call i32 @b43_radio_write16(%struct.b43_wldev* %47, i32 5, i32 %51)
  %53 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %54 = call i32 @b43_phy_write(%struct.b43_wldev* %53, i32 99, i32 56774)
  %55 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %56 = call i32 @b43_phy_write(%struct.b43_wldev* %55, i32 105, i32 1982)
  %57 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %58 = call i32 @b43_phy_write(%struct.b43_wldev* %57, i32 106, i32 0)
  %59 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %60 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %61 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 0
  %65 = load i32 (%struct.b43_wldev*)*, i32 (%struct.b43_wldev*)** %64, align 8
  %66 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %67 = call i32 %65(%struct.b43_wldev* %66)
  %68 = call i32 @aphy_channel_switch(%struct.b43_wldev* %59, i32 %67)
  %69 = call i32 @msleep(i32 1)
  ret void
}

declare dso_local i32 @b43_radio_write16(%struct.b43_wldev*, i32, i32) #1

declare dso_local i32 @b43_radio_mask(%struct.b43_wldev*, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @b43_radio_maskset(%struct.b43_wldev*, i32, i32, i32) #1

declare dso_local i32 @b43_radio_read16(%struct.b43_wldev*, i32) #1

declare dso_local i32 @b43_phy_write(%struct.b43_wldev*, i32, i32) #1

declare dso_local i32 @aphy_channel_switch(%struct.b43_wldev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
