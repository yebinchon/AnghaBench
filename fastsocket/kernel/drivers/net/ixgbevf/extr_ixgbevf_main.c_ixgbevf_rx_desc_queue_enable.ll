; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbevf/extr_ixgbevf_main.c_ixgbevf_rx_desc_queue_enable.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbevf/extr_ixgbevf_main.c_ixgbevf_rx_desc_queue_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbevf_adapter = type { %struct.TYPE_2__*, %struct.ixgbe_hw }
%struct.TYPE_2__ = type { i32, i64 }
%struct.ixgbe_hw = type { i32 }

@IXGBE_MAX_RX_DESC_POLL = common dso_local global i32 0, align 4
@IXGBE_RXDCTL_ENABLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [64 x i8] c"RXDCTL.ENABLE on Rx queue %d not set within the polling period\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ixgbevf_adapter*, i32)* @ixgbevf_rx_desc_queue_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ixgbevf_rx_desc_queue_enable(%struct.ixgbevf_adapter* %0, i32 %1) #0 {
  %3 = alloca %struct.ixgbevf_adapter*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ixgbe_hw*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ixgbevf_adapter* %0, %struct.ixgbevf_adapter** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %3, align 8
  %9 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %8, i32 0, i32 1
  store %struct.ixgbe_hw* %9, %struct.ixgbe_hw** %5, align 8
  %10 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %3, align 8
  %11 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = load i32, i32* %4, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i64 %14
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  store i32 %17, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %18

18:                                               ; preds = %34, %2
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* @IXGBE_MAX_RX_DESC_POLL, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %37

22:                                               ; preds = %18
  %23 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %24 = load i32, i32* %6, align 4
  %25 = call i32 @IXGBE_VFRXDCTL(i32 %24)
  %26 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %23, i32 %25)
  %27 = load i32, i32* @IXGBE_RXDCTL_ENABLE, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %22
  br label %37

31:                                               ; preds = %22
  %32 = call i32 @msleep(i32 1)
  br label %33

33:                                               ; preds = %31
  br label %34

34:                                               ; preds = %33
  %35 = load i32, i32* %7, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %7, align 4
  br label %18

37:                                               ; preds = %30, %18
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* @IXGBE_MAX_RX_DESC_POLL, align 4
  %40 = icmp sge i32 %38, %39
  br i1 %40, label %41, label %45

41:                                               ; preds = %37
  %42 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %43 = load i32, i32* %4, align 4
  %44 = call i32 @hw_dbg(%struct.ixgbe_hw* %42, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str, i64 0, i64 0), i32 %43)
  br label %45

45:                                               ; preds = %41, %37
  %46 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %47 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %3, align 8
  %48 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %47, i32 0, i32 0
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = load i32, i32* %4, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i64 %51
  %53 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %3, align 8
  %54 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %53, i32 0, i32 0
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %54, align 8
  %56 = load i32, i32* %4, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = sub nsw i64 %60, 1
  %62 = call i32 @ixgbevf_release_rx_desc(%struct.ixgbe_hw* %46, %struct.TYPE_2__* %52, i64 %61)
  ret void
}

declare dso_local i32 @IXGBE_READ_REG(%struct.ixgbe_hw*, i32) #1

declare dso_local i32 @IXGBE_VFRXDCTL(i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @hw_dbg(%struct.ixgbe_hw*, i8*, i32) #1

declare dso_local i32 @ixgbevf_release_rx_desc(%struct.ixgbe_hw*, %struct.TYPE_2__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
