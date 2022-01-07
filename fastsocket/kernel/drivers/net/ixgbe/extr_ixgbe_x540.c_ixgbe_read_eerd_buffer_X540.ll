; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbe/extr_ixgbe_x540.c_ixgbe_read_eerd_buffer_X540.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbe/extr_ixgbe_x540.c_ixgbe_read_eerd_buffer_X540.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 (%struct.ixgbe_hw.0*, i32)*, i32 (%struct.ixgbe_hw.1*, i32)* }
%struct.ixgbe_hw.0 = type opaque
%struct.ixgbe_hw.1 = type opaque

@IXGBE_GSSR_EEP_SM = common dso_local global i32 0, align 4
@IXGBE_ERR_SWFW_SYNC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ixgbe_hw*, i32, i32, i32*)* @ixgbe_read_eerd_buffer_X540 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ixgbe_read_eerd_buffer_X540(%struct.ixgbe_hw* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca %struct.ixgbe_hw*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store %struct.ixgbe_hw* %0, %struct.ixgbe_hw** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  store i32 0, i32* %9, align 4
  %10 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %11 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i64 (%struct.ixgbe_hw.0*, i32)*, i64 (%struct.ixgbe_hw.0*, i32)** %13, align 8
  %15 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %16 = bitcast %struct.ixgbe_hw* %15 to %struct.ixgbe_hw.0*
  %17 = load i32, i32* @IXGBE_GSSR_EEP_SM, align 4
  %18 = call i64 %14(%struct.ixgbe_hw.0* %16, i32 %17)
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %4
  %21 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* %7, align 4
  %24 = load i32*, i32** %8, align 8
  %25 = call i32 @ixgbe_read_eerd_buffer_generic(%struct.ixgbe_hw* %21, i32 %22, i32 %23, i32* %24)
  store i32 %25, i32* %9, align 4
  br label %28

26:                                               ; preds = %4
  %27 = load i32, i32* @IXGBE_ERR_SWFW_SYNC, align 4
  store i32 %27, i32* %9, align 4
  br label %28

28:                                               ; preds = %26, %20
  %29 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %30 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 1
  %33 = load i32 (%struct.ixgbe_hw.1*, i32)*, i32 (%struct.ixgbe_hw.1*, i32)** %32, align 8
  %34 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %35 = bitcast %struct.ixgbe_hw* %34 to %struct.ixgbe_hw.1*
  %36 = load i32, i32* @IXGBE_GSSR_EEP_SM, align 4
  %37 = call i32 %33(%struct.ixgbe_hw.1* %35, i32 %36)
  %38 = load i32, i32* %9, align 4
  ret i32 %38
}

declare dso_local i32 @ixgbe_read_eerd_buffer_generic(%struct.ixgbe_hw*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
