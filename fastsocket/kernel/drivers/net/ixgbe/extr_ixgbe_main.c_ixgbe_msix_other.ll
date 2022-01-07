; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbe/extr_ixgbe_main.c_ixgbe_msix_other.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbe/extr_ixgbe_main.c_ixgbe_msix_other.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_adapter = type { i32, i32, i32, %struct.ixgbe_ring**, %struct.ixgbe_hw }
%struct.ixgbe_ring = type { i32 }
%struct.ixgbe_hw = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@IXGBE_EICS = common dso_local global i32 0, align 4
@IXGBE_EICR = common dso_local global i32 0, align 4
@IXGBE_EICR_LSC = common dso_local global i32 0, align 4
@IXGBE_EICR_MAILBOX = common dso_local global i32 0, align 4
@IXGBE_EICR_ECC = common dso_local global i32 0, align 4
@link = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"Received unrecoverable ECC Err, please reboot\0A\00", align 1
@IXGBE_EICR_FLOW_DIR = common dso_local global i32 0, align 4
@__IXGBE_TX_FDIR_INIT_DONE = common dso_local global i32 0, align 4
@IXGBE_EIMC = common dso_local global i32 0, align 4
@IXGBE_EIMC_FLOW_DIR = common dso_local global i32 0, align 4
@IXGBE_FLAG2_FDIR_REQUIRES_REINIT = common dso_local global i32 0, align 4
@__IXGBE_DOWN = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@IXGBE_EICR_TIMESYNC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @ixgbe_msix_other to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ixgbe_msix_other(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.ixgbe_adapter*, align 8
  %6 = alloca %struct.ixgbe_hw*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.ixgbe_ring*, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = bitcast i8* %11 to %struct.ixgbe_adapter*
  store %struct.ixgbe_adapter* %12, %struct.ixgbe_adapter** %5, align 8
  %13 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %5, align 8
  %14 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %13, i32 0, i32 4
  store %struct.ixgbe_hw* %14, %struct.ixgbe_hw** %6, align 8
  %15 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %6, align 8
  %16 = load i32, i32* @IXGBE_EICS, align 4
  %17 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %15, i32 %16)
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %7, align 4
  %19 = and i32 %18, -65536
  store i32 %19, i32* %7, align 4
  %20 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %6, align 8
  %21 = load i32, i32* @IXGBE_EICR, align 4
  %22 = load i32, i32* %7, align 4
  %23 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %20, i32 %21, i32 %22)
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* @IXGBE_EICR_LSC, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %2
  %29 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %5, align 8
  %30 = call i32 @ixgbe_check_lsc(%struct.ixgbe_adapter* %29)
  br label %31

31:                                               ; preds = %28, %2
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* @IXGBE_EICR_MAILBOX, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %31
  %37 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %5, align 8
  %38 = call i32 @ixgbe_msg_task(%struct.ixgbe_adapter* %37)
  br label %39

39:                                               ; preds = %36, %31
  %40 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %6, align 8
  %41 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  switch i32 %43, label %107 [
    i32 129, label %44
    i32 128, label %44
  ]

