; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/e1000e/extr_phy.c_e1000_link_stall_workaround_hv.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/e1000e/extr_phy.c_e1000_link_stall_workaround_hv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@e1000_phy_82578 = common dso_local global i64 0, align 8
@MII_BMCR = common dso_local global i32 0, align 4
@BMCR_LOOPBACK = common dso_local global i32 0, align 4
@BM_CS_STATUS = common dso_local global i32 0, align 4
@BM_CS_STATUS_LINK_UP = common dso_local global i32 0, align 4
@BM_CS_STATUS_RESOLVED = common dso_local global i32 0, align 4
@BM_CS_STATUS_SPEED_MASK = common dso_local global i32 0, align 4
@BM_CS_STATUS_SPEED_1000 = common dso_local global i32 0, align 4
@HV_MUX_DATA_CTRL = common dso_local global i32 0, align 4
@HV_MUX_DATA_CTRL_GEN_TO_MAC = common dso_local global i32 0, align 4
@HV_MUX_DATA_CTRL_FORCE_SPEED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @e1000_link_stall_workaround_hv(%struct.e1000_hw* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.e1000_hw*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.e1000_hw* %0, %struct.e1000_hw** %3, align 8
  store i64 0, i64* %4, align 8
  %6 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %7 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @e1000_phy_82578, align 8
  %11 = icmp ne i64 %9, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  store i64 0, i64* %2, align 8
  br label %63

13:                                               ; preds = %1
  %14 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %15 = load i32, i32* @MII_BMCR, align 4
  %16 = call i64 @e1e_rphy(%struct.e1000_hw* %14, i32 %15, i32* %5)
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* @BMCR_LOOPBACK, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %13
  store i64 0, i64* %2, align 8
  br label %63

22:                                               ; preds = %13
  %23 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %24 = load i32, i32* @BM_CS_STATUS, align 4
  %25 = call i64 @e1e_rphy(%struct.e1000_hw* %23, i32 %24, i32* %5)
  store i64 %25, i64* %4, align 8
  %26 = load i64, i64* %4, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %22
  %29 = load i64, i64* %4, align 8
  store i64 %29, i64* %2, align 8
  br label %63

30:                                               ; preds = %22
  %31 = load i32, i32* @BM_CS_STATUS_LINK_UP, align 4
  %32 = load i32, i32* @BM_CS_STATUS_RESOLVED, align 4
  %33 = or i32 %31, %32
  %34 = load i32, i32* @BM_CS_STATUS_SPEED_MASK, align 4
  %35 = or i32 %33, %34
  %36 = load i32, i32* %5, align 4
  %37 = and i32 %36, %35
  store i32 %37, i32* %5, align 4
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* @BM_CS_STATUS_LINK_UP, align 4
  %40 = load i32, i32* @BM_CS_STATUS_RESOLVED, align 4
  %41 = or i32 %39, %40
  %42 = load i32, i32* @BM_CS_STATUS_SPEED_1000, align 4
  %43 = or i32 %41, %42
  %44 = icmp ne i32 %38, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %30
  store i64 0, i64* %2, align 8
  br label %63

46:                                               ; preds = %30
  %47 = call i32 @msleep(i32 200)
  %48 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %49 = load i32, i32* @HV_MUX_DATA_CTRL, align 4
  %50 = load i32, i32* @HV_MUX_DATA_CTRL_GEN_TO_MAC, align 4
  %51 = load i32, i32* @HV_MUX_DATA_CTRL_FORCE_SPEED, align 4
  %52 = or i32 %50, %51
  %53 = call i64 @e1e_wphy(%struct.e1000_hw* %48, i32 %49, i32 %52)
  store i64 %53, i64* %4, align 8
  %54 = load i64, i64* %4, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %46
  %57 = load i64, i64* %4, align 8
  store i64 %57, i64* %2, align 8
  br label %63

58:                                               ; preds = %46
  %59 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %60 = load i32, i32* @HV_MUX_DATA_CTRL, align 4
  %61 = load i32, i32* @HV_MUX_DATA_CTRL_GEN_TO_MAC, align 4
  %62 = call i64 @e1e_wphy(%struct.e1000_hw* %59, i32 %60, i32 %61)
  store i64 %62, i64* %2, align 8
  br label %63

63:                                               ; preds = %58, %56, %45, %28, %21, %12
  %64 = load i64, i64* %2, align 8
  ret i64 %64
}

declare dso_local i64 @e1e_rphy(%struct.e1000_hw*, i32, i32*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i64 @e1e_wphy(%struct.e1000_hw*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
