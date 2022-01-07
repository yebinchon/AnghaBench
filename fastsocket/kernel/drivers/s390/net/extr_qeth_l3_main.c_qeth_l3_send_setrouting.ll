; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_qeth_l3_main.c_qeth_l3_send_setrouting.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_qeth_l3_main.c_qeth_l3_send_setrouting.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qeth_card = type { i32 }
%struct.qeth_ipa_cmd = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.qeth_cmd_buffer = type { i64 }

@TRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"setroutg\00", align 1
@IPA_CMD_SETRTG = common dso_local global i32 0, align 4
@IPA_PDU_HEADER_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qeth_card*, i32, i32)* @qeth_l3_send_setrouting to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qeth_l3_send_setrouting(%struct.qeth_card* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.qeth_card*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.qeth_ipa_cmd*, align 8
  %9 = alloca %struct.qeth_cmd_buffer*, align 8
  store %struct.qeth_card* %0, %struct.qeth_card** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load i32, i32* @TRACE, align 4
  %11 = call i32 @QETH_DBF_TEXT(i32 %10, i32 4, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %12 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %13 = load i32, i32* @IPA_CMD_SETRTG, align 4
  %14 = load i32, i32* %6, align 4
  %15 = call %struct.qeth_cmd_buffer* @qeth_get_ipacmd_buffer(%struct.qeth_card* %12, i32 %13, i32 %14)
  store %struct.qeth_cmd_buffer* %15, %struct.qeth_cmd_buffer** %9, align 8
  %16 = load %struct.qeth_cmd_buffer*, %struct.qeth_cmd_buffer** %9, align 8
  %17 = getelementptr inbounds %struct.qeth_cmd_buffer, %struct.qeth_cmd_buffer* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @IPA_PDU_HEADER_SIZE, align 8
  %20 = add nsw i64 %18, %19
  %21 = inttoptr i64 %20 to %struct.qeth_ipa_cmd*
  store %struct.qeth_ipa_cmd* %21, %struct.qeth_ipa_cmd** %8, align 8
  %22 = load i32, i32* %5, align 4
  %23 = load %struct.qeth_ipa_cmd*, %struct.qeth_ipa_cmd** %8, align 8
  %24 = getelementptr inbounds %struct.qeth_ipa_cmd, %struct.qeth_ipa_cmd* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  store i32 %22, i32* %26, align 4
  %27 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %28 = load %struct.qeth_cmd_buffer*, %struct.qeth_cmd_buffer** %9, align 8
  %29 = call i32 @qeth_send_ipa_cmd(%struct.qeth_card* %27, %struct.qeth_cmd_buffer* %28, i32* null, i32* null)
  store i32 %29, i32* %7, align 4
  %30 = load i32, i32* %7, align 4
  ret i32 %30
}

declare dso_local i32 @QETH_DBF_TEXT(i32, i32, i8*) #1

declare dso_local %struct.qeth_cmd_buffer* @qeth_get_ipacmd_buffer(%struct.qeth_card*, i32, i32) #1

declare dso_local i32 @qeth_send_ipa_cmd(%struct.qeth_card*, %struct.qeth_cmd_buffer*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
