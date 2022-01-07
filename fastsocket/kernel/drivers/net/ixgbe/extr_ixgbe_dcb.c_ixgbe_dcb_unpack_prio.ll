; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbe/extr_ixgbe_dcb.c_ixgbe_dcb_unpack_prio.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbe/extr_ixgbe_dcb.c_ixgbe_dcb_unpack_prio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_dcb_config = type { %struct.tc_configuration* }
%struct.tc_configuration = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@MAX_TRAFFIC_CLASS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ixgbe_dcb_unpack_prio(%struct.ixgbe_dcb_config* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.ixgbe_dcb_config*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.tc_configuration*, align 8
  %8 = alloca i32, align 4
  store %struct.ixgbe_dcb_config* %0, %struct.ixgbe_dcb_config** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %9 = load %struct.ixgbe_dcb_config*, %struct.ixgbe_dcb_config** %4, align 8
  %10 = getelementptr inbounds %struct.ixgbe_dcb_config, %struct.ixgbe_dcb_config* %9, i32 0, i32 0
  %11 = load %struct.tc_configuration*, %struct.tc_configuration** %10, align 8
  %12 = getelementptr inbounds %struct.tc_configuration, %struct.tc_configuration* %11, i64 0
  store %struct.tc_configuration* %12, %struct.tc_configuration** %7, align 8
  store i32 0, i32* %8, align 4
  br label %13

13:                                               ; preds = %33, %3
  %14 = load i32, i32* %8, align 4
  %15 = load i32, i32* @MAX_TRAFFIC_CLASS, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %36

17:                                               ; preds = %13
  %18 = load %struct.tc_configuration*, %struct.tc_configuration** %7, align 8
  %19 = load i32, i32* %8, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.tc_configuration, %struct.tc_configuration* %18, i64 %20
  %22 = getelementptr inbounds %struct.tc_configuration, %struct.tc_configuration* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = load i32, i32* %5, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32*, i32** %6, align 8
  %30 = load i32, i32* %8, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %29, i64 %31
  store i32 %28, i32* %32, align 4
  br label %33

33:                                               ; preds = %17
  %34 = load i32, i32* %8, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %8, align 4
  br label %13

36:                                               ; preds = %13
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
