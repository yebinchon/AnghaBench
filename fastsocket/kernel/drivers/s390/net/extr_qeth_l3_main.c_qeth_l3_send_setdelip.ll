; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_qeth_l3_main.c_qeth_l3_send_setdelip.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_qeth_l3_main.c_qeth_l3_send_setdelip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qeth_card = type { i32 }
%struct.qeth_ipaddr = type { i64, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__, %struct.TYPE_7__ }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.qeth_cmd_buffer = type { i64 }
%struct.qeth_ipa_cmd = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.TYPE_11__, %struct.TYPE_8__ }
%struct.TYPE_11__ = type { i32, i32, i32 }
%struct.TYPE_8__ = type { i32, i32, i32 }

@TRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"setdelip\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"flags%02X\00", align 1
@IPA_PDU_HEADER_SIZE = common dso_local global i64 0, align 8
@QETH_PROT_IPV6 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qeth_card*, %struct.qeth_ipaddr*, i32, i32)* @qeth_l3_send_setdelip to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qeth_l3_send_setdelip(%struct.qeth_card* %0, %struct.qeth_ipaddr* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.qeth_card*, align 8
  %6 = alloca %struct.qeth_ipaddr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.qeth_cmd_buffer*, align 8
  %11 = alloca %struct.qeth_ipa_cmd*, align 8
  %12 = alloca [16 x i32], align 16
  store %struct.qeth_card* %0, %struct.qeth_card** %5, align 8
  store %struct.qeth_ipaddr* %1, %struct.qeth_ipaddr** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %13 = load i32, i32* @TRACE, align 4
  %14 = call i32 @QETH_DBF_TEXT(i32 %13, i32 4, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %15 = load i32, i32* @TRACE, align 4
  %16 = load i32, i32* %8, align 4
  %17 = call i32 @QETH_DBF_TEXT_(i32 %15, i32 4, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %16)
  %18 = load %struct.qeth_card*, %struct.qeth_card** %5, align 8
  %19 = load i32, i32* %7, align 4
  %20 = load %struct.qeth_ipaddr*, %struct.qeth_ipaddr** %6, align 8
  %21 = getelementptr inbounds %struct.qeth_ipaddr, %struct.qeth_ipaddr* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = call %struct.qeth_cmd_buffer* @qeth_get_ipacmd_buffer(%struct.qeth_card* %18, i32 %19, i64 %22)
  store %struct.qeth_cmd_buffer* %23, %struct.qeth_cmd_buffer** %10, align 8
  %24 = load %struct.qeth_cmd_buffer*, %struct.qeth_cmd_buffer** %10, align 8
  %25 = getelementptr inbounds %struct.qeth_cmd_buffer, %struct.qeth_cmd_buffer* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @IPA_PDU_HEADER_SIZE, align 8
  %28 = add nsw i64 %26, %27
  %29 = inttoptr i64 %28 to %struct.qeth_ipa_cmd*
  store %struct.qeth_ipa_cmd* %29, %struct.qeth_ipa_cmd** %11, align 8
  %30 = load %struct.qeth_ipaddr*, %struct.qeth_ipaddr** %6, align 8
  %31 = getelementptr inbounds %struct.qeth_ipaddr, %struct.qeth_ipaddr* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @QETH_PROT_IPV6, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %65

35:                                               ; preds = %4
  %36 = load %struct.qeth_ipa_cmd*, %struct.qeth_ipa_cmd** %11, align 8
  %37 = getelementptr inbounds %struct.qeth_ipa_cmd, %struct.qeth_ipa_cmd* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.qeth_ipaddr*, %struct.qeth_ipaddr** %6, align 8
  %42 = getelementptr inbounds %struct.qeth_ipaddr, %struct.qeth_ipaddr* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 1
  %45 = call i32 @memcpy(i32 %40, i32* %44, i32 4)
  %46 = getelementptr inbounds [16 x i32], [16 x i32]* %12, i64 0, i64 0
  %47 = load %struct.qeth_ipaddr*, %struct.qeth_ipaddr** %6, align 8
  %48 = getelementptr inbounds %struct.qeth_ipaddr, %struct.qeth_ipaddr* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @qeth_l3_fill_netmask(i32* %46, i32 %51)
  %53 = load %struct.qeth_ipa_cmd*, %struct.qeth_ipa_cmd** %11, align 8
  %54 = getelementptr inbounds %struct.qeth_ipa_cmd, %struct.qeth_ipa_cmd* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = getelementptr inbounds [16 x i32], [16 x i32]* %12, i64 0, i64 0
  %59 = call i32 @memcpy(i32 %57, i32* %58, i32 4)
  %60 = load i32, i32* %8, align 4
  %61 = load %struct.qeth_ipa_cmd*, %struct.qeth_ipa_cmd** %11, align 8
  %62 = getelementptr inbounds %struct.qeth_ipa_cmd, %struct.qeth_ipa_cmd* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 0
  store i32 %60, i32* %64, align 4
  br label %91

65:                                               ; preds = %4
  %66 = load %struct.qeth_ipa_cmd*, %struct.qeth_ipa_cmd** %11, align 8
  %67 = getelementptr inbounds %struct.qeth_ipa_cmd, %struct.qeth_ipa_cmd* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.qeth_ipaddr*, %struct.qeth_ipaddr** %6, align 8
  %72 = getelementptr inbounds %struct.qeth_ipaddr, %struct.qeth_ipaddr* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %73, i32 0, i32 1
  %75 = call i32 @memcpy(i32 %70, i32* %74, i32 4)
  %76 = load %struct.qeth_ipa_cmd*, %struct.qeth_ipa_cmd** %11, align 8
  %77 = getelementptr inbounds %struct.qeth_ipa_cmd, %struct.qeth_ipa_cmd* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.qeth_ipaddr*, %struct.qeth_ipaddr** %6, align 8
  %82 = getelementptr inbounds %struct.qeth_ipaddr, %struct.qeth_ipaddr* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %83, i32 0, i32 0
  %85 = call i32 @memcpy(i32 %80, i32* %84, i32 4)
  %86 = load i32, i32* %8, align 4
  %87 = load %struct.qeth_ipa_cmd*, %struct.qeth_ipa_cmd** %11, align 8
  %88 = getelementptr inbounds %struct.qeth_ipa_cmd, %struct.qeth_ipa_cmd* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %89, i32 0, i32 0
  store i32 %86, i32* %90, align 4
  br label %91

91:                                               ; preds = %65, %35
  %92 = load %struct.qeth_card*, %struct.qeth_card** %5, align 8
  %93 = load %struct.qeth_cmd_buffer*, %struct.qeth_cmd_buffer** %10, align 8
  %94 = call i32 @qeth_send_ipa_cmd(%struct.qeth_card* %92, %struct.qeth_cmd_buffer* %93, i32* null, i32* null)
  store i32 %94, i32* %9, align 4
  %95 = load i32, i32* %9, align 4
  ret i32 %95
}

declare dso_local i32 @QETH_DBF_TEXT(i32, i32, i8*) #1

declare dso_local i32 @QETH_DBF_TEXT_(i32, i32, i8*, i32) #1

declare dso_local %struct.qeth_cmd_buffer* @qeth_get_ipacmd_buffer(%struct.qeth_card*, i32, i64) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @qeth_l3_fill_netmask(i32*, i32) #1

declare dso_local i32 @qeth_send_ipa_cmd(%struct.qeth_card*, %struct.qeth_cmd_buffer*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
