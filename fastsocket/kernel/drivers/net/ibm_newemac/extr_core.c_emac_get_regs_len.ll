; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ibm_newemac/extr_core.c_emac_get_regs_len.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ibm_newemac/extr_core.c_emac_get_regs_len.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.emac_instance = type { i32 }

@EMAC_FTR_EMAC4 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.emac_instance*)* @emac_get_regs_len to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @emac_get_regs_len(%struct.emac_instance* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.emac_instance*, align 8
  store %struct.emac_instance* %0, %struct.emac_instance** %3, align 8
  %4 = load %struct.emac_instance*, %struct.emac_instance** %3, align 8
  %5 = load i32, i32* @EMAC_FTR_EMAC4, align 4
  %6 = call i64 @emac_has_feature(%struct.emac_instance* %4, i32 %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %14

8:                                                ; preds = %1
  %9 = load %struct.emac_instance*, %struct.emac_instance** %3, align 8
  %10 = call i32 @EMAC4_ETHTOOL_REGS_SIZE(%struct.emac_instance* %9)
  %11 = sext i32 %10 to i64
  %12 = add i64 4, %11
  %13 = trunc i64 %12 to i32
  store i32 %13, i32* %2, align 4
  br label %20

14:                                               ; preds = %1
  %15 = load %struct.emac_instance*, %struct.emac_instance** %3, align 8
  %16 = call i32 @EMAC_ETHTOOL_REGS_SIZE(%struct.emac_instance* %15)
  %17 = sext i32 %16 to i64
  %18 = add i64 4, %17
  %19 = trunc i64 %18 to i32
  store i32 %19, i32* %2, align 4
  br label %20

20:                                               ; preds = %14, %8
  %21 = load i32, i32* %2, align 4
  ret i32 %21
}

declare dso_local i64 @emac_has_feature(%struct.emac_instance*, i32) #1

declare dso_local i32 @EMAC4_ETHTOOL_REGS_SIZE(%struct.emac_instance*) #1

declare dso_local i32 @EMAC_ETHTOOL_REGS_SIZE(%struct.emac_instance*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
