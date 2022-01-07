; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/m68k/apollo/extr_dn_ints.c_apollo_irq_startup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/m68k/apollo/extr_dn_ints.c_apollo_irq_startup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@pica = common dso_local global i64 0, align 8
@picb = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @apollo_irq_startup(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = icmp ult i32 %3, 8
  br i1 %4, label %5, label %16

5:                                                ; preds = %1
  %6 = load i32, i32* %2, align 4
  %7 = shl i32 1, %6
  %8 = xor i32 %7, -1
  %9 = load i64, i64* @pica, align 8
  %10 = add nsw i64 %9, 1
  %11 = inttoptr i64 %10 to i8*
  %12 = load volatile i8, i8* %11, align 1
  %13 = zext i8 %12 to i32
  %14 = and i32 %13, %8
  %15 = trunc i32 %14 to i8
  store volatile i8 %15, i8* %11, align 1
  br label %28

16:                                               ; preds = %1
  %17 = load i32, i32* %2, align 4
  %18 = sub i32 %17, 8
  %19 = shl i32 1, %18
  %20 = xor i32 %19, -1
  %21 = load i64, i64* @picb, align 8
  %22 = add nsw i64 %21, 1
  %23 = inttoptr i64 %22 to i8*
  %24 = load volatile i8, i8* %23, align 1
  %25 = zext i8 %24 to i32
  %26 = and i32 %25, %20
  %27 = trunc i32 %26 to i8
  store volatile i8 %27, i8* %23, align 1
  br label %28

28:                                               ; preds = %16, %5
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
