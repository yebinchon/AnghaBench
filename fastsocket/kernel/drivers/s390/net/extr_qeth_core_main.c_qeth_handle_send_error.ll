; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_qeth_core_main.c_qeth_handle_send_error.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_qeth_core_main.c_qeth_handle_send_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qeth_card = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }
%struct.qeth_qdio_out_buffer = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }

@TRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"hdsnderr\00", align 1
@QETH_CARD_TYPE_IQD = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [8 x i8] c"qouterr\00", align 1
@QETH_SEND_ERROR_NONE = common dso_local global i32 0, align 4
@QETH_SEND_ERROR_RETRY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"lnkfail\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"%04x %02x\00", align 1
@QETH_SEND_ERROR_LINK_FAILURE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qeth_card*, %struct.qeth_qdio_out_buffer*, i32)* @qeth_handle_send_error to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qeth_handle_send_error(%struct.qeth_card* %0, %struct.qeth_qdio_out_buffer* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.qeth_card*, align 8
  %6 = alloca %struct.qeth_qdio_out_buffer*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.qeth_card* %0, %struct.qeth_card** %5, align 8
  store %struct.qeth_qdio_out_buffer* %1, %struct.qeth_qdio_out_buffer** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.qeth_qdio_out_buffer*, %struct.qeth_qdio_out_buffer** %6, align 8
  %10 = getelementptr inbounds %struct.qeth_qdio_out_buffer, %struct.qeth_qdio_out_buffer* %9, i32 0, i32 0
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i64 15
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* @TRACE, align 4
  %18 = call i32 @QETH_DBF_TEXT(i32 %17, i32 6, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %19 = load %struct.qeth_card*, %struct.qeth_card** %5, align 8
  %20 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @QETH_CARD_TYPE_IQD, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %31

25:                                               ; preds = %3
  %26 = load i32, i32* %8, align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %25
  store i32 0, i32* %7, align 4
  br label %30

29:                                               ; preds = %25
  store i32 1, i32* %7, align 4
  br label %30

30:                                               ; preds = %29, %28
  br label %31

31:                                               ; preds = %30, %3
  %32 = load %struct.qeth_card*, %struct.qeth_card** %5, align 8
  %33 = load %struct.qeth_qdio_out_buffer*, %struct.qeth_qdio_out_buffer** %6, align 8
  %34 = getelementptr inbounds %struct.qeth_qdio_out_buffer, %struct.qeth_qdio_out_buffer* %33, i32 0, i32 0
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %34, align 8
  %36 = load i32, i32* %7, align 4
  %37 = call i32 @qeth_check_qdio_errors(%struct.qeth_card* %32, %struct.TYPE_6__* %35, i32 %36, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %38 = load i32, i32* %7, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %42, label %40

40:                                               ; preds = %31
  %41 = load i32, i32* @QETH_SEND_ERROR_NONE, align 4
  store i32 %41, i32* %4, align 4
  br label %62

42:                                               ; preds = %31
  %43 = load i32, i32* %8, align 4
  %44 = icmp sge i32 %43, 15
  br i1 %44, label %45, label %50

45:                                               ; preds = %42
  %46 = load i32, i32* %8, align 4
  %47 = icmp sle i32 %46, 31
  br i1 %47, label %48, label %50

48:                                               ; preds = %45
  %49 = load i32, i32* @QETH_SEND_ERROR_RETRY, align 4
  store i32 %49, i32* %4, align 4
  br label %62

50:                                               ; preds = %45, %42
  %51 = load i32, i32* @TRACE, align 4
  %52 = call i32 @QETH_DBF_TEXT(i32 %51, i32 1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %53 = load i32, i32* @TRACE, align 4
  %54 = load %struct.qeth_card*, %struct.qeth_card** %5, align 8
  %55 = call i32 @CARD_BUS_ID(%struct.qeth_card* %54)
  %56 = call i32 (i32, i32, i8*, i32, ...) @QETH_DBF_TEXT_(i32 %53, i32 1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32 %55)
  %57 = load i32, i32* @TRACE, align 4
  %58 = load i32, i32* %7, align 4
  %59 = load i32, i32* %8, align 4
  %60 = call i32 (i32, i32, i8*, i32, ...) @QETH_DBF_TEXT_(i32 %57, i32 1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i32 %58, i32 %59)
  %61 = load i32, i32* @QETH_SEND_ERROR_LINK_FAILURE, align 4
  store i32 %61, i32* %4, align 4
  br label %62

62:                                               ; preds = %50, %48, %40
  %63 = load i32, i32* %4, align 4
  ret i32 %63
}

declare dso_local i32 @QETH_DBF_TEXT(i32, i32, i8*) #1

declare dso_local i32 @qeth_check_qdio_errors(%struct.qeth_card*, %struct.TYPE_6__*, i32, i8*) #1

declare dso_local i32 @QETH_DBF_TEXT_(i32, i32, i8*, i32, ...) #1

declare dso_local i32 @CARD_BUS_ID(%struct.qeth_card*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
