; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/amso1100/extr_c2_qp.c_to_ib_state_str.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/amso1100/extr_c2_qp.c_to_ib_state_str.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@to_ib_state_str.state_str = internal global [7 x i8*] [i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i32 0, i32 0)], align 16
@.str = private unnamed_addr constant [13 x i8] c"IB_QPS_RESET\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"IB_QPS_INIT\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"IB_QPS_RTR\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"IB_QPS_RTS\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"IB_QPS_SQD\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"IB_QPS_SQE\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"IB_QPS_ERR\00", align 1
@IB_QPS_RESET = common dso_local global i32 0, align 4
@IB_QPS_ERR = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [22 x i8] c"<invalid IB QP state>\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32)* @to_ib_state_str to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @to_ib_state_str(i32 %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = load i32, i32* @IB_QPS_RESET, align 4
  %6 = icmp slt i32 %4, %5
  br i1 %6, label %11, label %7

7:                                                ; preds = %1
  %8 = load i32, i32* %3, align 4
  %9 = load i32, i32* @IB_QPS_ERR, align 4
  %10 = icmp sgt i32 %8, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %7, %1
  store i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0), i8** %2, align 8
  br label %20

12:                                               ; preds = %7
  %13 = load i32, i32* @IB_QPS_RESET, align 4
  %14 = load i32, i32* %3, align 4
  %15 = sub nsw i32 %14, %13
  store i32 %15, i32* %3, align 4
  %16 = load i32, i32* %3, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds [7 x i8*], [7 x i8*]* @to_ib_state_str.state_str, i64 0, i64 %17
  %19 = load i8*, i8** %18, align 8
  store i8* %19, i8** %2, align 8
  br label %20

20:                                               ; preds = %12, %11
  %21 = load i8*, i8** %2, align 8
  ret i8* %21
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
