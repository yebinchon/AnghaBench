; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/rio/extr_rioroute.c_GetUnitType.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/rio/extr_rioroute.c_GetUnitType.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@RIO_DEBUG_ROUTE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"Unit type: Host\0A\00", align 1
@TYPE_HOST = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"Unit type: 16 port RTA\0A\00", align 1
@TYPE_RTA16 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"Unit type: 8 port RTA\0A\00", align 1
@TYPE_RTA8 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [25 x i8] c"Unit type: Unrecognised\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @GetUnitType(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = lshr i32 %4, 28
  %6 = and i32 %5, 15
  switch i32 %6, label %19 [
    i32 133, label %7
    i32 131, label %7
    i32 132, label %7
    i32 130, label %7
    i32 128, label %11
    i32 129, label %15
  ]

7:                                                ; preds = %1, %1, %1, %1
  %8 = load i32, i32* @RIO_DEBUG_ROUTE, align 4
  %9 = call i32 @rio_dprintk(i32 %8, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %10 = load i32, i32* @TYPE_HOST, align 4
  store i32 %10, i32* %2, align 4
  br label %22

11:                                               ; preds = %1
  %12 = load i32, i32* @RIO_DEBUG_ROUTE, align 4
  %13 = call i32 @rio_dprintk(i32 %12, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %14 = load i32, i32* @TYPE_RTA16, align 4
  store i32 %14, i32* %2, align 4
  br label %22

15:                                               ; preds = %1
  %16 = load i32, i32* @RIO_DEBUG_ROUTE, align 4
  %17 = call i32 @rio_dprintk(i32 %16, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  %18 = load i32, i32* @TYPE_RTA8, align 4
  store i32 %18, i32* %2, align 4
  br label %22

19:                                               ; preds = %1
  %20 = load i32, i32* @RIO_DEBUG_ROUTE, align 4
  %21 = call i32 @rio_dprintk(i32 %20, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  store i32 99, i32* %2, align 4
  br label %22

22:                                               ; preds = %19, %15, %11, %7
  %23 = load i32, i32* %2, align 4
  ret i32 %23
}

declare dso_local i32 @rio_dprintk(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
