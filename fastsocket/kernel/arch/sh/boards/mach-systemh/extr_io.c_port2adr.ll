; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/sh/boards/mach-systemh/extr_io.c_port2adr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/sh/boards/mach-systemh/extr_io.c_port2adr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PA_MRSHPC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32)* @port2adr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @port2adr(i32 %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = icmp uge i32 %4, 8192
  br i1 %5, label %6, label %13

6:                                                ; preds = %1
  %7 = load i64, i64* @PA_MRSHPC, align 8
  %8 = load i32, i32* %3, align 4
  %9 = sub i32 %8, 8192
  %10 = zext i32 %9 to i64
  %11 = add nsw i64 %7, %10
  %12 = inttoptr i64 %11 to i32*
  store i32* %12, i32** %2, align 8
  br label %20

13:                                               ; preds = %1
  %14 = load i32, i32* %3, align 4
  %15 = zext i32 %14 to i64
  %16 = call i32 @maybebadio(i64 %15)
  %17 = load i32, i32* %3, align 4
  %18 = zext i32 %17 to i64
  %19 = inttoptr i64 %18 to i32*
  store i32* %19, i32** %2, align 8
  br label %20

20:                                               ; preds = %13, %6
  %21 = load i32*, i32** %2, align 8
  ret i32* %21
}

declare dso_local i32 @maybebadio(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
