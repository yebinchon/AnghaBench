; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/cxgb3/extr_ael1002.c_ael2005_reset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/cxgb3/extr_ael1002.c_ael2005_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.reg_val = type { i32, i32, i32, i32 }
%struct.cphy = type { i32, i32 }

@ael2005_reset.regs0 = internal constant [8 x %struct.reg_val] [%struct.reg_val { i32 128, i32 49153, i32 0, i32 32 }, %struct.reg_val { i32 128, i32 49175, i32 0, i32 32 }, %struct.reg_val { i32 128, i32 49171, i32 65535, i32 62273 }, %struct.reg_val { i32 128, i32 49680, i32 65535, i32 32768 }, %struct.reg_val { i32 128, i32 49680, i32 65535, i32 33024 }, %struct.reg_val { i32 128, i32 49680, i32 65535, i32 32768 }, %struct.reg_val { i32 128, i32 49680, i32 65535, i32 0 }, %struct.reg_val zeroinitializer], align 16
@ael2005_reset.regs1 = internal constant [3 x %struct.reg_val] [%struct.reg_val { i32 128, i32 51712, i32 65535, i32 128 }, %struct.reg_val { i32 128, i32 51730, i32 65535, i32 0 }, %struct.reg_val zeroinitializer], align 16
@MDIO_PMA_LASI_CTRL = common dso_local global i32 0, align 4
@edc_none = common dso_local global i32 0, align 4
@phy_modtype_twinax = common dso_local global i32 0, align 4
@phy_modtype_twinax_long = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cphy*, i32)* @ael2005_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ael2005_reset(%struct.cphy* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cphy*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.cphy* %0, %struct.cphy** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.cphy*, %struct.cphy** %4, align 8
  %9 = load i32, i32* @MDIO_PMA_LASI_CTRL, align 4
  %10 = call i32 @t3_mdio_read(%struct.cphy* %8, i32 128, i32 %9, i32* %7)
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* %6, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = load i32, i32* %6, align 4
  store i32 %14, i32* %3, align 4
  br label %80

15:                                               ; preds = %2
  %16 = load %struct.cphy*, %struct.cphy** %4, align 8
  %17 = call i32 @t3_phy_reset(%struct.cphy* %16, i32 128, i32 0)
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %15
  %21 = load i32, i32* %6, align 4
  store i32 %21, i32* %3, align 4
  br label %80

22:                                               ; preds = %15
  %23 = call i32 @msleep(i32 125)
  %24 = load i32, i32* @edc_none, align 4
  %25 = load %struct.cphy*, %struct.cphy** %4, align 8
  %26 = getelementptr inbounds %struct.cphy, %struct.cphy* %25, i32 0, i32 1
  store i32 %24, i32* %26, align 4
  %27 = load %struct.cphy*, %struct.cphy** %4, align 8
  %28 = call i32 @set_phy_regs(%struct.cphy* %27, %struct.reg_val* getelementptr inbounds ([8 x %struct.reg_val], [8 x %struct.reg_val]* @ael2005_reset.regs0, i64 0, i64 0))
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* %6, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %22
  %32 = load i32, i32* %6, align 4
  store i32 %32, i32* %3, align 4
  br label %80

33:                                               ; preds = %22
  %34 = call i32 @msleep(i32 50)
  %35 = load %struct.cphy*, %struct.cphy** %4, align 8
  %36 = call i32 @ael2005_get_module_type(%struct.cphy* %35, i32 0)
  store i32 %36, i32* %6, align 4
  %37 = load i32, i32* %6, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %33
  %40 = load i32, i32* %6, align 4
  store i32 %40, i32* %3, align 4
  br label %80

41:                                               ; preds = %33
  %42 = load i32, i32* %6, align 4
  %43 = load %struct.cphy*, %struct.cphy** %4, align 8
  %44 = getelementptr inbounds %struct.cphy, %struct.cphy* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 4
  %45 = load i32, i32* %6, align 4
  %46 = load i32, i32* @phy_modtype_twinax, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %52, label %48

48:                                               ; preds = %41
  %49 = load i32, i32* %6, align 4
  %50 = load i32, i32* @phy_modtype_twinax_long, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %52, label %56

52:                                               ; preds = %48, %41
  %53 = load %struct.cphy*, %struct.cphy** %4, align 8
  %54 = load i32, i32* %6, align 4
  %55 = call i32 @ael2005_setup_twinax_edc(%struct.cphy* %53, i32 %54)
  store i32 %55, i32* %6, align 4
  br label %59

56:                                               ; preds = %48
  %57 = load %struct.cphy*, %struct.cphy** %4, align 8
  %58 = call i32 @ael2005_setup_sr_edc(%struct.cphy* %57)
  store i32 %58, i32* %6, align 4
  br label %59

59:                                               ; preds = %56, %52
  %60 = load i32, i32* %6, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %59
  %63 = load i32, i32* %6, align 4
  store i32 %63, i32* %3, align 4
  br label %80

64:                                               ; preds = %59
  %65 = load %struct.cphy*, %struct.cphy** %4, align 8
  %66 = call i32 @set_phy_regs(%struct.cphy* %65, %struct.reg_val* getelementptr inbounds ([3 x %struct.reg_val], [3 x %struct.reg_val]* @ael2005_reset.regs1, i64 0, i64 0))
  store i32 %66, i32* %6, align 4
  %67 = load i32, i32* %6, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %64
  %70 = load i32, i32* %6, align 4
  store i32 %70, i32* %3, align 4
  br label %80

71:                                               ; preds = %64
  %72 = load i32, i32* %7, align 4
  %73 = and i32 %72, 1
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %71
  %76 = load %struct.cphy*, %struct.cphy** %4, align 8
  %77 = call i32 @ael2005_intr_enable(%struct.cphy* %76)
  store i32 %77, i32* %6, align 4
  br label %78

78:                                               ; preds = %75, %71
  %79 = load i32, i32* %6, align 4
  store i32 %79, i32* %3, align 4
  br label %80

80:                                               ; preds = %78, %69, %62, %39, %31, %20, %13
  %81 = load i32, i32* %3, align 4
  ret i32 %81
}

declare dso_local i32 @t3_mdio_read(%struct.cphy*, i32, i32, i32*) #1

declare dso_local i32 @t3_phy_reset(%struct.cphy*, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @set_phy_regs(%struct.cphy*, %struct.reg_val*) #1

declare dso_local i32 @ael2005_get_module_type(%struct.cphy*, i32) #1

declare dso_local i32 @ael2005_setup_twinax_edc(%struct.cphy*, i32) #1

declare dso_local i32 @ael2005_setup_sr_edc(%struct.cphy*) #1

declare dso_local i32 @ael2005_intr_enable(%struct.cphy*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
