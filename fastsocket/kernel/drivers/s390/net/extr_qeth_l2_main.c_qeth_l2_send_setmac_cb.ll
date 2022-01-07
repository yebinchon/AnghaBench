; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_qeth_l2_main.c_qeth_l2_send_setmac_cb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_qeth_l2_main.c_qeth_l2_send_setmac_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qeth_card = type { %struct.TYPE_12__*, %struct.TYPE_11__*, %struct.TYPE_8__ }
%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_8__ = type { i32 }
%struct.qeth_reply = type { i32 }
%struct.qeth_ipa_cmd = type { %struct.TYPE_10__, %struct.TYPE_7__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_7__ = type { i32 }

@TRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"L2Smaccb\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"L2er%x\00", align 1
@QETH_LAYER2_MAC_REGISTERED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"MAC address %pM already exists\0A\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"MAC address %pM is not authorized\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@OSA_ADDR_LEN = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [54 x i8] c"MAC address %pM successfully registered on device %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qeth_card*, %struct.qeth_reply*, i64)* @qeth_l2_send_setmac_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qeth_l2_send_setmac_cb(%struct.qeth_card* %0, %struct.qeth_reply* %1, i64 %2) #0 {
  %4 = alloca %struct.qeth_card*, align 8
  %5 = alloca %struct.qeth_reply*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.qeth_ipa_cmd*, align 8
  store %struct.qeth_card* %0, %struct.qeth_card** %4, align 8
  store %struct.qeth_reply* %1, %struct.qeth_reply** %5, align 8
  store i64 %2, i64* %6, align 8
  %8 = load i32, i32* @TRACE, align 4
  %9 = call i32 @QETH_DBF_TEXT(i32 %8, i32 2, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %10 = load i64, i64* %6, align 8
  %11 = inttoptr i64 %10 to %struct.qeth_ipa_cmd*
  store %struct.qeth_ipa_cmd* %11, %struct.qeth_ipa_cmd** %7, align 8
  %12 = load %struct.qeth_ipa_cmd*, %struct.qeth_ipa_cmd** %7, align 8
  %13 = getelementptr inbounds %struct.qeth_ipa_cmd, %struct.qeth_ipa_cmd* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %64

17:                                               ; preds = %3
  %18 = load i32, i32* @TRACE, align 4
  %19 = load %struct.qeth_ipa_cmd*, %struct.qeth_ipa_cmd** %7, align 8
  %20 = getelementptr inbounds %struct.qeth_ipa_cmd, %struct.qeth_ipa_cmd* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @QETH_DBF_TEXT_(i32 %18, i32 2, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %22)
  %24 = load i32, i32* @QETH_LAYER2_MAC_REGISTERED, align 4
  %25 = xor i32 %24, -1
  %26 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %27 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %26, i32 0, i32 2
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = and i32 %29, %25
  store i32 %30, i32* %28, align 8
  %31 = load %struct.qeth_ipa_cmd*, %struct.qeth_ipa_cmd** %7, align 8
  %32 = getelementptr inbounds %struct.qeth_ipa_cmd, %struct.qeth_ipa_cmd* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  switch i32 %34, label %57 [
    i32 130, label %35
    i32 131, label %35
    i32 128, label %46
    i32 129, label %46
  ]

35:                                               ; preds = %17, %17
  %36 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %37 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %36, i32 0, i32 1
  %38 = load %struct.TYPE_11__*, %struct.TYPE_11__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %38, i32 0, i32 0
  %40 = load %struct.qeth_ipa_cmd*, %struct.qeth_ipa_cmd** %7, align 8
  %41 = getelementptr inbounds %struct.qeth_ipa_cmd, %struct.qeth_ipa_cmd* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @dev_warn(i32* %39, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %44)
  br label %58

46:                                               ; preds = %17, %17
  %47 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %48 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %47, i32 0, i32 1
  %49 = load %struct.TYPE_11__*, %struct.TYPE_11__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %49, i32 0, i32 0
  %51 = load %struct.qeth_ipa_cmd*, %struct.qeth_ipa_cmd** %7, align 8
  %52 = getelementptr inbounds %struct.qeth_ipa_cmd, %struct.qeth_ipa_cmd* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @dev_warn(i32* %50, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i32 %55)
  br label %58

57:                                               ; preds = %17
  br label %58

58:                                               ; preds = %57, %46, %35
  %59 = load i32, i32* @EIO, align 4
  %60 = sub nsw i32 0, %59
  %61 = load %struct.qeth_ipa_cmd*, %struct.qeth_ipa_cmd** %7, align 8
  %62 = getelementptr inbounds %struct.qeth_ipa_cmd, %struct.qeth_ipa_cmd* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 0
  store i32 %60, i32* %63, align 4
  br label %98

64:                                               ; preds = %3
  %65 = load i32, i32* @QETH_LAYER2_MAC_REGISTERED, align 4
  %66 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %67 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %66, i32 0, i32 2
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = or i32 %69, %65
  store i32 %70, i32* %68, align 8
  %71 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %72 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %71, i32 0, i32 0
  %73 = load %struct.TYPE_12__*, %struct.TYPE_12__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.qeth_ipa_cmd*, %struct.qeth_ipa_cmd** %7, align 8
  %77 = getelementptr inbounds %struct.qeth_ipa_cmd, %struct.qeth_ipa_cmd* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* @OSA_ADDR_LEN, align 4
  %82 = call i32 @memcpy(i32 %75, i32 %80, i32 %81)
  %83 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %84 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %83, i32 0, i32 1
  %85 = load %struct.TYPE_11__*, %struct.TYPE_11__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %85, i32 0, i32 0
  %87 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %88 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %87, i32 0, i32 0
  %89 = load %struct.TYPE_12__*, %struct.TYPE_12__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %93 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %92, i32 0, i32 0
  %94 = load %struct.TYPE_12__*, %struct.TYPE_12__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @dev_info(i32* %86, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.4, i64 0, i64 0), i32 %91, i32 %96)
  br label %98

98:                                               ; preds = %64, %58
  ret i32 0
}

declare dso_local i32 @QETH_DBF_TEXT(i32, i32, i8*) #1

declare dso_local i32 @QETH_DBF_TEXT_(i32, i32, i8*, i32) #1

declare dso_local i32 @dev_warn(i32*, i8*, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @dev_info(i32*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
