; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/capi/extr_kcapi.c_capi20_isinstalled.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/capi/extr_kcapi.c_capi20_isinstalled.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@CAPI_MAXCONTR = common dso_local global i32 0, align 4
@capi_cards = common dso_local global %struct.TYPE_2__** null, align 8
@CARD_RUNNING = common dso_local global i64 0, align 8
@CAPI_NOERROR = common dso_local global i32 0, align 4
@CAPI_REGNOTINSTALLED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @capi20_isinstalled() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 0, i32* %2, align 4
  br label %3

3:                                                ; preds = %27, %0
  %4 = load i32, i32* %2, align 4
  %5 = load i32, i32* @CAPI_MAXCONTR, align 4
  %6 = icmp slt i32 %4, %5
  br i1 %6, label %7, label %30

7:                                                ; preds = %3
  %8 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @capi_cards, align 8
  %9 = load i32, i32* %2, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %8, i64 %10
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = icmp ne %struct.TYPE_2__* %12, null
  br i1 %13, label %14, label %26

14:                                               ; preds = %7
  %15 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @capi_cards, align 8
  %16 = load i32, i32* %2, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %15, i64 %17
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @CARD_RUNNING, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %14
  %25 = load i32, i32* @CAPI_NOERROR, align 4
  store i32 %25, i32* %1, align 4
  br label %32

26:                                               ; preds = %14, %7
  br label %27

27:                                               ; preds = %26
  %28 = load i32, i32* %2, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %2, align 4
  br label %3

30:                                               ; preds = %3
  %31 = load i32, i32* @CAPI_REGNOTINSTALLED, align 4
  store i32 %31, i32* %1, align 4
  br label %32

32:                                               ; preds = %30, %24
  %33 = load i32, i32* %1, align 4
  ret i32 %33
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
