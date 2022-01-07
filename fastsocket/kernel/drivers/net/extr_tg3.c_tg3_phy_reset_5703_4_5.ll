; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_tg3.c_tg3_phy_reset_5703_4_5.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_tg3.c_tg3_phy_reset_5703_4_5.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tg3 = type { i32 }

@MII_TG3_EXT_CTRL = common dso_local global i32 0, align 4
@MII_BMCR = common dso_local global i32 0, align 4
@BMCR_FULLDPLX = common dso_local global i32 0, align 4
@BMCR_SPEED1000 = common dso_local global i32 0, align 4
@MII_CTRL1000 = common dso_local global i32 0, align 4
@CTL1000_AS_MASTER = common dso_local global i32 0, align 4
@CTL1000_ENABLE_MASTER = common dso_local global i32 0, align 4
@MII_TG3_DSP_ADDRESS = common dso_local global i32 0, align 4
@MII_TG3_DSP_CONTROL = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tg3*)* @tg3_phy_reset_5703_4_5 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tg3_phy_reset_5703_4_5(%struct.tg3* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tg3*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.tg3* %0, %struct.tg3** %3, align 8
  store i32 10, i32* %6, align 4
  store i32 1, i32* %7, align 4
  br label %9

9:                                                ; preds = %66, %1
  %10 = load i32, i32* %7, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %20

12:                                               ; preds = %9
  %13 = load %struct.tg3*, %struct.tg3** %3, align 8
  %14 = call i32 @tg3_bmcr_reset(%struct.tg3* %13)
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* %8, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %12
  %18 = load i32, i32* %8, align 4
  store i32 %18, i32* %2, align 4
  br label %112

19:                                               ; preds = %12
  store i32 0, i32* %7, align 4
  br label %20

20:                                               ; preds = %19, %9
  %21 = load %struct.tg3*, %struct.tg3** %3, align 8
  %22 = load i32, i32* @MII_TG3_EXT_CTRL, align 4
  %23 = call i64 @tg3_readphy(%struct.tg3* %21, i32 %22, i32* %4)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %20
  br label %66

26:                                               ; preds = %20
  %27 = load i32, i32* %4, align 4
  %28 = or i32 %27, 12288
  store i32 %28, i32* %4, align 4
  %29 = load %struct.tg3*, %struct.tg3** %3, align 8
  %30 = load i32, i32* @MII_TG3_EXT_CTRL, align 4
  %31 = load i32, i32* %4, align 4
  %32 = call i32 @tg3_writephy(%struct.tg3* %29, i32 %30, i32 %31)
  %33 = load %struct.tg3*, %struct.tg3** %3, align 8
  %34 = load i32, i32* @MII_BMCR, align 4
  %35 = load i32, i32* @BMCR_FULLDPLX, align 4
  %36 = load i32, i32* @BMCR_SPEED1000, align 4
  %37 = or i32 %35, %36
  %38 = call i32 @tg3_writephy(%struct.tg3* %33, i32 %34, i32 %37)
  %39 = load %struct.tg3*, %struct.tg3** %3, align 8
  %40 = load i32, i32* @MII_CTRL1000, align 4
  %41 = call i64 @tg3_readphy(%struct.tg3* %39, i32 %40, i32* %5)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %26
  br label %66

44:                                               ; preds = %26
  %45 = load %struct.tg3*, %struct.tg3** %3, align 8
  %46 = load i32, i32* @MII_CTRL1000, align 4
  %47 = load i32, i32* @CTL1000_AS_MASTER, align 4
  %48 = load i32, i32* @CTL1000_ENABLE_MASTER, align 4
  %49 = or i32 %47, %48
  %50 = call i32 @tg3_writephy(%struct.tg3* %45, i32 %46, i32 %49)
  %51 = load %struct.tg3*, %struct.tg3** %3, align 8
  %52 = call i32 @tg3_phy_toggle_auxctl_smdsp(%struct.tg3* %51, i32 1)
  store i32 %52, i32* %8, align 4
  %53 = load i32, i32* %8, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %44
  %56 = load i32, i32* %8, align 4
  store i32 %56, i32* %2, align 4
  br label %112

57:                                               ; preds = %44
  %58 = load %struct.tg3*, %struct.tg3** %3, align 8
  %59 = call i32 @tg3_phydsp_write(%struct.tg3* %58, i32 32773, i32 2048)
  %60 = load %struct.tg3*, %struct.tg3** %3, align 8
  %61 = call i32 @tg3_phy_write_and_check_testpat(%struct.tg3* %60, i32* %7)
  store i32 %61, i32* %8, align 4
  %62 = load i32, i32* %8, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %65, label %64

64:                                               ; preds = %57
  br label %70

65:                                               ; preds = %57
  br label %66

66:                                               ; preds = %65, %43, %25
  %67 = load i32, i32* %6, align 4
  %68 = add nsw i32 %67, -1
  store i32 %68, i32* %6, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %9, label %70

70:                                               ; preds = %66, %64
  %71 = load %struct.tg3*, %struct.tg3** %3, align 8
  %72 = call i32 @tg3_phy_reset_chanpat(%struct.tg3* %71)
  store i32 %72, i32* %8, align 4
  %73 = load i32, i32* %8, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %70
  %76 = load i32, i32* %8, align 4
  store i32 %76, i32* %2, align 4
  br label %112

77:                                               ; preds = %70
  %78 = load %struct.tg3*, %struct.tg3** %3, align 8
  %79 = call i32 @tg3_phydsp_write(%struct.tg3* %78, i32 32773, i32 0)
  %80 = load %struct.tg3*, %struct.tg3** %3, align 8
  %81 = load i32, i32* @MII_TG3_DSP_ADDRESS, align 4
  %82 = call i32 @tg3_writephy(%struct.tg3* %80, i32 %81, i32 33280)
  %83 = load %struct.tg3*, %struct.tg3** %3, align 8
  %84 = load i32, i32* @MII_TG3_DSP_CONTROL, align 4
  %85 = call i32 @tg3_writephy(%struct.tg3* %83, i32 %84, i32 0)
  %86 = load %struct.tg3*, %struct.tg3** %3, align 8
  %87 = call i32 @tg3_phy_toggle_auxctl_smdsp(%struct.tg3* %86, i32 0)
  %88 = load %struct.tg3*, %struct.tg3** %3, align 8
  %89 = load i32, i32* @MII_CTRL1000, align 4
  %90 = load i32, i32* %5, align 4
  %91 = call i32 @tg3_writephy(%struct.tg3* %88, i32 %89, i32 %90)
  %92 = load %struct.tg3*, %struct.tg3** %3, align 8
  %93 = load i32, i32* @MII_TG3_EXT_CTRL, align 4
  %94 = call i64 @tg3_readphy(%struct.tg3* %92, i32 %93, i32* %4)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %103, label %96

96:                                               ; preds = %77
  %97 = load i32, i32* %4, align 4
  %98 = and i32 %97, -12289
  store i32 %98, i32* %4, align 4
  %99 = load %struct.tg3*, %struct.tg3** %3, align 8
  %100 = load i32, i32* @MII_TG3_EXT_CTRL, align 4
  %101 = load i32, i32* %4, align 4
  %102 = call i32 @tg3_writephy(%struct.tg3* %99, i32 %100, i32 %101)
  br label %110

103:                                              ; preds = %77
  %104 = load i32, i32* %8, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %109, label %106

106:                                              ; preds = %103
  %107 = load i32, i32* @EBUSY, align 4
  %108 = sub nsw i32 0, %107
  store i32 %108, i32* %8, align 4
  br label %109

109:                                              ; preds = %106, %103
  br label %110

110:                                              ; preds = %109, %96
  %111 = load i32, i32* %8, align 4
  store i32 %111, i32* %2, align 4
  br label %112

112:                                              ; preds = %110, %75, %55, %17
  %113 = load i32, i32* %2, align 4
  ret i32 %113
}

declare dso_local i32 @tg3_bmcr_reset(%struct.tg3*) #1

declare dso_local i64 @tg3_readphy(%struct.tg3*, i32, i32*) #1

declare dso_local i32 @tg3_writephy(%struct.tg3*, i32, i32) #1

declare dso_local i32 @tg3_phy_toggle_auxctl_smdsp(%struct.tg3*, i32) #1

declare dso_local i32 @tg3_phydsp_write(%struct.tg3*, i32, i32) #1

declare dso_local i32 @tg3_phy_write_and_check_testpat(%struct.tg3*, i32*) #1

declare dso_local i32 @tg3_phy_reset_chanpat(%struct.tg3*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
