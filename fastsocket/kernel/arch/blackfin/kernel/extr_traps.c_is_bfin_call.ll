; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/blackfin/kernel/extr_traps.c_is_bfin_call.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/blackfin/kernel/extr_traps.c_is_bfin_call.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i16*)* @is_bfin_call to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_bfin_call(i16* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i16*, align 8
  %4 = alloca i16, align 2
  %5 = alloca i16*, align 8
  store i16* %0, i16** %3, align 8
  store i16 0, i16* %4, align 2
  %6 = load i16*, i16** %3, align 8
  store i16* %6, i16** %5, align 8
  %7 = load i16*, i16** %5, align 8
  %8 = call i32 @get_instruction(i16* %4, i16* %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %45

11:                                               ; preds = %1
  %12 = load i16, i16* %4, align 2
  %13 = zext i16 %12 to i32
  %14 = icmp sge i32 %13, 96
  br i1 %14, label %15, label %19

15:                                               ; preds = %11
  %16 = load i16, i16* %4, align 2
  %17 = zext i16 %16 to i32
  %18 = icmp sle i32 %17, 103
  br i1 %18, label %27, label %19

19:                                               ; preds = %15, %11
  %20 = load i16, i16* %4, align 2
  %21 = zext i16 %20 to i32
  %22 = icmp sge i32 %21, 112
  br i1 %22, label %23, label %28

23:                                               ; preds = %19
  %24 = load i16, i16* %4, align 2
  %25 = zext i16 %24 to i32
  %26 = icmp sle i32 %25, 119
  br i1 %26, label %27, label %28

27:                                               ; preds = %23, %15
  store i32 1, i32* %2, align 4
  br label %45

28:                                               ; preds = %23, %19
  %29 = load i16*, i16** %5, align 8
  %30 = getelementptr inbounds i16, i16* %29, i32 -1
  store i16* %30, i16** %5, align 8
  %31 = load i16*, i16** %5, align 8
  %32 = call i32 @get_instruction(i16* %4, i16* %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %28
  store i32 0, i32* %2, align 4
  br label %45

35:                                               ; preds = %28
  %36 = load i16, i16* %4, align 2
  %37 = zext i16 %36 to i32
  %38 = icmp sge i32 %37, 58112
  br i1 %38, label %39, label %44

39:                                               ; preds = %35
  %40 = load i16, i16* %4, align 2
  %41 = zext i16 %40 to i32
  %42 = icmp sle i32 %41, 58367
  br i1 %42, label %43, label %44

43:                                               ; preds = %39
  store i32 1, i32* %2, align 4
  br label %45

44:                                               ; preds = %39, %35
  store i32 0, i32* %2, align 4
  br label %45

45:                                               ; preds = %44, %43, %34, %27, %10
  %46 = load i32, i32* %2, align 4
  ret i32 %46
}

declare dso_local i32 @get_instruction(i16*, i16*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
