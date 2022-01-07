; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_qeth_l3_main.c_qeth_l3_send_checksum_command.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_qeth_l3_main.c_qeth_l3_send_checksum_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qeth_card = type { %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@IPA_INBOUND_CHECKSUM = common dso_local global i32 0, align 4
@IPA_CMD_ASS_START = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [63 x i8] c"Starting HW checksumming for %s failed, using SW checksumming\0A\00", align 1
@IPA_CMD_ASS_ENABLE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [63 x i8] c"Enabling HW checksumming for %s failed, using SW checksumming\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qeth_card*)* @qeth_l3_send_checksum_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qeth_l3_send_checksum_command(%struct.qeth_card* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.qeth_card*, align 8
  %4 = alloca i32, align 4
  store %struct.qeth_card* %0, %struct.qeth_card** %3, align 8
  %5 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %6 = load i32, i32* @IPA_INBOUND_CHECKSUM, align 4
  %7 = load i32, i32* @IPA_CMD_ASS_START, align 4
  %8 = call i32 @qeth_l3_send_simple_setassparms(%struct.qeth_card* %5, i32 %6, i32 %7, i32 0)
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %20

11:                                               ; preds = %1
  %12 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %13 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %12, i32 0, i32 0
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %17 = call i32 @QETH_CARD_IFNAME(%struct.qeth_card* %16)
  %18 = call i32 @dev_warn(i32* %15, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str, i64 0, i64 0), i32 %17)
  %19 = load i32, i32* %4, align 4
  store i32 %19, i32* %2, align 4
  br label %41

20:                                               ; preds = %1
  %21 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %22 = load i32, i32* @IPA_INBOUND_CHECKSUM, align 4
  %23 = load i32, i32* @IPA_CMD_ASS_ENABLE, align 4
  %24 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %25 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @qeth_l3_send_simple_setassparms(%struct.qeth_card* %21, i32 %22, i32 %23, i32 %27)
  store i32 %28, i32* %4, align 4
  %29 = load i32, i32* %4, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %40

31:                                               ; preds = %20
  %32 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %33 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %32, i32 0, i32 0
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %37 = call i32 @QETH_CARD_IFNAME(%struct.qeth_card* %36)
  %38 = call i32 @dev_warn(i32* %35, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.1, i64 0, i64 0), i32 %37)
  %39 = load i32, i32* %4, align 4
  store i32 %39, i32* %2, align 4
  br label %41

40:                                               ; preds = %20
  store i32 0, i32* %2, align 4
  br label %41

41:                                               ; preds = %40, %31, %11
  %42 = load i32, i32* %2, align 4
  ret i32 %42
}

declare dso_local i32 @qeth_l3_send_simple_setassparms(%struct.qeth_card*, i32, i32, i32) #1

declare dso_local i32 @dev_warn(i32*, i8*, i32) #1

declare dso_local i32 @QETH_CARD_IFNAME(%struct.qeth_card*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
