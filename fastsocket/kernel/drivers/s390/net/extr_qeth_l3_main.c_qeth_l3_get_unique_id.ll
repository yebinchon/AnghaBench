; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_qeth_l3_main.c_qeth_l3_get_unique_id.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_qeth_l3_main.c_qeth_l3_get_unique_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qeth_card = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.qeth_cmd_buffer = type { i64 }
%struct.qeth_ipa_cmd = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32* }

@SETUP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"guniqeid\00", align 1
@IPA_IPV6 = common dso_local global i32 0, align 4
@UNIQUE_ID_IF_CREATE_ADDR_FAILED = common dso_local global i32 0, align 4
@UNIQUE_ID_NOT_BY_CARD = common dso_local global i32 0, align 4
@IPA_CMD_CREATE_ADDR = common dso_local global i32 0, align 4
@QETH_PROT_IPV6 = common dso_local global i32 0, align 4
@IPA_PDU_HEADER_SIZE = common dso_local global i64 0, align 8
@qeth_l3_get_unique_id_cb = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qeth_card*)* @qeth_l3_get_unique_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qeth_l3_get_unique_id(%struct.qeth_card* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.qeth_card*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.qeth_cmd_buffer*, align 8
  %6 = alloca %struct.qeth_ipa_cmd*, align 8
  store %struct.qeth_card* %0, %struct.qeth_card** %3, align 8
  store i32 0, i32* %4, align 4
  %7 = load i32, i32* @SETUP, align 4
  %8 = call i32 @QETH_DBF_TEXT(i32 %7, i32 2, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %9 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %10 = load i32, i32* @IPA_IPV6, align 4
  %11 = call i32 @qeth_is_supported(%struct.qeth_card* %9, i32 %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %20, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* @UNIQUE_ID_IF_CREATE_ADDR_FAILED, align 4
  %15 = load i32, i32* @UNIQUE_ID_NOT_BY_CARD, align 4
  %16 = or i32 %14, %15
  %17 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %18 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  store i32 %16, i32* %19, align 4
  store i32 0, i32* %2, align 4
  br label %46

20:                                               ; preds = %1
  %21 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %22 = load i32, i32* @IPA_CMD_CREATE_ADDR, align 4
  %23 = load i32, i32* @QETH_PROT_IPV6, align 4
  %24 = call %struct.qeth_cmd_buffer* @qeth_get_ipacmd_buffer(%struct.qeth_card* %21, i32 %22, i32 %23)
  store %struct.qeth_cmd_buffer* %24, %struct.qeth_cmd_buffer** %5, align 8
  %25 = load %struct.qeth_cmd_buffer*, %struct.qeth_cmd_buffer** %5, align 8
  %26 = getelementptr inbounds %struct.qeth_cmd_buffer, %struct.qeth_cmd_buffer* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @IPA_PDU_HEADER_SIZE, align 8
  %29 = add nsw i64 %27, %28
  %30 = inttoptr i64 %29 to %struct.qeth_ipa_cmd*
  store %struct.qeth_ipa_cmd* %30, %struct.qeth_ipa_cmd** %6, align 8
  %31 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %32 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.qeth_ipa_cmd*, %struct.qeth_ipa_cmd** %6, align 8
  %36 = getelementptr inbounds %struct.qeth_ipa_cmd, %struct.qeth_ipa_cmd* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 6
  store i32 %34, i32* %40, align 4
  %41 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %42 = load %struct.qeth_cmd_buffer*, %struct.qeth_cmd_buffer** %5, align 8
  %43 = load i32, i32* @qeth_l3_get_unique_id_cb, align 4
  %44 = call i32 @qeth_send_ipa_cmd(%struct.qeth_card* %41, %struct.qeth_cmd_buffer* %42, i32 %43, i32* null)
  store i32 %44, i32* %4, align 4
  %45 = load i32, i32* %4, align 4
  store i32 %45, i32* %2, align 4
  br label %46

46:                                               ; preds = %20, %13
  %47 = load i32, i32* %2, align 4
  ret i32 %47
}

declare dso_local i32 @QETH_DBF_TEXT(i32, i32, i8*) #1

declare dso_local i32 @qeth_is_supported(%struct.qeth_card*, i32) #1

declare dso_local %struct.qeth_cmd_buffer* @qeth_get_ipacmd_buffer(%struct.qeth_card*, i32, i32) #1

declare dso_local i32 @qeth_send_ipa_cmd(%struct.qeth_card*, %struct.qeth_cmd_buffer*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
