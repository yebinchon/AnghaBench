; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbe/extr_ixgbe_main.c_ixgbe_disable_rx_queue.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbe/extr_ixgbe_main.c_ixgbe_disable_rx_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_adapter = type { %struct.ixgbe_hw }
%struct.ixgbe_hw = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.ixgbe_ring = type { i32 }

@IXGBE_MAX_RX_DESC_POLL = common dso_local global i32 0, align 4
@IXGBE_RXDCTL_ENABLE = common dso_local global i32 0, align 4
@ixgbe_mac_82598EB = common dso_local global i64 0, align 8
@IXGBE_LINKS = common dso_local global i32 0, align 4
@IXGBE_LINKS_UP = common dso_local global i32 0, align 4
@drv = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [68 x i8] c"RXDCTL.ENABLE on Rx queue %d not cleared within the polling period\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ixgbe_disable_rx_queue(%struct.ixgbe_adapter* %0, %struct.ixgbe_ring* %1) #0 {
  %3 = alloca %struct.ixgbe_adapter*, align 8
  %4 = alloca %struct.ixgbe_ring*, align 8
  %5 = alloca %struct.ixgbe_hw*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ixgbe_adapter* %0, %struct.ixgbe_adapter** %3, align 8
  store %struct.ixgbe_ring* %1, %struct.ixgbe_ring** %4, align 8
  %9 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %3, align 8
  %10 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %9, i32 0, i32 0
  store %struct.ixgbe_hw* %10, %struct.ixgbe_hw** %5, align 8
  %11 = load i32, i32* @IXGBE_MAX_RX_DESC_POLL, align 4
  store i32 %11, i32* %6, align 4
  %12 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %4, align 8
  %13 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %8, align 4
  %15 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %16 = load i32, i32* %8, align 4
  %17 = call i32 @IXGBE_RXDCTL(i32 %16)
  %18 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %15, i32 %17)
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* @IXGBE_RXDCTL_ENABLE, align 4
  %20 = xor i32 %19, -1
  %21 = load i32, i32* %7, align 4
  %22 = and i32 %21, %20
  store i32 %22, i32* %7, align 4
  %23 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %24 = load i32, i32* %8, align 4
  %25 = call i32 @IXGBE_RXDCTL(i32 %24)
  %26 = load i32, i32* %7, align 4
  %27 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %23, i32 %25, i32 %26)
  %28 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %29 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @ixgbe_mac_82598EB, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %42

34:                                               ; preds = %2
  %35 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %36 = load i32, i32* @IXGBE_LINKS, align 4
  %37 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %35, i32 %36)
  %38 = load i32, i32* @IXGBE_LINKS_UP, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %34
  br label %67

42:                                               ; preds = %34, %2
  br label %43

43:                                               ; preds = %58, %42
  %44 = call i32 @udelay(i32 10)
  %45 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %46 = load i32, i32* %8, align 4
  %47 = call i32 @IXGBE_RXDCTL(i32 %46)
  %48 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %45, i32 %47)
  store i32 %48, i32* %7, align 4
  br label %49

49:                                               ; preds = %43
  %50 = load i32, i32* %6, align 4
  %51 = add nsw i32 %50, -1
  store i32 %51, i32* %6, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %49
  %54 = load i32, i32* %7, align 4
  %55 = load i32, i32* @IXGBE_RXDCTL_ENABLE, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br label %58

58:                                               ; preds = %53, %49
  %59 = phi i1 [ false, %49 ], [ %57, %53 ]
  br i1 %59, label %43, label %60

60:                                               ; preds = %58
  %61 = load i32, i32* %6, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %67, label %63

63:                                               ; preds = %60
  %64 = load i32, i32* @drv, align 4
  %65 = load i32, i32* %8, align 4
  %66 = call i32 @e_err(i32 %64, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str, i64 0, i64 0), i32 %65)
  br label %67

67:                                               ; preds = %41, %63, %60
  ret void
}

declare dso_local i32 @IXGBE_READ_REG(%struct.ixgbe_hw*, i32) #1

declare dso_local i32 @IXGBE_RXDCTL(i32) #1

declare dso_local i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw*, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @e_err(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
