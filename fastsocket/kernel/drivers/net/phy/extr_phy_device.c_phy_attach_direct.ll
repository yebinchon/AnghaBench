; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/phy/extr_phy_device.c_phy_attach_direct.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/phy/extr_phy_device.c_phy_attach_direct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 (%struct.device*)* }
%struct.device = type { %struct.TYPE_4__* }
%struct.net_device = type { i32 }
%struct.phy_device = type { %struct.TYPE_5__*, i32, i32, %struct.net_device*, %struct.device }
%struct.TYPE_5__ = type { i32 (%struct.phy_device*)* }

@genphy_driver = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@.str = private unnamed_addr constant [22 x i8] c"PHY already attached\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @phy_attach_direct(%struct.net_device* %0, %struct.phy_device* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.phy_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.device*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %6, align 8
  store %struct.phy_device* %1, %struct.phy_device** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load %struct.phy_device*, %struct.phy_device** %7, align 8
  %14 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %13, i32 0, i32 4
  store %struct.device* %14, %struct.device** %10, align 8
  %15 = load %struct.device*, %struct.device** %10, align 8
  %16 = getelementptr inbounds %struct.device, %struct.device* %15, i32 0, i32 0
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = icmp eq %struct.TYPE_4__* null, %17
  br i1 %18, label %19, label %40

19:                                               ; preds = %4
  %20 = load %struct.device*, %struct.device** %10, align 8
  %21 = getelementptr inbounds %struct.device, %struct.device* %20, i32 0, i32 0
  store %struct.TYPE_4__* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @genphy_driver, i32 0, i32 0), %struct.TYPE_4__** %21, align 8
  %22 = load %struct.device*, %struct.device** %10, align 8
  %23 = getelementptr inbounds %struct.device, %struct.device* %22, i32 0, i32 0
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i32 (%struct.device*)*, i32 (%struct.device*)** %25, align 8
  %27 = load %struct.device*, %struct.device** %10, align 8
  %28 = call i32 %26(%struct.device* %27)
  store i32 %28, i32* %11, align 4
  %29 = load i32, i32* %11, align 4
  %30 = icmp sge i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %19
  %32 = load %struct.device*, %struct.device** %10, align 8
  %33 = call i32 @device_bind_driver(%struct.device* %32)
  store i32 %33, i32* %11, align 4
  br label %34

34:                                               ; preds = %31, %19
  %35 = load i32, i32* %11, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %34
  %38 = load i32, i32* %11, align 4
  store i32 %38, i32* %5, align 4
  br label %88

39:                                               ; preds = %34
  br label %40

40:                                               ; preds = %39, %4
  %41 = load %struct.phy_device*, %struct.phy_device** %7, align 8
  %42 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %41, i32 0, i32 3
  %43 = load %struct.net_device*, %struct.net_device** %42, align 8
  %44 = icmp ne %struct.net_device* %43, null
  br i1 %44, label %45, label %51

45:                                               ; preds = %40
  %46 = load %struct.net_device*, %struct.net_device** %6, align 8
  %47 = getelementptr inbounds %struct.net_device, %struct.net_device* %46, i32 0, i32 0
  %48 = call i32 @dev_err(i32* %47, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %49 = load i32, i32* @EBUSY, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %5, align 4
  br label %88

51:                                               ; preds = %40
  %52 = load %struct.net_device*, %struct.net_device** %6, align 8
  %53 = load %struct.phy_device*, %struct.phy_device** %7, align 8
  %54 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %53, i32 0, i32 3
  store %struct.net_device* %52, %struct.net_device** %54, align 8
  %55 = load i32, i32* %8, align 4
  %56 = load %struct.phy_device*, %struct.phy_device** %7, align 8
  %57 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %56, i32 0, i32 2
  store i32 %55, i32* %57, align 4
  %58 = load i32, i32* %9, align 4
  %59 = load %struct.phy_device*, %struct.phy_device** %7, align 8
  %60 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %59, i32 0, i32 1
  store i32 %58, i32* %60, align 8
  %61 = load %struct.phy_device*, %struct.phy_device** %7, align 8
  %62 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %61, i32 0, i32 0
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 0
  %65 = load i32 (%struct.phy_device*)*, i32 (%struct.phy_device*)** %64, align 8
  %66 = icmp ne i32 (%struct.phy_device*)* %65, null
  br i1 %66, label %67, label %87

67:                                               ; preds = %51
  %68 = load %struct.phy_device*, %struct.phy_device** %7, align 8
  %69 = call i32 @phy_scan_fixups(%struct.phy_device* %68)
  store i32 %69, i32* %12, align 4
  %70 = load i32, i32* %12, align 4
  %71 = icmp slt i32 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %67
  %73 = load i32, i32* %12, align 4
  store i32 %73, i32* %5, align 4
  br label %88

74:                                               ; preds = %67
  %75 = load %struct.phy_device*, %struct.phy_device** %7, align 8
  %76 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %75, i32 0, i32 0
  %77 = load %struct.TYPE_5__*, %struct.TYPE_5__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 0
  %79 = load i32 (%struct.phy_device*)*, i32 (%struct.phy_device*)** %78, align 8
  %80 = load %struct.phy_device*, %struct.phy_device** %7, align 8
  %81 = call i32 %79(%struct.phy_device* %80)
  store i32 %81, i32* %12, align 4
  %82 = load i32, i32* %12, align 4
  %83 = icmp slt i32 %82, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %74
  %85 = load i32, i32* %12, align 4
  store i32 %85, i32* %5, align 4
  br label %88

86:                                               ; preds = %74
  br label %87

87:                                               ; preds = %86, %51
  store i32 0, i32* %5, align 4
  br label %88

88:                                               ; preds = %87, %84, %72, %45, %37
  %89 = load i32, i32* %5, align 4
  ret i32 %89
}

declare dso_local i32 @device_bind_driver(%struct.device*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @phy_scan_fixups(%struct.phy_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
