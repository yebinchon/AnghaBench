; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_qeth_core_main.c_qeth_ulp_setup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_qeth_core_main.c_qeth_ulp_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qeth_card = type { %struct.TYPE_4__, %struct.TYPE_3__, i32 }
%struct.TYPE_4__ = type { i32, i64 }
%struct.TYPE_3__ = type { i64, i64, i64 }
%struct.qeth_cmd_buffer = type { i32 }
%struct.ccw_dev_id = type { i64 }

@SETUP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"ulpsetup\00", align 1
@ULP_SETUP = common dso_local global i64* null, align 8
@ULP_SETUP_SIZE = common dso_local global i32 0, align 4
@QETH_MPC_TOKEN_LENGTH = common dso_local global i32 0, align 4
@qeth_ulp_setup_cb = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qeth_card*)* @qeth_ulp_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qeth_ulp_setup(%struct.qeth_card* %0) #0 {
  %2 = alloca %struct.qeth_card*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca %struct.qeth_cmd_buffer*, align 8
  %6 = alloca %struct.ccw_dev_id, align 8
  store %struct.qeth_card* %0, %struct.qeth_card** %2, align 8
  %7 = load i32, i32* @SETUP, align 4
  %8 = call i32 @QETH_DBF_TEXT(i32 %7, i32 2, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %9 = load %struct.qeth_card*, %struct.qeth_card** %2, align 8
  %10 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %9, i32 0, i32 2
  %11 = call %struct.qeth_cmd_buffer* @qeth_wait_for_buffer(i32* %10)
  store %struct.qeth_cmd_buffer* %11, %struct.qeth_cmd_buffer** %5, align 8
  %12 = load %struct.qeth_cmd_buffer*, %struct.qeth_cmd_buffer** %5, align 8
  %13 = getelementptr inbounds %struct.qeth_cmd_buffer, %struct.qeth_cmd_buffer* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i64*, i64** @ULP_SETUP, align 8
  %16 = load i32, i32* @ULP_SETUP_SIZE, align 4
  %17 = call i32 @memcpy(i32 %14, i64* %15, i32 %16)
  %18 = load %struct.qeth_cmd_buffer*, %struct.qeth_cmd_buffer** %5, align 8
  %19 = getelementptr inbounds %struct.qeth_cmd_buffer, %struct.qeth_cmd_buffer* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @QETH_ULP_SETUP_DEST_ADDR(i32 %20)
  %22 = load %struct.qeth_card*, %struct.qeth_card** %2, align 8
  %23 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 2
  %25 = load i32, i32* @QETH_MPC_TOKEN_LENGTH, align 4
  %26 = call i32 @memcpy(i32 %21, i64* %24, i32 %25)
  %27 = load %struct.qeth_cmd_buffer*, %struct.qeth_cmd_buffer** %5, align 8
  %28 = getelementptr inbounds %struct.qeth_cmd_buffer, %struct.qeth_cmd_buffer* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @QETH_ULP_SETUP_CONNECTION_TOKEN(i32 %29)
  %31 = load %struct.qeth_card*, %struct.qeth_card** %2, align 8
  %32 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 1
  %34 = load i32, i32* @QETH_MPC_TOKEN_LENGTH, align 4
  %35 = call i32 @memcpy(i32 %30, i64* %33, i32 %34)
  %36 = load %struct.qeth_cmd_buffer*, %struct.qeth_cmd_buffer** %5, align 8
  %37 = getelementptr inbounds %struct.qeth_cmd_buffer, %struct.qeth_cmd_buffer* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @QETH_ULP_SETUP_FILTER_TOKEN(i32 %38)
  %40 = load %struct.qeth_card*, %struct.qeth_card** %2, align 8
  %41 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load i32, i32* @QETH_MPC_TOKEN_LENGTH, align 4
  %44 = call i32 @memcpy(i32 %39, i64* %42, i32 %43)
  %45 = load %struct.qeth_card*, %struct.qeth_card** %2, align 8
  %46 = call i32 @CARD_DDEV(%struct.qeth_card* %45)
  %47 = call i32 @ccw_device_get_id(i32 %46, %struct.ccw_dev_id* %6)
  %48 = load %struct.qeth_cmd_buffer*, %struct.qeth_cmd_buffer** %5, align 8
  %49 = getelementptr inbounds %struct.qeth_cmd_buffer, %struct.qeth_cmd_buffer* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @QETH_ULP_SETUP_CUA(i32 %50)
  %52 = getelementptr inbounds %struct.ccw_dev_id, %struct.ccw_dev_id* %6, i32 0, i32 0
  %53 = call i32 @memcpy(i32 %51, i64* %52, i32 2)
  %54 = load %struct.qeth_card*, %struct.qeth_card** %2, align 8
  %55 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = shl i32 %57, 8
  %59 = sext i32 %58 to i64
  %60 = load %struct.qeth_card*, %struct.qeth_card** %2, align 8
  %61 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = add nsw i64 %59, %63
  store i64 %64, i64* %4, align 8
  %65 = load %struct.qeth_cmd_buffer*, %struct.qeth_cmd_buffer** %5, align 8
  %66 = getelementptr inbounds %struct.qeth_cmd_buffer, %struct.qeth_cmd_buffer* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @QETH_ULP_SETUP_REAL_DEVADDR(i32 %67)
  %69 = call i32 @memcpy(i32 %68, i64* %4, i32 2)
  %70 = load %struct.qeth_card*, %struct.qeth_card** %2, align 8
  %71 = load i32, i32* @ULP_SETUP_SIZE, align 4
  %72 = load %struct.qeth_cmd_buffer*, %struct.qeth_cmd_buffer** %5, align 8
  %73 = load i32, i32* @qeth_ulp_setup_cb, align 4
  %74 = call i32 @qeth_send_control_data(%struct.qeth_card* %70, i32 %71, %struct.qeth_cmd_buffer* %72, i32 %73, i32* null)
  store i32 %74, i32* %3, align 4
  %75 = load i32, i32* %3, align 4
  ret i32 %75
}

declare dso_local i32 @QETH_DBF_TEXT(i32, i32, i8*) #1

declare dso_local %struct.qeth_cmd_buffer* @qeth_wait_for_buffer(i32*) #1

declare dso_local i32 @memcpy(i32, i64*, i32) #1

declare dso_local i32 @QETH_ULP_SETUP_DEST_ADDR(i32) #1

declare dso_local i32 @QETH_ULP_SETUP_CONNECTION_TOKEN(i32) #1

declare dso_local i32 @QETH_ULP_SETUP_FILTER_TOKEN(i32) #1

declare dso_local i32 @ccw_device_get_id(i32, %struct.ccw_dev_id*) #1

declare dso_local i32 @CARD_DDEV(%struct.qeth_card*) #1

declare dso_local i32 @QETH_ULP_SETUP_CUA(i32) #1

declare dso_local i32 @QETH_ULP_SETUP_REAL_DEVADDR(i32) #1

declare dso_local i32 @qeth_send_control_data(%struct.qeth_card*, i32, %struct.qeth_cmd_buffer*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
