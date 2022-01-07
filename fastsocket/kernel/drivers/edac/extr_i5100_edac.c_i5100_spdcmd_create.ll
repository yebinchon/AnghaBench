; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/edac/extr_i5100_edac.c_i5100_spdcmd_create.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/edac/extr_i5100_edac.c_i5100_spdcmd_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32, i32, i32)* @i5100_spdcmd_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i5100_spdcmd_create(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %13 = load i32, i32* %7, align 4
  %14 = and i32 %13, 15
  %15 = shl i32 %14, 28
  %16 = load i32, i32* %8, align 4
  %17 = and i32 %16, 1
  %18 = shl i32 %17, 27
  %19 = or i32 %15, %18
  %20 = load i32, i32* %9, align 4
  %21 = and i32 %20, 7
  %22 = shl i32 %21, 24
  %23 = or i32 %19, %22
  %24 = load i32, i32* %10, align 4
  %25 = and i32 %24, 255
  %26 = shl i32 %25, 16
  %27 = or i32 %23, %26
  %28 = load i32, i32* %11, align 4
  %29 = and i32 %28, 255
  %30 = shl i32 %29, 8
  %31 = or i32 %27, %30
  %32 = load i32, i32* %12, align 4
  %33 = and i32 %32, 1
  %34 = or i32 %31, %33
  ret i32 %34
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
