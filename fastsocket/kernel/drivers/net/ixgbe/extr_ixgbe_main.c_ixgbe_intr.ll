; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbe/extr_ixgbe_main.c_ixgbe_intr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbe/extr_ixgbe_main.c_ixgbe_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_adapter = type { i32, %struct.ixgbe_q_vector**, %struct.ixgbe_hw }
%struct.ixgbe_q_vector = type { i32 }
%struct.ixgbe_hw = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@IXGBE_EIMC = common dso_local global i32 0, align 4
@IXGBE_IRQ_CLEAR_MASK = common dso_local global i32 0, align 4
@IXGBE_EICR = common dso_local global i32 0, align 4
@__IXGBE_DOWN = common dso_local global i32 0, align 4
@IRQ_NONE = common dso_local global i32 0, align 4
@IXGBE_EICR_LSC = common dso_local global i32 0, align 4
@IXGBE_EICR_ECC = common dso_local global i32 0, align 4
@link = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"Received unrecoverable ECC err, please reboot\0A\00", align 1
@IRQ_HANDLED = common dso_local global i32 0, align 4
@IXGBE_EICR_TIMESYNC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @ixgbe_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ixgbe_intr(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.ixgbe_adapter*, align 8
  %7 = alloca %struct.ixgbe_hw*, align 8
  %8 = alloca %struct.ixgbe_q_vector*, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to %struct.ixgbe_adapter*
  store %struct.ixgbe_adapter* %11, %struct.ixgbe_adapter** %6, align 8
  %12 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %6, align 8
  %13 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %12, i32 0, i32 2
  store %struct.ixgbe_hw* %13, %struct.ixgbe_hw** %7, align 8
  %14 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %6, align 8
  %15 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %14, i32 0, i32 1
  %16 = load %struct.ixgbe_q_vector**, %struct.ixgbe_q_vector*** %15, align 8
  %17 = getelementptr inbounds %struct.ixgbe_q_vector*, %struct.ixgbe_q_vector** %16, i64 0
  %18 = load %struct.ixgbe_q_vector*, %struct.ixgbe_q_vector** %17, align 8
  store %struct.ixgbe_q_vector* %18, %struct.ixgbe_q_vector** %8, align 8
  %19 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %7, align 8
  %20 = load i32, i32* @IXGBE_EIMC, align 4
  %21 = load i32, i32* @IXGBE_IRQ_CLEAR_MASK, align 4
  %22 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %19, i32 %20, i32 %21)
  %23 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %7, align 8
  %24 = load i32, i32* @IXGBE_EICR, align 4
  %25 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %23, i32 %24)
  store i32 %25, i32* %9, align 4
  %26 = load i32, i32* %9, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %39, label %28

28:                                               ; preds = %2
  %29 = load i32, i32* @__IXGBE_DOWN, align 4
  %30 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %6, align 8
  %31 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %30, i32 0, i32 0
  %32 = call i32 @test_bit(i32 %29, i32* %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %28
  %35 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %6, align 8
  %36 = call i32 @ixgbe_irq_enable(%struct.ixgbe_adapter* %35, i32 1, i32 1)
  br label %37

37:                                               ; preds = %34, %28
  %38 = load i32, i32* @IRQ_NONE, align 4
  store i32 %38, i32* %3, align 4
  br label %86

39:                                               ; preds = %2
  %40 = load i32, i32* %9, align 4
  %41 = load i32, i32* @IXGBE_EICR_LSC, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %39
  %45 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %6, align 8
  %46 = call i32 @ixgbe_check_lsc(%struct.ixgbe_adapter* %45)
  br label %47

47:                                               ; preds = %44, %39
  %48 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %7, align 8
  %49 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  switch i32 %51, label %68 [
    i32 129, label %52
    i32 128, label %56
  ]

52:                                               ; preds = %47
  %53 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %6, align 8
  %54 = load i32, i32* %9, align 4
  %55 = call i32 @ixgbe_check_sfp_event(%struct.ixgbe_adapter* %53, i32 %54)
  br label %56

56:                                               ; preds = %47, %52
  %57 = load i32, i32* %9, align 4
  %58 = load i32, i32* @IXGBE_EICR_ECC, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %56
  %62 = load i32, i32* @link, align 4
  %63 = call i32 @e_info(i32 %62, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  br label %64

64:                                               ; preds = %61, %56
  %65 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %6, align 8
  %66 = load i32, i32* %9, align 4
  %67 = call i32 @ixgbe_check_overtemp_event(%struct.ixgbe_adapter* %65, i32 %66)
  br label %69

68:                                               ; preds = %47
  br label %69

69:                                               ; preds = %68, %64
  %70 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %6, align 8
  %71 = load i32, i32* %9, align 4
  %72 = call i32 @ixgbe_check_fan_failure(%struct.ixgbe_adapter* %70, i32 %71)
  %73 = load %struct.ixgbe_q_vector*, %struct.ixgbe_q_vector** %8, align 8
  %74 = getelementptr inbounds %struct.ixgbe_q_vector, %struct.ixgbe_q_vector* %73, i32 0, i32 0
  %75 = call i32 @napi_schedule(i32* %74)
  %76 = load i32, i32* @__IXGBE_DOWN, align 4
  %77 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %6, align 8
  %78 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %77, i32 0, i32 0
  %79 = call i32 @test_bit(i32 %76, i32* %78)
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %84, label %81

81:                                               ; preds = %69
  %82 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %6, align 8
  %83 = call i32 @ixgbe_irq_enable(%struct.ixgbe_adapter* %82, i32 0, i32 0)
  br label %84

84:                                               ; preds = %81, %69
  %85 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %85, i32* %3, align 4
  br label %86

86:                                               ; preds = %84, %37
  %87 = load i32, i32* %3, align 4
  ret i32 %87
}

declare dso_local i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw*, i32, i32) #1

declare dso_local i32 @IXGBE_READ_REG(%struct.ixgbe_hw*, i32) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @ixgbe_irq_enable(%struct.ixgbe_adapter*, i32, i32) #1

declare dso_local i32 @ixgbe_check_lsc(%struct.ixgbe_adapter*) #1

declare dso_local i32 @ixgbe_check_sfp_event(%struct.ixgbe_adapter*, i32) #1

declare dso_local i32 @e_info(i32, i8*) #1

declare dso_local i32 @ixgbe_check_overtemp_event(%struct.ixgbe_adapter*, i32) #1

declare dso_local i32 @ixgbe_check_fan_failure(%struct.ixgbe_adapter*, i32) #1

declare dso_local i32 @napi_schedule(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
