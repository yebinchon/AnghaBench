; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_qeth_core_main.c_qeth_query_ipassists_cb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_qeth_core_main.c_qeth_query_ipassists_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qeth_card = type { %struct.TYPE_9__*, %struct.TYPE_8__ }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.qeth_reply = type { i32 }
%struct.qeth_ipa_cmd = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, i64, i32, i32 }

@SETUP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"qipasscb\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"ipaunsup\00", align 1
@IPA_SETADAPTERPARMS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [39 x i8] c"%s IPA_CMD_QIPASSIST: Unhandled rc=%d\0A\00", align 1
@QETH_PROT_IPV4 = common dso_local global i64 0, align 8
@QETH_PROT_IPV6 = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [43 x i8] c"%s IPA_CMD_QIPASSIST: Flawed LIC detected\0A\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"suppenbl\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"%x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qeth_card*, %struct.qeth_reply*, i64)* @qeth_query_ipassists_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qeth_query_ipassists_cb(%struct.qeth_card* %0, %struct.qeth_reply* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.qeth_card*, align 8
  %6 = alloca %struct.qeth_reply*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.qeth_ipa_cmd*, align 8
  store %struct.qeth_card* %0, %struct.qeth_card** %5, align 8
  store %struct.qeth_reply* %1, %struct.qeth_reply** %6, align 8
  store i64 %2, i64* %7, align 8
  %9 = load i32, i32* @SETUP, align 4
  %10 = call i32 @QETH_DBF_TEXT(i32 %9, i32 2, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %11 = load i64, i64* %7, align 8
  %12 = inttoptr i64 %11 to %struct.qeth_ipa_cmd*
  store %struct.qeth_ipa_cmd* %12, %struct.qeth_ipa_cmd** %8, align 8
  %13 = load %struct.qeth_ipa_cmd*, %struct.qeth_ipa_cmd** %8, align 8
  %14 = getelementptr inbounds %struct.qeth_ipa_cmd, %struct.qeth_ipa_cmd* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  switch i32 %16, label %34 [
    i32 128, label %17
    i32 129, label %17
  ]

17:                                               ; preds = %3, %3
  %18 = load i32, i32* @SETUP, align 4
  %19 = call i32 @QETH_DBF_TEXT(i32 %18, i32 2, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %20 = load i32, i32* @IPA_SETADAPTERPARMS, align 4
  %21 = load %struct.qeth_card*, %struct.qeth_card** %5, align 8
  %22 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = or i32 %25, %20
  store i32 %26, i32* %24, align 4
  %27 = load i32, i32* @IPA_SETADAPTERPARMS, align 4
  %28 = load %struct.qeth_card*, %struct.qeth_card** %5, align 8
  %29 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = or i32 %32, %27
  store i32 %33, i32* %31, align 4
  store i32 0, i32* %4, align 4
  br label %123

34:                                               ; preds = %3
  %35 = load %struct.qeth_ipa_cmd*, %struct.qeth_ipa_cmd** %8, align 8
  %36 = getelementptr inbounds %struct.qeth_ipa_cmd, %struct.qeth_ipa_cmd* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %51

40:                                               ; preds = %34
  %41 = load %struct.qeth_card*, %struct.qeth_card** %5, align 8
  %42 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %41, i32 0, i32 0
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 0
  %45 = call i32 @dev_name(i32* %44)
  %46 = load %struct.qeth_ipa_cmd*, %struct.qeth_ipa_cmd** %8, align 8
  %47 = getelementptr inbounds %struct.qeth_ipa_cmd, %struct.qeth_ipa_cmd* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = call i32 (i32, i8*, i32, ...) @QETH_DBF_MESSAGE(i32 1, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i32 %45, i32 %49)
  store i32 0, i32* %4, align 4
  br label %123

51:                                               ; preds = %34
  br label %52

52:                                               ; preds = %51
  %53 = load %struct.qeth_ipa_cmd*, %struct.qeth_ipa_cmd** %8, align 8
  %54 = getelementptr inbounds %struct.qeth_ipa_cmd, %struct.qeth_ipa_cmd* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @QETH_PROT_IPV4, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %76

59:                                               ; preds = %52
  %60 = load %struct.qeth_ipa_cmd*, %struct.qeth_ipa_cmd** %8, align 8
  %61 = getelementptr inbounds %struct.qeth_ipa_cmd, %struct.qeth_ipa_cmd* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i32 0, i32 3
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.qeth_card*, %struct.qeth_card** %5, align 8
  %65 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 1
  store i32 %63, i32* %67, align 4
  %68 = load %struct.qeth_ipa_cmd*, %struct.qeth_ipa_cmd** %8, align 8
  %69 = getelementptr inbounds %struct.qeth_ipa_cmd, %struct.qeth_ipa_cmd* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 8
  %72 = load %struct.qeth_card*, %struct.qeth_card** %5, align 8
  %73 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 0
  store i32 %71, i32* %75, align 8
  br label %108

76:                                               ; preds = %52
  %77 = load %struct.qeth_ipa_cmd*, %struct.qeth_ipa_cmd** %8, align 8
  %78 = getelementptr inbounds %struct.qeth_ipa_cmd, %struct.qeth_ipa_cmd* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* @QETH_PROT_IPV6, align 8
  %82 = icmp eq i64 %80, %81
  br i1 %82, label %83, label %100

83:                                               ; preds = %76
  %84 = load %struct.qeth_ipa_cmd*, %struct.qeth_ipa_cmd** %8, align 8
  %85 = getelementptr inbounds %struct.qeth_ipa_cmd, %struct.qeth_ipa_cmd* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %85, i32 0, i32 3
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.qeth_card*, %struct.qeth_card** %5, align 8
  %89 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %90, i32 0, i32 1
  store i32 %87, i32* %91, align 4
  %92 = load %struct.qeth_ipa_cmd*, %struct.qeth_ipa_cmd** %8, align 8
  %93 = getelementptr inbounds %struct.qeth_ipa_cmd, %struct.qeth_ipa_cmd* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 8
  %96 = load %struct.qeth_card*, %struct.qeth_card** %5, align 8
  %97 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %96, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %98, i32 0, i32 0
  store i32 %95, i32* %99, align 8
  br label %107

100:                                              ; preds = %76
  %101 = load %struct.qeth_card*, %struct.qeth_card** %5, align 8
  %102 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %101, i32 0, i32 0
  %103 = load %struct.TYPE_9__*, %struct.TYPE_9__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %103, i32 0, i32 0
  %105 = call i32 @dev_name(i32* %104)
  %106 = call i32 (i32, i8*, i32, ...) @QETH_DBF_MESSAGE(i32 1, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0), i32 %105)
  br label %107

107:                                              ; preds = %100, %83
  br label %108

108:                                              ; preds = %107, %59
  %109 = load i32, i32* @SETUP, align 4
  %110 = call i32 @QETH_DBF_TEXT(i32 %109, i32 2, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  %111 = load i32, i32* @SETUP, align 4
  %112 = load %struct.qeth_ipa_cmd*, %struct.qeth_ipa_cmd** %8, align 8
  %113 = getelementptr inbounds %struct.qeth_ipa_cmd, %struct.qeth_ipa_cmd* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %113, i32 0, i32 3
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @QETH_DBF_TEXT_(i32 %111, i32 2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i32 %115)
  %117 = load i32, i32* @SETUP, align 4
  %118 = load %struct.qeth_ipa_cmd*, %struct.qeth_ipa_cmd** %8, align 8
  %119 = getelementptr inbounds %struct.qeth_ipa_cmd, %struct.qeth_ipa_cmd* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %119, i32 0, i32 2
  %121 = load i32, i32* %120, align 8
  %122 = call i32 @QETH_DBF_TEXT_(i32 %117, i32 2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i32 %121)
  store i32 0, i32* %4, align 4
  br label %123

123:                                              ; preds = %108, %40, %17
  %124 = load i32, i32* %4, align 4
  ret i32 %124
}

declare dso_local i32 @QETH_DBF_TEXT(i32, i32, i8*) #1

declare dso_local i32 @QETH_DBF_MESSAGE(i32, i8*, i32, ...) #1

declare dso_local i32 @dev_name(i32*) #1

declare dso_local i32 @QETH_DBF_TEXT_(i32, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
