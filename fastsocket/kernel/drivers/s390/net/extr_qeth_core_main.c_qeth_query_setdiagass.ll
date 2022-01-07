; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_qeth_core_main.c_qeth_query_setdiagass.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_qeth_core_main.c_qeth_query_setdiagass.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qeth_card = type { i32 }
%struct.qeth_cmd_buffer = type { i64 }
%struct.qeth_ipa_cmd = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }

@SETUP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"qdiagass\00", align 1
@IPA_CMD_SET_DIAG_ASS = common dso_local global i32 0, align 4
@IPA_PDU_HEADER_SIZE = common dso_local global i64 0, align 8
@QETH_DIAGS_CMD_QUERY = common dso_local global i32 0, align 4
@qeth_query_setdiagass_cb = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qeth_card*)* @qeth_query_setdiagass to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qeth_query_setdiagass(%struct.qeth_card* %0) #0 {
  %2 = alloca %struct.qeth_card*, align 8
  %3 = alloca %struct.qeth_cmd_buffer*, align 8
  %4 = alloca %struct.qeth_ipa_cmd*, align 8
  store %struct.qeth_card* %0, %struct.qeth_card** %2, align 8
  %5 = load i32, i32* @SETUP, align 4
  %6 = call i32 @QETH_DBF_TEXT(i32 %5, i32 2, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %7 = load %struct.qeth_card*, %struct.qeth_card** %2, align 8
  %8 = load i32, i32* @IPA_CMD_SET_DIAG_ASS, align 4
  %9 = call %struct.qeth_cmd_buffer* @qeth_get_ipacmd_buffer(%struct.qeth_card* %7, i32 %8, i32 0)
  store %struct.qeth_cmd_buffer* %9, %struct.qeth_cmd_buffer** %3, align 8
  %10 = load %struct.qeth_cmd_buffer*, %struct.qeth_cmd_buffer** %3, align 8
  %11 = getelementptr inbounds %struct.qeth_cmd_buffer, %struct.qeth_cmd_buffer* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @IPA_PDU_HEADER_SIZE, align 8
  %14 = add nsw i64 %12, %13
  %15 = inttoptr i64 %14 to %struct.qeth_ipa_cmd*
  store %struct.qeth_ipa_cmd* %15, %struct.qeth_ipa_cmd** %4, align 8
  %16 = load %struct.qeth_ipa_cmd*, %struct.qeth_ipa_cmd** %4, align 8
  %17 = getelementptr inbounds %struct.qeth_ipa_cmd, %struct.qeth_ipa_cmd* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  store i32 16, i32* %19, align 4
  %20 = load i32, i32* @QETH_DIAGS_CMD_QUERY, align 4
  %21 = load %struct.qeth_ipa_cmd*, %struct.qeth_ipa_cmd** %4, align 8
  %22 = getelementptr inbounds %struct.qeth_ipa_cmd, %struct.qeth_ipa_cmd* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 1
  store i32 %20, i32* %24, align 4
  %25 = load %struct.qeth_card*, %struct.qeth_card** %2, align 8
  %26 = load %struct.qeth_cmd_buffer*, %struct.qeth_cmd_buffer** %3, align 8
  %27 = load i32, i32* @qeth_query_setdiagass_cb, align 4
  %28 = call i32 @qeth_send_ipa_cmd(%struct.qeth_card* %25, %struct.qeth_cmd_buffer* %26, i32 %27, i32* null)
  ret i32 %28
}

declare dso_local i32 @QETH_DBF_TEXT(i32, i32, i8*) #1

declare dso_local %struct.qeth_cmd_buffer* @qeth_get_ipacmd_buffer(%struct.qeth_card*, i32, i32) #1

declare dso_local i32 @qeth_send_ipa_cmd(%struct.qeth_card*, %struct.qeth_cmd_buffer*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
