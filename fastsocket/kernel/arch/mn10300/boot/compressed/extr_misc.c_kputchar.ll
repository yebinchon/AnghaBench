; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/mn10300/boot/compressed/extr_misc.c_kputchar.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/mn10300/boot/compressed/extr_misc.c_kputchar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SC1STR = common dso_local global i32 0, align 4
@SC01STR_TBF = common dso_local global i32 0, align 4
@SC1TXB = common dso_local global i32 0, align 4
@SC0STR = common dso_local global i32 0, align 4
@SC0TXB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8)* @kputchar to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kputchar(i8 zeroext %0) #0 {
  %2 = alloca i8, align 1
  store i8 %0, i8* %2, align 1
  br label %3

3:                                                ; preds = %8, %1
  %4 = load i32, i32* @SC1STR, align 4
  %5 = load i32, i32* @SC01STR_TBF, align 4
  %6 = and i32 %4, %5
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %3
  br label %3

9:                                                ; preds = %3
  %10 = load i8, i8* %2, align 1
  %11 = zext i8 %10 to i32
  %12 = icmp eq i32 %11, 10
  br i1 %12, label %13, label %21

13:                                               ; preds = %9
  store i32 13, i32* @SC1TXB, align 4
  br label %14

14:                                               ; preds = %19, %13
  %15 = load i32, i32* @SC1STR, align 4
  %16 = load i32, i32* @SC01STR_TBF, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %14
  br label %14

20:                                               ; preds = %14
  br label %21

21:                                               ; preds = %20, %9
  %22 = load i8, i8* %2, align 1
  %23 = zext i8 %22 to i32
  store i32 %23, i32* @SC1TXB, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
