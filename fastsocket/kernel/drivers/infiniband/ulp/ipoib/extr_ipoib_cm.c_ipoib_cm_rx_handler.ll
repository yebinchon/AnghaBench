; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/ulp/ipoib/extr_ipoib_cm.c_ipoib_cm_rx_handler.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/ulp/ipoib/extr_ipoib_cm.c_ipoib_cm_rx_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_cm_id = type { %struct.ipoib_cm_rx* }
%struct.ipoib_cm_rx = type { i32, i32 }
%struct.ib_cm_event = type { i32 }
%struct.ipoib_dev_priv = type { i32 }

@ipoib_cm_err_attr = common dso_local global i32 0, align 4
@IB_QP_STATE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"unable to move qp to error state\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_cm_id*, %struct.ib_cm_event*)* @ipoib_cm_rx_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipoib_cm_rx_handler(%struct.ib_cm_id* %0, %struct.ib_cm_event* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ib_cm_id*, align 8
  %5 = alloca %struct.ib_cm_event*, align 8
  %6 = alloca %struct.ipoib_cm_rx*, align 8
  %7 = alloca %struct.ipoib_dev_priv*, align 8
  store %struct.ib_cm_id* %0, %struct.ib_cm_id** %4, align 8
  store %struct.ib_cm_event* %1, %struct.ib_cm_event** %5, align 8
  %8 = load %struct.ib_cm_event*, %struct.ib_cm_event** %5, align 8
  %9 = getelementptr inbounds %struct.ib_cm_event, %struct.ib_cm_event* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  switch i32 %10, label %39 [
    i32 128, label %11
    i32 130, label %15
    i32 129, label %21
  ]

11:                                               ; preds = %2
  %12 = load %struct.ib_cm_id*, %struct.ib_cm_id** %4, align 8
  %13 = load %struct.ib_cm_event*, %struct.ib_cm_event** %5, align 8
  %14 = call i32 @ipoib_cm_req_handler(%struct.ib_cm_id* %12, %struct.ib_cm_event* %13)
  store i32 %14, i32* %3, align 4
  br label %40

15:                                               ; preds = %2
  %16 = load %struct.ib_cm_id*, %struct.ib_cm_id** %4, align 8
  %17 = getelementptr inbounds %struct.ib_cm_id, %struct.ib_cm_id* %16, i32 0, i32 0
  %18 = load %struct.ipoib_cm_rx*, %struct.ipoib_cm_rx** %17, align 8
  store %struct.ipoib_cm_rx* %18, %struct.ipoib_cm_rx** %6, align 8
  %19 = load %struct.ib_cm_id*, %struct.ib_cm_id** %4, align 8
  %20 = call i32 @ib_send_cm_drep(%struct.ib_cm_id* %19, i32* null, i32 0)
  br label %21

21:                                               ; preds = %2, %15
  %22 = load %struct.ib_cm_id*, %struct.ib_cm_id** %4, align 8
  %23 = getelementptr inbounds %struct.ib_cm_id, %struct.ib_cm_id* %22, i32 0, i32 0
  %24 = load %struct.ipoib_cm_rx*, %struct.ipoib_cm_rx** %23, align 8
  store %struct.ipoib_cm_rx* %24, %struct.ipoib_cm_rx** %6, align 8
  %25 = load %struct.ipoib_cm_rx*, %struct.ipoib_cm_rx** %6, align 8
  %26 = getelementptr inbounds %struct.ipoib_cm_rx, %struct.ipoib_cm_rx* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call %struct.ipoib_dev_priv* @netdev_priv(i32 %27)
  store %struct.ipoib_dev_priv* %28, %struct.ipoib_dev_priv** %7, align 8
  %29 = load %struct.ipoib_cm_rx*, %struct.ipoib_cm_rx** %6, align 8
  %30 = getelementptr inbounds %struct.ipoib_cm_rx, %struct.ipoib_cm_rx* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @IB_QP_STATE, align 4
  %33 = call i32 @ib_modify_qp(i32 %31, i32* @ipoib_cm_err_attr, i32 %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %21
  %36 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %7, align 8
  %37 = call i32 @ipoib_warn(%struct.ipoib_dev_priv* %36, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  br label %38

38:                                               ; preds = %35, %21
  br label %39

39:                                               ; preds = %2, %38
  store i32 0, i32* %3, align 4
  br label %40

40:                                               ; preds = %39, %11
  %41 = load i32, i32* %3, align 4
  ret i32 %41
}

declare dso_local i32 @ipoib_cm_req_handler(%struct.ib_cm_id*, %struct.ib_cm_event*) #1

declare dso_local i32 @ib_send_cm_drep(%struct.ib_cm_id*, i32*, i32) #1

declare dso_local %struct.ipoib_dev_priv* @netdev_priv(i32) #1

declare dso_local i32 @ib_modify_qp(i32, i32*, i32) #1

declare dso_local i32 @ipoib_warn(%struct.ipoib_dev_priv*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
