; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_main.c_bnx2x_set_mac_one.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_main.c_bnx2x_set_mac_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { i32 }
%struct.bnx2x_vlan_mac_obj = type { i32 }
%struct.bnx2x_vlan_mac_ramrod_params = type { i64, %struct.TYPE_6__, %struct.bnx2x_vlan_mac_obj* }
%struct.TYPE_6__ = type { i32, i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@RAMROD_CONT = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@BNX2X_VLAN_MAC_ADD = common dso_local global i32 0, align 4
@BNX2X_VLAN_MAC_DEL = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@BNX2X_MSG_SP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"Failed to schedule ADD operations: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"%s MAC failed\0A\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"Set\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"Del\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bnx2x_set_mac_one(%struct.bnx2x* %0, i32* %1, %struct.bnx2x_vlan_mac_obj* %2, i32 %3, i32 %4, i64* %5) #0 {
  %7 = alloca %struct.bnx2x*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.bnx2x_vlan_mac_obj*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.bnx2x_vlan_mac_ramrod_params, align 8
  store %struct.bnx2x* %0, %struct.bnx2x** %7, align 8
  store i32* %1, i32** %8, align 8
  store %struct.bnx2x_vlan_mac_obj* %2, %struct.bnx2x_vlan_mac_obj** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i64* %5, i64** %12, align 8
  %15 = call i32 @memset(%struct.bnx2x_vlan_mac_ramrod_params* %14, i32 0, i32 32)
  %16 = load %struct.bnx2x_vlan_mac_obj*, %struct.bnx2x_vlan_mac_obj** %9, align 8
  %17 = getelementptr inbounds %struct.bnx2x_vlan_mac_ramrod_params, %struct.bnx2x_vlan_mac_ramrod_params* %14, i32 0, i32 2
  store %struct.bnx2x_vlan_mac_obj* %16, %struct.bnx2x_vlan_mac_obj** %17, align 8
  %18 = load i64*, i64** %12, align 8
  %19 = load i64, i64* %18, align 8
  %20 = getelementptr inbounds %struct.bnx2x_vlan_mac_ramrod_params, %struct.bnx2x_vlan_mac_ramrod_params* %14, i32 0, i32 0
  store i64 %19, i64* %20, align 8
  %21 = load i32, i32* @RAMROD_CONT, align 4
  %22 = load i64*, i64** %12, align 8
  %23 = call i32 @test_bit(i32 %21, i64* %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %49, label %25

25:                                               ; preds = %6
  %26 = getelementptr inbounds %struct.bnx2x_vlan_mac_ramrod_params, %struct.bnx2x_vlan_mac_ramrod_params* %14, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 2
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32*, i32** %8, align 8
  %32 = load i32, i32* @ETH_ALEN, align 4
  %33 = call i32 @memcpy(i32 %30, i32* %31, i32 %32)
  %34 = load i32, i32* %11, align 4
  %35 = getelementptr inbounds %struct.bnx2x_vlan_mac_ramrod_params, %struct.bnx2x_vlan_mac_ramrod_params* %14, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 1
  %37 = call i32 @__set_bit(i32 %34, i32* %36)
  %38 = load i32, i32* %10, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %25
  %41 = load i32, i32* @BNX2X_VLAN_MAC_ADD, align 4
  %42 = getelementptr inbounds %struct.bnx2x_vlan_mac_ramrod_params, %struct.bnx2x_vlan_mac_ramrod_params* %14, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 8
  br label %48

44:                                               ; preds = %25
  %45 = load i32, i32* @BNX2X_VLAN_MAC_DEL, align 4
  %46 = getelementptr inbounds %struct.bnx2x_vlan_mac_ramrod_params, %struct.bnx2x_vlan_mac_ramrod_params* %14, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 8
  br label %48

48:                                               ; preds = %44, %40
  br label %49

49:                                               ; preds = %48, %6
  %50 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %51 = call i32 @bnx2x_config_vlan_mac(%struct.bnx2x* %50, %struct.bnx2x_vlan_mac_ramrod_params* %14)
  store i32 %51, i32* %13, align 4
  %52 = load i32, i32* %13, align 4
  %53 = load i32, i32* @EEXIST, align 4
  %54 = sub nsw i32 0, %53
  %55 = icmp eq i32 %52, %54
  br i1 %55, label %56, label %60

56:                                               ; preds = %49
  %57 = load i32, i32* @BNX2X_MSG_SP, align 4
  %58 = load i32, i32* %13, align 4
  %59 = call i32 @DP(i32 %57, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %58)
  store i32 0, i32* %13, align 4
  br label %70

60:                                               ; preds = %49
  %61 = load i32, i32* %13, align 4
  %62 = icmp slt i32 %61, 0
  br i1 %62, label %63, label %69

63:                                               ; preds = %60
  %64 = load i32, i32* %10, align 4
  %65 = icmp ne i32 %64, 0
  %66 = zext i1 %65 to i64
  %67 = select i1 %65, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0)
  %68 = call i32 @BNX2X_ERR(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i8* %67)
  br label %69

69:                                               ; preds = %63, %60
  br label %70

70:                                               ; preds = %69, %56
  %71 = load i32, i32* %13, align 4
  ret i32 %71
}

declare dso_local i32 @memset(%struct.bnx2x_vlan_mac_ramrod_params*, i32, i32) #1

declare dso_local i32 @test_bit(i32, i64*) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @__set_bit(i32, i32*) #1

declare dso_local i32 @bnx2x_config_vlan_mac(%struct.bnx2x*, %struct.bnx2x_vlan_mac_ramrod_params*) #1

declare dso_local i32 @DP(i32, i8*, i32) #1

declare dso_local i32 @BNX2X_ERR(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
