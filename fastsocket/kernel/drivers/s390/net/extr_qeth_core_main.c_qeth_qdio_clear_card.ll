; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_qeth_core_main.c_qeth_qdio_clear_card.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_qeth_core_main.c_qeth_qdio_clear_card.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qeth_card = type { i32, %struct.TYPE_3__, %struct.TYPE_4__ }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@TRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"qdioclr\00", align 1
@QETH_CARD_TYPE_IQD = common dso_local global i32 0, align 4
@QDIO_FLAG_CLEANUP_USING_HALT = common dso_local global i32 0, align 4
@QDIO_FLAG_CLEANUP_USING_CLEAR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"1err%d\00", align 1
@QETH_QDIO_ALLOCATED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"2err%d\00", align 1
@CARD_STATE_DOWN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qeth_qdio_clear_card(%struct.qeth_card* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.qeth_card*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.qeth_card* %0, %struct.qeth_card** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %7 = load i32, i32* @TRACE, align 4
  %8 = call i32 @QETH_DBF_TEXT(i32 %7, i32 3, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %9 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %10 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = call i32 @atomic_cmpxchg(i32* %11, i32 128, i32 129)
  switch i32 %12, label %45 [
    i32 128, label %13
    i32 129, label %43
  ]

13:                                               ; preds = %2
  %14 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %15 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %14, i32 0, i32 2
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @QETH_CARD_TYPE_IQD, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %25

20:                                               ; preds = %13
  %21 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %22 = call i32 @CARD_DDEV(%struct.qeth_card* %21)
  %23 = load i32, i32* @QDIO_FLAG_CLEANUP_USING_HALT, align 4
  %24 = call i32 @qdio_cleanup(i32 %22, i32 %23)
  store i32 %24, i32* %6, align 4
  br label %30

25:                                               ; preds = %13
  %26 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %27 = call i32 @CARD_DDEV(%struct.qeth_card* %26)
  %28 = load i32, i32* @QDIO_FLAG_CLEANUP_USING_CLEAR, align 4
  %29 = call i32 @qdio_cleanup(i32 %27, i32 %28)
  store i32 %29, i32* %6, align 4
  br label %30

30:                                               ; preds = %25, %20
  %31 = load i32, i32* %6, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %30
  %34 = load i32, i32* @TRACE, align 4
  %35 = load i32, i32* %6, align 4
  %36 = call i32 @QETH_DBF_TEXT_(i32 %34, i32 3, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %35)
  br label %37

37:                                               ; preds = %33, %30
  %38 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %39 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load i32, i32* @QETH_QDIO_ALLOCATED, align 4
  %42 = call i32 @atomic_set(i32* %40, i32 %41)
  br label %46

43:                                               ; preds = %2
  %44 = load i32, i32* %6, align 4
  store i32 %44, i32* %3, align 4
  br label %61

45:                                               ; preds = %2
  br label %46

46:                                               ; preds = %45, %37
  %47 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %48 = load i32, i32* %5, align 4
  %49 = call i32 @qeth_clear_halt_card(%struct.qeth_card* %47, i32 %48)
  store i32 %49, i32* %6, align 4
  %50 = load i32, i32* %6, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %46
  %53 = load i32, i32* @TRACE, align 4
  %54 = load i32, i32* %6, align 4
  %55 = call i32 @QETH_DBF_TEXT_(i32 %53, i32 3, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 %54)
  br label %56

56:                                               ; preds = %52, %46
  %57 = load i32, i32* @CARD_STATE_DOWN, align 4
  %58 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %59 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %58, i32 0, i32 0
  store i32 %57, i32* %59, align 4
  %60 = load i32, i32* %6, align 4
  store i32 %60, i32* %3, align 4
  br label %61

61:                                               ; preds = %56, %43
  %62 = load i32, i32* %3, align 4
  ret i32 %62
}

declare dso_local i32 @QETH_DBF_TEXT(i32, i32, i8*) #1

declare dso_local i32 @atomic_cmpxchg(i32*, i32, i32) #1

declare dso_local i32 @qdio_cleanup(i32, i32) #1

declare dso_local i32 @CARD_DDEV(%struct.qeth_card*) #1

declare dso_local i32 @QETH_DBF_TEXT_(i32, i32, i8*, i32) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @qeth_clear_halt_card(%struct.qeth_card*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
