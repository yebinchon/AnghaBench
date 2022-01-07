; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_r8169.c_rtl_fw_data_ok.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_r8169.c_rtl_fw_data_ok.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtl8169_private = type { i32 }
%struct.net_device = type { i32 }
%struct.rtl_fw_phy_action = type { i64, i32* }

@ifup = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Out of range of firmware\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"Invalid action 0x%08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rtl8169_private*, %struct.net_device*, %struct.rtl_fw_phy_action*)* @rtl_fw_data_ok to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtl_fw_data_ok(%struct.rtl8169_private* %0, %struct.net_device* %1, %struct.rtl_fw_phy_action* %2) #0 {
  %4 = alloca %struct.rtl8169_private*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.rtl_fw_phy_action*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.rtl8169_private* %0, %struct.rtl8169_private** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  store %struct.rtl_fw_phy_action* %2, %struct.rtl_fw_phy_action** %6, align 8
  store i32 0, i32* %7, align 4
  store i64 0, i64* %8, align 8
  br label %11

11:                                               ; preds = %87, %3
  %12 = load i64, i64* %8, align 8
  %13 = load %struct.rtl_fw_phy_action*, %struct.rtl_fw_phy_action** %6, align 8
  %14 = getelementptr inbounds %struct.rtl_fw_phy_action, %struct.rtl_fw_phy_action* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ult i64 %12, %15
  br i1 %16, label %17, label %90

17:                                               ; preds = %11
  %18 = load %struct.rtl_fw_phy_action*, %struct.rtl_fw_phy_action** %6, align 8
  %19 = getelementptr inbounds %struct.rtl_fw_phy_action, %struct.rtl_fw_phy_action* %18, i32 0, i32 1
  %20 = load i32*, i32** %19, align 8
  %21 = load i64, i64* %8, align 8
  %22 = getelementptr inbounds i32, i32* %20, i64 %21
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @le32_to_cpu(i32 %23)
  store i32 %24, i32* %9, align 4
  %25 = load i32, i32* %9, align 4
  %26 = and i32 %25, 268369920
  %27 = ashr i32 %26, 16
  store i32 %27, i32* %10, align 4
  %28 = load i32, i32* %9, align 4
  %29 = and i32 %28, -268435456
  switch i32 %29, label %78 [
    i32 136, label %30
    i32 138, label %30
    i32 139, label %30
    i32 134, label %30
    i32 142, label %30
    i32 131, label %30
    i32 128, label %30
    i32 137, label %30
    i32 143, label %31
    i32 135, label %44
    i32 141, label %59
    i32 140, label %59
    i32 132, label %59
    i32 133, label %77
    i32 129, label %77
    i32 130, label %77
  ]

30:                                               ; preds = %17, %17, %17, %17, %17, %17, %17, %17
  br label %86

31:                                               ; preds = %17
  %32 = load i32, i32* %10, align 4
  %33 = sext i32 %32 to i64
  %34 = load i64, i64* %8, align 8
  %35 = icmp ugt i64 %33, %34
  br i1 %35, label %36, label %43

36:                                               ; preds = %31
  %37 = load %struct.rtl8169_private*, %struct.rtl8169_private** %4, align 8
  %38 = load i32, i32* @ifup, align 4
  %39 = load %struct.rtl8169_private*, %struct.rtl8169_private** %4, align 8
  %40 = getelementptr inbounds %struct.rtl8169_private, %struct.rtl8169_private* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 (%struct.rtl8169_private*, i32, i32, i8*, ...) @netif_err(%struct.rtl8169_private* %37, i32 %38, i32 %41, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  br label %91

43:                                               ; preds = %31
  br label %86

44:                                               ; preds = %17
  %45 = load i64, i64* %8, align 8
  %46 = add i64 %45, 2
  %47 = load %struct.rtl_fw_phy_action*, %struct.rtl_fw_phy_action** %6, align 8
  %48 = getelementptr inbounds %struct.rtl_fw_phy_action, %struct.rtl_fw_phy_action* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp uge i64 %46, %49
  br i1 %50, label %51, label %58

51:                                               ; preds = %44
  %52 = load %struct.rtl8169_private*, %struct.rtl8169_private** %4, align 8
  %53 = load i32, i32* @ifup, align 4
  %54 = load %struct.rtl8169_private*, %struct.rtl8169_private** %4, align 8
  %55 = getelementptr inbounds %struct.rtl8169_private, %struct.rtl8169_private* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 (%struct.rtl8169_private*, i32, i32, i8*, ...) @netif_err(%struct.rtl8169_private* %52, i32 %53, i32 %56, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  br label %91

58:                                               ; preds = %44
  br label %86

59:                                               ; preds = %17, %17, %17
  %60 = load i64, i64* %8, align 8
  %61 = add i64 %60, 1
  %62 = load i32, i32* %10, align 4
  %63 = sext i32 %62 to i64
  %64 = add i64 %61, %63
  %65 = load %struct.rtl_fw_phy_action*, %struct.rtl_fw_phy_action** %6, align 8
  %66 = getelementptr inbounds %struct.rtl_fw_phy_action, %struct.rtl_fw_phy_action* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = icmp uge i64 %64, %67
  br i1 %68, label %69, label %76

69:                                               ; preds = %59
  %70 = load %struct.rtl8169_private*, %struct.rtl8169_private** %4, align 8
  %71 = load i32, i32* @ifup, align 4
  %72 = load %struct.rtl8169_private*, %struct.rtl8169_private** %4, align 8
  %73 = getelementptr inbounds %struct.rtl8169_private, %struct.rtl8169_private* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i32 (%struct.rtl8169_private*, i32, i32, i8*, ...) @netif_err(%struct.rtl8169_private* %70, i32 %71, i32 %74, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  br label %91

76:                                               ; preds = %59
  br label %86

77:                                               ; preds = %17, %17, %17
  br label %78

78:                                               ; preds = %17, %77
  %79 = load %struct.rtl8169_private*, %struct.rtl8169_private** %4, align 8
  %80 = load i32, i32* @ifup, align 4
  %81 = load %struct.rtl8169_private*, %struct.rtl8169_private** %4, align 8
  %82 = getelementptr inbounds %struct.rtl8169_private, %struct.rtl8169_private* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* %9, align 4
  %85 = call i32 (%struct.rtl8169_private*, i32, i32, i8*, ...) @netif_err(%struct.rtl8169_private* %79, i32 %80, i32 %83, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %84)
  br label %91

86:                                               ; preds = %76, %58, %43, %30
  br label %87

87:                                               ; preds = %86
  %88 = load i64, i64* %8, align 8
  %89 = add i64 %88, 1
  store i64 %89, i64* %8, align 8
  br label %11

90:                                               ; preds = %11
  store i32 1, i32* %7, align 4
  br label %91

91:                                               ; preds = %90, %78, %69, %51, %36
  %92 = load i32, i32* %7, align 4
  ret i32 %92
}

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @netif_err(%struct.rtl8169_private*, i32, i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
