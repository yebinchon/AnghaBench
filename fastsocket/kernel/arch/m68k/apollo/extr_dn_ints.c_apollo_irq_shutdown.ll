; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/m68k/apollo/extr_dn_ints.c_apollo_irq_shutdown.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/m68k/apollo/extr_dn_ints.c_apollo_irq_shutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@pica = common dso_local global i64 0, align 8
@picb = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @apollo_irq_shutdown(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = icmp ult i32 %3, 8
  br i1 %4, label %5, label %15

5:                                                ; preds = %1
  %6 = load i32, i32* %2, align 4
  %7 = shl i32 1, %6
  %8 = load i64, i64* @pica, align 8
  %9 = add nsw i64 %8, 1
  %10 = inttoptr i64 %9 to i8*
  %11 = load volatile i8, i8* %10, align 1
  %12 = zext i8 %11 to i32
  %13 = or i32 %12, %7
  %14 = trunc i32 %13 to i8
  store volatile i8 %14, i8* %10, align 1
  br label %26

15:                                               ; preds = %1
  %16 = load i32, i32* %2, align 4
  %17 = sub i32 %16, 8
  %18 = shl i32 1, %17
  %19 = load i64, i64* @picb, align 8
  %20 = add nsw i64 %19, 1
  %21 = inttoptr i64 %20 to i8*
  %22 = load volatile i8, i8* %21, align 1
  %23 = zext i8 %22 to i32
  %24 = or i32 %23, %18
  %25 = trunc i32 %24 to i8
  store volatile i8 %25, i8* %21, align 1
  br label %26

26:                                               ; preds = %15, %5
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
