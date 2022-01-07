; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_qeth_l3_main.c_qeth_l3_send_setassparms.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_qeth_l3_main.c_qeth_l3_send_setassparms.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qeth_card = type { i32 }
%struct.qeth_cmd_buffer = type { i64 }
%struct.qeth_reply = type opaque
%struct.qeth_ipa_cmd = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }
%struct.qeth_reply.0 = type opaque

@TRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"sendassp\00", align 1
@IPA_PDU_HEADER_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qeth_card*, %struct.qeth_cmd_buffer*, i32, i64, i32 (%struct.qeth_card*, %struct.qeth_reply*, i64)*, i8*)* @qeth_l3_send_setassparms to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qeth_l3_send_setassparms(%struct.qeth_card* %0, %struct.qeth_cmd_buffer* %1, i32 %2, i64 %3, i32 (%struct.qeth_card*, %struct.qeth_reply*, i64)* %4, i8* %5) #0 {
  %7 = alloca %struct.qeth_card*, align 8
  %8 = alloca %struct.qeth_cmd_buffer*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32 (%struct.qeth_card*, %struct.qeth_reply*, i64)*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.qeth_ipa_cmd*, align 8
  store %struct.qeth_card* %0, %struct.qeth_card** %7, align 8
  store %struct.qeth_cmd_buffer* %1, %struct.qeth_cmd_buffer** %8, align 8
  store i32 %2, i32* %9, align 4
  store i64 %3, i64* %10, align 8
  store i32 (%struct.qeth_card*, %struct.qeth_reply*, i64)* %4, i32 (%struct.qeth_card*, %struct.qeth_reply*, i64)** %11, align 8
  store i8* %5, i8** %12, align 8
  %15 = load i32, i32* @TRACE, align 4
  %16 = call i32 @QETH_DBF_TEXT(i32 %15, i32 4, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %17 = load %struct.qeth_cmd_buffer*, %struct.qeth_cmd_buffer** %8, align 8
  %18 = getelementptr inbounds %struct.qeth_cmd_buffer, %struct.qeth_cmd_buffer* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @IPA_PDU_HEADER_SIZE, align 8
  %21 = add nsw i64 %19, %20
  %22 = inttoptr i64 %21 to %struct.qeth_ipa_cmd*
  store %struct.qeth_ipa_cmd* %22, %struct.qeth_ipa_cmd** %14, align 8
  %23 = load i32, i32* %9, align 4
  %24 = sext i32 %23 to i64
  %25 = icmp ule i64 %24, 8
  br i1 %25, label %26, label %33

26:                                               ; preds = %6
  %27 = load i64, i64* %10, align 8
  %28 = load %struct.qeth_ipa_cmd*, %struct.qeth_ipa_cmd** %14, align 8
  %29 = getelementptr inbounds %struct.qeth_ipa_cmd, %struct.qeth_ipa_cmd* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  store i64 %27, i64* %32, align 8
  br label %42

33:                                               ; preds = %6
  %34 = load %struct.qeth_ipa_cmd*, %struct.qeth_ipa_cmd** %14, align 8
  %35 = getelementptr inbounds %struct.qeth_ipa_cmd, %struct.qeth_ipa_cmd* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i64, i64* %10, align 8
  %39 = inttoptr i64 %38 to i8*
  %40 = load i32, i32* %9, align 4
  %41 = call i32 @memcpy(%struct.TYPE_6__* %37, i8* %39, i32 %40)
  br label %42

42:                                               ; preds = %33, %26
  %43 = load %struct.qeth_card*, %struct.qeth_card** %7, align 8
  %44 = load %struct.qeth_cmd_buffer*, %struct.qeth_cmd_buffer** %8, align 8
  %45 = load i32 (%struct.qeth_card*, %struct.qeth_reply*, i64)*, i32 (%struct.qeth_card*, %struct.qeth_reply*, i64)** %11, align 8
  %46 = bitcast i32 (%struct.qeth_card*, %struct.qeth_reply*, i64)* %45 to i32 (%struct.qeth_card*, %struct.qeth_reply.0*, i64)*
  %47 = load i8*, i8** %12, align 8
  %48 = call i32 @qeth_send_ipa_cmd(%struct.qeth_card* %43, %struct.qeth_cmd_buffer* %44, i32 (%struct.qeth_card*, %struct.qeth_reply.0*, i64)* %46, i8* %47)
  store i32 %48, i32* %13, align 4
  %49 = load i32, i32* %13, align 4
  ret i32 %49
}

declare dso_local i32 @QETH_DBF_TEXT(i32, i32, i8*) #1

declare dso_local i32 @memcpy(%struct.TYPE_6__*, i8*, i32) #1

declare dso_local i32 @qeth_send_ipa_cmd(%struct.qeth_card*, %struct.qeth_cmd_buffer*, i32 (%struct.qeth_card*, %struct.qeth_reply.0*, i64)*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
