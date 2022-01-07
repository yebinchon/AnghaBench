; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_n_r3964.c_receive_error.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_n_r3964.c_receive_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.r3964_info = type { i32 }

@.str = private unnamed_addr constant [15 x i8] c"received break\00", align 1
@R3964_BREAK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"parity error\00", align 1
@R3964_PARITY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [12 x i8] c"frame error\00", align 1
@R3964_FRAME = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [14 x i8] c"frame overrun\00", align 1
@R3964_OVERRUN = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [32 x i8] c"receive_error - unknown flag %d\00", align 1
@R3964_UNKNOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.r3964_info*, i8)* @receive_error to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @receive_error(%struct.r3964_info* %0, i8 signext %1) #0 {
  %3 = alloca %struct.r3964_info*, align 8
  %4 = alloca i8, align 1
  store %struct.r3964_info* %0, %struct.r3964_info** %3, align 8
  store i8 %1, i8* %4, align 1
  %5 = load i8, i8* %4, align 1
  %6 = sext i8 %5 to i32
  switch i32 %6, label %36 [
    i32 130, label %7
    i32 132, label %8
    i32 128, label %15
    i32 131, label %22
    i32 129, label %29
  ]

7:                                                ; preds = %2
  br label %45

8:                                                ; preds = %2
  %9 = call i32 (i8*, ...) @TRACE_PE(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %10 = load i32, i32* @R3964_BREAK, align 4
  %11 = load %struct.r3964_info*, %struct.r3964_info** %3, align 8
  %12 = getelementptr inbounds %struct.r3964_info, %struct.r3964_info* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = or i32 %13, %10
  store i32 %14, i32* %12, align 4
  br label %45

15:                                               ; preds = %2
  %16 = call i32 (i8*, ...) @TRACE_PE(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  %17 = load i32, i32* @R3964_PARITY, align 4
  %18 = load %struct.r3964_info*, %struct.r3964_info** %3, align 8
  %19 = getelementptr inbounds %struct.r3964_info, %struct.r3964_info* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = or i32 %20, %17
  store i32 %21, i32* %19, align 4
  br label %45

22:                                               ; preds = %2
  %23 = call i32 (i8*, ...) @TRACE_PE(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  %24 = load i32, i32* @R3964_FRAME, align 4
  %25 = load %struct.r3964_info*, %struct.r3964_info** %3, align 8
  %26 = getelementptr inbounds %struct.r3964_info, %struct.r3964_info* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = or i32 %27, %24
  store i32 %28, i32* %26, align 4
  br label %45

29:                                               ; preds = %2
  %30 = call i32 (i8*, ...) @TRACE_PE(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  %31 = load i32, i32* @R3964_OVERRUN, align 4
  %32 = load %struct.r3964_info*, %struct.r3964_info** %3, align 8
  %33 = getelementptr inbounds %struct.r3964_info, %struct.r3964_info* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = or i32 %34, %31
  store i32 %35, i32* %33, align 4
  br label %45

36:                                               ; preds = %2
  %37 = load i8, i8* %4, align 1
  %38 = sext i8 %37 to i32
  %39 = call i32 (i8*, ...) @TRACE_PE(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0), i32 %38)
  %40 = load i32, i32* @R3964_UNKNOWN, align 4
  %41 = load %struct.r3964_info*, %struct.r3964_info** %3, align 8
  %42 = getelementptr inbounds %struct.r3964_info, %struct.r3964_info* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = or i32 %43, %40
  store i32 %44, i32* %42, align 4
  br label %45

45:                                               ; preds = %36, %29, %22, %15, %8, %7
  ret void
}

declare dso_local i32 @TRACE_PE(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
