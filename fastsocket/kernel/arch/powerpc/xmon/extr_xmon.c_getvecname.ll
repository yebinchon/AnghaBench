; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/xmon/extr_xmon.c_getvecname.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/xmon/extr_xmon.c_getvecname.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [15 x i8] c"(System Reset)\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"(Machine Check)\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"(Data Access)\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"(Data SLB Access)\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"(Instruction Access)\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"(Instruction SLB Access)\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"(Hardware Interrupt)\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"(Alignment)\00", align 1
@.str.8 = private unnamed_addr constant [16 x i8] c"(Program Check)\00", align 1
@.str.9 = private unnamed_addr constant [18 x i8] c"(FPU Unavailable)\00", align 1
@.str.10 = private unnamed_addr constant [14 x i8] c"(Decrementer)\00", align 1
@.str.11 = private unnamed_addr constant [14 x i8] c"(System Call)\00", align 1
@.str.12 = private unnamed_addr constant [14 x i8] c"(Single Step)\00", align 1
@.str.13 = private unnamed_addr constant [22 x i8] c"(Performance Monitor)\00", align 1
@.str.14 = private unnamed_addr constant [22 x i8] c"(Altivec Unavailable)\00", align 1
@.str.15 = private unnamed_addr constant [25 x i8] c"(Instruction Breakpoint)\00", align 1
@.str.16 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i64)* @getvecname to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @getvecname(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i8*, align 8
  store i64 %0, i64* %2, align 8
  %4 = load i64, i64* %2, align 8
  switch i64 %4, label %21 [
    i64 256, label %5
    i64 512, label %6
    i64 768, label %7
    i64 896, label %8
    i64 1024, label %9
    i64 1152, label %10
    i64 1280, label %11
    i64 1536, label %12
    i64 1792, label %13
    i64 2048, label %14
    i64 2304, label %15
    i64 3072, label %16
    i64 3328, label %17
    i64 3840, label %18
    i64 3872, label %19
    i64 4864, label %20
  ]

5:                                                ; preds = %1
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8** %3, align 8
  br label %22

6:                                                ; preds = %1
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i8** %3, align 8
  br label %22

7:                                                ; preds = %1
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i8** %3, align 8
  br label %22

8:                                                ; preds = %1
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i8** %3, align 8
  br label %22

9:                                                ; preds = %1
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), i8** %3, align 8
  br label %22

10:                                               ; preds = %1
  store i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0), i8** %3, align 8
  br label %22

11:                                               ; preds = %1
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0), i8** %3, align 8
  br label %22

12:                                               ; preds = %1
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0), i8** %3, align 8
  br label %22

13:                                               ; preds = %1
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i64 0, i64 0), i8** %3, align 8
  br label %22

14:                                               ; preds = %1
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.9, i64 0, i64 0), i8** %3, align 8
  br label %22

15:                                               ; preds = %1
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i64 0, i64 0), i8** %3, align 8
  br label %22

16:                                               ; preds = %1
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i64 0, i64 0), i8** %3, align 8
  br label %22

17:                                               ; preds = %1
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i64 0, i64 0), i8** %3, align 8
  br label %22

18:                                               ; preds = %1
  store i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.13, i64 0, i64 0), i8** %3, align 8
  br label %22

19:                                               ; preds = %1
  store i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.14, i64 0, i64 0), i8** %3, align 8
  br label %22

20:                                               ; preds = %1
  store i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.15, i64 0, i64 0), i8** %3, align 8
  br label %22

21:                                               ; preds = %1
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.16, i64 0, i64 0), i8** %3, align 8
  br label %22

22:                                               ; preds = %21, %20, %19, %18, %17, %16, %15, %14, %13, %12, %11, %10, %9, %8, %7, %6, %5
  %23 = load i8*, i8** %3, align 8
  ret i8* %23
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
