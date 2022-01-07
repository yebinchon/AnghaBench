; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_r6040.c_r6040_set_carrier.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_r6040.c_r6040_set_carrier.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mii_if_info = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mii_if_info*)* @r6040_set_carrier to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @r6040_set_carrier(%struct.mii_if_info* %0) #0 {
  %2 = alloca %struct.mii_if_info*, align 8
  store %struct.mii_if_info* %0, %struct.mii_if_info** %2, align 8
  %3 = load %struct.mii_if_info*, %struct.mii_if_info** %2, align 8
  %4 = getelementptr inbounds %struct.mii_if_info, %struct.mii_if_info* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  %6 = call i64 @r6040_phy_mode_chk(i32 %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %20

8:                                                ; preds = %1
  %9 = load %struct.mii_if_info*, %struct.mii_if_info** %2, align 8
  %10 = getelementptr inbounds %struct.mii_if_info, %struct.mii_if_info* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @netif_carrier_ok(i32 %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %19, label %14

14:                                               ; preds = %8
  %15 = load %struct.mii_if_info*, %struct.mii_if_info** %2, align 8
  %16 = getelementptr inbounds %struct.mii_if_info, %struct.mii_if_info* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @netif_carrier_on(i32 %17)
  br label %19

19:                                               ; preds = %14, %8
  br label %25

20:                                               ; preds = %1
  %21 = load %struct.mii_if_info*, %struct.mii_if_info** %2, align 8
  %22 = getelementptr inbounds %struct.mii_if_info, %struct.mii_if_info* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i64 @r6040_phy_mode_chk(i32 %23)
  br label %25

25:                                               ; preds = %20, %19
  ret void
}

declare dso_local i64 @r6040_phy_mode_chk(i32) #1

declare dso_local i32 @netif_carrier_ok(i32) #1

declare dso_local i32 @netif_carrier_on(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
