; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/mn10300/boot/compressed/extr_misc.c_scroll.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/mn10300/boot/compressed/extr_misc.c_scroll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@vidmem = common dso_local global i8* null, align 8
@cols = common dso_local global i32 0, align 4
@lines = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @scroll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @scroll() #0 {
  %1 = alloca i32, align 4
  %2 = load i8*, i8** @vidmem, align 8
  %3 = load i8*, i8** @vidmem, align 8
  %4 = load i32, i32* @cols, align 4
  %5 = mul nsw i32 %4, 2
  %6 = sext i32 %5 to i64
  %7 = getelementptr inbounds i8, i8* %3, i64 %6
  %8 = load i32, i32* @lines, align 4
  %9 = sub nsw i32 %8, 1
  %10 = load i32, i32* @cols, align 4
  %11 = mul nsw i32 %9, %10
  %12 = mul nsw i32 %11, 2
  %13 = call i32 @memcpy(i8* %2, i8* %7, i32 %12)
  %14 = load i32, i32* @lines, align 4
  %15 = sub nsw i32 %14, 1
  %16 = load i32, i32* @cols, align 4
  %17 = mul nsw i32 %15, %16
  %18 = mul nsw i32 %17, 2
  store i32 %18, i32* %1, align 4
  br label %19

19:                                               ; preds = %31, %0
  %20 = load i32, i32* %1, align 4
  %21 = load i32, i32* @lines, align 4
  %22 = load i32, i32* @cols, align 4
  %23 = mul nsw i32 %21, %22
  %24 = mul nsw i32 %23, 2
  %25 = icmp slt i32 %20, %24
  br i1 %25, label %26, label %34

26:                                               ; preds = %19
  %27 = load i8*, i8** @vidmem, align 8
  %28 = load i32, i32* %1, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i8, i8* %27, i64 %29
  store i8 32, i8* %30, align 1
  br label %31

31:                                               ; preds = %26
  %32 = load i32, i32* %1, align 4
  %33 = add nsw i32 %32, 2
  store i32 %33, i32* %1, align 4
  br label %19

34:                                               ; preds = %19
  ret void
}

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
