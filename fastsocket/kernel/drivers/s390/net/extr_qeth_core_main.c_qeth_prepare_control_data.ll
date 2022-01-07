; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_qeth_core_main.c_qeth_prepare_control_data.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_qeth_core_main.c_qeth_prepare_control_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qeth_card = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.qeth_cmd_buffer = type { i32, i32 }

@qeth_release_buffer = common dso_local global i32 0, align 4
@QETH_SEQ_NO_LENGTH = common dso_local global i32 0, align 4
@CTRL = common dso_local global i32 0, align 4
@QETH_DBF_CTRL_LEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @qeth_prepare_control_data(%struct.qeth_card* %0, i32 %1, %struct.qeth_cmd_buffer* %2) #0 {
  %4 = alloca %struct.qeth_card*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.qeth_cmd_buffer*, align 8
  store %struct.qeth_card* %0, %struct.qeth_card** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.qeth_cmd_buffer* %2, %struct.qeth_cmd_buffer** %6, align 8
  %7 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %8 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %7, i32 0, i32 1
  %9 = load %struct.qeth_cmd_buffer*, %struct.qeth_cmd_buffer** %6, align 8
  %10 = getelementptr inbounds %struct.qeth_cmd_buffer, %struct.qeth_cmd_buffer* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* %5, align 4
  %13 = call i32 @qeth_setup_ccw(i32* %8, i32 %11, i32 %12)
  %14 = load i32, i32* @qeth_release_buffer, align 4
  %15 = load %struct.qeth_cmd_buffer*, %struct.qeth_cmd_buffer** %6, align 8
  %16 = getelementptr inbounds %struct.qeth_cmd_buffer, %struct.qeth_cmd_buffer* %15, i32 0, i32 1
  store i32 %14, i32* %16, align 4
  %17 = load %struct.qeth_cmd_buffer*, %struct.qeth_cmd_buffer** %6, align 8
  %18 = getelementptr inbounds %struct.qeth_cmd_buffer, %struct.qeth_cmd_buffer* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @QETH_TRANSPORT_HEADER_SEQ_NO(i32 %19)
  %21 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %22 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 2
  %24 = load i32, i32* @QETH_SEQ_NO_LENGTH, align 4
  %25 = call i32 @memcpy(i32 %20, i32* %23, i32 %24)
  %26 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %27 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %28, align 4
  %31 = load %struct.qeth_cmd_buffer*, %struct.qeth_cmd_buffer** %6, align 8
  %32 = getelementptr inbounds %struct.qeth_cmd_buffer, %struct.qeth_cmd_buffer* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @QETH_PDU_HEADER_SEQ_NO(i32 %33)
  %35 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %36 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 1
  %38 = load i32, i32* @QETH_SEQ_NO_LENGTH, align 4
  %39 = call i32 @memcpy(i32 %34, i32* %37, i32 %38)
  %40 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %41 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %42, align 4
  %45 = load %struct.qeth_cmd_buffer*, %struct.qeth_cmd_buffer** %6, align 8
  %46 = getelementptr inbounds %struct.qeth_cmd_buffer, %struct.qeth_cmd_buffer* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @QETH_PDU_HEADER_ACK_SEQ_NO(i32 %47)
  %49 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %50 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i32, i32* @QETH_SEQ_NO_LENGTH, align 4
  %53 = call i32 @memcpy(i32 %48, i32* %51, i32 %52)
  %54 = load i32, i32* @CTRL, align 4
  %55 = load %struct.qeth_cmd_buffer*, %struct.qeth_cmd_buffer** %6, align 8
  %56 = getelementptr inbounds %struct.qeth_cmd_buffer, %struct.qeth_cmd_buffer* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @QETH_DBF_CTRL_LEN, align 4
  %59 = call i32 @QETH_DBF_HEX(i32 %54, i32 2, i32 %57, i32 %58)
  ret void
}

declare dso_local i32 @qeth_setup_ccw(i32*, i32, i32) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @QETH_TRANSPORT_HEADER_SEQ_NO(i32) #1

declare dso_local i32 @QETH_PDU_HEADER_SEQ_NO(i32) #1

declare dso_local i32 @QETH_PDU_HEADER_ACK_SEQ_NO(i32) #1

declare dso_local i32 @QETH_DBF_HEX(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
