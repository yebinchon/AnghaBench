; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_8139cp.c_cp_set_eeprom.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_8139cp.c_cp_set_eeprom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_eeprom = type { i32, i32, i64 }
%struct.cp_private = type { i32, i32 }

@CP_EEPROM_MAGIC = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_eeprom*, i64*)* @cp_set_eeprom to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cp_set_eeprom(%struct.net_device* %0, %struct.ethtool_eeprom* %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.ethtool_eeprom*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca %struct.cp_private*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store %struct.ethtool_eeprom* %1, %struct.ethtool_eeprom** %6, align 8
  store i64* %2, i64** %7, align 8
  %14 = load %struct.net_device*, %struct.net_device** %5, align 8
  %15 = call %struct.cp_private* @netdev_priv(%struct.net_device* %14)
  store %struct.cp_private* %15, %struct.cp_private** %8, align 8
  %16 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %6, align 8
  %17 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = ashr i32 %18, 1
  store i32 %19, i32* %11, align 4
  %20 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %6, align 8
  %21 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %23 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %6, align 8
  %24 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %23, i32 0, i32 2
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @CP_EEPROM_MAGIC, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %3
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %4, align 4
  br label %138

31:                                               ; preds = %3
  %32 = load %struct.cp_private*, %struct.cp_private** %8, align 8
  %33 = getelementptr inbounds %struct.cp_private, %struct.cp_private* %32, i32 0, i32 0
  %34 = call i32 @spin_lock_irq(i32* %33)
  %35 = load %struct.cp_private*, %struct.cp_private** %8, align 8
  %36 = getelementptr inbounds %struct.cp_private, %struct.cp_private* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @read_eeprom(i32 %37, i32 0, i32 8)
  %39 = icmp eq i32 %38, 33065
  %40 = zext i1 %39 to i64
  %41 = select i1 %39, i32 8, i32 6
  store i32 %41, i32* %9, align 4
  %42 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %6, align 8
  %43 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = and i32 %44, 1
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %74

47:                                               ; preds = %31
  %48 = load %struct.cp_private*, %struct.cp_private** %8, align 8
  %49 = getelementptr inbounds %struct.cp_private, %struct.cp_private* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* %11, align 4
  %52 = load i32, i32* %9, align 4
  %53 = call i32 @read_eeprom(i32 %50, i32 %51, i32 %52)
  %54 = and i32 %53, 255
  store i32 %54, i32* %10, align 4
  %55 = load i64*, i64** %7, align 8
  %56 = load i32, i32* %13, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %13, align 4
  %58 = sext i32 %56 to i64
  %59 = getelementptr inbounds i64, i64* %55, i64 %58
  %60 = load i64, i64* %59, align 8
  %61 = trunc i64 %60 to i32
  %62 = shl i32 %61, 8
  %63 = load i32, i32* %10, align 4
  %64 = or i32 %63, %62
  store i32 %64, i32* %10, align 4
  %65 = load %struct.cp_private*, %struct.cp_private** %8, align 8
  %66 = getelementptr inbounds %struct.cp_private, %struct.cp_private* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* %11, align 4
  %69 = load i32, i32* %10, align 4
  %70 = load i32, i32* %9, align 4
  %71 = call i32 @write_eeprom(i32 %67, i32 %68, i32 %69, i32 %70)
  %72 = load i32, i32* %11, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %11, align 4
  br label %74

74:                                               ; preds = %47, %31
  br label %75

75:                                               ; preds = %80, %74
  %76 = load i32, i32* %13, align 4
  %77 = load i32, i32* %12, align 4
  %78 = sub nsw i32 %77, 1
  %79 = icmp slt i32 %76, %78
  br i1 %79, label %80, label %107

80:                                               ; preds = %75
  %81 = load i64*, i64** %7, align 8
  %82 = load i32, i32* %13, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %13, align 4
  %84 = sext i32 %82 to i64
  %85 = getelementptr inbounds i64, i64* %81, i64 %84
  %86 = load i64, i64* %85, align 8
  %87 = trunc i64 %86 to i32
  store i32 %87, i32* %10, align 4
  %88 = load i64*, i64** %7, align 8
  %89 = load i32, i32* %13, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %13, align 4
  %91 = sext i32 %89 to i64
  %92 = getelementptr inbounds i64, i64* %88, i64 %91
  %93 = load i64, i64* %92, align 8
  %94 = trunc i64 %93 to i32
  %95 = shl i32 %94, 8
  %96 = load i32, i32* %10, align 4
  %97 = or i32 %96, %95
  store i32 %97, i32* %10, align 4
  %98 = load %struct.cp_private*, %struct.cp_private** %8, align 8
  %99 = getelementptr inbounds %struct.cp_private, %struct.cp_private* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* %11, align 4
  %102 = load i32, i32* %10, align 4
  %103 = load i32, i32* %9, align 4
  %104 = call i32 @write_eeprom(i32 %100, i32 %101, i32 %102, i32 %103)
  %105 = load i32, i32* %11, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %11, align 4
  br label %75

107:                                              ; preds = %75
  %108 = load i32, i32* %13, align 4
  %109 = load i32, i32* %12, align 4
  %110 = icmp slt i32 %108, %109
  br i1 %110, label %111, label %134

111:                                              ; preds = %107
  %112 = load %struct.cp_private*, %struct.cp_private** %8, align 8
  %113 = getelementptr inbounds %struct.cp_private, %struct.cp_private* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = load i32, i32* %11, align 4
  %116 = load i32, i32* %9, align 4
  %117 = call i32 @read_eeprom(i32 %114, i32 %115, i32 %116)
  %118 = and i32 %117, 65280
  store i32 %118, i32* %10, align 4
  %119 = load i64*, i64** %7, align 8
  %120 = load i32, i32* %13, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i64, i64* %119, i64 %121
  %123 = load i64, i64* %122, align 8
  %124 = trunc i64 %123 to i32
  %125 = load i32, i32* %10, align 4
  %126 = or i32 %125, %124
  store i32 %126, i32* %10, align 4
  %127 = load %struct.cp_private*, %struct.cp_private** %8, align 8
  %128 = getelementptr inbounds %struct.cp_private, %struct.cp_private* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = load i32, i32* %11, align 4
  %131 = load i32, i32* %10, align 4
  %132 = load i32, i32* %9, align 4
  %133 = call i32 @write_eeprom(i32 %129, i32 %130, i32 %131, i32 %132)
  br label %134

134:                                              ; preds = %111, %107
  %135 = load %struct.cp_private*, %struct.cp_private** %8, align 8
  %136 = getelementptr inbounds %struct.cp_private, %struct.cp_private* %135, i32 0, i32 0
  %137 = call i32 @spin_unlock_irq(i32* %136)
  store i32 0, i32* %4, align 4
  br label %138

138:                                              ; preds = %134, %28
  %139 = load i32, i32* %4, align 4
  ret i32 %139
}

declare dso_local %struct.cp_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @read_eeprom(i32, i32, i32) #1

declare dso_local i32 @write_eeprom(i32, i32, i32, i32) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
