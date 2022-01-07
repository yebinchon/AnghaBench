; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_niu.c_xcvr_init_10g_bcm8706.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_niu.c_xcvr_init_10g_bcm8706.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.niu = type { i32 }

@NIU_FLAGS_HOTPLUG_PHY = common dso_local global i32 0, align 4
@NIU_FLAGS_HOTPLUG_PHY_PRESENT = common dso_local global i32 0, align 4
@XMAC_CONFIG = common dso_local global i32 0, align 4
@XMAC_CONFIG_LED_POLARITY = common dso_local global i32 0, align 4
@XMAC_CONFIG_FORCE_LED_ON = common dso_local global i32 0, align 4
@MIF_CONFIG = common dso_local global i32 0, align 4
@MIF_CONFIG_INDIRECT_MODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.niu*)* @xcvr_init_10g_bcm8706 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xcvr_init_10g_bcm8706(%struct.niu* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.niu*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.niu* %0, %struct.niu** %3, align 8
  store i32 0, i32* %4, align 4
  %6 = load %struct.niu*, %struct.niu** %3, align 8
  %7 = getelementptr inbounds %struct.niu, %struct.niu* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @NIU_FLAGS_HOTPLUG_PHY, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %21

12:                                               ; preds = %1
  %13 = load %struct.niu*, %struct.niu** %3, align 8
  %14 = getelementptr inbounds %struct.niu, %struct.niu* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @NIU_FLAGS_HOTPLUG_PHY_PRESENT, align 4
  %17 = and i32 %15, %16
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %12
  %20 = load i32, i32* %4, align 4
  store i32 %20, i32* %2, align 4
  br label %70

21:                                               ; preds = %12, %1
  %22 = load i32, i32* @XMAC_CONFIG, align 4
  %23 = call i32 @nr64_mac(i32 %22)
  store i32 %23, i32* %5, align 4
  %24 = load i32, i32* @XMAC_CONFIG_LED_POLARITY, align 4
  %25 = xor i32 %24, -1
  %26 = load i32, i32* %5, align 4
  %27 = and i32 %26, %25
  store i32 %27, i32* %5, align 4
  %28 = load i32, i32* @XMAC_CONFIG_FORCE_LED_ON, align 4
  %29 = load i32, i32* %5, align 4
  %30 = or i32 %29, %28
  store i32 %30, i32* %5, align 4
  %31 = load i32, i32* @XMAC_CONFIG, align 4
  %32 = load i32, i32* %5, align 4
  %33 = call i32 @nw64_mac(i32 %31, i32 %32)
  %34 = load i32, i32* @MIF_CONFIG, align 4
  %35 = call i32 @nr64(i32 %34)
  store i32 %35, i32* %5, align 4
  %36 = load i32, i32* @MIF_CONFIG_INDIRECT_MODE, align 4
  %37 = load i32, i32* %5, align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* %5, align 4
  %39 = load i32, i32* @MIF_CONFIG, align 4
  %40 = load i32, i32* %5, align 4
  %41 = call i32 @nw64(i32 %39, i32 %40)
  %42 = load %struct.niu*, %struct.niu** %3, align 8
  %43 = call i32 @bcm8704_reset(%struct.niu* %42)
  store i32 %43, i32* %4, align 4
  %44 = load i32, i32* %4, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %21
  %47 = load i32, i32* %4, align 4
  store i32 %47, i32* %2, align 4
  br label %70

48:                                               ; preds = %21
  %49 = load %struct.niu*, %struct.niu** %3, align 8
  %50 = call i32 @xcvr_10g_set_lb_bcm870x(%struct.niu* %49)
  store i32 %50, i32* %4, align 4
  %51 = load i32, i32* %4, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %48
  %54 = load i32, i32* %4, align 4
  store i32 %54, i32* %2, align 4
  br label %70

55:                                               ; preds = %48
  %56 = load %struct.niu*, %struct.niu** %3, align 8
  %57 = call i32 @bcm8706_init_user_dev3(%struct.niu* %56)
  store i32 %57, i32* %4, align 4
  %58 = load i32, i32* %4, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %55
  %61 = load i32, i32* %4, align 4
  store i32 %61, i32* %2, align 4
  br label %70

62:                                               ; preds = %55
  %63 = load %struct.niu*, %struct.niu** %3, align 8
  %64 = call i32 @xcvr_diag_bcm870x(%struct.niu* %63)
  store i32 %64, i32* %4, align 4
  %65 = load i32, i32* %4, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %62
  %68 = load i32, i32* %4, align 4
  store i32 %68, i32* %2, align 4
  br label %70

69:                                               ; preds = %62
  store i32 0, i32* %2, align 4
  br label %70

70:                                               ; preds = %69, %67, %60, %53, %46, %19
  %71 = load i32, i32* %2, align 4
  ret i32 %71
}

declare dso_local i32 @nr64_mac(i32) #1

declare dso_local i32 @nw64_mac(i32, i32) #1

declare dso_local i32 @nr64(i32) #1

declare dso_local i32 @nw64(i32, i32) #1

declare dso_local i32 @bcm8704_reset(%struct.niu*) #1

declare dso_local i32 @xcvr_10g_set_lb_bcm870x(%struct.niu*) #1

declare dso_local i32 @bcm8706_init_user_dev3(%struct.niu*) #1

declare dso_local i32 @xcvr_diag_bcm870x(%struct.niu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
