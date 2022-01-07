; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgb/extr_ixgb_ee.c_ixgb_get_ee_mac_addr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgb/extr_ixgb_ee.c_ixgb_get_ee_mac_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgb_hw = type { i64 }
%struct.ixgb_ee_map_type = type { i32* }

@.str = private unnamed_addr constant [21 x i8] c"ixgb_get_ee_mac_addr\00", align 1
@IXGB_ETH_LENGTH_OF_ADDRESS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"mac(%d) = %.2X\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ixgb_get_ee_mac_addr(%struct.ixgb_hw* %0, i32* %1) #0 {
  %3 = alloca %struct.ixgb_hw*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ixgb_ee_map_type*, align 8
  store %struct.ixgb_hw* %0, %struct.ixgb_hw** %3, align 8
  store i32* %1, i32** %4, align 8
  %7 = load %struct.ixgb_hw*, %struct.ixgb_hw** %3, align 8
  %8 = getelementptr inbounds %struct.ixgb_hw, %struct.ixgb_hw* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = inttoptr i64 %9 to %struct.ixgb_ee_map_type*
  store %struct.ixgb_ee_map_type* %10, %struct.ixgb_ee_map_type** %6, align 8
  %11 = call i32 @DEBUGFUNC(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %12 = load %struct.ixgb_hw*, %struct.ixgb_hw** %3, align 8
  %13 = call i32 @ixgb_check_and_get_eeprom_data(%struct.ixgb_hw* %12)
  %14 = icmp eq i32 %13, 1
  br i1 %14, label %15, label %43

15:                                               ; preds = %2
  store i32 0, i32* %5, align 4
  br label %16

16:                                               ; preds = %39, %15
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* @IXGB_ETH_LENGTH_OF_ADDRESS, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %42

20:                                               ; preds = %16
  %21 = load %struct.ixgb_ee_map_type*, %struct.ixgb_ee_map_type** %6, align 8
  %22 = getelementptr inbounds %struct.ixgb_ee_map_type, %struct.ixgb_ee_map_type* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = load i32, i32* %5, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %23, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = load i32*, i32** %4, align 8
  %29 = load i32, i32* %5, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %28, i64 %30
  store i32 %27, i32* %31, align 4
  %32 = load i32, i32* %5, align 4
  %33 = load i32*, i32** %4, align 8
  %34 = load i32, i32* %5, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @DEBUGOUT2(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 %32, i32 %37)
  br label %39

39:                                               ; preds = %20
  %40 = load i32, i32* %5, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %5, align 4
  br label %16

42:                                               ; preds = %16
  br label %43

43:                                               ; preds = %42, %2
  ret void
}

declare dso_local i32 @DEBUGFUNC(i8*) #1

declare dso_local i32 @ixgb_check_and_get_eeprom_data(%struct.ixgb_hw*) #1

declare dso_local i32 @DEBUGOUT2(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
