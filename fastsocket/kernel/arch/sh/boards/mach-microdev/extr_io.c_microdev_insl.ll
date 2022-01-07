; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/sh/boards/mach-microdev/extr_io.c_microdev_insl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/sh/boards/mach-microdev/extr_io.c_microdev_insl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @microdev_insl(i64 %0, i8* %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i32*, align 8
  store i64 %0, i64* %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to i32*
  store i32* %10, i32** %8, align 8
  %11 = load i64, i64* %4, align 8
  %12 = call i64 @PORT2ADDR(i64 %11)
  %13 = inttoptr i64 %12 to i64*
  store i64* %13, i64** %7, align 8
  br label %14

14:                                               ; preds = %18, %3
  %15 = load i64, i64* %6, align 8
  %16 = add i64 %15, -1
  store i64 %16, i64* %6, align 8
  %17 = icmp ne i64 %15, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %14
  %19 = load i64*, i64** %7, align 8
  %20 = load volatile i64, i64* %19, align 8
  %21 = trunc i64 %20 to i32
  %22 = load i32*, i32** %8, align 8
  %23 = getelementptr inbounds i32, i32* %22, i32 1
  store i32* %23, i32** %8, align 8
  store i32 %21, i32* %22, align 4
  br label %14

24:                                               ; preds = %14
  ret void
}

declare dso_local i64 @PORT2ADDR(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
