; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/mips/kernel/extr_module.c_apply_r_mips_highest_rela.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/mips/kernel/extr_module.c_apply_r_mips_highest_rela.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.module = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.module*, i32*, i64)* @apply_r_mips_highest_rela to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @apply_r_mips_highest_rela(%struct.module* %0, i32* %1, i64 %2) #0 {
  %4 = alloca %struct.module*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  store %struct.module* %0, %struct.module** %4, align 8
  store i32* %1, i32** %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load i32*, i32** %5, align 8
  %8 = load i32, i32* %7, align 4
  %9 = and i32 %8, -65536
  %10 = zext i32 %9 to i64
  %11 = load i64, i64* %6, align 8
  %12 = add nsw i64 %11, 140739635871744
  %13 = ashr i64 %12, 48
  %14 = and i64 %13, 65535
  %15 = or i64 %10, %14
  %16 = trunc i64 %15 to i32
  %17 = load i32*, i32** %5, align 8
  store i32 %16, i32* %17, align 4
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
