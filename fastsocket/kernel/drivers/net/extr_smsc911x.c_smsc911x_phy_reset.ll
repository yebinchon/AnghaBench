; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_smsc911x.c_smsc911x_phy_reset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_smsc911x.c_smsc911x_phy_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smsc911x_data = type { %struct.phy_device* }
%struct.phy_device = type { i32, i32 }

@HW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Performing PHY BCR Reset\00", align 1
@MII_BMCR = common dso_local global i32 0, align 4
@BMCR_RESET = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"PHY reset failed to complete.\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.smsc911x_data*)* @smsc911x_phy_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smsc911x_phy_reset(%struct.smsc911x_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.smsc911x_data*, align 8
  %4 = alloca %struct.phy_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.smsc911x_data* %0, %struct.smsc911x_data** %3, align 8
  %7 = load %struct.smsc911x_data*, %struct.smsc911x_data** %3, align 8
  %8 = getelementptr inbounds %struct.smsc911x_data, %struct.smsc911x_data* %7, i32 0, i32 0
  %9 = load %struct.phy_device*, %struct.phy_device** %8, align 8
  store %struct.phy_device* %9, %struct.phy_device** %4, align 8
  store i32 100000, i32* %6, align 4
  %10 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %11 = icmp ne %struct.phy_device* %10, null
  %12 = xor i1 %11, true
  %13 = zext i1 %12 to i32
  %14 = call i32 @BUG_ON(i32 %13)
  %15 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %16 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  %19 = xor i1 %18, true
  %20 = zext i1 %19 to i32
  %21 = call i32 @BUG_ON(i32 %20)
  %22 = load i32, i32* @HW, align 4
  %23 = call i32 @SMSC_TRACE(i32 %22, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %24 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %25 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %28 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @MII_BMCR, align 4
  %31 = load i32, i32* @BMCR_RESET, align 4
  %32 = call i32 @smsc911x_mii_write(i32 %26, i32 %29, i32 %30, i32 %31)
  br label %33

33:                                               ; preds = %52, %1
  %34 = call i32 @msleep(i32 1)
  %35 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %36 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %39 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @MII_BMCR, align 4
  %42 = call i32 @smsc911x_mii_read(i32 %37, i32 %40, i32 %41)
  store i32 %42, i32* %5, align 4
  br label %43

43:                                               ; preds = %33
  %44 = load i32, i32* %6, align 4
  %45 = add i32 %44, -1
  store i32 %45, i32* %6, align 4
  %46 = icmp ne i32 %44, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %43
  %48 = load i32, i32* %5, align 4
  %49 = load i32, i32* @BMCR_RESET, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br label %52

52:                                               ; preds = %47, %43
  %53 = phi i1 [ false, %43 ], [ %51, %47 ]
  br i1 %53, label %33, label %54

54:                                               ; preds = %52
  %55 = load i32, i32* %5, align 4
  %56 = load i32, i32* @BMCR_RESET, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %64

59:                                               ; preds = %54
  %60 = load i32, i32* @HW, align 4
  %61 = call i32 @SMSC_WARNING(i32 %60, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %62 = load i32, i32* @EIO, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %2, align 4
  br label %66

64:                                               ; preds = %54
  %65 = call i32 @msleep(i32 1)
  store i32 0, i32* %2, align 4
  br label %66

66:                                               ; preds = %64, %59
  %67 = load i32, i32* %2, align 4
  ret i32 %67
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @SMSC_TRACE(i32, i8*) #1

declare dso_local i32 @smsc911x_mii_write(i32, i32, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @smsc911x_mii_read(i32, i32, i32) #1

declare dso_local i32 @SMSC_WARNING(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
