; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_r8169.c_rtl8168g_1_hw_phy_config.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_r8169.c_rtl8168g_1_hw_phy_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtl8169_private = type { i32 }

@rtl8168g_1_hw_phy_config.mac_ocp_patch = internal constant [52 x i32] [i32 57352, i32 57371, i32 57373, i32 57375, i32 57377, i32 57379, i32 57381, i32 57383, i32 18898, i32 61709, i32 30316, i32 18914, i32 61450, i32 7872, i32 36577, i32 50698, i32 30656, i32 18544, i32 40896, i32 7840, i32 50951, i32 36577, i32 40300, i32 50691, i32 48640, i32 46102, i32 118, i32 59500, i32 50690, i32 48640, i32 0, i32 50690, i32 48640, i32 0, i32 50690, i32 48640, i32 0, i32 50690, i32 48640, i32 0, i32 50690, i32 48640, i32 0, i32 50690, i32 48640, i32 0, i32 50690, i32 48640, i32 0, i32 0, i32 0, i32 0], align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rtl8169_private*)* @rtl8168g_1_hw_phy_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtl8168g_1_hw_phy_config(%struct.rtl8169_private* %0) #0 {
  %2 = alloca %struct.rtl8169_private*, align 8
  %3 = alloca i32, align 4
  store %struct.rtl8169_private* %0, %struct.rtl8169_private** %2, align 8
  store i32 0, i32* %3, align 4
  br label %4

4:                                                ; preds = %18, %1
  %5 = load i32, i32* %3, align 4
  %6 = call i32 @ARRAY_SIZE(i32* getelementptr inbounds ([52 x i32], [52 x i32]* @rtl8168g_1_hw_phy_config.mac_ocp_patch, i64 0, i64 0))
  %7 = icmp slt i32 %5, %6
  br i1 %7, label %8, label %21

8:                                                ; preds = %4
  %9 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %10 = load i32, i32* %3, align 4
  %11 = mul nsw i32 2, %10
  %12 = add nsw i32 63488, %11
  %13 = load i32, i32* %3, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds [52 x i32], [52 x i32]* @rtl8168g_1_hw_phy_config.mac_ocp_patch, i64 0, i64 %14
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @r8168_mac_ocp_write(%struct.rtl8169_private* %9, i32 %12, i32 %16)
  br label %18

18:                                               ; preds = %8
  %19 = load i32, i32* %3, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %3, align 4
  br label %4

21:                                               ; preds = %4
  %22 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %23 = call i32 @r8168_mac_ocp_write(%struct.rtl8169_private* %22, i32 64550, i32 32768)
  %24 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %25 = call i32 @r8168_mac_ocp_write(%struct.rtl8169_private* %24, i32 64552, i32 117)
  %26 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %27 = call i32 @rtl_apply_firmware(%struct.rtl8169_private* %26)
  %28 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %29 = call i32 @r8168_phy_ocp_read(%struct.rtl8169_private* %28, i32 42080)
  %30 = and i32 %29, 256
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %21
  %33 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %34 = call i32 @rtl_w1w0_phy_ocp(%struct.rtl8169_private* %33, i32 48324, i32 0, i32 32768)
  br label %38

35:                                               ; preds = %21
  %36 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %37 = call i32 @rtl_w1w0_phy_ocp(%struct.rtl8169_private* %36, i32 48324, i32 32768, i32 0)
  br label %38

38:                                               ; preds = %35, %32
  %39 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %40 = call i32 @r8168_phy_ocp_read(%struct.rtl8169_private* %39, i32 42086)
  %41 = and i32 %40, 256
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %38
  %44 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %45 = call i32 @rtl_w1w0_phy_ocp(%struct.rtl8169_private* %44, i32 50202, i32 2, i32 0)
  br label %49

46:                                               ; preds = %38
  %47 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %48 = call i32 @rtl_w1w0_phy_ocp(%struct.rtl8169_private* %47, i32 48324, i32 0, i32 2)
  br label %49

49:                                               ; preds = %46, %43
  %50 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %51 = call i32 @rtl_w1w0_phy_ocp(%struct.rtl8169_private* %50, i32 42050, i32 12, i32 0)
  %52 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %53 = call i32 @rtl_w1w0_phy_ocp(%struct.rtl8169_private* %52, i32 42162, i32 4, i32 0)
  %54 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %55 = call i32 @r8168_phy_ocp_write(%struct.rtl8169_private* %54, i32 42038, i32 32786)
  %56 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %57 = call i32 @rtl_w1w0_phy_ocp(%struct.rtl8169_private* %56, i32 42040, i32 32768, i32 0)
  %58 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %59 = call i32 @rtl_w1w0_phy_ocp(%struct.rtl8169_private* %58, i32 50210, i32 16384, i32 8192)
  ret void
}

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @r8168_mac_ocp_write(%struct.rtl8169_private*, i32, i32) #1

declare dso_local i32 @rtl_apply_firmware(%struct.rtl8169_private*) #1

declare dso_local i32 @r8168_phy_ocp_read(%struct.rtl8169_private*, i32) #1

declare dso_local i32 @rtl_w1w0_phy_ocp(%struct.rtl8169_private*, i32, i32, i32) #1

declare dso_local i32 @r8168_phy_ocp_write(%struct.rtl8169_private*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
