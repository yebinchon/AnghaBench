; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/edac/extr_mce_amd.c_f14h_ic_mce.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/edac/extr_mce_amd.c_f14h_ic_mce.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@R4_IRD = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [44 x i8] c"Data/tag array parity error for a tag hit.\0A\00", align 1
@R4_SNOOP = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [39 x i8] c"Tag error during snoop/victimization.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i64)* @f14h_ic_mce to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @f14h_ic_mce(i32 %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i64 %1, i64* %4, align 8
  %7 = load i32, i32* %3, align 4
  %8 = call i64 @R4(i32 %7)
  store i64 %8, i64* %5, align 8
  store i32 1, i32* %6, align 4
  %9 = load i32, i32* %3, align 4
  %10 = call i64 @MEM_ERROR(i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %36

12:                                               ; preds = %2
  %13 = load i32, i32* %3, align 4
  %14 = call i64 @TT(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %12
  %17 = load i32, i32* %3, align 4
  %18 = call i32 @LL(i32 %17)
  %19 = icmp ne i32 %18, 1
  br i1 %19, label %20, label %21

20:                                               ; preds = %16, %12
  store i32 0, i32* %6, align 4
  br label %21

21:                                               ; preds = %20, %16
  %22 = load i64, i64* %5, align 8
  %23 = load i64, i64* @R4_IRD, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %21
  %26 = call i32 @pr_cont(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  br label %35

27:                                               ; preds = %21
  %28 = load i64, i64* %5, align 8
  %29 = load i64, i64* @R4_SNOOP, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %27
  %32 = call i32 @pr_cont(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  br label %34

33:                                               ; preds = %27
  store i32 0, i32* %6, align 4
  br label %34

34:                                               ; preds = %33, %31
  br label %35

35:                                               ; preds = %34, %25
  br label %36

36:                                               ; preds = %35, %2
  %37 = load i32, i32* %6, align 4
  ret i32 %37
}

declare dso_local i64 @R4(i32) #1

declare dso_local i64 @MEM_ERROR(i32) #1

declare dso_local i64 @TT(i32) #1

declare dso_local i32 @LL(i32) #1

declare dso_local i32 @pr_cont(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
