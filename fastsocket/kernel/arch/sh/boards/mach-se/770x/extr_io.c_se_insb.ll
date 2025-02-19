; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/sh/boards/mach-se/770x/extr_io.c_se_insb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/sh/boards/mach-se/770x/extr_io.c_se_insb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @se_insb(i64 %0, i8* %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  store i64 %0, i64* %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %9 = load i64, i64* %4, align 8
  %10 = call i32* @port2adr(i64 %9)
  store i32* %10, i32** %7, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = bitcast i8* %11 to i32*
  store i32* %12, i32** %8, align 8
  %13 = load i64, i64* %4, align 8
  %14 = call i64 @shifted_port(i64 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %28

16:                                               ; preds = %3
  br label %17

17:                                               ; preds = %21, %16
  %18 = load i64, i64* %6, align 8
  %19 = add i64 %18, -1
  store i64 %19, i64* %6, align 8
  %20 = icmp ne i64 %18, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %17
  %22 = load i32*, i32** %7, align 8
  %23 = load volatile i32, i32* %22, align 4
  %24 = ashr i32 %23, 8
  %25 = load i32*, i32** %8, align 8
  %26 = getelementptr inbounds i32, i32* %25, i32 1
  store i32* %26, i32** %8, align 8
  store i32 %24, i32* %25, align 4
  br label %17

27:                                               ; preds = %17
  br label %39

28:                                               ; preds = %3
  br label %29

29:                                               ; preds = %33, %28
  %30 = load i64, i64* %6, align 8
  %31 = add i64 %30, -1
  store i64 %31, i64* %6, align 8
  %32 = icmp ne i64 %30, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %29
  %34 = load i32*, i32** %7, align 8
  %35 = load volatile i32, i32* %34, align 4
  %36 = load i32*, i32** %8, align 8
  %37 = getelementptr inbounds i32, i32* %36, i32 1
  store i32* %37, i32** %8, align 8
  store i32 %35, i32* %36, align 4
  br label %29

38:                                               ; preds = %29
  br label %39

39:                                               ; preds = %38, %27
  ret void
}

declare dso_local i32* @port2adr(i64) #1

declare dso_local i64 @shifted_port(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
