; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgb/extr_ixgb_hw.c_ixgb_identify_phy.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgb/extr_ixgb_hw.c_ixgb_identify_phy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgb_hw = type { i32, i64 }

@.str = private unnamed_addr constant [18 x i8] c"ixgb_identify_phy\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"Identified TXN17401 optics\0A\00", align 1
@ixgb_phy_type_txn17401 = common dso_local global i32 0, align 4
@ixgb_xpak_vendor_intel = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"Identified TXN17201 optics\0A\00", align 1
@ixgb_phy_type_txn17201 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [25 x i8] c"Identified G6005 optics\0A\00", align 1
@ixgb_phy_type_g6005 = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [25 x i8] c"Identified G6104 optics\0A\00", align 1
@ixgb_phy_type_g6104 = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [16 x i8] c"Identified CX4\0A\00", align 1
@.str.6 = private unnamed_addr constant [31 x i8] c"Unknown physical layer module\0A\00", align 1
@ixgb_phy_type_unknown = common dso_local global i32 0, align 4
@SUN_SUBVENDOR_ID = common dso_local global i64 0, align 8
@ixgb_phy_type_bcm = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ixgb_hw*)* @ixgb_identify_phy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ixgb_identify_phy(%struct.ixgb_hw* %0) #0 {
  %2 = alloca %struct.ixgb_hw*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.ixgb_hw* %0, %struct.ixgb_hw** %2, align 8
  %5 = call i32 @DEBUGFUNC(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %6 = load %struct.ixgb_hw*, %struct.ixgb_hw** %2, align 8
  %7 = getelementptr inbounds %struct.ixgb_hw, %struct.ixgb_hw* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  switch i32 %8, label %42 [
    i32 131, label %9
    i32 128, label %12
    i32 129, label %25
    i32 130, label %28
  ]

9:                                                ; preds = %1
  %10 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %11 = load i32, i32* @ixgb_phy_type_txn17401, align 4
  store i32 %11, i32* %3, align 4
  br label %45

12:                                               ; preds = %1
  %13 = load %struct.ixgb_hw*, %struct.ixgb_hw** %2, align 8
  %14 = call i32 @ixgb_identify_xpak_vendor(%struct.ixgb_hw* %13)
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* @ixgb_xpak_vendor_intel, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %12
  %19 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  %20 = load i32, i32* @ixgb_phy_type_txn17201, align 4
  store i32 %20, i32* %3, align 4
  br label %24

21:                                               ; preds = %12
  %22 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  %23 = load i32, i32* @ixgb_phy_type_g6005, align 4
  store i32 %23, i32* %3, align 4
  br label %24

24:                                               ; preds = %21, %18
  br label %45

25:                                               ; preds = %1
  %26 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0))
  %27 = load i32, i32* @ixgb_phy_type_g6104, align 4
  store i32 %27, i32* %3, align 4
  br label %45

28:                                               ; preds = %1
  %29 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0))
  %30 = load %struct.ixgb_hw*, %struct.ixgb_hw** %2, align 8
  %31 = call i32 @ixgb_identify_xpak_vendor(%struct.ixgb_hw* %30)
  store i32 %31, i32* %4, align 4
  %32 = load i32, i32* %4, align 4
  %33 = load i32, i32* @ixgb_xpak_vendor_intel, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %28
  %36 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  %37 = load i32, i32* @ixgb_phy_type_txn17201, align 4
  store i32 %37, i32* %3, align 4
  br label %41

38:                                               ; preds = %28
  %39 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  %40 = load i32, i32* @ixgb_phy_type_g6005, align 4
  store i32 %40, i32* %3, align 4
  br label %41

41:                                               ; preds = %38, %35
  br label %45

42:                                               ; preds = %1
  %43 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i64 0, i64 0))
  %44 = load i32, i32* @ixgb_phy_type_unknown, align 4
  store i32 %44, i32* %3, align 4
  br label %45

45:                                               ; preds = %42, %41, %25, %24, %9
  %46 = load %struct.ixgb_hw*, %struct.ixgb_hw** %2, align 8
  %47 = getelementptr inbounds %struct.ixgb_hw, %struct.ixgb_hw* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @SUN_SUBVENDOR_ID, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %53

51:                                               ; preds = %45
  %52 = load i32, i32* @ixgb_phy_type_bcm, align 4
  store i32 %52, i32* %3, align 4
  br label %53

53:                                               ; preds = %51, %45
  %54 = load i32, i32* %3, align 4
  ret i32 %54
}

declare dso_local i32 @DEBUGFUNC(i8*) #1

declare dso_local i32 @DEBUGOUT(i8*) #1

declare dso_local i32 @ixgb_identify_xpak_vendor(%struct.ixgb_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
