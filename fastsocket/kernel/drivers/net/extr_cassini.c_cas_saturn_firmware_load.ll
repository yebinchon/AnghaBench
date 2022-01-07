; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_cassini.c_cas_saturn_firmware_load.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_cassini.c_cas_saturn_firmware_load.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cas = type { i32, i32, i32* }

@DP83065_MII_MEM = common dso_local global i32 0, align 4
@DP83065_MII_REGE = common dso_local global i32 0, align 4
@DP83065_MII_REGD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cas*)* @cas_saturn_firmware_load to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cas_saturn_firmware_load(%struct.cas* %0) #0 {
  %2 = alloca %struct.cas*, align 8
  %3 = alloca i32, align 4
  store %struct.cas* %0, %struct.cas** %2, align 8
  %4 = load %struct.cas*, %struct.cas** %2, align 8
  %5 = call i32 @cas_phy_powerdown(%struct.cas* %4)
  %6 = load %struct.cas*, %struct.cas** %2, align 8
  %7 = load i32, i32* @DP83065_MII_MEM, align 4
  %8 = call i32 @cas_phy_write(%struct.cas* %6, i32 %7, i32 0)
  %9 = load %struct.cas*, %struct.cas** %2, align 8
  %10 = load i32, i32* @DP83065_MII_REGE, align 4
  %11 = call i32 @cas_phy_write(%struct.cas* %9, i32 %10, i32 36857)
  %12 = load %struct.cas*, %struct.cas** %2, align 8
  %13 = load i32, i32* @DP83065_MII_REGD, align 4
  %14 = call i32 @cas_phy_write(%struct.cas* %12, i32 %13, i32 189)
  %15 = load %struct.cas*, %struct.cas** %2, align 8
  %16 = load i32, i32* @DP83065_MII_REGE, align 4
  %17 = call i32 @cas_phy_write(%struct.cas* %15, i32 %16, i32 36858)
  %18 = load %struct.cas*, %struct.cas** %2, align 8
  %19 = load i32, i32* @DP83065_MII_REGD, align 4
  %20 = call i32 @cas_phy_write(%struct.cas* %18, i32 %19, i32 130)
  %21 = load %struct.cas*, %struct.cas** %2, align 8
  %22 = load i32, i32* @DP83065_MII_REGE, align 4
  %23 = call i32 @cas_phy_write(%struct.cas* %21, i32 %22, i32 36859)
  %24 = load %struct.cas*, %struct.cas** %2, align 8
  %25 = load i32, i32* @DP83065_MII_REGD, align 4
  %26 = call i32 @cas_phy_write(%struct.cas* %24, i32 %25, i32 0)
  %27 = load %struct.cas*, %struct.cas** %2, align 8
  %28 = load i32, i32* @DP83065_MII_REGE, align 4
  %29 = call i32 @cas_phy_write(%struct.cas* %27, i32 %28, i32 36860)
  %30 = load %struct.cas*, %struct.cas** %2, align 8
  %31 = load i32, i32* @DP83065_MII_REGD, align 4
  %32 = call i32 @cas_phy_write(%struct.cas* %30, i32 %31, i32 57)
  %33 = load %struct.cas*, %struct.cas** %2, align 8
  %34 = load i32, i32* @DP83065_MII_MEM, align 4
  %35 = call i32 @cas_phy_write(%struct.cas* %33, i32 %34, i32 1)
  %36 = load %struct.cas*, %struct.cas** %2, align 8
  %37 = load i32, i32* @DP83065_MII_REGE, align 4
  %38 = load %struct.cas*, %struct.cas** %2, align 8
  %39 = getelementptr inbounds %struct.cas, %struct.cas* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @cas_phy_write(%struct.cas* %36, i32 %37, i32 %40)
  store i32 0, i32* %3, align 4
  br label %42

42:                                               ; preds = %59, %1
  %43 = load i32, i32* %3, align 4
  %44 = load %struct.cas*, %struct.cas** %2, align 8
  %45 = getelementptr inbounds %struct.cas, %struct.cas* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = icmp slt i32 %43, %46
  br i1 %47, label %48, label %62

48:                                               ; preds = %42
  %49 = load %struct.cas*, %struct.cas** %2, align 8
  %50 = load i32, i32* @DP83065_MII_REGD, align 4
  %51 = load %struct.cas*, %struct.cas** %2, align 8
  %52 = getelementptr inbounds %struct.cas, %struct.cas* %51, i32 0, i32 2
  %53 = load i32*, i32** %52, align 8
  %54 = load i32, i32* %3, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %53, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @cas_phy_write(%struct.cas* %49, i32 %50, i32 %57)
  br label %59

59:                                               ; preds = %48
  %60 = load i32, i32* %3, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %3, align 4
  br label %42

62:                                               ; preds = %42
  %63 = load %struct.cas*, %struct.cas** %2, align 8
  %64 = load i32, i32* @DP83065_MII_REGE, align 4
  %65 = call i32 @cas_phy_write(%struct.cas* %63, i32 %64, i32 36856)
  %66 = load %struct.cas*, %struct.cas** %2, align 8
  %67 = load i32, i32* @DP83065_MII_REGD, align 4
  %68 = call i32 @cas_phy_write(%struct.cas* %66, i32 %67, i32 1)
  ret void
}

declare dso_local i32 @cas_phy_powerdown(%struct.cas*) #1

declare dso_local i32 @cas_phy_write(%struct.cas*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
