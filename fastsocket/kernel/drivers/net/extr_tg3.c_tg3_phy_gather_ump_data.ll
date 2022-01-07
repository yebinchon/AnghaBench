; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_tg3.c_tg3_phy_gather_ump_data.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_tg3.c_tg3_phy_gather_ump_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tg3 = type { i32 }

@MII_BMCR = common dso_local global i32 0, align 4
@MII_BMSR = common dso_local global i32 0, align 4
@MII_ADVERTISE = common dso_local global i32 0, align 4
@MII_LPA = common dso_local global i32 0, align 4
@TG3_PHYFLG_MII_SERDES = common dso_local global i32 0, align 4
@MII_CTRL1000 = common dso_local global i32 0, align 4
@MII_STAT1000 = common dso_local global i32 0, align 4
@MII_PHYADDR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tg3*, i32*)* @tg3_phy_gather_ump_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tg3_phy_gather_ump_data(%struct.tg3* %0, i32* %1) #0 {
  %3 = alloca %struct.tg3*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.tg3* %0, %struct.tg3** %3, align 8
  store i32* %1, i32** %4, align 8
  store i32 0, i32* %6, align 4
  %7 = load %struct.tg3*, %struct.tg3** %3, align 8
  %8 = load i32, i32* @MII_BMCR, align 4
  %9 = call i32 @tg3_readphy(%struct.tg3* %7, i32 %8, i32* %5)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %2
  %12 = load i32, i32* %5, align 4
  %13 = shl i32 %12, 16
  store i32 %13, i32* %6, align 4
  br label %14

14:                                               ; preds = %11, %2
  %15 = load %struct.tg3*, %struct.tg3** %3, align 8
  %16 = load i32, i32* @MII_BMSR, align 4
  %17 = call i32 @tg3_readphy(%struct.tg3* %15, i32 %16, i32* %5)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %24, label %19

19:                                               ; preds = %14
  %20 = load i32, i32* %5, align 4
  %21 = and i32 %20, 65535
  %22 = load i32, i32* %6, align 4
  %23 = or i32 %22, %21
  store i32 %23, i32* %6, align 4
  br label %24

24:                                               ; preds = %19, %14
  %25 = load i32, i32* %6, align 4
  %26 = load i32*, i32** %4, align 8
  %27 = getelementptr inbounds i32, i32* %26, i32 1
  store i32* %27, i32** %4, align 8
  store i32 %25, i32* %26, align 4
  store i32 0, i32* %6, align 4
  %28 = load %struct.tg3*, %struct.tg3** %3, align 8
  %29 = load i32, i32* @MII_ADVERTISE, align 4
  %30 = call i32 @tg3_readphy(%struct.tg3* %28, i32 %29, i32* %5)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %24
  %33 = load i32, i32* %5, align 4
  %34 = shl i32 %33, 16
  store i32 %34, i32* %6, align 4
  br label %35

35:                                               ; preds = %32, %24
  %36 = load %struct.tg3*, %struct.tg3** %3, align 8
  %37 = load i32, i32* @MII_LPA, align 4
  %38 = call i32 @tg3_readphy(%struct.tg3* %36, i32 %37, i32* %5)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %45, label %40

40:                                               ; preds = %35
  %41 = load i32, i32* %5, align 4
  %42 = and i32 %41, 65535
  %43 = load i32, i32* %6, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* %6, align 4
  br label %45

45:                                               ; preds = %40, %35
  %46 = load i32, i32* %6, align 4
  %47 = load i32*, i32** %4, align 8
  %48 = getelementptr inbounds i32, i32* %47, i32 1
  store i32* %48, i32** %4, align 8
  store i32 %46, i32* %47, align 4
  store i32 0, i32* %6, align 4
  %49 = load %struct.tg3*, %struct.tg3** %3, align 8
  %50 = getelementptr inbounds %struct.tg3, %struct.tg3* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @TG3_PHYFLG_MII_SERDES, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %74, label %55

55:                                               ; preds = %45
  %56 = load %struct.tg3*, %struct.tg3** %3, align 8
  %57 = load i32, i32* @MII_CTRL1000, align 4
  %58 = call i32 @tg3_readphy(%struct.tg3* %56, i32 %57, i32* %5)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %63, label %60

60:                                               ; preds = %55
  %61 = load i32, i32* %5, align 4
  %62 = shl i32 %61, 16
  store i32 %62, i32* %6, align 4
  br label %63

63:                                               ; preds = %60, %55
  %64 = load %struct.tg3*, %struct.tg3** %3, align 8
  %65 = load i32, i32* @MII_STAT1000, align 4
  %66 = call i32 @tg3_readphy(%struct.tg3* %64, i32 %65, i32* %5)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %73, label %68

68:                                               ; preds = %63
  %69 = load i32, i32* %5, align 4
  %70 = and i32 %69, 65535
  %71 = load i32, i32* %6, align 4
  %72 = or i32 %71, %70
  store i32 %72, i32* %6, align 4
  br label %73

73:                                               ; preds = %68, %63
  br label %74

74:                                               ; preds = %73, %45
  %75 = load i32, i32* %6, align 4
  %76 = load i32*, i32** %4, align 8
  %77 = getelementptr inbounds i32, i32* %76, i32 1
  store i32* %77, i32** %4, align 8
  store i32 %75, i32* %76, align 4
  %78 = load %struct.tg3*, %struct.tg3** %3, align 8
  %79 = load i32, i32* @MII_PHYADDR, align 4
  %80 = call i32 @tg3_readphy(%struct.tg3* %78, i32 %79, i32* %5)
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %85, label %82

82:                                               ; preds = %74
  %83 = load i32, i32* %5, align 4
  %84 = shl i32 %83, 16
  store i32 %84, i32* %6, align 4
  br label %86

85:                                               ; preds = %74
  store i32 0, i32* %6, align 4
  br label %86

86:                                               ; preds = %85, %82
  %87 = load i32, i32* %6, align 4
  %88 = load i32*, i32** %4, align 8
  %89 = getelementptr inbounds i32, i32* %88, i32 1
  store i32* %89, i32** %4, align 8
  store i32 %87, i32* %88, align 4
  ret void
}

declare dso_local i32 @tg3_readphy(%struct.tg3*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
