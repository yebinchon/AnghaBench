; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_qeth_core_main.c_qeth_send_ipa_snmp_cmd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_qeth_core_main.c_qeth_send_ipa_snmp_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qeth_card = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.qeth_cmd_buffer = type { i32 }
%struct.qeth_reply = type opaque
%struct.qeth_reply.0 = type opaque

@TRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"sendsnmp\00", align 1
@IPA_PDU_HEADER = common dso_local global i64* null, align 8
@IPA_PDU_HEADER_SIZE = common dso_local global i32 0, align 4
@QETH_MPC_TOKEN_LENGTH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qeth_card*, %struct.qeth_cmd_buffer*, i32, i32 (%struct.qeth_card*, %struct.qeth_reply*, i64)*, i8*)* @qeth_send_ipa_snmp_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qeth_send_ipa_snmp_cmd(%struct.qeth_card* %0, %struct.qeth_cmd_buffer* %1, i32 %2, i32 (%struct.qeth_card*, %struct.qeth_reply*, i64)* %3, i8* %4) #0 {
  %6 = alloca %struct.qeth_card*, align 8
  %7 = alloca %struct.qeth_cmd_buffer*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32 (%struct.qeth_card*, %struct.qeth_reply*, i64)*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.qeth_card* %0, %struct.qeth_card** %6, align 8
  store %struct.qeth_cmd_buffer* %1, %struct.qeth_cmd_buffer** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 (%struct.qeth_card*, %struct.qeth_reply*, i64)* %3, i32 (%struct.qeth_card*, %struct.qeth_reply*, i64)** %9, align 8
  store i8* %4, i8** %10, align 8
  %13 = load i32, i32* @TRACE, align 4
  %14 = call i32 @QETH_DBF_TEXT(i32 %13, i32 4, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %15 = load %struct.qeth_cmd_buffer*, %struct.qeth_cmd_buffer** %7, align 8
  %16 = getelementptr inbounds %struct.qeth_cmd_buffer, %struct.qeth_cmd_buffer* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i64*, i64** @IPA_PDU_HEADER, align 8
  %19 = load i32, i32* @IPA_PDU_HEADER_SIZE, align 4
  %20 = call i32 @memcpy(i32 %17, i64* %18, i32 %19)
  %21 = load %struct.qeth_cmd_buffer*, %struct.qeth_cmd_buffer** %7, align 8
  %22 = getelementptr inbounds %struct.qeth_cmd_buffer, %struct.qeth_cmd_buffer* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @QETH_IPA_CMD_DEST_ADDR(i32 %23)
  %25 = load %struct.qeth_card*, %struct.qeth_card** %6, align 8
  %26 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* @QETH_MPC_TOKEN_LENGTH, align 4
  %29 = call i32 @memcpy(i32 %24, i64* %27, i32 %28)
  %30 = load i32, i32* @IPA_PDU_HEADER_SIZE, align 4
  %31 = sext i32 %30 to i64
  %32 = load i32, i32* %8, align 4
  %33 = sext i32 %32 to i64
  %34 = add nsw i64 %31, %33
  store i64 %34, i64* %11, align 8
  %35 = load i32, i32* %8, align 4
  %36 = sext i32 %35 to i64
  store i64 %36, i64* %12, align 8
  %37 = load %struct.qeth_cmd_buffer*, %struct.qeth_cmd_buffer** %7, align 8
  %38 = getelementptr inbounds %struct.qeth_cmd_buffer, %struct.qeth_cmd_buffer* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @QETH_IPA_PDU_LEN_TOTAL(i32 %39)
  %41 = call i32 @memcpy(i32 %40, i64* %11, i32 2)
  %42 = load %struct.qeth_cmd_buffer*, %struct.qeth_cmd_buffer** %7, align 8
  %43 = getelementptr inbounds %struct.qeth_cmd_buffer, %struct.qeth_cmd_buffer* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @QETH_IPA_PDU_LEN_PDU1(i32 %44)
  %46 = call i32 @memcpy(i32 %45, i64* %12, i32 2)
  %47 = load %struct.qeth_cmd_buffer*, %struct.qeth_cmd_buffer** %7, align 8
  %48 = getelementptr inbounds %struct.qeth_cmd_buffer, %struct.qeth_cmd_buffer* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @QETH_IPA_PDU_LEN_PDU2(i32 %49)
  %51 = call i32 @memcpy(i32 %50, i64* %12, i32 2)
  %52 = load %struct.qeth_cmd_buffer*, %struct.qeth_cmd_buffer** %7, align 8
  %53 = getelementptr inbounds %struct.qeth_cmd_buffer, %struct.qeth_cmd_buffer* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @QETH_IPA_PDU_LEN_PDU3(i32 %54)
  %56 = call i32 @memcpy(i32 %55, i64* %12, i32 2)
  %57 = load %struct.qeth_card*, %struct.qeth_card** %6, align 8
  %58 = load i32, i32* @IPA_PDU_HEADER_SIZE, align 4
  %59 = load i32, i32* %8, align 4
  %60 = add nsw i32 %58, %59
  %61 = load %struct.qeth_cmd_buffer*, %struct.qeth_cmd_buffer** %7, align 8
  %62 = load i32 (%struct.qeth_card*, %struct.qeth_reply*, i64)*, i32 (%struct.qeth_card*, %struct.qeth_reply*, i64)** %9, align 8
  %63 = bitcast i32 (%struct.qeth_card*, %struct.qeth_reply*, i64)* %62 to i32 (%struct.qeth_card*, %struct.qeth_reply.0*, i64)*
  %64 = load i8*, i8** %10, align 8
  %65 = call i32 @qeth_send_control_data(%struct.qeth_card* %57, i32 %60, %struct.qeth_cmd_buffer* %61, i32 (%struct.qeth_card*, %struct.qeth_reply.0*, i64)* %63, i8* %64)
  ret i32 %65
}

declare dso_local i32 @QETH_DBF_TEXT(i32, i32, i8*) #1

declare dso_local i32 @memcpy(i32, i64*, i32) #1

declare dso_local i32 @QETH_IPA_CMD_DEST_ADDR(i32) #1

declare dso_local i32 @QETH_IPA_PDU_LEN_TOTAL(i32) #1

declare dso_local i32 @QETH_IPA_PDU_LEN_PDU1(i32) #1

declare dso_local i32 @QETH_IPA_PDU_LEN_PDU2(i32) #1

declare dso_local i32 @QETH_IPA_PDU_LEN_PDU3(i32) #1

declare dso_local i32 @qeth_send_control_data(%struct.qeth_card*, i32, %struct.qeth_cmd_buffer*, i32 (%struct.qeth_card*, %struct.qeth_reply.0*, i64)*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
