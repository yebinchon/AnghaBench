; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_qla3xxx.c_ql_supported_modes.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_qla3xxx.c_ql_supported_modes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ql3_adapter = type { i32 }

@QL_LINK_OPTICAL = common dso_local global i32 0, align 4
@SUPPORTED_1000baseT_Full = common dso_local global i32 0, align 4
@SUPPORTED_FIBRE = common dso_local global i32 0, align 4
@SUPPORTED_Autoneg = common dso_local global i32 0, align 4
@SUPPORTED_10baseT_Half = common dso_local global i32 0, align 4
@SUPPORTED_10baseT_Full = common dso_local global i32 0, align 4
@SUPPORTED_100baseT_Half = common dso_local global i32 0, align 4
@SUPPORTED_100baseT_Full = common dso_local global i32 0, align 4
@SUPPORTED_1000baseT_Half = common dso_local global i32 0, align 4
@SUPPORTED_TP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ql3_adapter*)* @ql_supported_modes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ql_supported_modes(%struct.ql3_adapter* %0) #0 {
  %2 = alloca %struct.ql3_adapter*, align 8
  %3 = alloca i32, align 4
  store %struct.ql3_adapter* %0, %struct.ql3_adapter** %2, align 8
  %4 = load i32, i32* @QL_LINK_OPTICAL, align 4
  %5 = load %struct.ql3_adapter*, %struct.ql3_adapter** %2, align 8
  %6 = getelementptr inbounds %struct.ql3_adapter, %struct.ql3_adapter* %5, i32 0, i32 0
  %7 = call i64 @test_bit(i32 %4, i32* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %15

9:                                                ; preds = %1
  %10 = load i32, i32* @SUPPORTED_1000baseT_Full, align 4
  %11 = load i32, i32* @SUPPORTED_FIBRE, align 4
  %12 = or i32 %10, %11
  %13 = load i32, i32* @SUPPORTED_Autoneg, align 4
  %14 = or i32 %12, %13
  store i32 %14, i32* %3, align 4
  br label %31

15:                                               ; preds = %1
  %16 = load i32, i32* @SUPPORTED_10baseT_Half, align 4
  %17 = load i32, i32* @SUPPORTED_10baseT_Full, align 4
  %18 = or i32 %16, %17
  %19 = load i32, i32* @SUPPORTED_100baseT_Half, align 4
  %20 = or i32 %18, %19
  %21 = load i32, i32* @SUPPORTED_100baseT_Full, align 4
  %22 = or i32 %20, %21
  %23 = load i32, i32* @SUPPORTED_1000baseT_Half, align 4
  %24 = or i32 %22, %23
  %25 = load i32, i32* @SUPPORTED_1000baseT_Full, align 4
  %26 = or i32 %24, %25
  %27 = load i32, i32* @SUPPORTED_Autoneg, align 4
  %28 = or i32 %26, %27
  %29 = load i32, i32* @SUPPORTED_TP, align 4
  %30 = or i32 %28, %29
  store i32 %30, i32* %3, align 4
  br label %31

31:                                               ; preds = %15, %9
  %32 = load i32, i32* %3, align 4
  ret i32 %32
}

declare dso_local i64 @test_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
