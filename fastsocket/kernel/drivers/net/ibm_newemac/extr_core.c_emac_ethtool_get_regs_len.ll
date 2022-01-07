; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ibm_newemac/extr_core.c_emac_ethtool_get_regs_len.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ibm_newemac/extr_core.c_emac_ethtool_get_regs_len.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.emac_instance = type { i32, i32, i32, i32 }

@EMAC_FTR_HAS_ZMII = common dso_local global i32 0, align 4
@EMAC_FTR_HAS_RGMII = common dso_local global i32 0, align 4
@EMAC_FTR_HAS_TAH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @emac_ethtool_get_regs_len to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @emac_ethtool_get_regs_len(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.emac_instance*, align 8
  %4 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %5 = load %struct.net_device*, %struct.net_device** %2, align 8
  %6 = call %struct.emac_instance* @netdev_priv(%struct.net_device* %5)
  store %struct.emac_instance* %6, %struct.emac_instance** %3, align 8
  %7 = load %struct.emac_instance*, %struct.emac_instance** %3, align 8
  %8 = call i32 @emac_get_regs_len(%struct.emac_instance* %7)
  %9 = sext i32 %8 to i64
  %10 = add i64 4, %9
  %11 = load %struct.emac_instance*, %struct.emac_instance** %3, align 8
  %12 = getelementptr inbounds %struct.emac_instance, %struct.emac_instance* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @mal_get_regs_len(i32 %13)
  %15 = sext i32 %14 to i64
  %16 = add i64 %10, %15
  %17 = trunc i64 %16 to i32
  store i32 %17, i32* %4, align 4
  %18 = load %struct.emac_instance*, %struct.emac_instance** %3, align 8
  %19 = load i32, i32* @EMAC_FTR_HAS_ZMII, align 4
  %20 = call i64 @emac_has_feature(%struct.emac_instance* %18, i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %31

22:                                               ; preds = %1
  %23 = load %struct.emac_instance*, %struct.emac_instance** %3, align 8
  %24 = getelementptr inbounds %struct.emac_instance, %struct.emac_instance* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = call i64 @zmii_get_regs_len(i32 %25)
  %27 = load i32, i32* %4, align 4
  %28 = sext i32 %27 to i64
  %29 = add nsw i64 %28, %26
  %30 = trunc i64 %29 to i32
  store i32 %30, i32* %4, align 4
  br label %31

31:                                               ; preds = %22, %1
  %32 = load %struct.emac_instance*, %struct.emac_instance** %3, align 8
  %33 = load i32, i32* @EMAC_FTR_HAS_RGMII, align 4
  %34 = call i64 @emac_has_feature(%struct.emac_instance* %32, i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %45

36:                                               ; preds = %31
  %37 = load %struct.emac_instance*, %struct.emac_instance** %3, align 8
  %38 = getelementptr inbounds %struct.emac_instance, %struct.emac_instance* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call i64 @rgmii_get_regs_len(i32 %39)
  %41 = load i32, i32* %4, align 4
  %42 = sext i32 %41 to i64
  %43 = add nsw i64 %42, %40
  %44 = trunc i64 %43 to i32
  store i32 %44, i32* %4, align 4
  br label %45

45:                                               ; preds = %36, %31
  %46 = load %struct.emac_instance*, %struct.emac_instance** %3, align 8
  %47 = load i32, i32* @EMAC_FTR_HAS_TAH, align 4
  %48 = call i64 @emac_has_feature(%struct.emac_instance* %46, i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %59

50:                                               ; preds = %45
  %51 = load %struct.emac_instance*, %struct.emac_instance** %3, align 8
  %52 = getelementptr inbounds %struct.emac_instance, %struct.emac_instance* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i64 @tah_get_regs_len(i32 %53)
  %55 = load i32, i32* %4, align 4
  %56 = sext i32 %55 to i64
  %57 = add nsw i64 %56, %54
  %58 = trunc i64 %57 to i32
  store i32 %58, i32* %4, align 4
  br label %59

59:                                               ; preds = %50, %45
  %60 = load i32, i32* %4, align 4
  ret i32 %60
}

declare dso_local %struct.emac_instance* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @emac_get_regs_len(%struct.emac_instance*) #1

declare dso_local i32 @mal_get_regs_len(i32) #1

declare dso_local i64 @emac_has_feature(%struct.emac_instance*, i32) #1

declare dso_local i64 @zmii_get_regs_len(i32) #1

declare dso_local i64 @rgmii_get_regs_len(i32) #1

declare dso_local i64 @tah_get_regs_len(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
