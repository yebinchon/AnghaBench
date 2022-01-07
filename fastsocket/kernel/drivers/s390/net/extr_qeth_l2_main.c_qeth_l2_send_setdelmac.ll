; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_qeth_l2_main.c_qeth_l2_send_setdelmac.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_qeth_l2_main.c_qeth_l2_send_setdelmac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qeth_card = type { i32 }
%struct.qeth_reply = type opaque
%struct.qeth_ipa_cmd = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }
%struct.qeth_cmd_buffer = type { i64 }
%struct.qeth_reply.0 = type opaque

@TRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"L2sdmac\00", align 1
@QETH_PROT_IPV4 = common dso_local global i32 0, align 4
@IPA_PDU_HEADER_SIZE = common dso_local global i64 0, align 8
@OSA_ADDR_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qeth_card*, i32*, i32, i32 (%struct.qeth_card*, %struct.qeth_reply*, i64)*)* @qeth_l2_send_setdelmac to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qeth_l2_send_setdelmac(%struct.qeth_card* %0, i32* %1, i32 %2, i32 (%struct.qeth_card*, %struct.qeth_reply*, i64)* %3) #0 {
  %5 = alloca %struct.qeth_card*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32 (%struct.qeth_card*, %struct.qeth_reply*, i64)*, align 8
  %9 = alloca %struct.qeth_ipa_cmd*, align 8
  %10 = alloca %struct.qeth_cmd_buffer*, align 8
  store %struct.qeth_card* %0, %struct.qeth_card** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 (%struct.qeth_card*, %struct.qeth_reply*, i64)* %3, i32 (%struct.qeth_card*, %struct.qeth_reply*, i64)** %8, align 8
  %11 = load i32, i32* @TRACE, align 4
  %12 = call i32 @QETH_DBF_TEXT(i32 %11, i32 2, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %13 = load %struct.qeth_card*, %struct.qeth_card** %5, align 8
  %14 = load i32, i32* %7, align 4
  %15 = load i32, i32* @QETH_PROT_IPV4, align 4
  %16 = call %struct.qeth_cmd_buffer* @qeth_get_ipacmd_buffer(%struct.qeth_card* %13, i32 %14, i32 %15)
  store %struct.qeth_cmd_buffer* %16, %struct.qeth_cmd_buffer** %10, align 8
  %17 = load %struct.qeth_cmd_buffer*, %struct.qeth_cmd_buffer** %10, align 8
  %18 = getelementptr inbounds %struct.qeth_cmd_buffer, %struct.qeth_cmd_buffer* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @IPA_PDU_HEADER_SIZE, align 8
  %21 = add nsw i64 %19, %20
  %22 = inttoptr i64 %21 to %struct.qeth_ipa_cmd*
  store %struct.qeth_ipa_cmd* %22, %struct.qeth_ipa_cmd** %9, align 8
  %23 = load i32, i32* @OSA_ADDR_LEN, align 4
  %24 = load %struct.qeth_ipa_cmd*, %struct.qeth_ipa_cmd** %9, align 8
  %25 = getelementptr inbounds %struct.qeth_ipa_cmd, %struct.qeth_ipa_cmd* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 1
  store i32 %23, i32* %27, align 4
  %28 = load %struct.qeth_ipa_cmd*, %struct.qeth_ipa_cmd** %9, align 8
  %29 = getelementptr inbounds %struct.qeth_ipa_cmd, %struct.qeth_ipa_cmd* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i32*, i32** %6, align 8
  %33 = load i32, i32* @OSA_ADDR_LEN, align 4
  %34 = call i32 @memcpy(i32* %31, i32* %32, i32 %33)
  %35 = load %struct.qeth_card*, %struct.qeth_card** %5, align 8
  %36 = load %struct.qeth_cmd_buffer*, %struct.qeth_cmd_buffer** %10, align 8
  %37 = load i32 (%struct.qeth_card*, %struct.qeth_reply*, i64)*, i32 (%struct.qeth_card*, %struct.qeth_reply*, i64)** %8, align 8
  %38 = bitcast i32 (%struct.qeth_card*, %struct.qeth_reply*, i64)* %37 to i32 (%struct.qeth_card*, %struct.qeth_reply.0*, i64)*
  %39 = call i32 @qeth_send_ipa_cmd(%struct.qeth_card* %35, %struct.qeth_cmd_buffer* %36, i32 (%struct.qeth_card*, %struct.qeth_reply.0*, i64)* %38, i32* null)
  ret i32 %39
}

declare dso_local i32 @QETH_DBF_TEXT(i32, i32, i8*) #1

declare dso_local %struct.qeth_cmd_buffer* @qeth_get_ipacmd_buffer(%struct.qeth_card*, i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @qeth_send_ipa_cmd(%struct.qeth_card*, %struct.qeth_cmd_buffer*, i32 (%struct.qeth_card*, %struct.qeth_reply.0*, i64)*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
