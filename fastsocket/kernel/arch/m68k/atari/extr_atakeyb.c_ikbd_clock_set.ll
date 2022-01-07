; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/m68k/atari/extr_atakeyb.c_ikbd_clock_set.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/m68k/atari/extr_atakeyb.c_ikbd_clock_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ikbd_clock_set(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca [7 x i8], align 1
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %14 = getelementptr inbounds [7 x i8], [7 x i8]* %13, i64 0, i64 0
  store i8 27, i8* %14, align 1
  %15 = getelementptr inbounds i8, i8* %14, i64 1
  %16 = load i32, i32* %7, align 4
  %17 = trunc i32 %16 to i8
  store i8 %17, i8* %15, align 1
  %18 = getelementptr inbounds i8, i8* %15, i64 1
  %19 = load i32, i32* %8, align 4
  %20 = trunc i32 %19 to i8
  store i8 %20, i8* %18, align 1
  %21 = getelementptr inbounds i8, i8* %18, i64 1
  %22 = load i32, i32* %9, align 4
  %23 = trunc i32 %22 to i8
  store i8 %23, i8* %21, align 1
  %24 = getelementptr inbounds i8, i8* %21, i64 1
  %25 = load i32, i32* %10, align 4
  %26 = trunc i32 %25 to i8
  store i8 %26, i8* %24, align 1
  %27 = getelementptr inbounds i8, i8* %24, i64 1
  %28 = load i32, i32* %11, align 4
  %29 = trunc i32 %28 to i8
  store i8 %29, i8* %27, align 1
  %30 = getelementptr inbounds i8, i8* %27, i64 1
  %31 = load i32, i32* %12, align 4
  %32 = trunc i32 %31 to i8
  store i8 %32, i8* %30, align 1
  %33 = getelementptr inbounds [7 x i8], [7 x i8]* %13, i64 0, i64 0
  %34 = call i32 @ikbd_write(i8* %33, i32 7)
  ret void
}

declare dso_local i32 @ikbd_write(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
