; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/igb/extr_e1000_82575.c_igb_init_hw_82575.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/igb/extr_e1000_82575.c_igb_init_hw_82575.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.e1000_mac_info }
%struct.e1000_mac_info = type { i64, i64, i64, i64 }

@.str = private unnamed_addr constant [39 x i8] c"Error initializing identification LED\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"Initializing the IEEE VLAN\0A\00", align 1
@e1000_i350 = common dso_local global i64 0, align 8
@e1000_i354 = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [17 x i8] c"Zeroing the MTA\0A\00", align 1
@E1000_MTA = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [17 x i8] c"Zeroing the UTA\0A\00", align 1
@E1000_UTA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.e1000_hw*)* @igb_init_hw_82575 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @igb_init_hw_82575(%struct.e1000_hw* %0) #0 {
  %2 = alloca %struct.e1000_hw*, align 8
  %3 = alloca %struct.e1000_mac_info*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.e1000_hw* %0, %struct.e1000_hw** %2, align 8
  %7 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %8 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %7, i32 0, i32 0
  store %struct.e1000_mac_info* %8, %struct.e1000_mac_info** %3, align 8
  %9 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %10 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  store i64 %11, i64* %6, align 8
  %12 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %13 = call i64 @igb_id_led_init(%struct.e1000_hw* %12)
  store i64 %13, i64* %4, align 8
  %14 = load i64, i64* %4, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %1
  %17 = call i32 @hw_dbg(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  br label %18

18:                                               ; preds = %16, %1
  %19 = call i32 @hw_dbg(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %20 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %21 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @e1000_i350, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %33, label %26

26:                                               ; preds = %18
  %27 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %28 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @e1000_i354, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %26, %18
  %34 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %35 = call i32 @igb_clear_vfta_i350(%struct.e1000_hw* %34)
  br label %39

36:                                               ; preds = %26
  %37 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %38 = call i32 @igb_clear_vfta(%struct.e1000_hw* %37)
  br label %39

39:                                               ; preds = %36, %33
  %40 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %41 = load i64, i64* %6, align 8
  %42 = call i32 @igb_init_rx_addrs(%struct.e1000_hw* %40, i64 %41)
  %43 = call i32 @hw_dbg(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  store i64 0, i64* %5, align 8
  br label %44

44:                                               ; preds = %54, %39
  %45 = load i64, i64* %5, align 8
  %46 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %47 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %46, i32 0, i32 2
  %48 = load i64, i64* %47, align 8
  %49 = icmp slt i64 %45, %48
  br i1 %49, label %50, label %57

50:                                               ; preds = %44
  %51 = load i32, i32* @E1000_MTA, align 4
  %52 = load i64, i64* %5, align 8
  %53 = call i32 @array_wr32(i32 %51, i64 %52, i32 0)
  br label %54

54:                                               ; preds = %50
  %55 = load i64, i64* %5, align 8
  %56 = add nsw i64 %55, 1
  store i64 %56, i64* %5, align 8
  br label %44

57:                                               ; preds = %44
  %58 = call i32 @hw_dbg(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0))
  store i64 0, i64* %5, align 8
  br label %59

59:                                               ; preds = %69, %57
  %60 = load i64, i64* %5, align 8
  %61 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %62 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %61, i32 0, i32 3
  %63 = load i64, i64* %62, align 8
  %64 = icmp slt i64 %60, %63
  br i1 %64, label %65, label %72

65:                                               ; preds = %59
  %66 = load i32, i32* @E1000_UTA, align 4
  %67 = load i64, i64* %5, align 8
  %68 = call i32 @array_wr32(i32 %66, i64 %67, i32 0)
  br label %69

69:                                               ; preds = %65
  %70 = load i64, i64* %5, align 8
  %71 = add nsw i64 %70, 1
  store i64 %71, i64* %5, align 8
  br label %59

72:                                               ; preds = %59
  %73 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %74 = call i64 @igb_setup_link(%struct.e1000_hw* %73)
  store i64 %74, i64* %4, align 8
  %75 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %76 = call i32 @igb_clear_hw_cntrs_82575(%struct.e1000_hw* %75)
  %77 = load i64, i64* %4, align 8
  ret i64 %77
}

declare dso_local i64 @igb_id_led_init(%struct.e1000_hw*) #1

declare dso_local i32 @hw_dbg(i8*) #1

declare dso_local i32 @igb_clear_vfta_i350(%struct.e1000_hw*) #1

declare dso_local i32 @igb_clear_vfta(%struct.e1000_hw*) #1

declare dso_local i32 @igb_init_rx_addrs(%struct.e1000_hw*, i64) #1

declare dso_local i32 @array_wr32(i32, i64, i32) #1

declare dso_local i64 @igb_setup_link(%struct.e1000_hw*) #1

declare dso_local i32 @igb_clear_hw_cntrs_82575(%struct.e1000_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
