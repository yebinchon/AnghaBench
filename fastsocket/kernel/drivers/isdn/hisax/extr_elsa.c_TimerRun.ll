; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_elsa.c_TimerRun.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_elsa.c_TimerRun.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.IsdnCardState = type { i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@ELSA_QS1000 = common dso_local global i64 0, align 8
@ELSA_QS3000 = common dso_local global i64 0, align 8
@ELIRQF_TIMER_RUN = common dso_local global i32 0, align 4
@ELSA_PCC8 = common dso_local global i64 0, align 8
@ELIRQF_TIMER_RUN_PCC8 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.IsdnCardState*)* @TimerRun to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @TimerRun(%struct.IsdnCardState* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.IsdnCardState*, align 8
  %4 = alloca i32, align 4
  store %struct.IsdnCardState* %0, %struct.IsdnCardState** %3, align 8
  %5 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %6 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %5, i32 0, i32 1
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = call i32 @bytein(i32 %9)
  store i32 %10, i32* %4, align 4
  %11 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %12 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @ELSA_QS1000, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %22, label %16

16:                                               ; preds = %1
  %17 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %18 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @ELSA_QS3000, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %28

22:                                               ; preds = %16, %1
  %23 = load i32, i32* %4, align 4
  %24 = load i32, i32* @ELIRQF_TIMER_RUN, align 4
  %25 = and i32 %23, %24
  %26 = icmp eq i32 0, %25
  %27 = zext i1 %26 to i32
  store i32 %27, i32* %2, align 4
  br label %43

28:                                               ; preds = %16
  %29 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %30 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @ELSA_PCC8, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %38

34:                                               ; preds = %28
  %35 = load i32, i32* %4, align 4
  %36 = load i32, i32* @ELIRQF_TIMER_RUN_PCC8, align 4
  %37 = and i32 %35, %36
  store i32 %37, i32* %2, align 4
  br label %43

38:                                               ; preds = %28
  br label %39

39:                                               ; preds = %38
  %40 = load i32, i32* %4, align 4
  %41 = load i32, i32* @ELIRQF_TIMER_RUN, align 4
  %42 = and i32 %40, %41
  store i32 %42, i32* %2, align 4
  br label %43

43:                                               ; preds = %39, %34, %22
  %44 = load i32, i32* %2, align 4
  ret i32 %44
}

declare dso_local i32 @bytein(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
