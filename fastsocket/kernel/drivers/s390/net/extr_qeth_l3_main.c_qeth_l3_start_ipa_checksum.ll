; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_qeth_l3_main.c_qeth_l3_start_ipa_checksum.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_qeth_l3_main.c_qeth_l3_start_ipa_checksum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qeth_card = type { %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i64 }

@TRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"strtcsum\00", align 1
@NO_CHECKSUMMING = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [30 x i8] c"Using no checksumming on %s.\0A\00", align 1
@SW_CHECKSUMMING = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [30 x i8] c"Using SW checksumming on %s.\0A\00", align 1
@IPA_INBOUND_CHECKSUM = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [87 x i8] c"Inbound HW Checksumming not supported on %s,\0Acontinuing using Inbound SW Checksumming\0A\00", align 1
@.str.4 = private unnamed_addr constant [35 x i8] c"HW Checksumming (inbound) enabled\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qeth_card*)* @qeth_l3_start_ipa_checksum to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qeth_l3_start_ipa_checksum(%struct.qeth_card* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.qeth_card*, align 8
  %4 = alloca i32, align 4
  store %struct.qeth_card* %0, %struct.qeth_card** %3, align 8
  store i32 0, i32* %4, align 4
  %5 = load i32, i32* @TRACE, align 4
  %6 = call i32 @QETH_DBF_TEXT(i32 %5, i32 3, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %7 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %8 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @NO_CHECKSUMMING, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %21

13:                                               ; preds = %1
  %14 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %15 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %14, i32 0, i32 0
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %19 = call i32 @QETH_CARD_IFNAME(%struct.qeth_card* %18)
  %20 = call i32 (i32*, i8*, ...) @dev_info(i32* %17, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %19)
  store i32 0, i32* %2, align 4
  br label %66

21:                                               ; preds = %1
  %22 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %23 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @SW_CHECKSUMMING, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %36

28:                                               ; preds = %21
  %29 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %30 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %29, i32 0, i32 0
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %34 = call i32 @QETH_CARD_IFNAME(%struct.qeth_card* %33)
  %35 = call i32 (i32*, i8*, ...) @dev_info(i32* %32, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %34)
  store i32 0, i32* %2, align 4
  br label %66

36:                                               ; preds = %21
  %37 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %38 = load i32, i32* @IPA_INBOUND_CHECKSUM, align 4
  %39 = call i32 @qeth_is_supported(%struct.qeth_card* %37, i32 %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %53, label %41

41:                                               ; preds = %36
  %42 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %43 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %42, i32 0, i32 0
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %47 = call i32 @QETH_CARD_IFNAME(%struct.qeth_card* %46)
  %48 = call i32 (i32*, i8*, ...) @dev_info(i32* %45, i8* getelementptr inbounds ([87 x i8], [87 x i8]* @.str.3, i64 0, i64 0), i32 %47)
  %49 = load i64, i64* @SW_CHECKSUMMING, align 8
  %50 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %51 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  store i64 %49, i64* %52, align 8
  store i32 0, i32* %2, align 4
  br label %66

53:                                               ; preds = %36
  %54 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %55 = call i32 @qeth_l3_send_checksum_command(%struct.qeth_card* %54)
  store i32 %55, i32* %4, align 4
  %56 = load i32, i32* %4, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %64, label %58

58:                                               ; preds = %53
  %59 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %60 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %59, i32 0, i32 0
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = call i32 (i32*, i8*, ...) @dev_info(i32* %62, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0))
  br label %64

64:                                               ; preds = %58, %53
  %65 = load i32, i32* %4, align 4
  store i32 %65, i32* %2, align 4
  br label %66

66:                                               ; preds = %64, %41, %28, %13
  %67 = load i32, i32* %2, align 4
  ret i32 %67
}

declare dso_local i32 @QETH_DBF_TEXT(i32, i32, i8*) #1

declare dso_local i32 @dev_info(i32*, i8*, ...) #1

declare dso_local i32 @QETH_CARD_IFNAME(%struct.qeth_card*) #1

declare dso_local i32 @qeth_is_supported(%struct.qeth_card*, i32) #1

declare dso_local i32 @qeth_l3_send_checksum_command(%struct.qeth_card*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
