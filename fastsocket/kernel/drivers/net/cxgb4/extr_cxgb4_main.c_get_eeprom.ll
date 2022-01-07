; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/cxgb4/extr_cxgb4_main.c_get_eeprom.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/cxgb4/extr_cxgb4_main.c_get_eeprom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_eeprom = type { i32, i32, i32 }
%struct.adapter = type { i32 }

@EEPROMSIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EEPROM_MAGIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_eeprom*, i32*)* @get_eeprom to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_eeprom(%struct.net_device* %0, %struct.ethtool_eeprom* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.ethtool_eeprom*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.adapter*, align 8
  %11 = alloca i32*, align 8
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store %struct.ethtool_eeprom* %1, %struct.ethtool_eeprom** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 0, i32* %9, align 4
  %12 = load %struct.net_device*, %struct.net_device** %5, align 8
  %13 = call %struct.adapter* @netdev2adap(%struct.net_device* %12)
  store %struct.adapter* %13, %struct.adapter** %10, align 8
  %14 = load i32, i32* @EEPROMSIZE, align 4
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call i32* @kmalloc(i32 %14, i32 %15)
  store i32* %16, i32** %11, align 8
  %17 = load i32*, i32** %11, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %3
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %4, align 4
  br label %75

22:                                               ; preds = %3
  %23 = load i32, i32* @EEPROM_MAGIC, align 4
  %24 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %6, align 8
  %25 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %24, i32 0, i32 2
  store i32 %23, i32* %25, align 4
  %26 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %6, align 8
  %27 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = and i32 %28, -4
  store i32 %29, i32* %8, align 4
  br label %30

30:                                               ; preds = %53, %22
  %31 = load i32, i32* %9, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %43, label %33

33:                                               ; preds = %30
  %34 = load i32, i32* %8, align 4
  %35 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %6, align 8
  %36 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %6, align 8
  %39 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = add nsw i32 %37, %40
  %42 = icmp slt i32 %34, %41
  br label %43

43:                                               ; preds = %33, %30
  %44 = phi i1 [ false, %30 ], [ %42, %33 ]
  br i1 %44, label %45, label %56

45:                                               ; preds = %43
  %46 = load %struct.adapter*, %struct.adapter** %10, align 8
  %47 = load i32, i32* %8, align 4
  %48 = load i32*, i32** %11, align 8
  %49 = load i32, i32* %8, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  %52 = call i32 @eeprom_rd_phys(%struct.adapter* %46, i32 %47, i32* %51)
  store i32 %52, i32* %9, align 4
  br label %53

53:                                               ; preds = %45
  %54 = load i32, i32* %8, align 4
  %55 = add nsw i32 %54, 4
  store i32 %55, i32* %8, align 4
  br label %30

56:                                               ; preds = %43
  %57 = load i32, i32* %9, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %71, label %59

59:                                               ; preds = %56
  %60 = load i32*, i32** %7, align 8
  %61 = load i32*, i32** %11, align 8
  %62 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %6, align 8
  %63 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %61, i64 %65
  %67 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %6, align 8
  %68 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @memcpy(i32* %60, i32* %66, i32 %69)
  br label %71

71:                                               ; preds = %59, %56
  %72 = load i32*, i32** %11, align 8
  %73 = call i32 @kfree(i32* %72)
  %74 = load i32, i32* %9, align 4
  store i32 %74, i32* %4, align 4
  br label %75

75:                                               ; preds = %71, %19
  %76 = load i32, i32* %4, align 4
  ret i32 %76
}

declare dso_local %struct.adapter* @netdev2adap(%struct.net_device*) #1

declare dso_local i32* @kmalloc(i32, i32) #1

declare dso_local i32 @eeprom_rd_phys(%struct.adapter*, i32, i32*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