44:                                               ; preds = %39, %39
  %45 = load i32, i32* %7, align 4
  %46 = load i32, i32* @IXGBE_EICR_ECC, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %44
  %50 = load i32, i32* @link, align 4
  %51 = call i32 @e_info(i32 %50, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  br label %52

52:                                               ; preds = %49, %44
  %53 = load i32, i32* %7, align 4
  %54 = load i32, i32* @IXGBE_EICR_FLOW_DIR, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %100

57:                                               ; preds = %52
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %58

58:                                               ; preds = %81, %57
  %59 = load i32, i32* %9, align 4
  %60 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %5, align 8
  %61 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = icmp slt i32 %59, %62
  br i1 %63, label %64, label %84

64:                                               ; preds = %58
  %65 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %5, align 8
  %66 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %65, i32 0, i32 3
  %67 = load %struct.ixgbe_ring**, %struct.ixgbe_ring*** %66, align 8
  %68 = load i32, i32* %9, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.ixgbe_ring*, %struct.ixgbe_ring** %67, i64 %69
  %71 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %70, align 8
  store %struct.ixgbe_ring* %71, %struct.ixgbe_ring** %10, align 8
  %72 = load i32, i32* @__IXGBE_TX_FDIR_INIT_DONE, align 4
  %73 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %10, align 8
  %74 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %73, i32 0, i32 0
  %75 = call i32 @test_and_clear_bit(i32 %72, i32* %74)
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %64
  %78 = load i32, i32* %8, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %8, align 4
  br label %80

80:                                               ; preds = %77, %64
  br label %81

81:                                               ; preds = %80
  %82 = load i32, i32* %9, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %9, align 4
  br label %58

84:                                               ; preds = %58
  %85 = load i32, i32* %8, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %99

87:                                               ; preds = %84
  %88 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %6, align 8
  %89 = load i32, i32* @IXGBE_EIMC, align 4
  %90 = load i32, i32* @IXGBE_EIMC_FLOW_DIR, align 4
  %91 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %88, i32 %89, i32 %90)
  %92 = load i32, i32* @IXGBE_FLAG2_FDIR_REQUIRES_REINIT, align 4
  %93 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %5, align 8
  %94 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 8
  %96 = or i32 %95, %92
  store i32 %96, i32* %94, align 8
  %97 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %5, align 8
  %98 = call i32 @ixgbe_service_event_schedule(%struct.ixgbe_adapter* %97)
  br label %99

99:                                               ; preds = %87, %84
  br label %100

100:                                              ; preds = %99, %52
  %101 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %5, align 8
  %102 = load i32, i32* %7, align 4
  %103 = call i32 @ixgbe_check_sfp_event(%struct.ixgbe_adapter* %101, i32 %102)
  %104 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %5, align 8
  %105 = load i32, i32* %7, align 4
  %106 = call i32 @ixgbe_check_overtemp_event(%struct.ixgbe_adapter* %104, i32 %105)
  br label %108

107:                                              ; preds = %39
  br label %108

108:                                              ; preds = %107, %100
  %109 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %5, align 8
  %110 = load i32, i32* %7, align 4
  %111 = call i32 @ixgbe_check_fan_failure(%struct.ixgbe_adapter* %109, i32 %110)
  %112 = load i32, i32* @__IXGBE_DOWN, align 4
  %113 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %5, align 8
  %114 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %113, i32 0, i32 1
  %115 = call i32 @test_bit(i32 %112, i32* %114)
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %120, label %117

117:                                              ; preds = %108
  %118 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %5, align 8
  %119 = call i32 @ixgbe_irq_enable(%struct.ixgbe_adapter* %118, i32 0, i32 0)
  br label %120

120:                                              ; preds = %117, %108
  %121 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %121
}

declare dso_local i32 @IXGBE_READ_REG(%struct.ixgbe_hw*, i32) #1

declare dso_local i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw*, i32, i32) #1

declare dso_local i32 @ixgbe_check_lsc(%struct.ixgbe_adapter*) #1

declare dso_local i32 @ixgbe_msg_task(%struct.ixgbe_adapter*) #1

declare dso_local i32 @e_info(i32, i8*) #1

declare dso_local i32 @test_and_clear_bit(i32, i32*) #1

declare dso_local i32 @ixgbe_service_event_schedule(%struct.ixgbe_adapter*) #1

declare dso_local i32 @ixgbe_check_sfp_event(%struct.ixgbe_adapter*, i32) #1

declare dso_local i32 @ixgbe_check_overtemp_event(%struct.ixgbe_adapter*, i32) #1

declare dso_local i32 @ixgbe_check_fan_failure(%struct.ixgbe_adapter*, i32) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @ixgbe_irq_enable(%struct.ixgbe_adapter*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
