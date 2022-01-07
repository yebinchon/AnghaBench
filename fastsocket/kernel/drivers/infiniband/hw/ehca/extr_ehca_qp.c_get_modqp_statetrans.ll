; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ehca/extr_ehca_qp.c_get_modqp_statetrans.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ehca/extr_ehca_qp.c_get_modqp_statetrans.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EINVAL = common dso_local global i32 0, align 4
@IB_QPST_ANY2RESET = common dso_local global i32 0, align 4
@IB_QPST_RESET2INIT = common dso_local global i32 0, align 4
@IB_QPST_INIT2INIT = common dso_local global i32 0, align 4
@IB_QPST_INIT2RTR = common dso_local global i32 0, align 4
@IB_QPST_RTR2RTS = common dso_local global i32 0, align 4
@IB_QPST_RTS2RTS = common dso_local global i32 0, align 4
@IB_QPST_SQD2RTS = common dso_local global i32 0, align 4
@IB_QPST_SQE2RTS = common dso_local global i32 0, align 4
@IB_QPST_RTS2SQD = common dso_local global i32 0, align 4
@IB_QPST_ANY2ERR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @get_modqp_statetrans to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_modqp_statetrans(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* @EINVAL, align 4
  %7 = sub nsw i32 0, %6
  store i32 %7, i32* %5, align 4
  %8 = load i32, i32* %4, align 4
  switch i32 %8, label %44 [
    i32 132, label %9
    i32 133, label %11
    i32 131, label %18
    i32 130, label %24
    i32 129, label %35
    i32 128, label %41
    i32 134, label %42
  ]

9:                                                ; preds = %2
  %10 = load i32, i32* @IB_QPST_ANY2RESET, align 4
  store i32 %10, i32* %5, align 4
  br label %45

11:                                               ; preds = %2
  %12 = load i32, i32* %3, align 4
  switch i32 %12, label %17 [
    i32 132, label %13
    i32 133, label %15
  ]

13:                                               ; preds = %11
  %14 = load i32, i32* @IB_QPST_RESET2INIT, align 4
  store i32 %14, i32* %5, align 4
  br label %17

15:                                               ; preds = %11
  %16 = load i32, i32* @IB_QPST_INIT2INIT, align 4
  store i32 %16, i32* %5, align 4
  br label %17

17:                                               ; preds = %11, %15, %13
  br label %45

18:                                               ; preds = %2
  %19 = load i32, i32* %3, align 4
  %20 = icmp eq i32 %19, 133
  br i1 %20, label %21, label %23

21:                                               ; preds = %18
  %22 = load i32, i32* @IB_QPST_INIT2RTR, align 4
  store i32 %22, i32* %5, align 4
  br label %23

23:                                               ; preds = %21, %18
  br label %45

24:                                               ; preds = %2
  %25 = load i32, i32* %3, align 4
  switch i32 %25, label %34 [
    i32 131, label %26
    i32 130, label %28
    i32 129, label %30
    i32 128, label %32
  ]

26:                                               ; preds = %24
  %27 = load i32, i32* @IB_QPST_RTR2RTS, align 4
  store i32 %27, i32* %5, align 4
  br label %34

28:                                               ; preds = %24
  %29 = load i32, i32* @IB_QPST_RTS2RTS, align 4
  store i32 %29, i32* %5, align 4
  br label %34

30:                                               ; preds = %24
  %31 = load i32, i32* @IB_QPST_SQD2RTS, align 4
  store i32 %31, i32* %5, align 4
  br label %34

32:                                               ; preds = %24
  %33 = load i32, i32* @IB_QPST_SQE2RTS, align 4
  store i32 %33, i32* %5, align 4
  br label %34

34:                                               ; preds = %24, %32, %30, %28, %26
  br label %45

35:                                               ; preds = %2
  %36 = load i32, i32* %3, align 4
  %37 = icmp eq i32 %36, 130
  br i1 %37, label %38, label %40

38:                                               ; preds = %35
  %39 = load i32, i32* @IB_QPST_RTS2SQD, align 4
  store i32 %39, i32* %5, align 4
  br label %40

40:                                               ; preds = %38, %35
  br label %45

41:                                               ; preds = %2
  br label %45

42:                                               ; preds = %2
  %43 = load i32, i32* @IB_QPST_ANY2ERR, align 4
  store i32 %43, i32* %5, align 4
  br label %45

44:                                               ; preds = %2
  br label %45

45:                                               ; preds = %44, %42, %41, %40, %34, %23, %17, %9
  %46 = load i32, i32* %5, align 4
  ret i32 %46
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
