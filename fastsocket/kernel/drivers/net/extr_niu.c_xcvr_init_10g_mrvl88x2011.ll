; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_niu.c_xcvr_init_10g_mrvl88x2011.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_niu.c_xcvr_init_10g_mrvl88x2011.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.niu = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@MRVL88X2011_LED_BLKRATE_134MS = common dso_local global i32 0, align 4
@MRVL88X2011_LED_CTL_OFF = common dso_local global i32 0, align 4
@MRVL88X2011_USER_DEV3_ADDR = common dso_local global i32 0, align 4
@MRVL88X2011_GENERAL_CTL = common dso_local global i32 0, align 4
@MRVL88X2011_ENA_XFPREFCLK = common dso_local global i32 0, align 4
@MRVL88X2011_USER_DEV1_ADDR = common dso_local global i32 0, align 4
@MRVL88X2011_PMA_PMD_CTL_1 = common dso_local global i32 0, align 4
@LOOPBACK_MAC = common dso_local global i64 0, align 8
@MRVL88X2011_LOOPBACK = common dso_local global i32 0, align 4
@MRVL88X2011_10G_PMD_TX_DIS = common dso_local global i32 0, align 4
@MRVL88X2011_ENA_PMDTX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.niu*)* @xcvr_init_10g_mrvl88x2011 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xcvr_init_10g_mrvl88x2011(%struct.niu* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.niu*, align 8
  %4 = alloca i32, align 4
  store %struct.niu* %0, %struct.niu** %3, align 8
  %5 = load %struct.niu*, %struct.niu** %3, align 8
  %6 = load i32, i32* @MRVL88X2011_LED_BLKRATE_134MS, align 4
  %7 = call i32 @mrvl88x2011_led_blink_rate(%struct.niu* %5, i32 %6)
  store i32 %7, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = load i32, i32* %4, align 4
  store i32 %11, i32* %2, align 4
  br label %98

12:                                               ; preds = %1
  %13 = load %struct.niu*, %struct.niu** %3, align 8
  %14 = load i32, i32* @MRVL88X2011_LED_CTL_OFF, align 4
  %15 = call i32 @mrvl88x2011_act_led(%struct.niu* %13, i32 %14)
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* %4, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %12
  %19 = load i32, i32* %4, align 4
  store i32 %19, i32* %2, align 4
  br label %98

20:                                               ; preds = %12
  %21 = load %struct.niu*, %struct.niu** %3, align 8
  %22 = load %struct.niu*, %struct.niu** %3, align 8
  %23 = getelementptr inbounds %struct.niu, %struct.niu* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @MRVL88X2011_USER_DEV3_ADDR, align 4
  %26 = load i32, i32* @MRVL88X2011_GENERAL_CTL, align 4
  %27 = call i32 @mdio_read(%struct.niu* %21, i32 %24, i32 %25, i32 %26)
  store i32 %27, i32* %4, align 4
  %28 = load i32, i32* %4, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %20
  %31 = load i32, i32* %4, align 4
  store i32 %31, i32* %2, align 4
  br label %98

32:                                               ; preds = %20
  %33 = load i32, i32* @MRVL88X2011_ENA_XFPREFCLK, align 4
  %34 = load i32, i32* %4, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* %4, align 4
  %36 = load %struct.niu*, %struct.niu** %3, align 8
  %37 = load %struct.niu*, %struct.niu** %3, align 8
  %38 = getelementptr inbounds %struct.niu, %struct.niu* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @MRVL88X2011_USER_DEV3_ADDR, align 4
  %41 = load i32, i32* @MRVL88X2011_GENERAL_CTL, align 4
  %42 = load i32, i32* %4, align 4
  %43 = call i32 @mdio_write(%struct.niu* %36, i32 %39, i32 %40, i32 %41, i32 %42)
  store i32 %43, i32* %4, align 4
  %44 = load i32, i32* %4, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %32
  %47 = load i32, i32* %4, align 4
  store i32 %47, i32* %2, align 4
  br label %98

48:                                               ; preds = %32
  %49 = load %struct.niu*, %struct.niu** %3, align 8
  %50 = load %struct.niu*, %struct.niu** %3, align 8
  %51 = getelementptr inbounds %struct.niu, %struct.niu* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* @MRVL88X2011_USER_DEV1_ADDR, align 4
  %54 = load i32, i32* @MRVL88X2011_PMA_PMD_CTL_1, align 4
  %55 = call i32 @mdio_read(%struct.niu* %49, i32 %52, i32 %53, i32 %54)
  store i32 %55, i32* %4, align 4
  %56 = load i32, i32* %4, align 4
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %48
  %59 = load i32, i32* %4, align 4
  store i32 %59, i32* %2, align 4
  br label %98

60:                                               ; preds = %48
  %61 = load %struct.niu*, %struct.niu** %3, align 8
  %62 = getelementptr inbounds %struct.niu, %struct.niu* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @LOOPBACK_MAC, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %71

67:                                               ; preds = %60
  %68 = load i32, i32* @MRVL88X2011_LOOPBACK, align 4
  %69 = load i32, i32* %4, align 4
  %70 = or i32 %69, %68
  store i32 %70, i32* %4, align 4
  br label %76

71:                                               ; preds = %60
  %72 = load i32, i32* @MRVL88X2011_LOOPBACK, align 4
  %73 = xor i32 %72, -1
  %74 = load i32, i32* %4, align 4
  %75 = and i32 %74, %73
  store i32 %75, i32* %4, align 4
  br label %76

76:                                               ; preds = %71, %67
  %77 = load %struct.niu*, %struct.niu** %3, align 8
  %78 = load %struct.niu*, %struct.niu** %3, align 8
  %79 = getelementptr inbounds %struct.niu, %struct.niu* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* @MRVL88X2011_USER_DEV1_ADDR, align 4
  %82 = load i32, i32* @MRVL88X2011_PMA_PMD_CTL_1, align 4
  %83 = load i32, i32* %4, align 4
  %84 = call i32 @mdio_write(%struct.niu* %77, i32 %80, i32 %81, i32 %82, i32 %83)
  store i32 %84, i32* %4, align 4
  %85 = load i32, i32* %4, align 4
  %86 = icmp slt i32 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %76
  %88 = load i32, i32* %4, align 4
  store i32 %88, i32* %2, align 4
  br label %98

89:                                               ; preds = %76
  %90 = load %struct.niu*, %struct.niu** %3, align 8
  %91 = load %struct.niu*, %struct.niu** %3, align 8
  %92 = getelementptr inbounds %struct.niu, %struct.niu* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = load i32, i32* @MRVL88X2011_USER_DEV1_ADDR, align 4
  %95 = load i32, i32* @MRVL88X2011_10G_PMD_TX_DIS, align 4
  %96 = load i32, i32* @MRVL88X2011_ENA_PMDTX, align 4
  %97 = call i32 @mdio_write(%struct.niu* %90, i32 %93, i32 %94, i32 %95, i32 %96)
  store i32 %97, i32* %2, align 4
  br label %98

98:                                               ; preds = %89, %87, %58, %46, %30, %18, %10
  %99 = load i32, i32* %2, align 4
  ret i32 %99
}

declare dso_local i32 @mrvl88x2011_led_blink_rate(%struct.niu*, i32) #1

declare dso_local i32 @mrvl88x2011_act_led(%struct.niu*, i32) #1

declare dso_local i32 @mdio_read(%struct.niu*, i32, i32, i32) #1

declare dso_local i32 @mdio_write(%struct.niu*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
