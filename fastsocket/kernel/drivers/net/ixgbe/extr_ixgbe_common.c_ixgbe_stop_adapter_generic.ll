; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbe/extr_ixgbe_common.c_ixgbe_stop_adapter_generic.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbe/extr_ixgbe_common.c_ixgbe_stop_adapter_generic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64 }

@IXGBE_RXCTRL = common dso_local global i32 0, align 4
@IXGBE_EIMC = common dso_local global i32 0, align 4
@IXGBE_IRQ_CLEAR_MASK = common dso_local global i32 0, align 4
@IXGBE_EICR = common dso_local global i32 0, align 4
@IXGBE_TXDCTL_SWFLSH = common dso_local global i32 0, align 4
@IXGBE_RXDCTL_ENABLE = common dso_local global i32 0, align 4
@IXGBE_RXDCTL_SWFLSH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ixgbe_stop_adapter_generic(%struct.ixgbe_hw* %0) #0 {
  %2 = alloca %struct.ixgbe_hw*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  store %struct.ixgbe_hw* %0, %struct.ixgbe_hw** %2, align 8
  %5 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %6 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %5, i32 0, i32 0
  store i32 1, i32* %6, align 8
  %7 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %8 = load i32, i32* @IXGBE_RXCTRL, align 4
  %9 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %7, i32 %8, i32 0)
  %10 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %11 = load i32, i32* @IXGBE_EIMC, align 4
  %12 = load i32, i32* @IXGBE_IRQ_CLEAR_MASK, align 4
  %13 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %10, i32 %11, i32 %12)
  %14 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %15 = load i32, i32* @IXGBE_EICR, align 4
  %16 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %14, i32 %15)
  store i64 0, i64* %4, align 8
  br label %17

17:                                               ; preds = %30, %1
  %18 = load i64, i64* %4, align 8
  %19 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %20 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp slt i64 %18, %22
  br i1 %23, label %24, label %33

24:                                               ; preds = %17
  %25 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %26 = load i64, i64* %4, align 8
  %27 = call i32 @IXGBE_TXDCTL(i64 %26)
  %28 = load i32, i32* @IXGBE_TXDCTL_SWFLSH, align 4
  %29 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %25, i32 %27, i32 %28)
  br label %30

30:                                               ; preds = %24
  %31 = load i64, i64* %4, align 8
  %32 = add nsw i64 %31, 1
  store i64 %32, i64* %4, align 8
  br label %17

33:                                               ; preds = %17
  store i64 0, i64* %4, align 8
  br label %34

34:                                               ; preds = %58, %33
  %35 = load i64, i64* %4, align 8
  %36 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %37 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = icmp slt i64 %35, %39
  br i1 %40, label %41, label %61

41:                                               ; preds = %34
  %42 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %43 = load i64, i64* %4, align 8
  %44 = call i32 @IXGBE_RXDCTL(i64 %43)
  %45 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %42, i32 %44)
  store i32 %45, i32* %3, align 4
  %46 = load i32, i32* @IXGBE_RXDCTL_ENABLE, align 4
  %47 = xor i32 %46, -1
  %48 = load i32, i32* %3, align 4
  %49 = and i32 %48, %47
  store i32 %49, i32* %3, align 4
  %50 = load i32, i32* @IXGBE_RXDCTL_SWFLSH, align 4
  %51 = load i32, i32* %3, align 4
  %52 = or i32 %51, %50
  store i32 %52, i32* %3, align 4
  %53 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %54 = load i64, i64* %4, align 8
  %55 = call i32 @IXGBE_RXDCTL(i64 %54)
  %56 = load i32, i32* %3, align 4
  %57 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %53, i32 %55, i32 %56)
  br label %58

58:                                               ; preds = %41
  %59 = load i64, i64* %4, align 8
  %60 = add nsw i64 %59, 1
  store i64 %60, i64* %4, align 8
  br label %34

61:                                               ; preds = %34
  %62 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %63 = call i32 @IXGBE_WRITE_FLUSH(%struct.ixgbe_hw* %62)
  %64 = call i32 @usleep_range(i32 1000, i32 2000)
  %65 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %66 = call i32 @ixgbe_disable_pcie_master(%struct.ixgbe_hw* %65)
  ret i32 %66
}

declare dso_local i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw*, i32, i32) #1

declare dso_local i32 @IXGBE_READ_REG(%struct.ixgbe_hw*, i32) #1

declare dso_local i32 @IXGBE_TXDCTL(i64) #1

declare dso_local i32 @IXGBE_RXDCTL(i64) #1

declare dso_local i32 @IXGBE_WRITE_FLUSH(%struct.ixgbe_hw*) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @ixgbe_disable_pcie_master(%struct.ixgbe_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
