; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbevf/extr_vf.c_ixgbevf_init_hw_vf.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbevf/extr_vf.c_ixgbevf_init_hw_vf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 (%struct.ixgbe_hw.0*, i32)*, i32 (%struct.ixgbe_hw.1*)* }
%struct.ixgbe_hw.0 = type opaque
%struct.ixgbe_hw.1 = type opaque

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ixgbe_hw*)* @ixgbevf_init_hw_vf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ixgbevf_init_hw_vf(%struct.ixgbe_hw* %0) #0 {
  %2 = alloca %struct.ixgbe_hw*, align 8
  %3 = alloca i32, align 4
  store %struct.ixgbe_hw* %0, %struct.ixgbe_hw** %2, align 8
  %4 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %5 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 1
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 1
  %8 = load i32 (%struct.ixgbe_hw.1*)*, i32 (%struct.ixgbe_hw.1*)** %7, align 8
  %9 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %10 = bitcast %struct.ixgbe_hw* %9 to %struct.ixgbe_hw.1*
  %11 = call i32 %8(%struct.ixgbe_hw.1* %10)
  store i32 %11, i32* %3, align 4
  %12 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %13 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32 (%struct.ixgbe_hw.0*, i32)*, i32 (%struct.ixgbe_hw.0*, i32)** %15, align 8
  %17 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %18 = bitcast %struct.ixgbe_hw* %17 to %struct.ixgbe_hw.0*
  %19 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %20 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = call i32 %16(%struct.ixgbe_hw.0* %18, i32 %22)
  %24 = load i32, i32* %3, align 4
  ret i32 %24
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
