; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/mips/pmc-sierra/yosemite/extr_py-console.c_readb_outer_space.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/mips/pmc-sierra/yosemite/extr_py-console.c_readb_outer_space.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@IO_BASE_64 = common dso_local global i64 0, align 8
@ST0_KX = common dso_local global i32 0, align 4
@ST0_IE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8 (i64)* @readb_outer_space to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i8 @readb_outer_space(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i8, align 1
  %5 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  %6 = load i64, i64* @IO_BASE_64, align 8
  %7 = load i64, i64* %2, align 8
  %8 = or i64 %6, %7
  store i64 %8, i64* %3, align 8
  %9 = call i32 (...) @read_c0_status()
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* @ST0_KX, align 4
  %12 = or i32 %10, %11
  %13 = load i32, i32* @ST0_IE, align 4
  %14 = xor i32 %13, -1
  %15 = and i32 %12, %14
  %16 = call i32 @write_c0_status(i32 %15)
  %17 = call i32 (...) @ssnop_4()
  %18 = call i8 asm sideeffect "\09.set\09mips3\09\09\0A\09ld\09$0, $1\09\09\0A\09lbu\09$0, ($0)\09\0A\09.set\09mips0\09\09\0A", "=r,*m,~{dirflag},~{fpsr},~{flags}"(i64* %3) #2, !srcloc !2
  store i8 %18, i8* %4, align 1
  %19 = load i32, i32* %5, align 4
  %20 = call i32 @write_c0_status(i32 %19)
  %21 = call i32 (...) @ssnop_4()
  %22 = load i8, i8* %4, align 1
  ret i8 %22
}

declare dso_local i32 @read_c0_status(...) #1

declare dso_local i32 @write_c0_status(i32) #1

declare dso_local i32 @ssnop_4(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{i32 583, i32 603, i32 621, i32 641}
