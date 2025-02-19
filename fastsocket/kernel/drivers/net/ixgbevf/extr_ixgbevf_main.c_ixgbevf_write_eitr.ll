; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbevf/extr_ixgbevf_main.c_ixgbevf_write_eitr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbevf/extr_ixgbevf_main.c_ixgbevf_write_eitr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbevf_q_vector = type { i32, i32, %struct.ixgbevf_adapter* }
%struct.ixgbevf_adapter = type { %struct.ixgbe_hw }
%struct.ixgbe_hw = type { i32 }

@IXGBE_MAX_EITR = common dso_local global i32 0, align 4
@IXGBE_EITR_CNT_WDIS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ixgbevf_q_vector*)* @ixgbevf_write_eitr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ixgbevf_write_eitr(%struct.ixgbevf_q_vector* %0) #0 {
  %2 = alloca %struct.ixgbevf_q_vector*, align 8
  %3 = alloca %struct.ixgbevf_adapter*, align 8
  %4 = alloca %struct.ixgbe_hw*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ixgbevf_q_vector* %0, %struct.ixgbevf_q_vector** %2, align 8
  %7 = load %struct.ixgbevf_q_vector*, %struct.ixgbevf_q_vector** %2, align 8
  %8 = getelementptr inbounds %struct.ixgbevf_q_vector, %struct.ixgbevf_q_vector* %7, i32 0, i32 2
  %9 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %8, align 8
  store %struct.ixgbevf_adapter* %9, %struct.ixgbevf_adapter** %3, align 8
  %10 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %3, align 8
  %11 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %10, i32 0, i32 0
  store %struct.ixgbe_hw* %11, %struct.ixgbe_hw** %4, align 8
  %12 = load %struct.ixgbevf_q_vector*, %struct.ixgbevf_q_vector** %2, align 8
  %13 = getelementptr inbounds %struct.ixgbevf_q_vector, %struct.ixgbevf_q_vector* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  store i32 %14, i32* %5, align 4
  %15 = load %struct.ixgbevf_q_vector*, %struct.ixgbevf_q_vector** %2, align 8
  %16 = getelementptr inbounds %struct.ixgbevf_q_vector, %struct.ixgbevf_q_vector* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @IXGBE_MAX_EITR, align 4
  %19 = and i32 %17, %18
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* @IXGBE_EITR_CNT_WDIS, align 4
  %21 = load i32, i32* %6, align 4
  %22 = or i32 %21, %20
  store i32 %22, i32* %6, align 4
  %23 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @IXGBE_VTEITR(i32 %24)
  %26 = load i32, i32* %6, align 4
  %27 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %23, i32 %25, i32 %26)
  ret void
}

declare dso_local i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw*, i32, i32) #1

declare dso_local i32 @IXGBE_VTEITR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
