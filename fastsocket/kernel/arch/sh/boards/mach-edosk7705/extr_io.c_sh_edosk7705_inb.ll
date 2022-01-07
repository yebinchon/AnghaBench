; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/sh/boards/mach-edosk7705/extr_io.c_sh_edosk7705_inb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/sh/boards/mach-edosk7705/extr_io.c_sh_edosk7705_inb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local zeroext i8 @sh_edosk7705_inb(i64 %0) #0 {
  %2 = alloca i8, align 1
  %3 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  %4 = load i64, i64* %3, align 8
  %5 = icmp uge i64 %4, 768
  br i1 %5, label %6, label %19

6:                                                ; preds = %1
  %7 = load i64, i64* %3, align 8
  %8 = icmp ult i64 %7, 800
  br i1 %8, label %9, label %19

9:                                                ; preds = %6
  %10 = load i64, i64* %3, align 8
  %11 = and i64 %10, 1
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %19

13:                                               ; preds = %9
  %14 = load i64, i64* %3, align 8
  %15 = sub i64 %14, 1
  %16 = call i32 @__raw_readw(i64 %15)
  %17 = ashr i32 %16, 8
  %18 = trunc i32 %17 to i8
  store i8 %18, i8* %2, align 1
  br label %23

19:                                               ; preds = %9, %6, %1
  %20 = load i64, i64* %3, align 8
  %21 = call i32 @sh_edosk7705_isa_port2addr(i64 %20)
  %22 = call zeroext i8 @__raw_readb(i32 %21)
  store i8 %22, i8* %2, align 1
  br label %23

23:                                               ; preds = %19, %13
  %24 = load i8, i8* %2, align 1
  ret i8 %24
}

declare dso_local i32 @__raw_readw(i64) #1

declare dso_local zeroext i8 @__raw_readb(i32) #1

declare dso_local i32 @sh_edosk7705_isa_port2addr(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
