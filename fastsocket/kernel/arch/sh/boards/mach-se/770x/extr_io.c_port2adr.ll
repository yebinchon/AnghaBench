; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/sh/boards/mach-se/770x/extr_io.c_port2adr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/sh/boards/mach-se/770x/extr_io.c_port2adr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PA_MRSHPC = common dso_local global i64 0, align 8
@PA_83902 = common dso_local global i64 0, align 8
@PA_SUPERIO = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32)* @port2adr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @port2adr(i32 %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = and i32 %4, -16777216
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %11

7:                                                ; preds = %1
  %8 = load i32, i32* %3, align 4
  %9 = zext i32 %8 to i64
  %10 = inttoptr i64 %9 to i32*
  store i32* %10, i32** %2, align 8
  br label %38

11:                                               ; preds = %1
  %12 = load i32, i32* %3, align 4
  %13 = icmp uge i32 %12, 8192
  br i1 %13, label %14, label %21

14:                                               ; preds = %11
  %15 = load i64, i64* @PA_MRSHPC, align 8
  %16 = load i32, i32* %3, align 4
  %17 = sub i32 %16, 8192
  %18 = zext i32 %17 to i64
  %19 = add nsw i64 %15, %18
  %20 = inttoptr i64 %19 to i32*
  store i32* %20, i32** %2, align 8
  br label %38

21:                                               ; preds = %11
  %22 = load i32, i32* %3, align 4
  %23 = icmp uge i32 %22, 4096
  br i1 %23, label %24, label %31

24:                                               ; preds = %21
  %25 = load i64, i64* @PA_83902, align 8
  %26 = load i32, i32* %3, align 4
  %27 = shl i32 %26, 1
  %28 = zext i32 %27 to i64
  %29 = add nsw i64 %25, %28
  %30 = inttoptr i64 %29 to i32*
  store i32* %30, i32** %2, align 8
  br label %38

31:                                               ; preds = %21
  %32 = load i64, i64* @PA_SUPERIO, align 8
  %33 = load i32, i32* %3, align 4
  %34 = shl i32 %33, 1
  %35 = zext i32 %34 to i64
  %36 = add nsw i64 %32, %35
  %37 = inttoptr i64 %36 to i32*
  store i32* %37, i32** %2, align 8
  br label %38

38:                                               ; preds = %31, %24, %14, %7
  %39 = load i32*, i32** %2, align 8
  ret i32* %39
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
