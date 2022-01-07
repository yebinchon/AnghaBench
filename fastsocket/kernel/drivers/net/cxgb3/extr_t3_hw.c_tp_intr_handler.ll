; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/cxgb3/extr_t3_hw.c_tp_intr_handler.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/cxgb3/extr_t3_hw.c_tp_intr_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intr_info = type { i32, i8*, i32, i32 }
%struct.adapter = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@tp_intr_handler.tp_intr_info = internal constant [4 x %struct.intr_info] [%struct.intr_info { i32 16777215, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i32 0, i32 0), i32 -1, i32 1 }, %struct.intr_info { i32 16777216, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i32 0, i32 0), i32 -1, i32 1 }, %struct.intr_info { i32 33554432, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i32 0, i32 0), i32 -1, i32 1 }, %struct.intr_info zeroinitializer], align 16
@.str = private unnamed_addr constant [16 x i8] c"TP parity error\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"TP out of Rx pages\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"TP out of Tx pages\00", align 1
@tp_intr_handler.tp_intr_info_t3c = internal constant [4 x %struct.intr_info] [%struct.intr_info { i32 536870911, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i32 0, i32 0), i32 -1, i32 1 }, %struct.intr_info { i32 129, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i32 0, i32 0), i32 -1, i32 1 }, %struct.intr_info { i32 128, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i32 0, i32 0), i32 -1, i32 1 }, %struct.intr_info zeroinitializer], align 16
@A_TP_INT_CAUSE = common dso_local global i32 0, align 4
@T3_REV_C = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.adapter*)* @tp_intr_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tp_intr_handler(%struct.adapter* %0) #0 {
  %2 = alloca %struct.adapter*, align 8
  store %struct.adapter* %0, %struct.adapter** %2, align 8
  %3 = load %struct.adapter*, %struct.adapter** %2, align 8
  %4 = load i32, i32* @A_TP_INT_CAUSE, align 4
  %5 = load %struct.adapter*, %struct.adapter** %2, align 8
  %6 = getelementptr inbounds %struct.adapter, %struct.adapter* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @T3_REV_C, align 8
  %10 = icmp slt i64 %8, %9
  %11 = zext i1 %10 to i64
  %12 = select i1 %10, %struct.intr_info* getelementptr inbounds ([4 x %struct.intr_info], [4 x %struct.intr_info]* @tp_intr_handler.tp_intr_info, i64 0, i64 0), %struct.intr_info* getelementptr inbounds ([4 x %struct.intr_info], [4 x %struct.intr_info]* @tp_intr_handler.tp_intr_info_t3c, i64 0, i64 0)
  %13 = call i64 @t3_handle_intr_status(%struct.adapter* %3, i32 %4, i32 -1, %struct.intr_info* %12, i32* null)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %1
  %16 = load %struct.adapter*, %struct.adapter** %2, align 8
  %17 = call i32 @t3_fatal_err(%struct.adapter* %16)
  br label %18

18:                                               ; preds = %15, %1
  ret void
}

declare dso_local i64 @t3_handle_intr_status(%struct.adapter*, i32, i32, %struct.intr_info*, i32*) #1

declare dso_local i32 @t3_fatal_err(%struct.adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
