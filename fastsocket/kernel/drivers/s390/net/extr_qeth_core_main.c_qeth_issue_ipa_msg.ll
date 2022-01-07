; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_qeth_core_main.c_qeth_issue_ipa_msg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_qeth_core_main.c_qeth_issue_ipa_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qeth_ipa_cmd = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.qeth_card = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [42 x i8] c"IPA: %s(x%X) for %s/%s returned x%X \22%s\22\0A\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"IPA: %s(x%X) for %s/%s succeeded\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qeth_ipa_cmd*, i32, %struct.qeth_card*)* @qeth_issue_ipa_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qeth_issue_ipa_msg(%struct.qeth_ipa_cmd* %0, i32 %1, %struct.qeth_card* %2) #0 {
  %4 = alloca %struct.qeth_ipa_cmd*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.qeth_card*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store %struct.qeth_ipa_cmd* %0, %struct.qeth_ipa_cmd** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.qeth_card* %2, %struct.qeth_card** %6, align 8
  %9 = load %struct.qeth_ipa_cmd*, %struct.qeth_ipa_cmd** %4, align 8
  %10 = getelementptr inbounds %struct.qeth_ipa_cmd, %struct.qeth_ipa_cmd* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %8, align 4
  %13 = load i32, i32* %8, align 4
  %14 = call i8* @qeth_get_ipa_cmd_name(i32 %13)
  store i8* %14, i8** %7, align 8
  %15 = load i32, i32* %5, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %31

17:                                               ; preds = %3
  %18 = load i8*, i8** %7, align 8
  %19 = load i32, i32* %8, align 4
  %20 = load %struct.qeth_card*, %struct.qeth_card** %6, align 8
  %21 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %20, i32 0, i32 0
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = call i32 @dev_name(i32* %23)
  %25 = load %struct.qeth_card*, %struct.qeth_card** %6, align 8
  %26 = call i32 @QETH_CARD_IFNAME(%struct.qeth_card* %25)
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* %5, align 4
  %29 = call i32 @qeth_get_ipa_msg(i32 %28)
  %30 = call i32 (i32, i8*, i8*, i32, i32, i32, ...) @QETH_DBF_MESSAGE(i32 2, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i8* %18, i32 %19, i32 %24, i32 %26, i32 %27, i32 %29)
  br label %42

31:                                               ; preds = %3
  %32 = load i8*, i8** %7, align 8
  %33 = load i32, i32* %8, align 4
  %34 = load %struct.qeth_card*, %struct.qeth_card** %6, align 8
  %35 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %34, i32 0, i32 0
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = call i32 @dev_name(i32* %37)
  %39 = load %struct.qeth_card*, %struct.qeth_card** %6, align 8
  %40 = call i32 @QETH_CARD_IFNAME(%struct.qeth_card* %39)
  %41 = call i32 (i32, i8*, i8*, i32, i32, i32, ...) @QETH_DBF_MESSAGE(i32 5, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i8* %32, i32 %33, i32 %38, i32 %40)
  br label %42

42:                                               ; preds = %31, %17
  ret void
}

declare dso_local i8* @qeth_get_ipa_cmd_name(i32) #1

declare dso_local i32 @QETH_DBF_MESSAGE(i32, i8*, i8*, i32, i32, i32, ...) #1

declare dso_local i32 @dev_name(i32*) #1

declare dso_local i32 @QETH_CARD_IFNAME(%struct.qeth_card*) #1

declare dso_local i32 @qeth_get_ipa_msg(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
