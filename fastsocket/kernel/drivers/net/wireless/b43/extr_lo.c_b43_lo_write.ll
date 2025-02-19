; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_lo.c_b43_lo_write.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_lo.c_b43_lo_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43_wldev = type { i32, %struct.b43_phy }
%struct.b43_phy = type { i64 }
%struct.b43_loctl = type { i64, i64 }

@B43_DEBUG = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [40 x i8] c"Invalid LO control pair (I: %d, Q: %d)\0A\00", align 1
@B43_PHYTYPE_G = common dso_local global i64 0, align 8
@B43_PHY_LO_CTL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.b43_wldev*, %struct.b43_loctl*)* @b43_lo_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @b43_lo_write(%struct.b43_wldev* %0, %struct.b43_loctl* %1) #0 {
  %3 = alloca %struct.b43_wldev*, align 8
  %4 = alloca %struct.b43_loctl*, align 8
  %5 = alloca %struct.b43_phy*, align 8
  %6 = alloca i32, align 4
  store %struct.b43_wldev* %0, %struct.b43_wldev** %3, align 8
  store %struct.b43_loctl* %1, %struct.b43_loctl** %4, align 8
  %7 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %8 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %7, i32 0, i32 1
  store %struct.b43_phy* %8, %struct.b43_phy** %5, align 8
  %9 = load i64, i64* @B43_DEBUG, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %41

11:                                               ; preds = %2
  %12 = load %struct.b43_loctl*, %struct.b43_loctl** %4, align 8
  %13 = getelementptr inbounds %struct.b43_loctl, %struct.b43_loctl* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = call i32 @abs(i64 %14)
  %16 = icmp sgt i32 %15, 16
  br i1 %16, label %23, label %17

17:                                               ; preds = %11
  %18 = load %struct.b43_loctl*, %struct.b43_loctl** %4, align 8
  %19 = getelementptr inbounds %struct.b43_loctl, %struct.b43_loctl* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = call i32 @abs(i64 %20)
  %22 = icmp sgt i32 %21, 16
  br label %23

23:                                               ; preds = %17, %11
  %24 = phi i1 [ true, %11 ], [ %22, %17 ]
  %25 = zext i1 %24 to i32
  %26 = call i64 @unlikely(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %40

28:                                               ; preds = %23
  %29 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %30 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.b43_loctl*, %struct.b43_loctl** %4, align 8
  %33 = getelementptr inbounds %struct.b43_loctl, %struct.b43_loctl* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.b43_loctl*, %struct.b43_loctl** %4, align 8
  %36 = getelementptr inbounds %struct.b43_loctl, %struct.b43_loctl* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = call i32 @b43dbg(i32 %31, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i64 %34, i64 %37)
  %39 = call i32 (...) @dump_stack()
  br label %64

40:                                               ; preds = %23
  br label %41

41:                                               ; preds = %40, %2
  %42 = load %struct.b43_phy*, %struct.b43_phy** %5, align 8
  %43 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @B43_PHYTYPE_G, align 8
  %46 = icmp ne i64 %44, %45
  %47 = zext i1 %46 to i32
  %48 = call i32 @B43_WARN_ON(i32 %47)
  %49 = load %struct.b43_loctl*, %struct.b43_loctl** %4, align 8
  %50 = getelementptr inbounds %struct.b43_loctl, %struct.b43_loctl* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = trunc i64 %51 to i32
  store i32 %52, i32* %6, align 4
  %53 = load %struct.b43_loctl*, %struct.b43_loctl** %4, align 8
  %54 = getelementptr inbounds %struct.b43_loctl, %struct.b43_loctl* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = trunc i64 %55 to i32
  %57 = shl i32 %56, 8
  %58 = load i32, i32* %6, align 4
  %59 = or i32 %58, %57
  store i32 %59, i32* %6, align 4
  %60 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %61 = load i32, i32* @B43_PHY_LO_CTL, align 4
  %62 = load i32, i32* %6, align 4
  %63 = call i32 @b43_phy_write(%struct.b43_wldev* %60, i32 %61, i32 %62)
  br label %64

64:                                               ; preds = %41, %28
  ret void
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @abs(i64) #1

declare dso_local i32 @b43dbg(i32, i8*, i64, i64) #1

declare dso_local i32 @dump_stack(...) #1

declare dso_local i32 @B43_WARN_ON(i32) #1

declare dso_local i32 @b43_phy_write(%struct.b43_wldev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
