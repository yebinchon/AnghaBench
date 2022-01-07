; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_qeth_l3_main.c_qeth_l3_start_ipa_broadcast.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_qeth_l3_main.c_qeth_l3_start_ipa_broadcast.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qeth_card = type { %struct.TYPE_6__*, %struct.TYPE_5__, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { i32 }

@TRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"stbrdcst\00", align 1
@IPA_FILTERING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"Broadcast not supported on %s\0A\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@IPA_CMD_ASS_START = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [44 x i8] c"Enabling broadcast filtering for %s failed\0A\00", align 1
@IPA_CMD_ASS_CONFIGURE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [46 x i8] c"Setting up broadcast filtering for %s failed\0A\00", align 1
@QETH_BROADCAST_WITH_ECHO = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [19 x i8] c"Broadcast enabled\0A\00", align 1
@IPA_CMD_ASS_ENABLE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [51 x i8] c"Setting up broadcast echo filtering for %s failed\0A\00", align 1
@QETH_BROADCAST_WITHOUT_ECHO = common dso_local global i64 0, align 8
@IFF_BROADCAST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qeth_card*)* @qeth_l3_start_ipa_broadcast to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qeth_l3_start_ipa_broadcast(%struct.qeth_card* %0) #0 {
  %2 = alloca %struct.qeth_card*, align 8
  %3 = alloca i32, align 4
  store %struct.qeth_card* %0, %struct.qeth_card** %2, align 8
  %4 = load i32, i32* @TRACE, align 4
  %5 = call i32 @QETH_DBF_TEXT(i32 %4, i32 3, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %6 = load %struct.qeth_card*, %struct.qeth_card** %2, align 8
  %7 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  store i64 0, i64* %8, align 8
  %9 = load %struct.qeth_card*, %struct.qeth_card** %2, align 8
  %10 = load i32, i32* @IPA_FILTERING, align 4
  %11 = call i32 @qeth_is_supported(%struct.qeth_card* %9, i32 %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %23, label %13

13:                                               ; preds = %1
  %14 = load %struct.qeth_card*, %struct.qeth_card** %2, align 8
  %15 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %14, i32 0, i32 2
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load %struct.qeth_card*, %struct.qeth_card** %2, align 8
  %19 = call i32 @QETH_CARD_IFNAME(%struct.qeth_card* %18)
  %20 = call i32 (i32*, i8*, ...) @dev_info(i32* %17, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %19)
  %21 = load i32, i32* @EOPNOTSUPP, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %82

23:                                               ; preds = %1
  %24 = load %struct.qeth_card*, %struct.qeth_card** %2, align 8
  %25 = load i32, i32* @IPA_FILTERING, align 4
  %26 = load i32, i32* @IPA_CMD_ASS_START, align 4
  %27 = call i32 @qeth_l3_send_simple_setassparms(%struct.qeth_card* %24, i32 %25, i32 %26, i32 0)
  store i32 %27, i32* %3, align 4
  %28 = load i32, i32* %3, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %38

30:                                               ; preds = %23
  %31 = load %struct.qeth_card*, %struct.qeth_card** %2, align 8
  %32 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %31, i32 0, i32 2
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load %struct.qeth_card*, %struct.qeth_card** %2, align 8
  %36 = call i32 @QETH_CARD_IFNAME(%struct.qeth_card* %35)
  %37 = call i32 @dev_warn(i32* %34, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), i32 %36)
  br label %82

38:                                               ; preds = %23
  %39 = load %struct.qeth_card*, %struct.qeth_card** %2, align 8
  %40 = load i32, i32* @IPA_FILTERING, align 4
  %41 = load i32, i32* @IPA_CMD_ASS_CONFIGURE, align 4
  %42 = call i32 @qeth_l3_send_simple_setassparms(%struct.qeth_card* %39, i32 %40, i32 %41, i32 1)
  store i32 %42, i32* %3, align 4
  %43 = load i32, i32* %3, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %53

45:                                               ; preds = %38
  %46 = load %struct.qeth_card*, %struct.qeth_card** %2, align 8
  %47 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %46, i32 0, i32 2
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = load %struct.qeth_card*, %struct.qeth_card** %2, align 8
  %51 = call i32 @QETH_CARD_IFNAME(%struct.qeth_card* %50)
  %52 = call i32 @dev_warn(i32* %49, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.3, i64 0, i64 0), i32 %51)
  br label %82

