; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/sh/boards/mach-se/7206/extr_io.c_port2adr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/sh/boards/mach-se/7206/extr_io.c_port2adr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PA_MRSHPC = common dso_local global i64 0, align 8
@PA_SMSC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32)* @port2adr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @port2adr(i32 %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = icmp uge i32 %4, 8192
  br i1 %5, label %6, label %16

6:                                                ; preds = %1
  %7 = load i32, i32* %3, align 4
  %8 = icmp ult i32 %7, 8224
  br i1 %8, label %9, label %16

9:                                                ; preds = %6
  %10 = load i64, i64* @PA_MRSHPC, align 8
  %11 = load i32, i32* %3, align 4
  %12 = sub i32 %11, 8192
  %13 = zext i32 %12 to i64
  %14 = add nsw i64 %10, %13
  %15 = inttoptr i64 %14 to i32*
  store i32* %15, i32** %2, align 8
  br label %34

16:                                               ; preds = %6, %1
  %17 = load i32, i32* %3, align 4
  %18 = icmp uge i32 %17, 768
  br i1 %18, label %19, label %29

19:                                               ; preds = %16
  %20 = load i32, i32* %3, align 4
  %21 = icmp ult i32 %20, 784
  br i1 %21, label %22, label %29

22:                                               ; preds = %19
  %23 = load i64, i64* @PA_SMSC, align 8
  %24 = load i32, i32* %3, align 4
  %25 = sub i32 %24, 768
  %26 = zext i32 %25 to i64
  %27 = add nsw i64 %23, %26
  %28 = inttoptr i64 %27 to i32*
  store i32* %28, i32** %2, align 8
  br label %34

29:                                               ; preds = %19, %16
  br label %30

30:                                               ; preds = %29
  %31 = load i32, i32* %3, align 4
  %32 = zext i32 %31 to i64
  %33 = inttoptr i64 %32 to i32*
  store i32* %33, i32** %2, align 8
  br label %34

34:                                               ; preds = %30, %22, %9
  %35 = load i32*, i32** %2, align 8
  ret i32* %35
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
