; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_qeth_core_main.c_qeth_check_qdio_errors.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_qeth_core_main.c_qeth_check_qdio_errors.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qeth_card = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.qdio_buffer = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@TRACE = common dso_local global i32 0, align 4
@QERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c" F15=%02X\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c" F14=%02X\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c" qerr=%X\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qeth_check_qdio_errors(%struct.qeth_card* %0, %struct.qdio_buffer* %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.qeth_card*, align 8
  %7 = alloca %struct.qdio_buffer*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  store %struct.qeth_card* %0, %struct.qeth_card** %6, align 8
  store %struct.qdio_buffer* %1, %struct.qdio_buffer** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %10 = load i32, i32* %8, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %52

12:                                               ; preds = %4
  %13 = load i32, i32* @TRACE, align 4
  %14 = load i8*, i8** %9, align 8
  %15 = call i32 @QETH_DBF_TEXT(i32 %13, i32 2, i8* %14)
  %16 = load i32, i32* @QERR, align 4
  %17 = load i8*, i8** %9, align 8
  %18 = call i32 @QETH_DBF_TEXT(i32 %16, i32 2, i8* %17)
  %19 = load i32, i32* @QERR, align 4
  %20 = load %struct.qdio_buffer*, %struct.qdio_buffer** %7, align 8
  %21 = getelementptr inbounds %struct.qdio_buffer, %struct.qdio_buffer* %20, i32 0, i32 0
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i64 15
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @QETH_DBF_TEXT_(i32 %19, i32 2, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %25)
  %27 = load i32, i32* @QERR, align 4
  %28 = load %struct.qdio_buffer*, %struct.qdio_buffer** %7, align 8
  %29 = getelementptr inbounds %struct.qdio_buffer, %struct.qdio_buffer* %28, i32 0, i32 0
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i64 14
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @QETH_DBF_TEXT_(i32 %27, i32 2, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %33)
  %35 = load i32, i32* @QERR, align 4
  %36 = load i32, i32* %8, align 4
  %37 = call i32 @QETH_DBF_TEXT_(i32 %35, i32 2, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 %36)
  %38 = load %struct.qdio_buffer*, %struct.qdio_buffer** %7, align 8
  %39 = getelementptr inbounds %struct.qdio_buffer, %struct.qdio_buffer* %38, i32 0, i32 0
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i64 15
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = icmp eq i32 %43, 18
  br i1 %44, label %45, label %51

45:                                               ; preds = %12
  %46 = load %struct.qeth_card*, %struct.qeth_card** %6, align 8
  %47 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %48, align 4
  store i32 0, i32* %5, align 4
  br label %53

51:                                               ; preds = %12
  store i32 1, i32* %5, align 4
  br label %53

52:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %53

53:                                               ; preds = %52, %51, %45
  %54 = load i32, i32* %5, align 4
  ret i32 %54
}

declare dso_local i32 @QETH_DBF_TEXT(i32, i32, i8*) #1

declare dso_local i32 @QETH_DBF_TEXT_(i32, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
