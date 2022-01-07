; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/e1000/extr_e1000_hw.c_e1000_wait_autoneg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/e1000/extr_e1000_hw.c_e1000_wait_autoneg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { i32 }

@.str = private unnamed_addr constant [19 x i8] c"e1000_wait_autoneg\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"Waiting for Auto-Neg to complete.\0A\00", align 1
@PHY_AUTO_NEG_TIME = common dso_local global i64 0, align 8
@PHY_STATUS = common dso_local global i32 0, align 4
@MII_SR_AUTONEG_COMPLETE = common dso_local global i64 0, align 8
@E1000_SUCCESS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.e1000_hw*)* @e1000_wait_autoneg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @e1000_wait_autoneg(%struct.e1000_hw* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.e1000_hw*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.e1000_hw* %0, %struct.e1000_hw** %3, align 8
  %7 = call i32 @e_dbg(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %8 = call i32 @e_dbg(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  %9 = load i64, i64* @PHY_AUTO_NEG_TIME, align 8
  store i64 %9, i64* %5, align 8
  br label %10

10:                                               ; preds = %38, %1
  %11 = load i64, i64* %5, align 8
  %12 = icmp sgt i64 %11, 0
  br i1 %12, label %13, label %41

13:                                               ; preds = %10
  %14 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %15 = load i32, i32* @PHY_STATUS, align 4
  %16 = call i64 @e1000_read_phy_reg(%struct.e1000_hw* %14, i32 %15, i64* %6)
  store i64 %16, i64* %4, align 8
  %17 = load i64, i64* %4, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %13
  %20 = load i64, i64* %4, align 8
  store i64 %20, i64* %2, align 8
  br label %43

21:                                               ; preds = %13
  %22 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %23 = load i32, i32* @PHY_STATUS, align 4
  %24 = call i64 @e1000_read_phy_reg(%struct.e1000_hw* %22, i32 %23, i64* %6)
  store i64 %24, i64* %4, align 8
  %25 = load i64, i64* %4, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %21
  %28 = load i64, i64* %4, align 8
  store i64 %28, i64* %2, align 8
  br label %43

29:                                               ; preds = %21
  %30 = load i64, i64* %6, align 8
  %31 = load i64, i64* @MII_SR_AUTONEG_COMPLETE, align 8
  %32 = and i64 %30, %31
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %29
  %35 = load i64, i64* @E1000_SUCCESS, align 8
  store i64 %35, i64* %2, align 8
  br label %43

36:                                               ; preds = %29
  %37 = call i32 @msleep(i32 100)
  br label %38

38:                                               ; preds = %36
  %39 = load i64, i64* %5, align 8
  %40 = add nsw i64 %39, -1
  store i64 %40, i64* %5, align 8
  br label %10

41:                                               ; preds = %10
  %42 = load i64, i64* @E1000_SUCCESS, align 8
  store i64 %42, i64* %2, align 8
  br label %43

43:                                               ; preds = %41, %34, %27, %19
  %44 = load i64, i64* %2, align 8
  ret i64 %44
}

declare dso_local i32 @e_dbg(i8*) #1

declare dso_local i64 @e1000_read_phy_reg(%struct.e1000_hw*, i32, i64*) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
