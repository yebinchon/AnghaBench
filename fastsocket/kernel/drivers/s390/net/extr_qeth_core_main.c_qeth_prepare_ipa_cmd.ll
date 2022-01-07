; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_qeth_core_main.c_qeth_prepare_ipa_cmd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_qeth_core_main.c_qeth_prepare_ipa_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qeth_card = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8 }
%struct.qeth_cmd_buffer = type { i32 }

@IPA_PDU_HEADER = common dso_local global i8* null, align 8
@IPA_PDU_HEADER_SIZE = common dso_local global i32 0, align 4
@QETH_MPC_TOKEN_LENGTH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @qeth_prepare_ipa_cmd(%struct.qeth_card* %0, %struct.qeth_cmd_buffer* %1, i8 signext %2) #0 {
  %4 = alloca %struct.qeth_card*, align 8
  %5 = alloca %struct.qeth_cmd_buffer*, align 8
  %6 = alloca i8, align 1
  store %struct.qeth_card* %0, %struct.qeth_card** %4, align 8
  store %struct.qeth_cmd_buffer* %1, %struct.qeth_cmd_buffer** %5, align 8
  store i8 %2, i8* %6, align 1
  %7 = load %struct.qeth_cmd_buffer*, %struct.qeth_cmd_buffer** %5, align 8
  %8 = getelementptr inbounds %struct.qeth_cmd_buffer, %struct.qeth_cmd_buffer* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i8*, i8** @IPA_PDU_HEADER, align 8
  %11 = load i32, i32* @IPA_PDU_HEADER_SIZE, align 4
  %12 = call i32 @memcpy(i32 %9, i8* %10, i32 %11)
  %13 = load %struct.qeth_cmd_buffer*, %struct.qeth_cmd_buffer** %5, align 8
  %14 = getelementptr inbounds %struct.qeth_cmd_buffer, %struct.qeth_cmd_buffer* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @QETH_IPA_CMD_PROT_TYPE(i32 %15)
  %17 = call i32 @memcpy(i32 %16, i8* %6, i32 1)
  %18 = load %struct.qeth_cmd_buffer*, %struct.qeth_cmd_buffer** %5, align 8
  %19 = getelementptr inbounds %struct.qeth_cmd_buffer, %struct.qeth_cmd_buffer* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @QETH_IPA_CMD_DEST_ADDR(i32 %20)
  %22 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %23 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* @QETH_MPC_TOKEN_LENGTH, align 4
  %26 = call i32 @memcpy(i32 %21, i8* %24, i32 %25)
  ret void
}

declare dso_local i32 @memcpy(i32, i8*, i32) #1

declare dso_local i32 @QETH_IPA_CMD_PROT_TYPE(i32) #1

declare dso_local i32 @QETH_IPA_CMD_DEST_ADDR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
