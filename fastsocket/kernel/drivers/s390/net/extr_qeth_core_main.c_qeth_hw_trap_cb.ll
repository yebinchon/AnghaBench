; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_qeth_core_main.c_qeth_hw_trap_cb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_qeth_core_main.c_qeth_hw_trap_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qeth_card = type { i32 }
%struct.qeth_reply = type { i32 }
%struct.qeth_ipa_cmd = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@SETUP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"trapc:%x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qeth_card*, %struct.qeth_reply*, i64)* @qeth_hw_trap_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qeth_hw_trap_cb(%struct.qeth_card* %0, %struct.qeth_reply* %1, i64 %2) #0 {
  %4 = alloca %struct.qeth_card*, align 8
  %5 = alloca %struct.qeth_reply*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.qeth_ipa_cmd*, align 8
  %8 = alloca i64, align 8
  store %struct.qeth_card* %0, %struct.qeth_card** %4, align 8
  store %struct.qeth_reply* %1, %struct.qeth_reply** %5, align 8
  store i64 %2, i64* %6, align 8
  %9 = load i64, i64* %6, align 8
  %10 = inttoptr i64 %9 to %struct.qeth_ipa_cmd*
  store %struct.qeth_ipa_cmd* %10, %struct.qeth_ipa_cmd** %7, align 8
  %11 = load %struct.qeth_ipa_cmd*, %struct.qeth_ipa_cmd** %7, align 8
  %12 = getelementptr inbounds %struct.qeth_ipa_cmd, %struct.qeth_ipa_cmd* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  store i64 %14, i64* %8, align 8
  %15 = load i64, i64* %8, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %3
  %18 = load i32, i32* @SETUP, align 4
  %19 = load i64, i64* %8, align 8
  %20 = call i32 @QETH_DBF_TEXT_(i32 %18, i32 2, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i64 %19)
  br label %21

21:                                               ; preds = %17, %3
  ret i32 0
}

declare dso_local i32 @QETH_DBF_TEXT_(i32, i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
