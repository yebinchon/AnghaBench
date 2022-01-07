; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43legacy/extr_radio.c_b43legacy_set_original_gains.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43legacy/extr_radio.c_b43legacy_set_original_gains.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43legacy_wldev = type { %struct.b43legacy_phy }
%struct.b43legacy_phy = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.b43legacy_wldev*)* @b43legacy_set_original_gains to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @b43legacy_set_original_gains(%struct.b43legacy_wldev* %0) #0 {
  %2 = alloca %struct.b43legacy_wldev*, align 8
  %3 = alloca %struct.b43legacy_phy*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.b43legacy_wldev* %0, %struct.b43legacy_wldev** %2, align 8
  %9 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %10 = getelementptr inbounds %struct.b43legacy_wldev, %struct.b43legacy_wldev* %9, i32 0, i32 0
  store %struct.b43legacy_phy* %10, %struct.b43legacy_phy** %3, align 8
  store i32 1024, i32* %6, align 4
  store i32 8, i32* %7, align 4
  store i32 24, i32* %8, align 4
  %11 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %3, align 8
  %12 = getelementptr inbounds %struct.b43legacy_phy, %struct.b43legacy_phy* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp sle i32 %13, 1
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  store i32 20480, i32* %6, align 4
  store i32 16, i32* %7, align 4
  store i32 32, i32* %8, align 4
  br label %16

16:                                               ; preds = %15, %1
  store i32 0, i32* %4, align 4
  br label %17

17:                                               ; preds = %39, %16
  %18 = load i32, i32* %4, align 4
  %19 = icmp slt i32 %18, 4
  br i1 %19, label %20, label %42

20:                                               ; preds = %17
  %21 = load i32, i32* %4, align 4
  %22 = and i32 %21, 65532
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* %4, align 4
  %24 = and i32 %23, 1
  %25 = shl i32 %24, 1
  %26 = load i32, i32* %5, align 4
  %27 = or i32 %26, %25
  store i32 %27, i32* %5, align 4
  %28 = load i32, i32* %4, align 4
  %29 = and i32 %28, 2
  %30 = ashr i32 %29, 1
  %31 = load i32, i32* %5, align 4
  %32 = or i32 %31, %30
  store i32 %32, i32* %5, align 4
  %33 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* %4, align 4
  %36 = add nsw i32 %34, %35
  %37 = load i32, i32* %5, align 4
  %38 = call i32 @b43legacy_ilt_write(%struct.b43legacy_wldev* %33, i32 %36, i32 %37)
  br label %39

39:                                               ; preds = %20
  %40 = load i32, i32* %4, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %4, align 4
  br label %17

42:                                               ; preds = %17
  %43 = load i32, i32* %7, align 4
  store i32 %43, i32* %4, align 4
  br label %44

44:                                               ; preds = %57, %42
  %45 = load i32, i32* %4, align 4
  %46 = load i32, i32* %8, align 4
  %47 = icmp slt i32 %45, %46
  br i1 %47, label %48, label %60

48:                                               ; preds = %44
  %49 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %50 = load i32, i32* %6, align 4
  %51 = load i32, i32* %4, align 4
  %52 = add nsw i32 %50, %51
  %53 = load i32, i32* %4, align 4
  %54 = load i32, i32* %7, align 4
  %55 = sub nsw i32 %53, %54
  %56 = call i32 @b43legacy_ilt_write(%struct.b43legacy_wldev* %49, i32 %52, i32 %55)
  br label %57

57:                                               ; preds = %48
  %58 = load i32, i32* %4, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %4, align 4
  br label %44

60:                                               ; preds = %44
  %61 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %62 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %63 = call i32 @b43legacy_phy_read(%struct.b43legacy_wldev* %62, i32 1184)
  %64 = and i32 %63, 49087
  %65 = or i32 %64, 16448
  %66 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %61, i32 1184, i32 %65)
  %67 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %68 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %69 = call i32 @b43legacy_phy_read(%struct.b43legacy_wldev* %68, i32 1185)
  %70 = and i32 %69, 49087
  %71 = or i32 %70, 16448
  %72 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %67, i32 1185, i32 %71)
  %73 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %74 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %75 = call i32 @b43legacy_phy_read(%struct.b43legacy_wldev* %74, i32 1186)
  %76 = and i32 %75, 49087
  %77 = or i32 %76, 16384
  %78 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %73, i32 1186, i32 %77)
  %79 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %80 = call i32 @b43legacy_dummy_transmission(%struct.b43legacy_wldev* %79)
  ret void
}

declare dso_local i32 @b43legacy_ilt_write(%struct.b43legacy_wldev*, i32, i32) #1

declare dso_local i32 @b43legacy_phy_write(%struct.b43legacy_wldev*, i32, i32) #1

declare dso_local i32 @b43legacy_phy_read(%struct.b43legacy_wldev*, i32) #1

declare dso_local i32 @b43legacy_dummy_transmission(%struct.b43legacy_wldev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
