; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbe/extr_ixgbe_sriov.c_ixgbe_ping_all_vfs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbe/extr_ixgbe_sriov.c_ixgbe_ping_all_vfs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_adapter = type { i32, %struct.TYPE_2__*, %struct.ixgbe_hw }
%struct.TYPE_2__ = type { i64 }
%struct.ixgbe_hw = type { i32 }

@IXGBE_PF_CONTROL_MSG = common dso_local global i32 0, align 4
@IXGBE_VT_MSGTYPE_CTS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ixgbe_ping_all_vfs(%struct.ixgbe_adapter* %0) #0 {
  %2 = alloca %struct.ixgbe_adapter*, align 8
  %3 = alloca %struct.ixgbe_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.ixgbe_adapter* %0, %struct.ixgbe_adapter** %2, align 8
  %6 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %7 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %6, i32 0, i32 2
  store %struct.ixgbe_hw* %7, %struct.ixgbe_hw** %3, align 8
  store i32 0, i32* %5, align 4
  br label %8

8:                                                ; preds = %33, %1
  %9 = load i32, i32* %5, align 4
  %10 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %11 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp slt i32 %9, %12
  br i1 %13, label %14, label %36

14:                                               ; preds = %8
  %15 = load i32, i32* @IXGBE_PF_CONTROL_MSG, align 4
  store i32 %15, i32* %4, align 4
  %16 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %17 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %16, i32 0, i32 1
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = load i32, i32* %5, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %14
  %26 = load i32, i32* @IXGBE_VT_MSGTYPE_CTS, align 4
  %27 = load i32, i32* %4, align 4
  %28 = or i32 %27, %26
  store i32 %28, i32* %4, align 4
  br label %29

29:                                               ; preds = %25, %14
  %30 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %31 = load i32, i32* %5, align 4
  %32 = call i32 @ixgbe_write_mbx(%struct.ixgbe_hw* %30, i32* %4, i32 1, i32 %31)
  br label %33

33:                                               ; preds = %29
  %34 = load i32, i32* %5, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %5, align 4
  br label %8

36:                                               ; preds = %8
  ret void
}

declare dso_local i32 @ixgbe_write_mbx(%struct.ixgbe_hw*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
