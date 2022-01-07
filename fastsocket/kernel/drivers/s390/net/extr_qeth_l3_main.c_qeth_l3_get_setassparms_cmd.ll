; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_qeth_l3_main.c_qeth_l3_get_setassparms_cmd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_qeth_l3_main.c_qeth_l3_get_setassparms_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qeth_cmd_buffer = type { i64 }
%struct.qeth_card = type { i32 }
%struct.qeth_ipa_cmd = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i64, i64, i8*, i8* }

@TRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"getasscm\00", align 1
@IPA_CMD_SETASSPARMS = common dso_local global i32 0, align 4
@IPA_PDU_HEADER_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.qeth_cmd_buffer* (%struct.qeth_card*, i32, i8*, i8*, i32)* @qeth_l3_get_setassparms_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.qeth_cmd_buffer* @qeth_l3_get_setassparms_cmd(%struct.qeth_card* %0, i32 %1, i8* %2, i8* %3, i32 %4) #0 {
  %6 = alloca %struct.qeth_card*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.qeth_cmd_buffer*, align 8
  %12 = alloca %struct.qeth_ipa_cmd*, align 8
  store %struct.qeth_card* %0, %struct.qeth_card** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  store i32 %4, i32* %10, align 4
  %13 = load i32, i32* @TRACE, align 4
  %14 = call i32 @QETH_DBF_TEXT(i32 %13, i32 4, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %15 = load %struct.qeth_card*, %struct.qeth_card** %6, align 8
  %16 = load i32, i32* @IPA_CMD_SETASSPARMS, align 4
  %17 = load i32, i32* %10, align 4
  %18 = call %struct.qeth_cmd_buffer* @qeth_get_ipacmd_buffer(%struct.qeth_card* %15, i32 %16, i32 %17)
  store %struct.qeth_cmd_buffer* %18, %struct.qeth_cmd_buffer** %11, align 8
  %19 = load %struct.qeth_cmd_buffer*, %struct.qeth_cmd_buffer** %11, align 8
  %20 = getelementptr inbounds %struct.qeth_cmd_buffer, %struct.qeth_cmd_buffer* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @IPA_PDU_HEADER_SIZE, align 8
  %23 = add nsw i64 %21, %22
  %24 = inttoptr i64 %23 to %struct.qeth_ipa_cmd*
  store %struct.qeth_ipa_cmd* %24, %struct.qeth_ipa_cmd** %12, align 8
  %25 = load i32, i32* %7, align 4
  %26 = load %struct.qeth_ipa_cmd*, %struct.qeth_ipa_cmd** %12, align 8
  %27 = getelementptr inbounds %struct.qeth_ipa_cmd, %struct.qeth_ipa_cmd* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  store i32 %25, i32* %30, align 8
  %31 = load i8*, i8** %9, align 8
  %32 = getelementptr i8, i8* %31, i64 8
  %33 = load %struct.qeth_ipa_cmd*, %struct.qeth_ipa_cmd** %12, align 8
  %34 = getelementptr inbounds %struct.qeth_ipa_cmd, %struct.qeth_ipa_cmd* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 4
  store i8* %32, i8** %37, align 8
  %38 = load i8*, i8** %8, align 8
  %39 = load %struct.qeth_ipa_cmd*, %struct.qeth_ipa_cmd** %12, align 8
  %40 = getelementptr inbounds %struct.qeth_ipa_cmd, %struct.qeth_ipa_cmd* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 3
  store i8* %38, i8** %43, align 8
  %44 = load %struct.qeth_ipa_cmd*, %struct.qeth_ipa_cmd** %12, align 8
  %45 = getelementptr inbounds %struct.qeth_ipa_cmd, %struct.qeth_ipa_cmd* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 2
  store i64 0, i64* %48, align 8
  %49 = load %struct.qeth_ipa_cmd*, %struct.qeth_ipa_cmd** %12, align 8
  %50 = getelementptr inbounds %struct.qeth_ipa_cmd, %struct.qeth_ipa_cmd* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 1
  store i64 0, i64* %53, align 8
  %54 = load %struct.qeth_cmd_buffer*, %struct.qeth_cmd_buffer** %11, align 8
  ret %struct.qeth_cmd_buffer* %54
}

declare dso_local i32 @QETH_DBF_TEXT(i32, i32, i8*) #1

declare dso_local %struct.qeth_cmd_buffer* @qeth_get_ipacmd_buffer(%struct.qeth_card*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
