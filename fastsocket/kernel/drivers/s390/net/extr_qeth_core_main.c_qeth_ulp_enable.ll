; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_qeth_core_main.c_qeth_ulp_enable.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_qeth_core_main.c_qeth_ulp_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qeth_card = type { %struct.TYPE_6__, %struct.TYPE_5__, %struct.TYPE_4__, i32 }
%struct.TYPE_6__ = type { i64, i8*, i64 }
%struct.TYPE_5__ = type { i8, i8 }
%struct.TYPE_4__ = type { i64 }
%struct.qeth_cmd_buffer = type { i32 }

@SETUP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"ulpenabl\00", align 1
@ULP_ENABLE = common dso_local global i8* null, align 8
@ULP_ENABLE_SIZE = common dso_local global i32 0, align 4
@QETH_CARD_TYPE_OSN = common dso_local global i64 0, align 8
@QETH_PROT_OSN2 = common dso_local global i8 0, align 1
@QETH_PROT_LAYER2 = common dso_local global i8 0, align 1
@QETH_PROT_TCPIP = common dso_local global i8 0, align 1
@QETH_MPC_TOKEN_LENGTH = common dso_local global i32 0, align 4
@qeth_ulp_enable_cb = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qeth_card*)* @qeth_ulp_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qeth_ulp_enable(%struct.qeth_card* %0) #0 {
  %2 = alloca %struct.qeth_card*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8, align 1
  %5 = alloca %struct.qeth_cmd_buffer*, align 8
  store %struct.qeth_card* %0, %struct.qeth_card** %2, align 8
  %6 = load i32, i32* @SETUP, align 4
  %7 = call i32 @QETH_DBF_TEXT(i32 %6, i32 2, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %8 = load %struct.qeth_card*, %struct.qeth_card** %2, align 8
  %9 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %8, i32 0, i32 3
  %10 = call %struct.qeth_cmd_buffer* @qeth_wait_for_buffer(i32* %9)
  store %struct.qeth_cmd_buffer* %10, %struct.qeth_cmd_buffer** %5, align 8
  %11 = load %struct.qeth_cmd_buffer*, %struct.qeth_cmd_buffer** %5, align 8
  %12 = getelementptr inbounds %struct.qeth_cmd_buffer, %struct.qeth_cmd_buffer* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i8*, i8** @ULP_ENABLE, align 8
  %15 = load i32, i32* @ULP_ENABLE_SIZE, align 4
  %16 = call i32 @memcpy(i32 %13, i8* %14, i32 %15)
  %17 = load %struct.qeth_card*, %struct.qeth_card** %2, align 8
  %18 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 2
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.qeth_cmd_buffer*, %struct.qeth_cmd_buffer** %5, align 8
  %22 = getelementptr inbounds %struct.qeth_cmd_buffer, %struct.qeth_cmd_buffer* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i64* @QETH_ULP_ENABLE_LINKNUM(i32 %23)
  store i64 %20, i64* %24, align 8
  %25 = load %struct.qeth_card*, %struct.qeth_card** %2, align 8
  %26 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %25, i32 0, i32 2
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %42

30:                                               ; preds = %1
  %31 = load %struct.qeth_card*, %struct.qeth_card** %2, align 8
  %32 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @QETH_CARD_TYPE_OSN, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %30
  %38 = load i8, i8* @QETH_PROT_OSN2, align 1
  store i8 %38, i8* %4, align 1
  br label %41

39:                                               ; preds = %30
  %40 = load i8, i8* @QETH_PROT_LAYER2, align 1
  store i8 %40, i8* %4, align 1
  br label %41

41:                                               ; preds = %39, %37
  br label %44

42:                                               ; preds = %1
  %43 = load i8, i8* @QETH_PROT_TCPIP, align 1
  store i8 %43, i8* %4, align 1
  br label %44

44:                                               ; preds = %42, %41
  %45 = load %struct.qeth_cmd_buffer*, %struct.qeth_cmd_buffer** %5, align 8
  %46 = getelementptr inbounds %struct.qeth_cmd_buffer, %struct.qeth_cmd_buffer* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @QETH_ULP_ENABLE_PROT_TYPE(i32 %47)
  %49 = call i32 @memcpy(i32 %48, i8* %4, i32 1)
  %50 = load %struct.qeth_cmd_buffer*, %struct.qeth_cmd_buffer** %5, align 8
  %51 = getelementptr inbounds %struct.qeth_cmd_buffer, %struct.qeth_cmd_buffer* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @QETH_ULP_ENABLE_DEST_ADDR(i32 %52)
  %54 = load %struct.qeth_card*, %struct.qeth_card** %2, align 8
  %55 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 0
  %57 = load i32, i32* @QETH_MPC_TOKEN_LENGTH, align 4
  %58 = call i32 @memcpy(i32 %53, i8* %56, i32 %57)
  %59 = load %struct.qeth_cmd_buffer*, %struct.qeth_cmd_buffer** %5, align 8
  %60 = getelementptr inbounds %struct.qeth_cmd_buffer, %struct.qeth_cmd_buffer* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @QETH_ULP_ENABLE_FILTER_TOKEN(i32 %61)
  %63 = load %struct.qeth_card*, %struct.qeth_card** %2, align 8
  %64 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 1
  %66 = load i32, i32* @QETH_MPC_TOKEN_LENGTH, align 4
  %67 = call i32 @memcpy(i32 %62, i8* %65, i32 %66)
  %68 = load %struct.qeth_cmd_buffer*, %struct.qeth_cmd_buffer** %5, align 8
  %69 = getelementptr inbounds %struct.qeth_cmd_buffer, %struct.qeth_cmd_buffer* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @QETH_ULP_ENABLE_PORTNAME_AND_LL(i32 %70)
  %72 = load %struct.qeth_card*, %struct.qeth_card** %2, align 8
  %73 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 1
  %75 = load i8*, i8** %74, align 8
  %76 = call i32 @memcpy(i32 %71, i8* %75, i32 9)
  %77 = load %struct.qeth_card*, %struct.qeth_card** %2, align 8
  %78 = load i32, i32* @ULP_ENABLE_SIZE, align 4
  %79 = load %struct.qeth_cmd_buffer*, %struct.qeth_cmd_buffer** %5, align 8
  %80 = load i32, i32* @qeth_ulp_enable_cb, align 4
  %81 = call i32 @qeth_send_control_data(%struct.qeth_card* %77, i32 %78, %struct.qeth_cmd_buffer* %79, i32 %80, i32* null)
  store i32 %81, i32* %3, align 4
  %82 = load i32, i32* %3, align 4
  ret i32 %82
}

declare dso_local i32 @QETH_DBF_TEXT(i32, i32, i8*) #1

declare dso_local %struct.qeth_cmd_buffer* @qeth_wait_for_buffer(i32*) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

declare dso_local i64* @QETH_ULP_ENABLE_LINKNUM(i32) #1

declare dso_local i32 @QETH_ULP_ENABLE_PROT_TYPE(i32) #1

declare dso_local i32 @QETH_ULP_ENABLE_DEST_ADDR(i32) #1

declare dso_local i32 @QETH_ULP_ENABLE_FILTER_TOKEN(i32) #1

declare dso_local i32 @QETH_ULP_ENABLE_PORTNAME_AND_LL(i32) #1

declare dso_local i32 @qeth_send_control_data(%struct.qeth_card*, i32, %struct.qeth_cmd_buffer*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
