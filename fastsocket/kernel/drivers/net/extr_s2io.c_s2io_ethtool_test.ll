; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_s2io.c_s2io_ethtool_test.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_s2io.c_s2io_ethtool_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_test = type { i32 }
%struct.s2io_nic = type { i32 }

@ETH_TEST_FL_OFFLINE = common dso_local global i32 0, align 4
@ETH_TEST_FL_FAILED = common dso_local global i32 0, align 4
@ERR_DBG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"%s: is not up, cannot run test\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.ethtool_test*, i32*)* @s2io_ethtool_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @s2io_ethtool_test(%struct.net_device* %0, %struct.ethtool_test* %1, i32* %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_test*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.s2io_nic*, align 8
  %8 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_test* %1, %struct.ethtool_test** %5, align 8
  store i32* %2, i32** %6, align 8
  %9 = load %struct.net_device*, %struct.net_device** %4, align 8
  %10 = call %struct.s2io_nic* @netdev_priv(%struct.net_device* %9)
  store %struct.s2io_nic* %10, %struct.s2io_nic** %7, align 8
  %11 = load %struct.s2io_nic*, %struct.s2io_nic** %7, align 8
  %12 = getelementptr inbounds %struct.s2io_nic, %struct.s2io_nic* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @netif_running(i32 %13)
  store i32 %14, i32* %8, align 4
  %15 = load %struct.ethtool_test*, %struct.ethtool_test** %5, align 8
  %16 = getelementptr inbounds %struct.ethtool_test, %struct.ethtool_test* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @ETH_TEST_FL_OFFLINE, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %91

20:                                               ; preds = %3
  %21 = load i32, i32* %8, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %20
  %24 = load %struct.s2io_nic*, %struct.s2io_nic** %7, align 8
  %25 = getelementptr inbounds %struct.s2io_nic, %struct.s2io_nic* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @s2io_close(i32 %26)
  br label %28

