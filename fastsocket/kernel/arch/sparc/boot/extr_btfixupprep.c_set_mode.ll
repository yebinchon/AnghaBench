; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/boot/extr_btfixupprep.c_set_mode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/boot/extr_btfixupprep.c_set_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@mode = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @set_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_mode(i8* %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  store i64 0, i64* @mode, align 8
  br label %3

3:                                                ; preds = %19, %1
  %4 = load i8*, i8** %2, align 8
  %5 = load i64, i64* @mode, align 8
  %6 = getelementptr inbounds i8, i8* %4, i64 %5
  %7 = load i8, i8* %6, align 1
  %8 = sext i8 %7 to i32
  %9 = icmp slt i32 %8, 48
  br i1 %9, label %17, label %10

10:                                               ; preds = %3
  %11 = load i8*, i8** %2, align 8
  %12 = load i64, i64* @mode, align 8
  %13 = getelementptr inbounds i8, i8* %11, i64 %12
  %14 = load i8, i8* %13, align 1
  %15 = sext i8 %14 to i32
  %16 = icmp sgt i32 %15, 57
  br i1 %16, label %17, label %18

17:                                               ; preds = %10, %3
  br label %22

18:                                               ; preds = %10
  br label %19

19:                                               ; preds = %18
  %20 = load i64, i64* @mode, align 8
  %21 = add i64 %20, 1
  store i64 %21, i64* @mode, align 8
  br label %3

22:                                               ; preds = %17
  %23 = load i64, i64* @mode, align 8
  %24 = icmp ne i64 %23, 8
  br i1 %24, label %25, label %30

25:                                               ; preds = %22
  %26 = load i64, i64* @mode, align 8
  %27 = icmp ne i64 %26, 16
  br i1 %27, label %28, label %30

28:                                               ; preds = %25
  %29 = call i32 (...) @fatal()
  br label %30

30:                                               ; preds = %28, %25, %22
  ret void
}

declare dso_local i32 @fatal(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
