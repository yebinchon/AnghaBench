; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_qeth_core_main.c_qeth_check_ipa_data.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_qeth_core_main.c_qeth_check_ipa_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qeth_ipa_cmd = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.qeth_card = type { i32, %struct.TYPE_6__, i32, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.qeth_cmd_buffer = type { i32 }

@TRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"chkipad\00", align 1
@IPA_CMD_SETCCID = common dso_local global i32 0, align 4
@IPA_CMD_DELCCID = common dso_local global i32 0, align 4
@IPA_CMD_SET_DIAG_ASS = common dso_local global i32 0, align 4
@IPA_RC_VEPA_TO_VEB_TRANSITION = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [86 x i8] c"Interface %s is down because the adjacent port is no longer in reflective relay mode\0A\00", align 1
@.str.2 = private unnamed_addr constant [48 x i8] c"The link for interface %s on CHPID 0x%X failed\0A\00", align 1
@.str.3 = private unnamed_addr constant [49 x i8] c"The link for %s on CHPID 0x%X has been restored\0A\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"irla\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"urla\00", align 1
@.str.6 = private unnamed_addr constant [39 x i8] c"Received data is IPA but not a reply!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.qeth_ipa_cmd* (%struct.qeth_card*, %struct.qeth_cmd_buffer*)* @qeth_check_ipa_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.qeth_ipa_cmd* @qeth_check_ipa_data(%struct.qeth_card* %0, %struct.qeth_cmd_buffer* %1) #0 {
  %3 = alloca %struct.qeth_ipa_cmd*, align 8
  %4 = alloca %struct.qeth_card*, align 8
  %5 = alloca %struct.qeth_cmd_buffer*, align 8
  %6 = alloca %struct.qeth_ipa_cmd*, align 8
  store %struct.qeth_card* %0, %struct.qeth_card** %4, align 8
  store %struct.qeth_cmd_buffer* %1, %struct.qeth_cmd_buffer** %5, align 8
  store %struct.qeth_ipa_cmd* null, %struct.qeth_ipa_cmd** %6, align 8
  %7 = load i32, i32* @TRACE, align 4
  %8 = call i32 @QETH_DBF_TEXT(i32 %7, i32 5, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %9 = load %struct.qeth_cmd_buffer*, %struct.qeth_cmd_buffer** %5, align 8
  %10 = getelementptr inbounds %struct.qeth_cmd_buffer, %struct.qeth_cmd_buffer* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i64 @IS_IPA(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %162

14:                                               ; preds = %2
  %15 = load %struct.qeth_cmd_buffer*, %struct.qeth_cmd_buffer** %5, align 8
  %16 = getelementptr inbounds %struct.qeth_cmd_buffer, %struct.qeth_cmd_buffer* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i64 @PDU_ENCAPSULATION(i32 %17)
  %19 = inttoptr i64 %18 to %struct.qeth_ipa_cmd*
  store %struct.qeth_ipa_cmd* %19, %struct.qeth_ipa_cmd** %6, align 8
  %20 = load %struct.qeth_ipa_cmd*, %struct.qeth_ipa_cmd** %6, align 8
  %21 = call i64 @IS_IPA_REPLY(%struct.qeth_ipa_cmd* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %60

23:                                               ; preds = %14
  %24 = load %struct.qeth_ipa_cmd*, %struct.qeth_ipa_cmd** %6, align 8
  %25 = getelementptr inbounds %struct.qeth_ipa_cmd, %struct.qeth_ipa_cmd* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @IPA_CMD_SETCCID, align 4
  %29 = icmp ne i32 %27, %28
  br i1 %29, label %30, label %58

30:                                               ; preds = %23
  %31 = load %struct.qeth_ipa_cmd*, %struct.qeth_ipa_cmd** %6, align 8
  %32 = getelementptr inbounds %struct.qeth_ipa_cmd, %struct.qeth_ipa_cmd* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @IPA_CMD_DELCCID, align 4
  %36 = icmp ne i32 %34, %35
  br i1 %36, label %37, label %58

37:                                               ; preds = %30
  %38 = load %struct.qeth_ipa_cmd*, %struct.qeth_ipa_cmd** %6, align 8
  %39 = getelementptr inbounds %struct.qeth_ipa_cmd, %struct.qeth_ipa_cmd* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = icmp ne i32 %41, 132
  br i1 %42, label %43, label %58

43:                                               ; preds = %37
  %44 = load %struct.qeth_ipa_cmd*, %struct.qeth_ipa_cmd** %6, align 8
  %45 = getelementptr inbounds %struct.qeth_ipa_cmd, %struct.qeth_ipa_cmd* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @IPA_CMD_SET_DIAG_ASS, align 4
  %49 = icmp ne i32 %47, %48
  br i1 %49, label %50, label %58

50:                                               ; preds = %43
  %51 = load %struct.qeth_ipa_cmd*, %struct.qeth_ipa_cmd** %6, align 8
  %52 = load %struct.qeth_ipa_cmd*, %struct.qeth_ipa_cmd** %6, align 8
  %53 = getelementptr inbounds %struct.qeth_ipa_cmd, %struct.qeth_ipa_cmd* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %57 = call i32 @qeth_issue_ipa_msg(%struct.qeth_ipa_cmd* %51, i32 %55, %struct.qeth_card* %56)
  br label %58

58:                                               ; preds = %50, %43, %37, %30, %23
  %59 = load %struct.qeth_ipa_cmd*, %struct.qeth_ipa_cmd** %6, align 8
  store %struct.qeth_ipa_cmd* %59, %struct.qeth_ipa_cmd** %3, align 8
  br label %164

60:                                               ; preds = %14
  %61 = load %struct.qeth_ipa_cmd*, %struct.qeth_ipa_cmd** %6, align 8
  %62 = getelementptr inbounds %struct.qeth_ipa_cmd, %struct.qeth_ipa_cmd* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  switch i32 %64, label %158 [
    i32 129, label %65
    i32 130, label %120
    i32 132, label %150
    i32 131, label %152
    i32 128, label %155
  ]

65:                                               ; preds = %60
  %66 = load %struct.qeth_ipa_cmd*, %struct.qeth_ipa_cmd** %6, align 8
  %67 = getelementptr inbounds %struct.qeth_ipa_cmd, %struct.qeth_ipa_cmd* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @IPA_RC_VEPA_TO_VEB_TRANSITION, align 4
  %71 = icmp eq i32 %69, %70
  br i1 %71, label %72, label %82

72:                                               ; preds = %65
  %73 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %74 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %73, i32 0, i32 3
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 0
  %77 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %78 = call i32 @QETH_CARD_IFNAME(%struct.qeth_card* %77)
  %79 = call i32 @dev_err(i32* %76, i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str.1, i64 0, i64 0), i32 %78)
  %80 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %81 = call i32 @qeth_close_dev(%struct.qeth_card* %80)
  br label %101

82:                                               ; preds = %65
  %83 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %84 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %83, i32 0, i32 3
  %85 = load %struct.TYPE_5__*, %struct.TYPE_5__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 0
  %87 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %88 = call i32 @QETH_CARD_IFNAME(%struct.qeth_card* %87)
  %89 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %90 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @dev_warn(i32* %86, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0), i32 %88, i32 %92)
  %94 = load %struct.qeth_ipa_cmd*, %struct.qeth_ipa_cmd** %6, align 8
  %95 = load %struct.qeth_ipa_cmd*, %struct.qeth_ipa_cmd** %6, align 8
  %96 = getelementptr inbounds %struct.qeth_ipa_cmd, %struct.qeth_ipa_cmd* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %100 = call i32 @qeth_issue_ipa_msg(%struct.qeth_ipa_cmd* %94, i32 %98, %struct.qeth_card* %99)
  br label %101

101:                                              ; preds = %82, %72
  %102 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %103 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %102, i32 0, i32 0
  store i32 0, i32* %103, align 8
  %104 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %105 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %119

108:                                              ; preds = %101
  %109 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %110 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @netif_carrier_ok(i32 %111)
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %119

114:                                              ; preds = %108
  %115 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %116 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 4
  %118 = call i32 @netif_carrier_off(i32 %117)
  br label %119

119:                                              ; preds = %114, %108, %101
  store %struct.qeth_ipa_cmd* null, %struct.qeth_ipa_cmd** %3, align 8
  br label %164

120:                                              ; preds = %60
  %121 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %122 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %121, i32 0, i32 3
  %123 = load %struct.TYPE_5__*, %struct.TYPE_5__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %123, i32 0, i32 0
  %125 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %126 = call i32 @QETH_CARD_IFNAME(%struct.qeth_card* %125)
  %127 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %128 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %127, i32 0, i32 1
  %129 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = call i32 @dev_info(i32* %124, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.3, i64 0, i64 0), i32 %126, i32 %130)
  %132 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %133 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %132, i32 0, i32 2
  %134 = load i32, i32* %133, align 4
  %135 = call i32 @netif_carrier_on(i32 %134)
  %136 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %137 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %136, i32 0, i32 0
  store i32 1, i32* %137, align 8
  %138 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %139 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %138, i32 0, i32 1
  %140 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %147

143:                                              ; preds = %120
  %144 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %145 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %144, i32 0, i32 1
  %146 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %145, i32 0, i32 0
  store i32 2, i32* %146, align 4
  br label %147

147:                                              ; preds = %143, %120
  %148 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %149 = call i32 @qeth_schedule_recovery(%struct.qeth_card* %148)
  store %struct.qeth_ipa_cmd* null, %struct.qeth_ipa_cmd** %3, align 8
  br label %164

150:                                              ; preds = %60
  %151 = load %struct.qeth_ipa_cmd*, %struct.qeth_ipa_cmd** %6, align 8
  store %struct.qeth_ipa_cmd* %151, %struct.qeth_ipa_cmd** %3, align 8
  br label %164

152:                                              ; preds = %60
  %153 = load i32, i32* @TRACE, align 4
  %154 = call i32 @QETH_DBF_TEXT(i32 %153, i32 3, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  br label %160

155:                                              ; preds = %60
  %156 = load i32, i32* @TRACE, align 4
  %157 = call i32 @QETH_DBF_TEXT(i32 %156, i32 3, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  br label %160

158:                                              ; preds = %60
  %159 = call i32 @QETH_DBF_MESSAGE(i32 2, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.6, i64 0, i64 0))
  br label %160

160:                                              ; preds = %158, %155, %152
  br label %161

161:                                              ; preds = %160
  br label %162

162:                                              ; preds = %161, %2
  %163 = load %struct.qeth_ipa_cmd*, %struct.qeth_ipa_cmd** %6, align 8
  store %struct.qeth_ipa_cmd* %163, %struct.qeth_ipa_cmd** %3, align 8
  br label %164

164:                                              ; preds = %162, %150, %147, %119, %58
  %165 = load %struct.qeth_ipa_cmd*, %struct.qeth_ipa_cmd** %3, align 8
  ret %struct.qeth_ipa_cmd* %165
}

declare dso_local i32 @QETH_DBF_TEXT(i32, i32, i8*) #1

declare dso_local i64 @IS_IPA(i32) #1

declare dso_local i64 @PDU_ENCAPSULATION(i32) #1

declare dso_local i64 @IS_IPA_REPLY(%struct.qeth_ipa_cmd*) #1

declare dso_local i32 @qeth_issue_ipa_msg(%struct.qeth_ipa_cmd*, i32, %struct.qeth_card*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @QETH_CARD_IFNAME(%struct.qeth_card*) #1

declare dso_local i32 @qeth_close_dev(%struct.qeth_card*) #1

declare dso_local i32 @dev_warn(i32*, i8*, i32, i32) #1

declare dso_local i32 @netif_carrier_ok(i32) #1

declare dso_local i32 @netif_carrier_off(i32) #1

declare dso_local i32 @dev_info(i32*, i8*, i32, i32) #1

declare dso_local i32 @netif_carrier_on(i32) #1

declare dso_local i32 @qeth_schedule_recovery(%struct.qeth_card*) #1

declare dso_local i32 @QETH_DBF_MESSAGE(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
