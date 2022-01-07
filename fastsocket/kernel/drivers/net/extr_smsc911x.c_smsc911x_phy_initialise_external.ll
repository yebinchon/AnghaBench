; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_smsc911x.c_smsc911x_phy_initialise_external.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_smsc911x.c_smsc911x_phy_initialise_external.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smsc911x_data = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@HW_CFG = common dso_local global i32 0, align 4
@SMSC911X_FORCE_INTERNAL_PHY = common dso_local global i32 0, align 4
@HW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"Forcing internal PHY\00", align 1
@SMSC911X_FORCE_EXTERNAL_PHY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"Forcing external PHY\00", align 1
@HW_CFG_EXT_PHY_DET_ = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [43 x i8] c"HW_CFG EXT_PHY_DET set, using external PHY\00", align 1
@.str.3 = private unnamed_addr constant [45 x i8] c"HW_CFG EXT_PHY_DET clear, using internal PHY\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.smsc911x_data*)* @smsc911x_phy_initialise_external to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @smsc911x_phy_initialise_external(%struct.smsc911x_data* %0) #0 {
  %2 = alloca %struct.smsc911x_data*, align 8
  %3 = alloca i32, align 4
  store %struct.smsc911x_data* %0, %struct.smsc911x_data** %2, align 8
  %4 = load %struct.smsc911x_data*, %struct.smsc911x_data** %2, align 8
  %5 = load i32, i32* @HW_CFG, align 4
  %6 = call i32 @smsc911x_reg_read(%struct.smsc911x_data* %4, i32 %5)
  store i32 %6, i32* %3, align 4
  %7 = load %struct.smsc911x_data*, %struct.smsc911x_data** %2, align 8
  %8 = getelementptr inbounds %struct.smsc911x_data, %struct.smsc911x_data* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @SMSC911X_FORCE_INTERNAL_PHY, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %1
  %15 = load i32, i32* @HW, align 4
  %16 = call i32 @SMSC_TRACE(i32 %15, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %17 = load %struct.smsc911x_data*, %struct.smsc911x_data** %2, align 8
  %18 = getelementptr inbounds %struct.smsc911x_data, %struct.smsc911x_data* %17, i32 0, i32 0
  store i32 0, i32* %18, align 4
  br label %53

19:                                               ; preds = %1
  %20 = load %struct.smsc911x_data*, %struct.smsc911x_data** %2, align 8
  %21 = getelementptr inbounds %struct.smsc911x_data, %struct.smsc911x_data* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @SMSC911X_FORCE_EXTERNAL_PHY, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %34

27:                                               ; preds = %19
  %28 = load i32, i32* @HW, align 4
  %29 = call i32 @SMSC_TRACE(i32 %28, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %30 = load %struct.smsc911x_data*, %struct.smsc911x_data** %2, align 8
  %31 = call i32 @smsc911x_phy_enable_external(%struct.smsc911x_data* %30)
  %32 = load %struct.smsc911x_data*, %struct.smsc911x_data** %2, align 8
  %33 = getelementptr inbounds %struct.smsc911x_data, %struct.smsc911x_data* %32, i32 0, i32 0
  store i32 1, i32* %33, align 4
  br label %52

34:                                               ; preds = %19
  %35 = load i32, i32* %3, align 4
  %36 = load i32, i32* @HW_CFG_EXT_PHY_DET_, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %46

39:                                               ; preds = %34
  %40 = load i32, i32* @HW, align 4
  %41 = call i32 @SMSC_TRACE(i32 %40, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0))
  %42 = load %struct.smsc911x_data*, %struct.smsc911x_data** %2, align 8
  %43 = call i32 @smsc911x_phy_enable_external(%struct.smsc911x_data* %42)
  %44 = load %struct.smsc911x_data*, %struct.smsc911x_data** %2, align 8
  %45 = getelementptr inbounds %struct.smsc911x_data, %struct.smsc911x_data* %44, i32 0, i32 0
  store i32 1, i32* %45, align 4
  br label %51

46:                                               ; preds = %34
  %47 = load i32, i32* @HW, align 4
  %48 = call i32 @SMSC_TRACE(i32 %47, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0))
  %49 = load %struct.smsc911x_data*, %struct.smsc911x_data** %2, align 8
  %50 = getelementptr inbounds %struct.smsc911x_data, %struct.smsc911x_data* %49, i32 0, i32 0
  store i32 0, i32* %50, align 4
  br label %51

51:                                               ; preds = %46, %39
  br label %52

52:                                               ; preds = %51, %27
  br label %53

53:                                               ; preds = %52, %14
  ret void
}

declare dso_local i32 @smsc911x_reg_read(%struct.smsc911x_data*, i32) #1

declare dso_local i32 @SMSC_TRACE(i32, i8*) #1

declare dso_local i32 @smsc911x_phy_enable_external(%struct.smsc911x_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
