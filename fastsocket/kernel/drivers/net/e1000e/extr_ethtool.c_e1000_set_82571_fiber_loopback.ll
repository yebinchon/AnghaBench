; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/e1000e/extr_ethtool.c_e1000_set_82571_fiber_loopback.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/e1000e/extr_ethtool.c_e1000_set_82571_fiber_loopback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_adapter = type { %struct.e1000_hw }
%struct.e1000_hw = type { i32 }

@CTRL = common dso_local global i32 0, align 4
@E1000_CTRL_SLU = common dso_local global i32 0, align 4
@TXCW = common dso_local global i32 0, align 4
@STATUS = common dso_local global i32 0, align 4
@E1000_STATUS_LU = common dso_local global i32 0, align 4
@E1000_CTRL_ILOS = common dso_local global i32 0, align 4
@SCTL = common dso_local global i32 0, align 4
@E1000_SCTL_ENABLE_SERDES_LOOPBACK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.e1000_adapter*)* @e1000_set_82571_fiber_loopback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @e1000_set_82571_fiber_loopback(%struct.e1000_adapter* %0) #0 {
  %2 = alloca %struct.e1000_adapter*, align 8
  %3 = alloca %struct.e1000_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.e1000_adapter* %0, %struct.e1000_adapter** %2, align 8
  %6 = load %struct.e1000_adapter*, %struct.e1000_adapter** %2, align 8
  %7 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %6, i32 0, i32 0
  store %struct.e1000_hw* %7, %struct.e1000_hw** %3, align 8
  %8 = load i32, i32* @CTRL, align 4
  %9 = call i32 @er32(i32 %8)
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* @E1000_CTRL_SLU, align 4
  %11 = load i32, i32* %4, align 4
  %12 = or i32 %11, %10
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* @CTRL, align 4
  %14 = load i32, i32* %4, align 4
  %15 = call i32 @ew32(i32 %13, i32 %14)
  %16 = load i32, i32* @TXCW, align 4
  %17 = call i32 @er32(i32 %16)
  store i32 %17, i32* %4, align 4
  %18 = load i32, i32* %4, align 4
  %19 = and i32 %18, 2147483647
  store i32 %19, i32* %4, align 4
  %20 = load i32, i32* @TXCW, align 4
  %21 = load i32, i32* %4, align 4
  %22 = call i32 @ew32(i32 %20, i32 %21)
  %23 = load i32, i32* @STATUS, align 4
  %24 = call i32 @er32(i32 %23)
  %25 = load i32, i32* @E1000_STATUS_LU, align 4
  %26 = and i32 %24, %25
  store i32 %26, i32* %5, align 4
  %27 = load i32, i32* %5, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %38, label %29

29:                                               ; preds = %1
  %30 = load i32, i32* @CTRL, align 4
  %31 = call i32 @er32(i32 %30)
  store i32 %31, i32* %4, align 4
  %32 = load i32, i32* @E1000_CTRL_ILOS, align 4
  %33 = load i32, i32* %4, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %4, align 4
  %35 = load i32, i32* @CTRL, align 4
  %36 = load i32, i32* %4, align 4
  %37 = call i32 @ew32(i32 %35, i32 %36)
  br label %38

38:                                               ; preds = %29, %1
  %39 = load i32, i32* @SCTL, align 4
  %40 = load i32, i32* @E1000_SCTL_ENABLE_SERDES_LOOPBACK, align 4
  %41 = call i32 @ew32(i32 %39, i32 %40)
  %42 = call i32 (...) @e1e_flush()
  %43 = call i32 @usleep_range(i32 10000, i32 20000)
  ret i32 0
}

declare dso_local i32 @er32(i32) #1

declare dso_local i32 @ew32(i32, i32) #1

declare dso_local i32 @e1e_flush(...) #1

declare dso_local i32 @usleep_range(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
