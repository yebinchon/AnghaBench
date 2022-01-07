; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bna/extr_bfa_msgq.c_bfa_msgq_notify.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bna/extr_bfa_msgq.c_bfa_msgq_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_msgq = type { i32, i32, i32 }

@bfa_msgq_init = common dso_local global i32 0, align 4
@CMDQ_E_START = common dso_local global i32 0, align 4
@RSPQ_E_START = common dso_local global i32 0, align 4
@CMDQ_E_STOP = common dso_local global i32 0, align 4
@RSPQ_E_STOP = common dso_local global i32 0, align 4
@CMDQ_E_FAIL = common dso_local global i32 0, align 4
@RSPQ_E_FAIL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @bfa_msgq_notify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bfa_msgq_notify(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.bfa_msgq*, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i8*, i8** %3, align 8
  %7 = bitcast i8* %6 to %struct.bfa_msgq*
  store %struct.bfa_msgq* %7, %struct.bfa_msgq** %5, align 8
  %8 = load i32, i32* %4, align 4
  switch i32 %8, label %50 [
    i32 129, label %9
    i32 130, label %32
    i32 128, label %41
  ]

9:                                                ; preds = %2
  %10 = load %struct.bfa_msgq*, %struct.bfa_msgq** %5, align 8
  %11 = getelementptr inbounds %struct.bfa_msgq, %struct.bfa_msgq* %10, i32 0, i32 2
  %12 = load i32, i32* @bfa_msgq_init, align 4
  %13 = load %struct.bfa_msgq*, %struct.bfa_msgq** %5, align 8
  %14 = call i32 @bfa_wc_init(i32* %11, i32 %12, %struct.bfa_msgq* %13)
  %15 = load %struct.bfa_msgq*, %struct.bfa_msgq** %5, align 8
  %16 = getelementptr inbounds %struct.bfa_msgq, %struct.bfa_msgq* %15, i32 0, i32 2
  %17 = call i32 @bfa_wc_up(i32* %16)
  %18 = load %struct.bfa_msgq*, %struct.bfa_msgq** %5, align 8
  %19 = getelementptr inbounds %struct.bfa_msgq, %struct.bfa_msgq* %18, i32 0, i32 1
  %20 = load i32, i32* @CMDQ_E_START, align 4
  %21 = call i32 @bfa_fsm_send_event(i32* %19, i32 %20)
  %22 = load %struct.bfa_msgq*, %struct.bfa_msgq** %5, align 8
  %23 = getelementptr inbounds %struct.bfa_msgq, %struct.bfa_msgq* %22, i32 0, i32 2
  %24 = call i32 @bfa_wc_up(i32* %23)
  %25 = load %struct.bfa_msgq*, %struct.bfa_msgq** %5, align 8
  %26 = getelementptr inbounds %struct.bfa_msgq, %struct.bfa_msgq* %25, i32 0, i32 0
  %27 = load i32, i32* @RSPQ_E_START, align 4
  %28 = call i32 @bfa_fsm_send_event(i32* %26, i32 %27)
  %29 = load %struct.bfa_msgq*, %struct.bfa_msgq** %5, align 8
  %30 = getelementptr inbounds %struct.bfa_msgq, %struct.bfa_msgq* %29, i32 0, i32 2
  %31 = call i32 @bfa_wc_wait(i32* %30)
  br label %51

32:                                               ; preds = %2
  %33 = load %struct.bfa_msgq*, %struct.bfa_msgq** %5, align 8
  %34 = getelementptr inbounds %struct.bfa_msgq, %struct.bfa_msgq* %33, i32 0, i32 1
  %35 = load i32, i32* @CMDQ_E_STOP, align 4
  %36 = call i32 @bfa_fsm_send_event(i32* %34, i32 %35)
  %37 = load %struct.bfa_msgq*, %struct.bfa_msgq** %5, align 8
  %38 = getelementptr inbounds %struct.bfa_msgq, %struct.bfa_msgq* %37, i32 0, i32 0
  %39 = load i32, i32* @RSPQ_E_STOP, align 4
  %40 = call i32 @bfa_fsm_send_event(i32* %38, i32 %39)
  br label %51

41:                                               ; preds = %2
  %42 = load %struct.bfa_msgq*, %struct.bfa_msgq** %5, align 8
  %43 = getelementptr inbounds %struct.bfa_msgq, %struct.bfa_msgq* %42, i32 0, i32 1
  %44 = load i32, i32* @CMDQ_E_FAIL, align 4
  %45 = call i32 @bfa_fsm_send_event(i32* %43, i32 %44)
  %46 = load %struct.bfa_msgq*, %struct.bfa_msgq** %5, align 8
  %47 = getelementptr inbounds %struct.bfa_msgq, %struct.bfa_msgq* %46, i32 0, i32 0
  %48 = load i32, i32* @RSPQ_E_FAIL, align 4
  %49 = call i32 @bfa_fsm_send_event(i32* %47, i32 %48)
  br label %51

50:                                               ; preds = %2
  br label %51

51:                                               ; preds = %50, %41, %32, %9
  ret void
}

declare dso_local i32 @bfa_wc_init(i32*, i32, %struct.bfa_msgq*) #1

declare dso_local i32 @bfa_wc_up(i32*) #1

declare dso_local i32 @bfa_fsm_send_event(i32*, i32) #1

declare dso_local i32 @bfa_wc_wait(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
