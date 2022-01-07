; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_qeth_l2_main.c_qeth_l2_send_setgroupmac.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_qeth_l2_main.c_qeth_l2_send_setgroupmac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qeth_card = type { i32 }

@TRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"L2Sgmac\00", align 1
@IPA_CMD_SETGMAC = common dso_local global i32 0, align 4
@qeth_l2_send_setgroupmac_cb = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qeth_card*, i32*)* @qeth_l2_send_setgroupmac to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qeth_l2_send_setgroupmac(%struct.qeth_card* %0, i32* %1) #0 {
  %3 = alloca %struct.qeth_card*, align 8
  %4 = alloca i32*, align 8
  store %struct.qeth_card* %0, %struct.qeth_card** %3, align 8
  store i32* %1, i32** %4, align 8
  %5 = load i32, i32* @TRACE, align 4
  %6 = call i32 @QETH_DBF_TEXT(i32 %5, i32 2, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %7 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %8 = load i32*, i32** %4, align 8
  %9 = load i32, i32* @IPA_CMD_SETGMAC, align 4
  %10 = load i32, i32* @qeth_l2_send_setgroupmac_cb, align 4
  %11 = call i32 @qeth_l2_send_setdelmac(%struct.qeth_card* %7, i32* %8, i32 %9, i32 %10)
  ret i32 %11
}

declare dso_local i32 @QETH_DBF_TEXT(i32, i32, i8*) #1

declare dso_local i32 @qeth_l2_send_setdelmac(%struct.qeth_card*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
