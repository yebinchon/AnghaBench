; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbe/extr_ixgbe_82598.c_ixgbe_start_hw_82598.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbe/extr_ixgbe_82598.c_ixgbe_start_hw_82598.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64, i32 }

@IXGBE_DCA_MAX_QUEUES_82598 = common dso_local global i64 0, align 8
@IXGBE_DCA_TXCTRL_DESC_WRO_EN = common dso_local global i64 0, align 8
@IXGBE_DCA_RXCTRL_DATA_WRO_EN = common dso_local global i64 0, align 8
@IXGBE_DCA_RXCTRL_HEAD_WRO_EN = common dso_local global i64 0, align 8
@IXGBE_82598_RX_PB_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.ixgbe_hw*)* @ixgbe_start_hw_82598 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ixgbe_start_hw_82598(%struct.ixgbe_hw* %0) #0 {
  %2 = alloca %struct.ixgbe_hw*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.ixgbe_hw* %0, %struct.ixgbe_hw** %2, align 8
  store i64 0, i64* %5, align 8
  %6 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %7 = call i64 @ixgbe_start_hw_generic(%struct.ixgbe_hw* %6)
  store i64 %7, i64* %5, align 8
  store i64 0, i64* %4, align 8
  br label %8

8:                                                ; preds = %35, %1
  %9 = load i64, i64* %4, align 8
  %10 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %11 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp slt i64 %9, %13
  br i1 %14, label %15, label %19

15:                                               ; preds = %8
  %16 = load i64, i64* %4, align 8
  %17 = load i64, i64* @IXGBE_DCA_MAX_QUEUES_82598, align 8
  %18 = icmp slt i64 %16, %17
  br label %19

19:                                               ; preds = %15, %8
  %20 = phi i1 [ false, %8 ], [ %18, %15 ]
  br i1 %20, label %21, label %38

21:                                               ; preds = %19
  %22 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %23 = load i64, i64* %4, align 8
  %24 = call i32 @IXGBE_DCA_TXCTRL(i64 %23)
  %25 = call i64 @IXGBE_READ_REG(%struct.ixgbe_hw* %22, i32 %24)
  store i64 %25, i64* %3, align 8
  %26 = load i64, i64* @IXGBE_DCA_TXCTRL_DESC_WRO_EN, align 8
  %27 = xor i64 %26, -1
  %28 = load i64, i64* %3, align 8
  %29 = and i64 %28, %27
  store i64 %29, i64* %3, align 8
  %30 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %31 = load i64, i64* %4, align 8
  %32 = call i32 @IXGBE_DCA_TXCTRL(i64 %31)
  %33 = load i64, i64* %3, align 8
  %34 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %30, i32 %32, i64 %33)
  br label %35

35:                                               ; preds = %21
  %36 = load i64, i64* %4, align 8
  %37 = add nsw i64 %36, 1
  store i64 %37, i64* %4, align 8
  br label %8

38:                                               ; preds = %19
  store i64 0, i64* %4, align 8
  br label %39

39:                                               ; preds = %68, %38
  %40 = load i64, i64* %4, align 8
  %41 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %42 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = icmp slt i64 %40, %44
  br i1 %45, label %46, label %50

46:                                               ; preds = %39
  %47 = load i64, i64* %4, align 8
  %48 = load i64, i64* @IXGBE_DCA_MAX_QUEUES_82598, align 8
  %49 = icmp slt i64 %47, %48
  br label %50

50:                                               ; preds = %46, %39
  %51 = phi i1 [ false, %39 ], [ %49, %46 ]
  br i1 %51, label %52, label %71

52:                                               ; preds = %50
  %53 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %54 = load i64, i64* %4, align 8
  %55 = call i32 @IXGBE_DCA_RXCTRL(i64 %54)
  %56 = call i64 @IXGBE_READ_REG(%struct.ixgbe_hw* %53, i32 %55)
  store i64 %56, i64* %3, align 8
  %57 = load i64, i64* @IXGBE_DCA_RXCTRL_DATA_WRO_EN, align 8
  %58 = load i64, i64* @IXGBE_DCA_RXCTRL_HEAD_WRO_EN, align 8
  %59 = or i64 %57, %58
  %60 = xor i64 %59, -1
  %61 = load i64, i64* %3, align 8
  %62 = and i64 %61, %60
  store i64 %62, i64* %3, align 8
  %63 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %64 = load i64, i64* %4, align 8
  %65 = call i32 @IXGBE_DCA_RXCTRL(i64 %64)
  %66 = load i64, i64* %3, align 8
  %67 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %63, i32 %65, i64 %66)
  br label %68

68:                                               ; preds = %52
  %69 = load i64, i64* %4, align 8
  %70 = add nsw i64 %69, 1
  store i64 %70, i64* %4, align 8
  br label %39

71:                                               ; preds = %50
  %72 = load i32, i32* @IXGBE_82598_RX_PB_SIZE, align 4
  %73 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %74 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 2
  store i32 %72, i32* %75, align 8
  %76 = load i64, i64* %5, align 8
  %77 = icmp eq i64 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %71
  %79 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %80 = call i32 @ixgbe_set_pcie_completion_timeout(%struct.ixgbe_hw* %79)
  br label %81

81:                                               ; preds = %78, %71
  %82 = load i64, i64* %5, align 8
  ret i64 %82
}

declare dso_local i64 @ixgbe_start_hw_generic(%struct.ixgbe_hw*) #1

declare dso_local i64 @IXGBE_READ_REG(%struct.ixgbe_hw*, i32) #1

declare dso_local i32 @IXGBE_DCA_TXCTRL(i64) #1

declare dso_local i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw*, i32, i64) #1

declare dso_local i32 @IXGBE_DCA_RXCTRL(i64) #1

declare dso_local i32 @ixgbe_set_pcie_completion_timeout(%struct.ixgbe_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
