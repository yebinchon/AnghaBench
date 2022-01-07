; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_wa.c_b43_wa_boards_a.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_wa.c_b43_wa_boards_a.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43_wldev = type { %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i64, i64, i32 }

@SSB_BOARDVENDOR_BCM = common dso_local global i64 0, align 8
@SSB_BOARD_BU4306 = common dso_local global i64 0, align 8
@SSB_BOARD_MP4318 = common dso_local global i64 0, align 8
@B43_OFDMTAB_DC = common dso_local global i32 0, align 4
@B43_OFDMTAB_UNKNOWN_APHY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.b43_wldev*)* @b43_wa_boards_a to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @b43_wa_boards_a(%struct.b43_wldev* %0) #0 {
  %2 = alloca %struct.b43_wldev*, align 8
  store %struct.b43_wldev* %0, %struct.b43_wldev** %2, align 8
  %3 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %4 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %3, i32 0, i32 1
  %5 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %6 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @SSB_BOARDVENDOR_BCM, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %10, label %32

10:                                               ; preds = %1
  %11 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %12 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %11, i32 0, i32 1
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @SSB_BOARD_BU4306, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %32

18:                                               ; preds = %10
  %19 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %20 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %19, i32 0, i32 1
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = icmp slt i32 %23, 48
  br i1 %24, label %25, label %32

25:                                               ; preds = %18
  %26 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %27 = call i32 @b43_phy_write(%struct.b43_wldev* %26, i32 16, i32 57344)
  %28 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %29 = call i32 @b43_phy_write(%struct.b43_wldev* %28, i32 19, i32 320)
  %30 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %31 = call i32 @b43_phy_write(%struct.b43_wldev* %30, i32 20, i32 640)
  br label %76

32:                                               ; preds = %18, %10, %1
  %33 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %34 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %33, i32 0, i32 1
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @SSB_BOARD_MP4318, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %52

40:                                               ; preds = %32
  %41 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %42 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %41, i32 0, i32 1
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = icmp slt i32 %45, 32
  br i1 %46, label %47, label %52

47:                                               ; preds = %40
  %48 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %49 = call i32 @b43_phy_write(%struct.b43_wldev* %48, i32 19, i32 528)
  %50 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %51 = call i32 @b43_phy_write(%struct.b43_wldev* %50, i32 20, i32 2112)
  br label %57

52:                                               ; preds = %40, %32
  %53 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %54 = call i32 @b43_phy_write(%struct.b43_wldev* %53, i32 19, i32 320)
  %55 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %56 = call i32 @b43_phy_write(%struct.b43_wldev* %55, i32 20, i32 640)
  br label %57

57:                                               ; preds = %52, %47
  %58 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %59 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = icmp sle i32 %61, 4
  br i1 %62, label %63, label %66

63:                                               ; preds = %57
  %64 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %65 = call i32 @b43_phy_write(%struct.b43_wldev* %64, i32 16, i32 57344)
  br label %69

66:                                               ; preds = %57
  %67 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %68 = call i32 @b43_phy_write(%struct.b43_wldev* %67, i32 16, i32 8192)
  br label %69

69:                                               ; preds = %66, %63
  %70 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %71 = load i32, i32* @B43_OFDMTAB_DC, align 4
  %72 = call i32 @b43_ofdmtab_write16(%struct.b43_wldev* %70, i32 %71, i32 1, i32 57)
  %73 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %74 = load i32, i32* @B43_OFDMTAB_UNKNOWN_APHY, align 4
  %75 = call i32 @b43_ofdmtab_write16(%struct.b43_wldev* %73, i32 %74, i32 7, i32 64)
  br label %76

76:                                               ; preds = %69, %25
  ret void
}

declare dso_local i32 @b43_phy_write(%struct.b43_wldev*, i32, i32) #1

declare dso_local i32 @b43_ofdmtab_write16(%struct.b43_wldev*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
