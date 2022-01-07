; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_qeth_core_main.c_qeth_send_ipa_cmd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_qeth_core_main.c_qeth_send_ipa_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qeth_card = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i64 }
%struct.qeth_cmd_buffer = type { i32 }
%struct.qeth_reply = type opaque
%struct.qeth_reply.0 = type opaque

@TRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"sendipa\00", align 1
@QETH_CARD_TYPE_OSN = common dso_local global i64 0, align 8
@QETH_PROT_OSN2 = common dso_local global i8 0, align 1
@QETH_PROT_LAYER2 = common dso_local global i8 0, align 1
@QETH_PROT_TCPIP = common dso_local global i8 0, align 1
@IPA_CMD_LENGTH = common dso_local global i32 0, align 4
@ETIME = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qeth_send_ipa_cmd(%struct.qeth_card* %0, %struct.qeth_cmd_buffer* %1, i32 (%struct.qeth_card*, %struct.qeth_reply*, i64)* %2, i8* %3) #0 {
  %5 = alloca %struct.qeth_card*, align 8
  %6 = alloca %struct.qeth_cmd_buffer*, align 8
  %7 = alloca i32 (%struct.qeth_card*, %struct.qeth_reply*, i64)*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8, align 1
  store %struct.qeth_card* %0, %struct.qeth_card** %5, align 8
  store %struct.qeth_cmd_buffer* %1, %struct.qeth_cmd_buffer** %6, align 8
  store i32 (%struct.qeth_card*, %struct.qeth_reply*, i64)* %2, i32 (%struct.qeth_card*, %struct.qeth_reply*, i64)** %7, align 8
  store i8* %3, i8** %8, align 8
  %11 = load i32, i32* @TRACE, align 4
  %12 = call i32 @QETH_DBF_TEXT(i32 %11, i32 4, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %13 = load %struct.qeth_card*, %struct.qeth_card** %5, align 8
  %14 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %30

18:                                               ; preds = %4
  %19 = load %struct.qeth_card*, %struct.qeth_card** %5, align 8
  %20 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @QETH_CARD_TYPE_OSN, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %18
  %26 = load i8, i8* @QETH_PROT_OSN2, align 1
  store i8 %26, i8* %10, align 1
  br label %29

27:                                               ; preds = %18
  %28 = load i8, i8* @QETH_PROT_LAYER2, align 1
  store i8 %28, i8* %10, align 1
  br label %29

29:                                               ; preds = %27, %25
  br label %32

30:                                               ; preds = %4
  %31 = load i8, i8* @QETH_PROT_TCPIP, align 1
  store i8 %31, i8* %10, align 1
  br label %32

32:                                               ; preds = %30, %29
  %33 = load %struct.qeth_card*, %struct.qeth_card** %5, align 8
  %34 = load %struct.qeth_cmd_buffer*, %struct.qeth_cmd_buffer** %6, align 8
  %35 = load i8, i8* %10, align 1
  %36 = call i32 @qeth_prepare_ipa_cmd(%struct.qeth_card* %33, %struct.qeth_cmd_buffer* %34, i8 signext %35)
  %37 = load %struct.qeth_card*, %struct.qeth_card** %5, align 8
  %38 = load i32, i32* @IPA_CMD_LENGTH, align 4
  %39 = load %struct.qeth_cmd_buffer*, %struct.qeth_cmd_buffer** %6, align 8
  %40 = load i32 (%struct.qeth_card*, %struct.qeth_reply*, i64)*, i32 (%struct.qeth_card*, %struct.qeth_reply*, i64)** %7, align 8
  %41 = bitcast i32 (%struct.qeth_card*, %struct.qeth_reply*, i64)* %40 to i32 (%struct.qeth_card*, %struct.qeth_reply.0*, i64)*
  %42 = load i8*, i8** %8, align 8
  %43 = call i32 @qeth_send_control_data(%struct.qeth_card* %37, i32 %38, %struct.qeth_cmd_buffer* %39, i32 (%struct.qeth_card*, %struct.qeth_reply.0*, i64)* %41, i8* %42)
  store i32 %43, i32* %9, align 4
  %44 = load i32, i32* %9, align 4
  %45 = load i32, i32* @ETIME, align 4
  %46 = sub nsw i32 0, %45
  %47 = icmp eq i32 %44, %46
  br i1 %47, label %48, label %53

48:                                               ; preds = %32
  %49 = load %struct.qeth_card*, %struct.qeth_card** %5, align 8
  %50 = call i32 @qeth_clear_ipacmd_list(%struct.qeth_card* %49)
  %51 = load %struct.qeth_card*, %struct.qeth_card** %5, align 8
  %52 = call i32 @qeth_schedule_recovery(%struct.qeth_card* %51)
  br label %53

53:                                               ; preds = %48, %32
  %54 = load i32, i32* %9, align 4
  ret i32 %54
}

declare dso_local i32 @QETH_DBF_TEXT(i32, i32, i8*) #1

declare dso_local i32 @qeth_prepare_ipa_cmd(%struct.qeth_card*, %struct.qeth_cmd_buffer*, i8 signext) #1

declare dso_local i32 @qeth_send_control_data(%struct.qeth_card*, i32, %struct.qeth_cmd_buffer*, i32 (%struct.qeth_card*, %struct.qeth_reply.0*, i64)*, i8*) #1

declare dso_local i32 @qeth_clear_ipacmd_list(%struct.qeth_card*) #1

declare dso_local i32 @qeth_schedule_recovery(%struct.qeth_card*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
