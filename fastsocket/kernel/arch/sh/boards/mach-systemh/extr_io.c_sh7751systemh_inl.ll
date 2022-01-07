; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/sh/boards/mach-systemh/extr_io.c_sh7751systemh_inl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/sh/boards/mach-systemh/extr_io.c_sh7751systemh_inl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sh7751systemh_inl(i64 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  %4 = load i64, i64* %3, align 8
  %5 = call i64 @PXSEG(i64 %4)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %12

7:                                                ; preds = %1
  %8 = load i64, i64* %3, align 8
  %9 = inttoptr i64 %8 to i64*
  %10 = load volatile i64, i64* %9, align 8
  %11 = trunc i64 %10 to i32
  store i32 %11, i32* %2, align 4
  br label %33

12:                                               ; preds = %1
  %13 = load i64, i64* %3, align 8
  %14 = icmp uge i64 %13, 8192
  br i1 %14, label %15, label %19

15:                                               ; preds = %12
  %16 = load i64, i64* %3, align 8
  %17 = call i32* @port2adr(i64 %16)
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %2, align 4
  br label %33

19:                                               ; preds = %12
  %20 = load i64, i64* %3, align 8
  %21 = icmp ule i64 %20, 1009
  br i1 %21, label %22, label %27

22:                                               ; preds = %19
  %23 = load i64, i64* %3, align 8
  %24 = call i64 @ETHER_IOMAP(i64 %23)
  %25 = inttoptr i64 %24 to i32*
  %26 = load volatile i32, i32* %25, align 4
  store i32 %26, i32* %2, align 4
  br label %33

27:                                               ; preds = %19
  %28 = load i64, i64* %3, align 8
  %29 = call i32 @maybebadio(i64 %28)
  br label %30

30:                                               ; preds = %27
  br label %31

31:                                               ; preds = %30
  br label %32

32:                                               ; preds = %31
  store i32 0, i32* %2, align 4
  br label %33

33:                                               ; preds = %32, %22, %15, %7
  %34 = load i32, i32* %2, align 4
  ret i32 %34
}

declare dso_local i64 @PXSEG(i64) #1

declare dso_local i32* @port2adr(i64) #1

declare dso_local i64 @ETHER_IOMAP(i64) #1

declare dso_local i32 @maybebadio(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
