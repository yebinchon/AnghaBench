; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgb/extr_ixgb_hw.c_ixgb_identify_xpak_vendor.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgb/extr_ixgb_hw.c_ixgb_identify_xpak_vendor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgb_hw = type { i32 }

@.str = private unnamed_addr constant [26 x i8] c"ixgb_identify_xpak_vendor\00", align 1
@MDIO_PMA_PMD_XPAK_VENDOR_NAME = common dso_local global i64 0, align 8
@IXGB_PHY_ADDRESS = common dso_local global i32 0, align 4
@MDIO_MMD_PMAPMD = common dso_local global i32 0, align 4
@ixgb_xpak_vendor_intel = common dso_local global i32 0, align 4
@ixgb_xpak_vendor_infineon = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ixgb_hw*)* @ixgb_identify_xpak_vendor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ixgb_identify_xpak_vendor(%struct.ixgb_hw* %0) #0 {
  %2 = alloca %struct.ixgb_hw*, align 8
  %3 = alloca i32, align 4
  %4 = alloca [5 x i8], align 1
  %5 = alloca i32, align 4
  store %struct.ixgb_hw* %0, %struct.ixgb_hw** %2, align 8
  %6 = call i32 @DEBUGFUNC(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %7

7:                                                ; preds = %22, %1
  %8 = load i32, i32* %3, align 4
  %9 = icmp slt i32 %8, 5
  br i1 %9, label %10, label %25

10:                                               ; preds = %7
  %11 = load %struct.ixgb_hw*, %struct.ixgb_hw** %2, align 8
  %12 = load i64, i64* @MDIO_PMA_PMD_XPAK_VENDOR_NAME, align 8
  %13 = load i32, i32* %3, align 4
  %14 = sext i32 %13 to i64
  %15 = add nsw i64 %12, %14
  %16 = load i32, i32* @IXGB_PHY_ADDRESS, align 4
  %17 = load i32, i32* @MDIO_MMD_PMAPMD, align 4
  %18 = call signext i8 @ixgb_read_phy_reg(%struct.ixgb_hw* %11, i64 %15, i32 %16, i32 %17)
  %19 = load i32, i32* %3, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds [5 x i8], [5 x i8]* %4, i64 0, i64 %20
  store i8 %18, i8* %21, align 1
  br label %22

22:                                               ; preds = %10
  %23 = load i32, i32* %3, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %3, align 4
  br label %7

25:                                               ; preds = %7
  %26 = getelementptr inbounds [5 x i8], [5 x i8]* %4, i64 0, i64 0
  %27 = load i8, i8* %26, align 1
  %28 = sext i8 %27 to i32
  %29 = icmp eq i32 %28, 73
  br i1 %29, label %30, label %52

30:                                               ; preds = %25
  %31 = getelementptr inbounds [5 x i8], [5 x i8]* %4, i64 0, i64 1
  %32 = load i8, i8* %31, align 1
  %33 = sext i8 %32 to i32
  %34 = icmp eq i32 %33, 78
  br i1 %34, label %35, label %52

35:                                               ; preds = %30
  %36 = getelementptr inbounds [5 x i8], [5 x i8]* %4, i64 0, i64 2
  %37 = load i8, i8* %36, align 1
  %38 = sext i8 %37 to i32
  %39 = icmp eq i32 %38, 84
  br i1 %39, label %40, label %52

40:                                               ; preds = %35
  %41 = getelementptr inbounds [5 x i8], [5 x i8]* %4, i64 0, i64 3
  %42 = load i8, i8* %41, align 1
  %43 = sext i8 %42 to i32
  %44 = icmp eq i32 %43, 69
  br i1 %44, label %45, label %52

45:                                               ; preds = %40
  %46 = getelementptr inbounds [5 x i8], [5 x i8]* %4, i64 0, i64 4
  %47 = load i8, i8* %46, align 1
  %48 = sext i8 %47 to i32
  %49 = icmp eq i32 %48, 76
  br i1 %49, label %50, label %52

50:                                               ; preds = %45
  %51 = load i32, i32* @ixgb_xpak_vendor_intel, align 4
  store i32 %51, i32* %5, align 4
  br label %54

52:                                               ; preds = %45, %40, %35, %30, %25
  %53 = load i32, i32* @ixgb_xpak_vendor_infineon, align 4
  store i32 %53, i32* %5, align 4
  br label %54

54:                                               ; preds = %52, %50
  %55 = load i32, i32* %5, align 4
  ret i32 %55
}

declare dso_local i32 @DEBUGFUNC(i8*) #1

declare dso_local signext i8 @ixgb_read_phy_reg(%struct.ixgb_hw*, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
