; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbe/extr_ixgbe_main.c_ixgbe_check_sfp_event.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbe/extr_ixgbe_main.c_ixgbe_check_sfp_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_adapter = type { i32, i32, i32, %struct.ixgbe_hw }
%struct.ixgbe_hw = type { i32 }

@IXGBE_EICR_GPI_SDP2 = common dso_local global i32 0, align 4
@IXGBE_EICR = common dso_local global i32 0, align 4
@__IXGBE_DOWN = common dso_local global i32 0, align 4
@IXGBE_FLAG2_SFP_NEEDS_RESET = common dso_local global i32 0, align 4
@IXGBE_EICR_GPI_SDP1 = common dso_local global i32 0, align 4
@IXGBE_FLAG_NEED_LINK_CONFIG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ixgbe_adapter*, i32)* @ixgbe_check_sfp_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ixgbe_check_sfp_event(%struct.ixgbe_adapter* %0, i32 %1) #0 {
  %3 = alloca %struct.ixgbe_adapter*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ixgbe_hw*, align 8
  store %struct.ixgbe_adapter* %0, %struct.ixgbe_adapter** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %3, align 8
  %7 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %6, i32 0, i32 3
  store %struct.ixgbe_hw* %7, %struct.ixgbe_hw** %5, align 8
  %8 = load i32, i32* %4, align 4
  %9 = load i32, i32* @IXGBE_EICR_GPI_SDP2, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %31

12:                                               ; preds = %2
  %13 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %14 = load i32, i32* @IXGBE_EICR, align 4
  %15 = load i32, i32* @IXGBE_EICR_GPI_SDP2, align 4
  %16 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %13, i32 %14, i32 %15)
  %17 = load i32, i32* @__IXGBE_DOWN, align 4
  %18 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %3, align 8
  %19 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %18, i32 0, i32 1
  %20 = call i32 @test_bit(i32 %17, i32* %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %30, label %22

22:                                               ; preds = %12
  %23 = load i32, i32* @IXGBE_FLAG2_SFP_NEEDS_RESET, align 4
  %24 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %3, align 8
  %25 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = or i32 %26, %23
  store i32 %27, i32* %25, align 4
  %28 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %3, align 8
  %29 = call i32 @ixgbe_service_event_schedule(%struct.ixgbe_adapter* %28)
  br label %30

30:                                               ; preds = %22, %12
  br label %31

31:                                               ; preds = %30, %2
  %32 = load i32, i32* %4, align 4
  %33 = load i32, i32* @IXGBE_EICR_GPI_SDP1, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %55

36:                                               ; preds = %31
  %37 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %38 = load i32, i32* @IXGBE_EICR, align 4
  %39 = load i32, i32* @IXGBE_EICR_GPI_SDP1, align 4
  %40 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %37, i32 %38, i32 %39)
  %41 = load i32, i32* @__IXGBE_DOWN, align 4
  %42 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %3, align 8
  %43 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %42, i32 0, i32 1
  %44 = call i32 @test_bit(i32 %41, i32* %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %54, label %46

46:                                               ; preds = %36
  %47 = load i32, i32* @IXGBE_FLAG_NEED_LINK_CONFIG, align 4
  %48 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %3, align 8
  %49 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = or i32 %50, %47
  store i32 %51, i32* %49, align 4
  %52 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %3, align 8
  %53 = call i32 @ixgbe_service_event_schedule(%struct.ixgbe_adapter* %52)
  br label %54

54:                                               ; preds = %46, %36
  br label %55

55:                                               ; preds = %54, %31
  ret void
}

declare dso_local i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw*, i32, i32) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @ixgbe_service_event_schedule(%struct.ixgbe_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
