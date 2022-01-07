; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wimax/i2400m/extr_op-rfkill.c_i2400m_report_tlv_rf_switches_status.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wimax/i2400m/extr_op-rfkill.c_i2400m_report_tlv_rf_switches_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2400m = type { i32 }
%struct.i2400m_tlv_rf_switches_status = type { i32, i32 }
%struct.device = type { i32 }

@.str = private unnamed_addr constant [35 x i8] c"(i2400m %p rfss %p [hw %u sw %u])\0A\00", align 1
@WIMAX_ST_RADIO_OFF = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"ignoring RF switches report, state %u\0A\00", align 1
@WIMAX_RF_ON = common dso_local global i32 0, align 4
@WIMAX_RF_OFF = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"HW BUG? Unknown RF SW state 0x%x\0A\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"HW BUG? Unknown RF HW state 0x%x\0A\00", align 1
@.str.4 = private unnamed_addr constant [42 x i8] c"(i2400m %p rfss %p [hw %u sw %u]) = void\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @i2400m_report_tlv_rf_switches_status(%struct.i2400m* %0, %struct.i2400m_tlv_rf_switches_status* %1) #0 {
  %3 = alloca %struct.i2400m*, align 8
  %4 = alloca %struct.i2400m_tlv_rf_switches_status*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.i2400m* %0, %struct.i2400m** %3, align 8
  store %struct.i2400m_tlv_rf_switches_status* %1, %struct.i2400m_tlv_rf_switches_status** %4, align 8
  %9 = load %struct.i2400m*, %struct.i2400m** %3, align 8
  %10 = call %struct.device* @i2400m_dev(%struct.i2400m* %9)
  store %struct.device* %10, %struct.device** %5, align 8
  %11 = load %struct.i2400m_tlv_rf_switches_status*, %struct.i2400m_tlv_rf_switches_status** %4, align 8
  %12 = getelementptr inbounds %struct.i2400m_tlv_rf_switches_status, %struct.i2400m_tlv_rf_switches_status* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @le32_to_cpu(i32 %13)
  store i32 %14, i32* %7, align 4
  %15 = load %struct.i2400m_tlv_rf_switches_status*, %struct.i2400m_tlv_rf_switches_status** %4, align 8
  %16 = getelementptr inbounds %struct.i2400m_tlv_rf_switches_status, %struct.i2400m_tlv_rf_switches_status* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @le32_to_cpu(i32 %17)
  store i32 %18, i32* %6, align 4
  %19 = load %struct.device*, %struct.device** %5, align 8
  %20 = load %struct.i2400m*, %struct.i2400m** %3, align 8
  %21 = load %struct.i2400m_tlv_rf_switches_status*, %struct.i2400m_tlv_rf_switches_status** %4, align 8
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* %7, align 4
  %24 = call i32 @d_fnstart(i32 3, %struct.device* %19, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), %struct.i2400m* %20, %struct.i2400m_tlv_rf_switches_status* %21, i32 %22, i32 %23)
  %25 = load %struct.i2400m*, %struct.i2400m** %3, align 8
  %26 = getelementptr inbounds %struct.i2400m, %struct.i2400m* %25, i32 0, i32 0
  %27 = call i32 @wimax_state_get(i32* %26)
  store i32 %27, i32* %8, align 4
  %28 = load i32, i32* %8, align 4
  %29 = load i32, i32* @WIMAX_ST_RADIO_OFF, align 4
  %30 = icmp ult i32 %28, %29
  br i1 %30, label %31, label %35

31:                                               ; preds = %2
  %32 = load %struct.device*, %struct.device** %5, align 8
  %33 = load i32, i32* %8, align 4
  %34 = call i32 @d_printf(i32 3, %struct.device* %32, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %33)
  br label %68

35:                                               ; preds = %2
  %36 = load i32, i32* %7, align 4
  switch i32 %36, label %47 [
    i32 128, label %37
    i32 129, label %42
  ]

37:                                               ; preds = %35
  %38 = load %struct.i2400m*, %struct.i2400m** %3, align 8
  %39 = getelementptr inbounds %struct.i2400m, %struct.i2400m* %38, i32 0, i32 0
  %40 = load i32, i32* @WIMAX_RF_ON, align 4
  %41 = call i32 @wimax_report_rfkill_sw(i32* %39, i32 %40)
  br label %51

42:                                               ; preds = %35
  %43 = load %struct.i2400m*, %struct.i2400m** %3, align 8
  %44 = getelementptr inbounds %struct.i2400m, %struct.i2400m* %43, i32 0, i32 0
  %45 = load i32, i32* @WIMAX_RF_OFF, align 4
  %46 = call i32 @wimax_report_rfkill_sw(i32* %44, i32 %45)
  br label %51

47:                                               ; preds = %35
  %48 = load %struct.device*, %struct.device** %5, align 8
  %49 = load i32, i32* %7, align 4
  %50 = call i32 @dev_err(%struct.device* %48, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %49)
  br label %51

51:                                               ; preds = %47, %42, %37
  %52 = load i32, i32* %6, align 4
  switch i32 %52, label %63 [
    i32 128, label %53
    i32 129, label %58
  ]

53:                                               ; preds = %51
  %54 = load %struct.i2400m*, %struct.i2400m** %3, align 8
  %55 = getelementptr inbounds %struct.i2400m, %struct.i2400m* %54, i32 0, i32 0
  %56 = load i32, i32* @WIMAX_RF_ON, align 4
  %57 = call i32 @wimax_report_rfkill_hw(i32* %55, i32 %56)
  br label %67

58:                                               ; preds = %51
  %59 = load %struct.i2400m*, %struct.i2400m** %3, align 8
  %60 = getelementptr inbounds %struct.i2400m, %struct.i2400m* %59, i32 0, i32 0
  %61 = load i32, i32* @WIMAX_RF_OFF, align 4
  %62 = call i32 @wimax_report_rfkill_hw(i32* %60, i32 %61)
  br label %67

63:                                               ; preds = %51
  %64 = load %struct.device*, %struct.device** %5, align 8
  %65 = load i32, i32* %6, align 4
  %66 = call i32 @dev_err(%struct.device* %64, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i32 %65)
  br label %67

67:                                               ; preds = %63, %58, %53
  br label %68

68:                                               ; preds = %67, %31
  %69 = load %struct.device*, %struct.device** %5, align 8
  %70 = load %struct.i2400m*, %struct.i2400m** %3, align 8
  %71 = load %struct.i2400m_tlv_rf_switches_status*, %struct.i2400m_tlv_rf_switches_status** %4, align 8
  %72 = load i32, i32* %6, align 4
  %73 = load i32, i32* %7, align 4
  %74 = call i32 @d_fnend(i32 3, %struct.device* %69, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.4, i64 0, i64 0), %struct.i2400m* %70, %struct.i2400m_tlv_rf_switches_status* %71, i32 %72, i32 %73)
  ret void
}

declare dso_local %struct.device* @i2400m_dev(%struct.i2400m*) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @d_fnstart(i32, %struct.device*, i8*, %struct.i2400m*, %struct.i2400m_tlv_rf_switches_status*, i32, i32) #1

declare dso_local i32 @wimax_state_get(i32*) #1

declare dso_local i32 @d_printf(i32, %struct.device*, i8*, i32) #1

declare dso_local i32 @wimax_report_rfkill_sw(i32*, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i32 @wimax_report_rfkill_hw(i32*, i32) #1

declare dso_local i32 @d_fnend(i32, %struct.device*, i8*, %struct.i2400m*, %struct.i2400m_tlv_rf_switches_status*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
