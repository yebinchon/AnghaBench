; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/cris/arch-v32/kernel/extr_kgdb.c_insn_size.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/cris/arch-v32/kernel/extr_kgdb.c_insn_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [44 x i8] c"Couldn't find size of opcode 0x%x at 0x%lx\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @insn_size(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i16, align 2
  %4 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  %5 = load i64, i64* %2, align 8
  %6 = inttoptr i64 %5 to i16*
  %7 = load i16, i16* %6, align 2
  store i16 %7, i16* %3, align 2
  store i32 0, i32* %4, align 4
  %8 = load i16, i16* %3, align 2
  %9 = zext i16 %8 to i32
  %10 = and i32 %9, 3840
  %11 = ashr i32 %10, 8
  switch i32 %11, label %22 [
    i32 0, label %12
    i32 9, label %12
    i32 11, label %12
    i32 14, label %13
    i32 15, label %13
    i32 13, label %14
  ]

12:                                               ; preds = %1, %1, %1
  store i32 2, i32* %4, align 4
  br label %26

13:                                               ; preds = %1, %1
  store i32 6, i32* %4, align 4
  br label %26

14:                                               ; preds = %1
  %15 = load i16, i16* %3, align 2
  %16 = zext i16 %15 to i32
  %17 = and i32 %16, 255
  %18 = icmp eq i32 %17, 255
  br i1 %18, label %19, label %20

19:                                               ; preds = %14
  store i32 4, i32* %4, align 4
  br label %21

20:                                               ; preds = %14
  store i32 6, i32* %4, align 4
  br label %21

21:                                               ; preds = %20, %19
  br label %26

22:                                               ; preds = %1
  %23 = load i16, i16* %3, align 2
  %24 = load i64, i64* %2, align 8
  %25 = call i32 @panic(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i16 zeroext %23, i64 %24)
  br label %26

26:                                               ; preds = %22, %21, %13, %12
  %27 = load i32, i32* %4, align 4
  ret i32 %27
}

declare dso_local i32 @panic(i8*, i16 zeroext, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
