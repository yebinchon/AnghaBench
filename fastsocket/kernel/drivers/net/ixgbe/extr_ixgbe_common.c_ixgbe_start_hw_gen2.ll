; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbe/extr_ixgbe_common.c_ixgbe_start_hw_gen2.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbe/extr_ixgbe_common.c_ixgbe_start_hw_gen2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64 }

@IXGBE_RTTDQSEL = common dso_local global i32 0, align 4
@IXGBE_RTTBCNRC = common dso_local global i32 0, align 4
@IXGBE_DCA_TXCTRL_DESC_WRO_EN = common dso_local global i64 0, align 8
@IXGBE_DCA_RXCTRL_DATA_WRO_EN = common dso_local global i64 0, align 8
@IXGBE_DCA_RXCTRL_HEAD_WRO_EN = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ixgbe_start_hw_gen2(%struct.ixgbe_hw* %0) #0 {
  %2 = alloca %struct.ixgbe_hw*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store %struct.ixgbe_hw* %0, %struct.ixgbe_hw** %2, align 8
  store i64 0, i64* %3, align 8
  br label %5

5:                                                ; preds = %20, %1
  %6 = load i64, i64* %3, align 8
  %7 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %8 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp slt i64 %6, %10
  br i1 %11, label %12, label %23

12:                                               ; preds = %5
  %13 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %14 = load i32, i32* @IXGBE_RTTDQSEL, align 4
  %15 = load i64, i64* %3, align 8
  %16 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %13, i32 %14, i64 %15)
  %17 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %18 = load i32, i32* @IXGBE_RTTBCNRC, align 4
  %19 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %17, i32 %18, i64 0)
  br label %20

20:                                               ; preds = %12
  %21 = load i64, i64* %3, align 8
  %22 = add nsw i64 %21, 1
  store i64 %22, i64* %3, align 8
  br label %5

23:                                               ; preds = %5
  %24 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %25 = call i32 @IXGBE_WRITE_FLUSH(%struct.ixgbe_hw* %24)
  store i64 0, i64* %3, align 8
  br label %26

26:                                               ; preds = %47, %23
  %27 = load i64, i64* %3, align 8
  %28 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %29 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp slt i64 %27, %31
  br i1 %32, label %33, label %50

33:                                               ; preds = %26
  %34 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %35 = load i64, i64* %3, align 8
  %36 = call i32 @IXGBE_DCA_TXCTRL_82599(i64 %35)
  %37 = call i64 @IXGBE_READ_REG(%struct.ixgbe_hw* %34, i32 %36)
  store i64 %37, i64* %4, align 8
  %38 = load i64, i64* @IXGBE_DCA_TXCTRL_DESC_WRO_EN, align 8
  %39 = xor i64 %38, -1
  %40 = load i64, i64* %4, align 8
  %41 = and i64 %40, %39
  store i64 %41, i64* %4, align 8
  %42 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %43 = load i64, i64* %3, align 8
  %44 = call i32 @IXGBE_DCA_TXCTRL_82599(i64 %43)
  %45 = load i64, i64* %4, align 8
  %46 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %42, i32 %44, i64 %45)
  br label %47

47:                                               ; preds = %33
  %48 = load i64, i64* %3, align 8
  %49 = add nsw i64 %48, 1
  store i64 %49, i64* %3, align 8
  br label %26

50:                                               ; preds = %26
  store i64 0, i64* %3, align 8
  br label %51

51:                                               ; preds = %74, %50
  %52 = load i64, i64* %3, align 8
  %53 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %54 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = icmp slt i64 %52, %56
  br i1 %57, label %58, label %77

58:                                               ; preds = %51
  %59 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %60 = load i64, i64* %3, align 8
  %61 = call i32 @IXGBE_DCA_RXCTRL(i64 %60)
  %62 = call i64 @IXGBE_READ_REG(%struct.ixgbe_hw* %59, i32 %61)
  store i64 %62, i64* %4, align 8
  %63 = load i64, i64* @IXGBE_DCA_RXCTRL_DATA_WRO_EN, align 8
  %64 = load i64, i64* @IXGBE_DCA_RXCTRL_HEAD_WRO_EN, align 8
  %65 = or i64 %63, %64
  %66 = xor i64 %65, -1
  %67 = load i64, i64* %4, align 8
  %68 = and i64 %67, %66
  store i64 %68, i64* %4, align 8
  %69 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %70 = load i64, i64* %3, align 8
  %71 = call i32 @IXGBE_DCA_RXCTRL(i64 %70)
  %72 = load i64, i64* %4, align 8
  %73 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %69, i32 %71, i64 %72)
  br label %74

74:                                               ; preds = %58
  %75 = load i64, i64* %3, align 8
  %76 = add nsw i64 %75, 1
  store i64 %76, i64* %3, align 8
  br label %51

77:                                               ; preds = %51
  ret i32 0
}

declare dso_local i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw*, i32, i64) #1

declare dso_local i32 @IXGBE_WRITE_FLUSH(%struct.ixgbe_hw*) #1

declare dso_local i64 @IXGBE_READ_REG(%struct.ixgbe_hw*, i32) #1

declare dso_local i32 @IXGBE_DCA_TXCTRL_82599(i64) #1

declare dso_local i32 @IXGBE_DCA_RXCTRL(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
