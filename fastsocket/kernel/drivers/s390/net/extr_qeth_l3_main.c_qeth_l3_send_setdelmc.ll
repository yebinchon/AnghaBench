; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_qeth_l3_main.c_qeth_l3_send_setdelmc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_qeth_l3_main.c_qeth_l3_send_setdelmc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qeth_card = type { i32 }
%struct.qeth_ipaddr = type { i64, %struct.TYPE_10__, i32* }
%struct.TYPE_10__ = type { %struct.TYPE_9__, %struct.TYPE_6__ }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.qeth_cmd_buffer = type { i64 }
%struct.qeth_ipa_cmd = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32*, i32 }

@TRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"setdelmc\00", align 1
@IPA_PDU_HEADER_SIZE = common dso_local global i64 0, align 8
@OSA_ADDR_LEN = common dso_local global i32 0, align 4
@QETH_PROT_IPV6 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qeth_card*, %struct.qeth_ipaddr*, i32)* @qeth_l3_send_setdelmc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qeth_l3_send_setdelmc(%struct.qeth_card* %0, %struct.qeth_ipaddr* %1, i32 %2) #0 {
  %4 = alloca %struct.qeth_card*, align 8
  %5 = alloca %struct.qeth_ipaddr*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.qeth_cmd_buffer*, align 8
  %9 = alloca %struct.qeth_ipa_cmd*, align 8
  store %struct.qeth_card* %0, %struct.qeth_card** %4, align 8
  store %struct.qeth_ipaddr* %1, %struct.qeth_ipaddr** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load i32, i32* @TRACE, align 4
  %11 = call i32 @QETH_DBF_TEXT(i32 %10, i32 4, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %12 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %13 = load i32, i32* %6, align 4
  %14 = load %struct.qeth_ipaddr*, %struct.qeth_ipaddr** %5, align 8
  %15 = getelementptr inbounds %struct.qeth_ipaddr, %struct.qeth_ipaddr* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = call %struct.qeth_cmd_buffer* @qeth_get_ipacmd_buffer(%struct.qeth_card* %12, i32 %13, i64 %16)
  store %struct.qeth_cmd_buffer* %17, %struct.qeth_cmd_buffer** %8, align 8
  %18 = load %struct.qeth_cmd_buffer*, %struct.qeth_cmd_buffer** %8, align 8
  %19 = getelementptr inbounds %struct.qeth_cmd_buffer, %struct.qeth_cmd_buffer* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @IPA_PDU_HEADER_SIZE, align 8
  %22 = add nsw i64 %20, %21
  %23 = inttoptr i64 %22 to %struct.qeth_ipa_cmd*
  store %struct.qeth_ipa_cmd* %23, %struct.qeth_ipa_cmd** %9, align 8
  %24 = load %struct.qeth_ipa_cmd*, %struct.qeth_ipa_cmd** %9, align 8
  %25 = getelementptr inbounds %struct.qeth_ipa_cmd, %struct.qeth_ipa_cmd* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 2
  %28 = load %struct.qeth_ipaddr*, %struct.qeth_ipaddr** %5, align 8
  %29 = getelementptr inbounds %struct.qeth_ipaddr, %struct.qeth_ipaddr* %28, i32 0, i32 2
  %30 = load i32*, i32** %29, align 8
  %31 = load i32, i32* @OSA_ADDR_LEN, align 4
  %32 = call i32 @memcpy(i32* %27, i32* %30, i32 %31)
  %33 = load %struct.qeth_ipaddr*, %struct.qeth_ipaddr** %5, align 8
  %34 = getelementptr inbounds %struct.qeth_ipaddr, %struct.qeth_ipaddr* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @QETH_PROT_IPV6, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %49

38:                                               ; preds = %3
  %39 = load %struct.qeth_ipa_cmd*, %struct.qeth_ipa_cmd** %9, align 8
  %40 = getelementptr inbounds %struct.qeth_ipa_cmd, %struct.qeth_ipa_cmd* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 1
  %43 = load i32*, i32** %42, align 8
  %44 = load %struct.qeth_ipaddr*, %struct.qeth_ipaddr** %5, align 8
  %45 = getelementptr inbounds %struct.qeth_ipaddr, %struct.qeth_ipaddr* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  %48 = call i32 @memcpy(i32* %43, i32* %47, i32 4)
  br label %59

49:                                               ; preds = %3
  %50 = load %struct.qeth_ipa_cmd*, %struct.qeth_ipa_cmd** %9, align 8
  %51 = getelementptr inbounds %struct.qeth_ipa_cmd, %struct.qeth_ipa_cmd* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 0
  %54 = load %struct.qeth_ipaddr*, %struct.qeth_ipaddr** %5, align 8
  %55 = getelementptr inbounds %struct.qeth_ipaddr, %struct.qeth_ipaddr* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 0
  %58 = call i32 @memcpy(i32* %53, i32* %57, i32 4)
  br label %59

59:                                               ; preds = %49, %38
  %60 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %61 = load %struct.qeth_cmd_buffer*, %struct.qeth_cmd_buffer** %8, align 8
  %62 = call i32 @qeth_send_ipa_cmd(%struct.qeth_card* %60, %struct.qeth_cmd_buffer* %61, i32* null, i32* null)
  store i32 %62, i32* %7, align 4
  %63 = load i32, i32* %7, align 4
  ret i32 %63
}

declare dso_local i32 @QETH_DBF_TEXT(i32, i32, i8*) #1

declare dso_local %struct.qeth_cmd_buffer* @qeth_get_ipacmd_buffer(%struct.qeth_card*, i32, i64) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @qeth_send_ipa_cmd(%struct.qeth_card*, %struct.qeth_cmd_buffer*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
