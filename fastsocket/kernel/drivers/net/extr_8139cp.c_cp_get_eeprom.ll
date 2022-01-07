; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_8139cp.c_cp_get_eeprom.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_8139cp.c_cp_get_eeprom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_eeprom = type { i32, i32, i32 }
%struct.cp_private = type { i32, i32 }

@CP_EEPROM_MAGIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_eeprom*, i64*)* @cp_get_eeprom to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cp_get_eeprom(%struct.net_device* %0, %struct.ethtool_eeprom* %1, i64* %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_eeprom*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca %struct.cp_private*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_eeprom* %1, %struct.ethtool_eeprom** %5, align 8
  store i64* %2, i64** %6, align 8
  %13 = load %struct.net_device*, %struct.net_device** %4, align 8
  %14 = call %struct.cp_private* @netdev_priv(%struct.net_device* %13)
  store %struct.cp_private* %14, %struct.cp_private** %7, align 8
  %15 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %5, align 8
  %16 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = ashr i32 %17, 1
  store i32 %18, i32* %10, align 4
  %19 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %5, align 8
  %20 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %22 = load i32, i32* @CP_EEPROM_MAGIC, align 4
  %23 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %5, align 8
  %24 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %23, i32 0, i32 2
  store i32 %22, i32* %24, align 4
  %25 = load %struct.cp_private*, %struct.cp_private** %7, align 8
  %26 = getelementptr inbounds %struct.cp_private, %struct.cp_private* %25, i32 0, i32 0
  %27 = call i32 @spin_lock_irq(i32* %26)
  %28 = load %struct.cp_private*, %struct.cp_private** %7, align 8
  %29 = getelementptr inbounds %struct.cp_private, %struct.cp_private* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @read_eeprom(i32 %30, i32 0, i32 8)
  %32 = icmp eq i32 %31, 33065
  %33 = zext i1 %32 to i64
  %34 = select i1 %32, i32 8, i32 6
  store i32 %34, i32* %8, align 4
  %35 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %5, align 8
  %36 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = and i32 %37, 1
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %57

40:                                               ; preds = %3
  %41 = load %struct.cp_private*, %struct.cp_private** %7, align 8
  %42 = getelementptr inbounds %struct.cp_private, %struct.cp_private* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %10, align 4
  %45 = load i32, i32* %8, align 4
  %46 = call i32 @read_eeprom(i32 %43, i32 %44, i32 %45)
  store i32 %46, i32* %9, align 4
  %47 = load i32, i32* %9, align 4
  %48 = ashr i32 %47, 8
  %49 = sext i32 %48 to i64
  %50 = load i64*, i64** %6, align 8
  %51 = load i32, i32* %12, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %12, align 4
  %53 = sext i32 %51 to i64
  %54 = getelementptr inbounds i64, i64* %50, i64 %53
  store i64 %49, i64* %54, align 8
  %55 = load i32, i32* %10, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %10, align 4
  br label %57

57:                                               ; preds = %40, %3
  br label %58

58:                                               ; preds = %63, %57
  %59 = load i32, i32* %12, align 4
  %60 = load i32, i32* %11, align 4
  %61 = sub nsw i32 %60, 1
  %62 = icmp slt i32 %59, %61
  br i1 %62, label %63, label %87

63:                                               ; preds = %58
  %64 = load %struct.cp_private*, %struct.cp_private** %7, align 8
  %65 = getelementptr inbounds %struct.cp_private, %struct.cp_private* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* %10, align 4
  %68 = load i32, i32* %8, align 4
  %69 = call i32 @read_eeprom(i32 %66, i32 %67, i32 %68)
  store i32 %69, i32* %9, align 4
  %70 = load i32, i32* %9, align 4
  %71 = sext i32 %70 to i64
  %72 = load i64*, i64** %6, align 8
  %73 = load i32, i32* %12, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %12, align 4
  %75 = sext i32 %73 to i64
  %76 = getelementptr inbounds i64, i64* %72, i64 %75
  store i64 %71, i64* %76, align 8
  %77 = load i32, i32* %9, align 4
  %78 = ashr i32 %77, 8
  %79 = sext i32 %78 to i64
  %80 = load i64*, i64** %6, align 8
  %81 = load i32, i32* %12, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %12, align 4
  %83 = sext i32 %81 to i64
  %84 = getelementptr inbounds i64, i64* %80, i64 %83
  store i64 %79, i64* %84, align 8
  %85 = load i32, i32* %10, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %10, align 4
  br label %58

87:                                               ; preds = %58
  %88 = load i32, i32* %12, align 4
  %89 = load i32, i32* %11, align 4
  %90 = icmp slt i32 %88, %89
  br i1 %90, label %91, label %104

91:                                               ; preds = %87
  %92 = load %struct.cp_private*, %struct.cp_private** %7, align 8
  %93 = getelementptr inbounds %struct.cp_private, %struct.cp_private* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* %10, align 4
  %96 = load i32, i32* %8, align 4
  %97 = call i32 @read_eeprom(i32 %94, i32 %95, i32 %96)
  store i32 %97, i32* %9, align 4
  %98 = load i32, i32* %9, align 4
  %99 = sext i32 %98 to i64
  %100 = load i64*, i64** %6, align 8
  %101 = load i32, i32* %12, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i64, i64* %100, i64 %102
  store i64 %99, i64* %103, align 8
  br label %104

104:                                              ; preds = %91, %87
  %105 = load %struct.cp_private*, %struct.cp_private** %7, align 8
  %106 = getelementptr inbounds %struct.cp_private, %struct.cp_private* %105, i32 0, i32 0
  %107 = call i32 @spin_unlock_irq(i32* %106)
  ret i32 0
}

declare dso_local %struct.cp_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @read_eeprom(i32, i32, i32) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