53:                                               ; preds = %38
  %54 = load i64, i64* @QETH_BROADCAST_WITH_ECHO, align 8
  %55 = load %struct.qeth_card*, %struct.qeth_card** %2, align 8
  %56 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 0
  store i64 %54, i64* %57, align 8
  %58 = load %struct.qeth_card*, %struct.qeth_card** %2, align 8
  %59 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %58, i32 0, i32 2
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = call i32 (i32*, i8*, ...) @dev_info(i32* %61, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0))
  %63 = load %struct.qeth_card*, %struct.qeth_card** %2, align 8
  %64 = load i32, i32* @IPA_FILTERING, align 4
  %65 = load i32, i32* @IPA_CMD_ASS_ENABLE, align 4
  %66 = call i32 @qeth_l3_send_simple_setassparms(%struct.qeth_card* %63, i32 %64, i32 %65, i32 1)
  store i32 %66, i32* %3, align 4
  %67 = load i32, i32* %3, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %77

69:                                               ; preds = %53
  %70 = load %struct.qeth_card*, %struct.qeth_card** %2, align 8
  %71 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %70, i32 0, i32 2
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  %74 = load %struct.qeth_card*, %struct.qeth_card** %2, align 8
  %75 = call i32 @QETH_CARD_IFNAME(%struct.qeth_card* %74)
  %76 = call i32 @dev_warn(i32* %73, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.5, i64 0, i64 0), i32 %75)
  br label %82

77:                                               ; preds = %53
  %78 = load i64, i64* @QETH_BROADCAST_WITHOUT_ECHO, align 8
  %79 = load %struct.qeth_card*, %struct.qeth_card** %2, align 8
  %80 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 0
  store i64 %78, i64* %81, align 8
  br label %82

82:                                               ; preds = %77, %69, %45, %30, %13
  %83 = load %struct.qeth_card*, %struct.qeth_card** %2, align 8
  %84 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %96

88:                                               ; preds = %82
  %89 = load i32, i32* @IFF_BROADCAST, align 4
  %90 = load %struct.qeth_card*, %struct.qeth_card** %2, align 8
  %91 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %90, i32 0, i32 0
  %92 = load %struct.TYPE_6__*, %struct.TYPE_6__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = or i32 %94, %89
  store i32 %95, i32* %93, align 4
  br label %105

96:                                               ; preds = %82
  %97 = load i32, i32* @IFF_BROADCAST, align 4
  %98 = xor i32 %97, -1
  %99 = load %struct.qeth_card*, %struct.qeth_card** %2, align 8
  %100 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %99, i32 0, i32 0
  %101 = load %struct.TYPE_6__*, %struct.TYPE_6__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = and i32 %103, %98
  store i32 %104, i32* %102, align 4
  br label %105

105:                                              ; preds = %96, %88
  %106 = load i32, i32* %3, align 4
  ret i32 %106
}

declare dso_local i32 @QETH_DBF_TEXT(i32, i32, i8*) #1

declare dso_local i32 @qeth_is_supported(%struct.qeth_card*, i32) #1

declare dso_local i32 @dev_info(i32*, i8*, ...) #1

declare dso_local i32 @QETH_CARD_IFNAME(%struct.qeth_card*) #1

declare dso_local i32 @qeth_l3_send_simple_setassparms(%struct.qeth_card*, i32, i32, i32) #1

declare dso_local i32 @dev_warn(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
