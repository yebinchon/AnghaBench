; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_qla3xxx.c_ql_init_scan_mode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_qla3xxx.c_ql_init_scan_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ql3_adapter = type { i32 }

@QL_LINK_OPTICAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ql3_adapter*)* @ql_init_scan_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ql_init_scan_mode(%struct.ql3_adapter* %0) #0 {
  %2 = alloca %struct.ql3_adapter*, align 8
  store %struct.ql3_adapter* %0, %struct.ql3_adapter** %2, align 8
  %3 = load %struct.ql3_adapter*, %struct.ql3_adapter** %2, align 8
  %4 = call i32 @ql_mii_enable_scan_mode(%struct.ql3_adapter* %3)
  %5 = load i32, i32* @QL_LINK_OPTICAL, align 4
  %6 = load %struct.ql3_adapter*, %struct.ql3_adapter** %2, align 8
  %7 = getelementptr inbounds %struct.ql3_adapter, %struct.ql3_adapter* %6, i32 0, i32 0
  %8 = call i64 @test_bit(i32 %5, i32* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %18

10:                                               ; preds = %1
  %11 = load %struct.ql3_adapter*, %struct.ql3_adapter** %2, align 8
  %12 = call i64 @ql_this_adapter_controls_port(%struct.ql3_adapter* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %10
  %15 = load %struct.ql3_adapter*, %struct.ql3_adapter** %2, align 8
  %16 = call i32 @ql_petbi_init_ex(%struct.ql3_adapter* %15)
  br label %17

17:                                               ; preds = %14, %10
  br label %26

18:                                               ; preds = %1
  %19 = load %struct.ql3_adapter*, %struct.ql3_adapter** %2, align 8
  %20 = call i64 @ql_this_adapter_controls_port(%struct.ql3_adapter* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %18
  %23 = load %struct.ql3_adapter*, %struct.ql3_adapter** %2, align 8
  %24 = call i32 @ql_phy_init_ex(%struct.ql3_adapter* %23)
  br label %25

25:                                               ; preds = %22, %18
  br label %26

26:                                               ; preds = %25, %17
  ret void
}

declare dso_local i32 @ql_mii_enable_scan_mode(%struct.ql3_adapter*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i64 @ql_this_adapter_controls_port(%struct.ql3_adapter*) #1

declare dso_local i32 @ql_petbi_init_ex(%struct.ql3_adapter*) #1

declare dso_local i32 @ql_phy_init_ex(%struct.ql3_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
