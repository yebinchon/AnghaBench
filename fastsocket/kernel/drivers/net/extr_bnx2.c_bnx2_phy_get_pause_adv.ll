; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_bnx2.c_bnx2_phy_get_pause_adv.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_bnx2.c_bnx2_phy_get_pause_adv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2 = type { i32, i32 }

@FLOW_CTRL_RX = common dso_local global i32 0, align 4
@FLOW_CTRL_TX = common dso_local global i32 0, align 4
@BNX2_PHY_FLAG_SERDES = common dso_local global i32 0, align 4
@ADVERTISE_1000XPAUSE = common dso_local global i32 0, align 4
@ADVERTISE_PAUSE_CAP = common dso_local global i32 0, align 4
@ADVERTISE_1000XPSE_ASYM = common dso_local global i32 0, align 4
@ADVERTISE_PAUSE_ASYM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bnx2*)* @bnx2_phy_get_pause_adv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnx2_phy_get_pause_adv(%struct.bnx2* %0) #0 {
  %2 = alloca %struct.bnx2*, align 8
  %3 = alloca i32, align 4
  store %struct.bnx2* %0, %struct.bnx2** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = load %struct.bnx2*, %struct.bnx2** %2, align 8
  %5 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = load i32, i32* @FLOW_CTRL_RX, align 4
  %8 = load i32, i32* @FLOW_CTRL_TX, align 4
  %9 = or i32 %7, %8
  %10 = and i32 %6, %9
  %11 = load i32, i32* @FLOW_CTRL_RX, align 4
  %12 = load i32, i32* @FLOW_CTRL_TX, align 4
  %13 = or i32 %11, %12
  %14 = icmp eq i32 %10, %13
  br i1 %14, label %15, label %27

15:                                               ; preds = %1
  %16 = load %struct.bnx2*, %struct.bnx2** %2, align 8
  %17 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @BNX2_PHY_FLAG_SERDES, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %15
  %23 = load i32, i32* @ADVERTISE_1000XPAUSE, align 4
  store i32 %23, i32* %3, align 4
  br label %26

24:                                               ; preds = %15
  %25 = load i32, i32* @ADVERTISE_PAUSE_CAP, align 4
  store i32 %25, i32* %3, align 4
  br label %26

26:                                               ; preds = %24, %22
  br label %71

27:                                               ; preds = %1
  %28 = load %struct.bnx2*, %struct.bnx2** %2, align 8
  %29 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @FLOW_CTRL_TX, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %46

34:                                               ; preds = %27
  %35 = load %struct.bnx2*, %struct.bnx2** %2, align 8
  %36 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @BNX2_PHY_FLAG_SERDES, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %34
  %42 = load i32, i32* @ADVERTISE_1000XPSE_ASYM, align 4
  store i32 %42, i32* %3, align 4
  br label %45

43:                                               ; preds = %34
  %44 = load i32, i32* @ADVERTISE_PAUSE_ASYM, align 4
  store i32 %44, i32* %3, align 4
  br label %45

45:                                               ; preds = %43, %41
  br label %70

46:                                               ; preds = %27
  %47 = load %struct.bnx2*, %struct.bnx2** %2, align 8
  %48 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @FLOW_CTRL_RX, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %69

53:                                               ; preds = %46
  %54 = load %struct.bnx2*, %struct.bnx2** %2, align 8
  %55 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @BNX2_PHY_FLAG_SERDES, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %53
  %61 = load i32, i32* @ADVERTISE_1000XPAUSE, align 4
  %62 = load i32, i32* @ADVERTISE_1000XPSE_ASYM, align 4
  %63 = or i32 %61, %62
  store i32 %63, i32* %3, align 4
  br label %68

64:                                               ; preds = %53
  %65 = load i32, i32* @ADVERTISE_PAUSE_CAP, align 4
  %66 = load i32, i32* @ADVERTISE_PAUSE_ASYM, align 4
  %67 = or i32 %65, %66
  store i32 %67, i32* %3, align 4
  br label %68

68:                                               ; preds = %64, %60
  br label %69

69:                                               ; preds = %68, %46
  br label %70

70:                                               ; preds = %69, %45
  br label %71

71:                                               ; preds = %70, %26
  %72 = load i32, i32* %3, align 4
  ret i32 %72
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
