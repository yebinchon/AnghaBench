; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/keyboard/extr_lm8323.c_lm8323_process_error.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/keyboard/extr_lm8323.c_lm8323_process_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lm8323_chip = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@LM8323_CMD_READ_ERR = common dso_local global i32 0, align 4
@ERR_FIFOOVER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"fifo overflow!\0A\00", align 1
@ERR_KEYOVR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"more than two keys pressed\0A\00", align 1
@ERR_CMDUNK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"unknown command submitted\0A\00", align 1
@ERR_BADPAR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [23 x i8] c"bad command parameter\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lm8323_chip*)* @lm8323_process_error to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lm8323_process_error(%struct.lm8323_chip* %0) #0 {
  %2 = alloca %struct.lm8323_chip*, align 8
  %3 = alloca i32, align 4
  store %struct.lm8323_chip* %0, %struct.lm8323_chip** %2, align 8
  %4 = load %struct.lm8323_chip*, %struct.lm8323_chip** %2, align 8
  %5 = load i32, i32* @LM8323_CMD_READ_ERR, align 4
  %6 = call i32 @lm8323_read(%struct.lm8323_chip* %4, i32 %5, i32* %3, i32 1)
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %53

8:                                                ; preds = %1
  %9 = load i32, i32* %3, align 4
  %10 = load i32, i32* @ERR_FIFOOVER, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %19

13:                                               ; preds = %8
  %14 = load %struct.lm8323_chip*, %struct.lm8323_chip** %2, align 8
  %15 = getelementptr inbounds %struct.lm8323_chip, %struct.lm8323_chip* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = call i32 @dev_vdbg(i32* %17, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  br label %19

19:                                               ; preds = %13, %8
  %20 = load i32, i32* %3, align 4
  %21 = load i32, i32* @ERR_KEYOVR, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %19
  %25 = load %struct.lm8323_chip*, %struct.lm8323_chip** %2, align 8
  %26 = getelementptr inbounds %struct.lm8323_chip, %struct.lm8323_chip* %25, i32 0, i32 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = call i32 @dev_vdbg(i32* %28, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  br label %30

30:                                               ; preds = %24, %19
  %31 = load i32, i32* %3, align 4
  %32 = load i32, i32* @ERR_CMDUNK, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %30
  %36 = load %struct.lm8323_chip*, %struct.lm8323_chip** %2, align 8
  %37 = getelementptr inbounds %struct.lm8323_chip, %struct.lm8323_chip* %36, i32 0, i32 0
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = call i32 @dev_vdbg(i32* %39, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  br label %41

41:                                               ; preds = %35, %30
  %42 = load i32, i32* %3, align 4
  %43 = load i32, i32* @ERR_BADPAR, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %41
  %47 = load %struct.lm8323_chip*, %struct.lm8323_chip** %2, align 8
  %48 = getelementptr inbounds %struct.lm8323_chip, %struct.lm8323_chip* %47, i32 0, i32 0
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = call i32 @dev_vdbg(i32* %50, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  br label %52

52:                                               ; preds = %46, %41
  br label %53

53:                                               ; preds = %52, %1
  ret void
}

declare dso_local i32 @lm8323_read(%struct.lm8323_chip*, i32, i32*, i32) #1

declare dso_local i32 @dev_vdbg(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
