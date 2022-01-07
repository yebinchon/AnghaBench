; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_main.c_bnx2x_set_eth_mac.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_main.c_bnx2x_set_eth_mac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { %struct.TYPE_5__*, %struct.TYPE_6__*, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@NETIF_MSG_IFUP = common dso_local global i32 0, align 4
@NETIF_MSG_IFDOWN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"Ignoring Zero MAC for STORAGE SD mode\0A\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"Adding Eth MAC\0A\00", align 1
@RAMROD_COMP_WAIT = common dso_local global i32 0, align 4
@BNX2X_ETH_MAC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bnx2x_set_eth_mac(%struct.bnx2x* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bnx2x*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.bnx2x* %0, %struct.bnx2x** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %8 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %7, i32 0, i32 1
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i64 @is_zero_ether_addr(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %27

14:                                               ; preds = %2
  %15 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %16 = call i64 @IS_MF_STORAGE_SD(%struct.bnx2x* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %14
  %19 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %20 = call i64 @IS_MF_FCOE_AFEX(%struct.bnx2x* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %18, %14
  %23 = load i32, i32* @NETIF_MSG_IFUP, align 4
  %24 = load i32, i32* @NETIF_MSG_IFDOWN, align 4
  %25 = or i32 %23, %24
  %26 = call i32 @DP(i32 %25, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %62

27:                                               ; preds = %18, %2
  %28 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %29 = call i64 @IS_PF(%struct.bnx2x* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %49

31:                                               ; preds = %27
  store i64 0, i64* %6, align 8
  %32 = load i32, i32* @NETIF_MSG_IFUP, align 4
  %33 = call i32 @DP(i32 %32, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  %34 = load i32, i32* @RAMROD_COMP_WAIT, align 4
  %35 = call i32 @__set_bit(i32 %34, i64* %6)
  %36 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %37 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %38 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %37, i32 0, i32 1
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %43 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %42, i32 0, i32 2
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load i32, i32* %5, align 4
  %47 = load i32, i32* @BNX2X_ETH_MAC, align 4
  %48 = call i32 @bnx2x_set_mac_one(%struct.bnx2x* %36, i32 %41, i32* %45, i32 %46, i32 %47, i64* %6)
  store i32 %48, i32* %3, align 4
  br label %62

49:                                               ; preds = %27
  %50 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %51 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %52 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %51, i32 0, i32 1
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %57 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %56, i32 0, i32 0
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @bnx2x_vfpf_config_mac(%struct.bnx2x* %50, i32 %55, i32 %60, i32 1)
  store i32 %61, i32* %3, align 4
  br label %62

62:                                               ; preds = %49, %31, %22
  %63 = load i32, i32* %3, align 4
  ret i32 %63
}

declare dso_local i64 @is_zero_ether_addr(i32) #1

declare dso_local i64 @IS_MF_STORAGE_SD(%struct.bnx2x*) #1

declare dso_local i64 @IS_MF_FCOE_AFEX(%struct.bnx2x*) #1

declare dso_local i32 @DP(i32, i8*) #1

declare dso_local i64 @IS_PF(%struct.bnx2x*) #1

declare dso_local i32 @__set_bit(i32, i64*) #1

declare dso_local i32 @bnx2x_set_mac_one(%struct.bnx2x*, i32, i32*, i32, i32, i64*) #1

declare dso_local i32 @bnx2x_vfpf_config_mac(%struct.bnx2x*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
