; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/edac/extr_mce_amd.c_f15h_dc_mce.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/edac/extr_mce_amd.c_f15h_dc_mce.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [26 x i8] c"Data Array access error.\0A\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"UC error during a linefill from L2/NB.\0A\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"STQ access error.\0A\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"SCB access error.\0A\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"Tag error.\0A\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"LDQ access error.\0A\00", align 1
@.str.6 = private unnamed_addr constant [25 x i8] c"during system linefill.\0A\00", align 1
@.str.7 = private unnamed_addr constant [25 x i8] c" Internal %s condition.\0A\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"livelock\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"deadlock\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @f15h_dc_mce to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @f15h_dc_mce(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  store i32 1, i32* %5, align 4
  %6 = load i32, i32* %3, align 4
  %7 = call i64 @MEM_ERROR(i32 %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %25

9:                                                ; preds = %2
  %10 = load i32, i32* %4, align 4
  switch i32 %10, label %23 [
    i32 0, label %11
    i32 1, label %13
    i32 2, label %15
    i32 17, label %15
    i32 3, label %17
    i32 16, label %19
    i32 18, label %21
  ]

11:                                               ; preds = %9
  %12 = call i32 (i8*, ...) @pr_cont(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  br label %24

13:                                               ; preds = %9
  %14 = call i32 (i8*, ...) @pr_cont(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  br label %24

15:                                               ; preds = %9, %9
  %16 = call i32 (i8*, ...) @pr_cont(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  br label %24

17:                                               ; preds = %9
  %18 = call i32 (i8*, ...) @pr_cont(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0))
  br label %24

19:                                               ; preds = %9
  %20 = call i32 (i8*, ...) @pr_cont(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0))
  br label %24

21:                                               ; preds = %9
  %22 = call i32 (i8*, ...) @pr_cont(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0))
  br label %24

23:                                               ; preds = %9
  store i32 0, i32* %5, align 4
  br label %24

24:                                               ; preds = %23, %21, %19, %17, %15, %13, %11
  br label %43

25:                                               ; preds = %2
  %26 = load i32, i32* %3, align 4
  %27 = call i64 @BUS_ERROR(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %41

29:                                               ; preds = %25
  %30 = load i32, i32* %4, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %34, label %32

32:                                               ; preds = %29
  %33 = call i32 (i8*, ...) @pr_cont(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0))
  br label %40

34:                                               ; preds = %29
  %35 = load i32, i32* %4, align 4
  %36 = icmp eq i32 %35, 1
  %37 = zext i1 %36 to i64
  %38 = select i1 %36, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0)
  %39 = call i32 (i8*, ...) @pr_cont(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7, i64 0, i64 0), i8* %38)
  br label %40

40:                                               ; preds = %34, %32
  br label %42

41:                                               ; preds = %25
  store i32 0, i32* %5, align 4
  br label %42

42:                                               ; preds = %41, %40
  br label %43

43:                                               ; preds = %42, %24
  %44 = load i32, i32* %5, align 4
  ret i32 %44
}

declare dso_local i64 @MEM_ERROR(i32) #1

declare dso_local i32 @pr_cont(i8*, ...) #1

declare dso_local i64 @BUS_ERROR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
