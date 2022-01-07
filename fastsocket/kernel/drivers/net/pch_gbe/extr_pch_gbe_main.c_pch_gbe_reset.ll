; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/pch_gbe/extr_pch_gbe_main.c_pch_gbe_reset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/pch_gbe/extr_pch_gbe_main.c_pch_gbe_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pch_gbe_adapter = type { i32 }

@PCH_GBE_MAR_ENTRIES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"Hardware Error\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pch_gbe_reset(%struct.pch_gbe_adapter* %0) #0 {
  %2 = alloca %struct.pch_gbe_adapter*, align 8
  store %struct.pch_gbe_adapter* %0, %struct.pch_gbe_adapter** %2, align 8
  %3 = load %struct.pch_gbe_adapter*, %struct.pch_gbe_adapter** %2, align 8
  %4 = getelementptr inbounds %struct.pch_gbe_adapter, %struct.pch_gbe_adapter* %3, i32 0, i32 0
  %5 = call i32 @pch_gbe_mac_reset_hw(i32* %4)
  %6 = load %struct.pch_gbe_adapter*, %struct.pch_gbe_adapter** %2, align 8
  %7 = getelementptr inbounds %struct.pch_gbe_adapter, %struct.pch_gbe_adapter* %6, i32 0, i32 0
  %8 = load i32, i32* @PCH_GBE_MAR_ENTRIES, align 4
  %9 = call i32 @pch_gbe_mac_init_rx_addrs(i32* %7, i32 %8)
  %10 = load %struct.pch_gbe_adapter*, %struct.pch_gbe_adapter** %2, align 8
  %11 = getelementptr inbounds %struct.pch_gbe_adapter, %struct.pch_gbe_adapter* %10, i32 0, i32 0
  %12 = call i64 @pch_gbe_hal_init_hw(i32* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %1
  %15 = call i32 @pr_err(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  br label %16

16:                                               ; preds = %14, %1
  ret void
}

declare dso_local i32 @pch_gbe_mac_reset_hw(i32*) #1

declare dso_local i32 @pch_gbe_mac_init_rx_addrs(i32*, i32) #1

declare dso_local i64 @pch_gbe_hal_init_hw(i32*) #1

declare dso_local i32 @pr_err(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