28:                                               ; preds = %23, %20
  %29 = load %struct.s2io_nic*, %struct.s2io_nic** %7, align 8
  %30 = load i32*, i32** %6, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 0
  %32 = call i64 @s2io_register_test(%struct.s2io_nic* %29, i32* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %28
  %35 = load i32, i32* @ETH_TEST_FL_FAILED, align 4
  %36 = load %struct.ethtool_test*, %struct.ethtool_test** %5, align 8
  %37 = getelementptr inbounds %struct.ethtool_test, %struct.ethtool_test* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = or i32 %38, %35
  store i32 %39, i32* %37, align 4
  br label %40

40:                                               ; preds = %34, %28
  %41 = load %struct.s2io_nic*, %struct.s2io_nic** %7, align 8
  %42 = call i32 @s2io_reset(%struct.s2io_nic* %41)
  %43 = load %struct.s2io_nic*, %struct.s2io_nic** %7, align 8
  %44 = load i32*, i32** %6, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 3
  %46 = call i64 @s2io_rldram_test(%struct.s2io_nic* %43, i32* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %54

48:                                               ; preds = %40
  %49 = load i32, i32* @ETH_TEST_FL_FAILED, align 4
  %50 = load %struct.ethtool_test*, %struct.ethtool_test** %5, align 8
  %51 = getelementptr inbounds %struct.ethtool_test, %struct.ethtool_test* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = or i32 %52, %49
  store i32 %53, i32* %51, align 4
  br label %54

54:                                               ; preds = %48, %40
  %55 = load %struct.s2io_nic*, %struct.s2io_nic** %7, align 8
  %56 = call i32 @s2io_reset(%struct.s2io_nic* %55)
  %57 = load %struct.s2io_nic*, %struct.s2io_nic** %7, align 8
  %58 = load i32*, i32** %6, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 1
  %60 = call i64 @s2io_eeprom_test(%struct.s2io_nic* %57, i32* %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %68

62:                                               ; preds = %54
  %63 = load i32, i32* @ETH_TEST_FL_FAILED, align 4
  %64 = load %struct.ethtool_test*, %struct.ethtool_test** %5, align 8
  %65 = getelementptr inbounds %struct.ethtool_test, %struct.ethtool_test* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = or i32 %66, %63
  store i32 %67, i32* %65, align 4
  br label %68

68:                                               ; preds = %62, %54
  %69 = load %struct.s2io_nic*, %struct.s2io_nic** %7, align 8
  %70 = load i32*, i32** %6, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 4
  %72 = call i64 @s2io_bist_test(%struct.s2io_nic* %69, i32* %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %80

74:                                               ; preds = %68
  %75 = load i32, i32* @ETH_TEST_FL_FAILED, align 4
  %76 = load %struct.ethtool_test*, %struct.ethtool_test** %5, align 8
  %77 = getelementptr inbounds %struct.ethtool_test, %struct.ethtool_test* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = or i32 %78, %75
  store i32 %79, i32* %77, align 4
  br label %80

80:                                               ; preds = %74, %68
  %81 = load i32, i32* %8, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %88

83:                                               ; preds = %80
  %84 = load %struct.s2io_nic*, %struct.s2io_nic** %7, align 8
  %85 = getelementptr inbounds %struct.s2io_nic, %struct.s2io_nic* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @s2io_open(i32 %86)
  br label %88

88:                                               ; preds = %83, %80
  %89 = load i32*, i32** %6, align 8
  %90 = getelementptr inbounds i32, i32* %89, i64 2
  store i32 0, i32* %90, align 4
  br label %131

91:                                               ; preds = %3
  %92 = load i32, i32* %8, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %110, label %94

94:                                               ; preds = %91
  %95 = load i32, i32* @ERR_DBG, align 4
  %96 = load %struct.net_device*, %struct.net_device** %4, align 8
  %97 = getelementptr inbounds %struct.net_device, %struct.net_device* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @DBG_PRINT(i32 %95, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %98)
  %100 = load i32*, i32** %6, align 8
  %101 = getelementptr inbounds i32, i32* %100, i64 0
  store i32 -1, i32* %101, align 4
  %102 = load i32*, i32** %6, align 8
  %103 = getelementptr inbounds i32, i32* %102, i64 1
  store i32 -1, i32* %103, align 4
  %104 = load i32*, i32** %6, align 8
  %105 = getelementptr inbounds i32, i32* %104, i64 2
  store i32 -1, i32* %105, align 4
  %106 = load i32*, i32** %6, align 8
  %107 = getelementptr inbounds i32, i32* %106, i64 3
  store i32 -1, i32* %107, align 4
  %108 = load i32*, i32** %6, align 8
  %109 = getelementptr inbounds i32, i32* %108, i64 4
  store i32 -1, i32* %109, align 4
  br label %110

110:                                              ; preds = %94, %91
  %111 = load %struct.s2io_nic*, %struct.s2io_nic** %7, align 8
  %112 = load i32*, i32** %6, align 8
  %113 = getelementptr inbounds i32, i32* %112, i64 2
  %114 = call i64 @s2io_link_test(%struct.s2io_nic* %111, i32* %113)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %122

116:                                              ; preds = %110
  %117 = load i32, i32* @ETH_TEST_FL_FAILED, align 4
  %118 = load %struct.ethtool_test*, %struct.ethtool_test** %5, align 8
  %119 = getelementptr inbounds %struct.ethtool_test, %struct.ethtool_test* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = or i32 %120, %117
  store i32 %121, i32* %119, align 4
  br label %122

122:                                              ; preds = %116, %110
  %123 = load i32*, i32** %6, align 8
  %124 = getelementptr inbounds i32, i32* %123, i64 0
  store i32 0, i32* %124, align 4
  %125 = load i32*, i32** %6, align 8
  %126 = getelementptr inbounds i32, i32* %125, i64 1
  store i32 0, i32* %126, align 4
  %127 = load i32*, i32** %6, align 8
  %128 = getelementptr inbounds i32, i32* %127, i64 3
  store i32 0, i32* %128, align 4
  %129 = load i32*, i32** %6, align 8
  %130 = getelementptr inbounds i32, i32* %129, i64 4
  store i32 0, i32* %130, align 4
  br label %131

131:                                              ; preds = %122, %88
  ret void
}

declare dso_local %struct.s2io_nic* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @netif_running(i32) #1

declare dso_local i32 @s2io_close(i32) #1

declare dso_local i64 @s2io_register_test(%struct.s2io_nic*, i32*) #1

declare dso_local i32 @s2io_reset(%struct.s2io_nic*) #1

declare dso_local i64 @s2io_rldram_test(%struct.s2io_nic*, i32*) #1

declare dso_local i64 @s2io_eeprom_test(%struct.s2io_nic*, i32*) #1

declare dso_local i64 @s2io_bist_test(%struct.s2io_nic*, i32*) #1

declare dso_local i32 @s2io_open(i32) #1

declare dso_local i32 @DBG_PRINT(i32, i8*, i32) #1

declare dso_local i64 @s2io_link_test(%struct.s2io_nic*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
