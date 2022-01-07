; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_ll_temac_main.c_temac_open.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_ll_temac_main.c_temac_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i32 }
%struct.temac_local = type { i32, i32*, i32, i32, i64, i32 }

@.str = private unnamed_addr constant [14 x i8] c"temac_open()\0A\00", align 1
@temac_adjust_link = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"of_phy_connect() failed\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@ll_temac_tx_irq = common dso_local global i32 0, align 4
@ll_temac_rx_irq = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"request_irq() failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @temac_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @temac_open(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.temac_local*, align 8
  %5 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %6 = load %struct.net_device*, %struct.net_device** %3, align 8
  %7 = call %struct.temac_local* @netdev_priv(%struct.net_device* %6)
  store %struct.temac_local* %7, %struct.temac_local** %4, align 8
  %8 = load %struct.net_device*, %struct.net_device** %3, align 8
  %9 = getelementptr inbounds %struct.net_device, %struct.net_device* %8, i32 0, i32 1
  %10 = call i32 @dev_dbg(i32* %9, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %11 = load %struct.temac_local*, %struct.temac_local** %4, align 8
  %12 = getelementptr inbounds %struct.temac_local, %struct.temac_local* %11, i32 0, i32 4
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %42

15:                                               ; preds = %1
  %16 = load %struct.temac_local*, %struct.temac_local** %4, align 8
  %17 = getelementptr inbounds %struct.temac_local, %struct.temac_local* %16, i32 0, i32 5
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.temac_local*, %struct.temac_local** %4, align 8
  %20 = getelementptr inbounds %struct.temac_local, %struct.temac_local* %19, i32 0, i32 4
  %21 = load i64, i64* %20, align 8
  %22 = load i32, i32* @temac_adjust_link, align 4
  %23 = call i32* @of_phy_connect(i32 %18, i64 %21, i32 %22, i32 0, i32 0)
  %24 = load %struct.temac_local*, %struct.temac_local** %4, align 8
  %25 = getelementptr inbounds %struct.temac_local, %struct.temac_local* %24, i32 0, i32 1
  store i32* %23, i32** %25, align 8
  %26 = load %struct.temac_local*, %struct.temac_local** %4, align 8
  %27 = getelementptr inbounds %struct.temac_local, %struct.temac_local* %26, i32 0, i32 1
  %28 = load i32*, i32** %27, align 8
  %29 = icmp ne i32* %28, null
  br i1 %29, label %37, label %30

30:                                               ; preds = %15
  %31 = load %struct.temac_local*, %struct.temac_local** %4, align 8
  %32 = getelementptr inbounds %struct.temac_local, %struct.temac_local* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @dev_err(i32 %33, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %35 = load i32, i32* @ENODEV, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %2, align 4
  br label %95

37:                                               ; preds = %15
  %38 = load %struct.temac_local*, %struct.temac_local** %4, align 8
  %39 = getelementptr inbounds %struct.temac_local, %struct.temac_local* %38, i32 0, i32 1
  %40 = load i32*, i32** %39, align 8
  %41 = call i32 @phy_start(i32* %40)
  br label %42

42:                                               ; preds = %37, %1
  %43 = load %struct.temac_local*, %struct.temac_local** %4, align 8
  %44 = getelementptr inbounds %struct.temac_local, %struct.temac_local* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @ll_temac_tx_irq, align 4
  %47 = load %struct.net_device*, %struct.net_device** %3, align 8
  %48 = getelementptr inbounds %struct.net_device, %struct.net_device* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.net_device*, %struct.net_device** %3, align 8
  %51 = call i32 @request_irq(i32 %45, i32 %46, i32 0, i32 %49, %struct.net_device* %50)
  store i32 %51, i32* %5, align 4
  %52 = load i32, i32* %5, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %42
  br label %77

55:                                               ; preds = %42
  %56 = load %struct.temac_local*, %struct.temac_local** %4, align 8
  %57 = getelementptr inbounds %struct.temac_local, %struct.temac_local* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @ll_temac_rx_irq, align 4
  %60 = load %struct.net_device*, %struct.net_device** %3, align 8
  %61 = getelementptr inbounds %struct.net_device, %struct.net_device* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.net_device*, %struct.net_device** %3, align 8
  %64 = call i32 @request_irq(i32 %58, i32 %59, i32 0, i32 %62, %struct.net_device* %63)
  store i32 %64, i32* %5, align 4
  %65 = load i32, i32* %5, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %55
  br label %71

68:                                               ; preds = %55
  %69 = load %struct.net_device*, %struct.net_device** %3, align 8
  %70 = call i32 @temac_device_reset(%struct.net_device* %69)
  store i32 0, i32* %2, align 4
  br label %95

71:                                               ; preds = %67
  %72 = load %struct.temac_local*, %struct.temac_local** %4, align 8
  %73 = getelementptr inbounds %struct.temac_local, %struct.temac_local* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.net_device*, %struct.net_device** %3, align 8
  %76 = call i32 @free_irq(i32 %74, %struct.net_device* %75)
  br label %77

77:                                               ; preds = %71, %54
  %78 = load %struct.temac_local*, %struct.temac_local** %4, align 8
  %79 = getelementptr inbounds %struct.temac_local, %struct.temac_local* %78, i32 0, i32 1
  %80 = load i32*, i32** %79, align 8
  %81 = icmp ne i32* %80, null
  br i1 %81, label %82, label %87

82:                                               ; preds = %77
  %83 = load %struct.temac_local*, %struct.temac_local** %4, align 8
  %84 = getelementptr inbounds %struct.temac_local, %struct.temac_local* %83, i32 0, i32 1
  %85 = load i32*, i32** %84, align 8
  %86 = call i32 @phy_disconnect(i32* %85)
  br label %87

87:                                               ; preds = %82, %77
  %88 = load %struct.temac_local*, %struct.temac_local** %4, align 8
  %89 = getelementptr inbounds %struct.temac_local, %struct.temac_local* %88, i32 0, i32 1
  store i32* null, i32** %89, align 8
  %90 = load %struct.temac_local*, %struct.temac_local** %4, align 8
  %91 = getelementptr inbounds %struct.temac_local, %struct.temac_local* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = call i32 @dev_err(i32 %92, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  %94 = load i32, i32* %5, align 4
  store i32 %94, i32* %2, align 4
  br label %95

95:                                               ; preds = %87, %68, %30
  %96 = load i32, i32* %2, align 4
  ret i32 %96
}

declare dso_local %struct.temac_local* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @dev_dbg(i32*, i8*) #1

declare dso_local i32* @of_phy_connect(i32, i64, i32, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @phy_start(i32*) #1

declare dso_local i32 @request_irq(i32, i32, i32, i32, %struct.net_device*) #1

declare dso_local i32 @temac_device_reset(%struct.net_device*) #1

declare dso_local i32 @free_irq(i32, %struct.net_device*) #1

declare dso_local i32 @phy_disconnect(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
