; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/mips/pmc-sierra/yosemite/extr_py-console.c_writeb_outer_space.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/mips/pmc-sierra/yosemite/extr_py-console.c_writeb_outer_space.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@IO_BASE_64 = common dso_local global i64 0, align 8
@ST0_KX = common dso_local global i32 0, align 4
@ST0_IE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i8)* @writeb_outer_space to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @writeb_outer_space(i64 %0, i8 zeroext %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i8, align 1
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  store i8 %1, i8* %4, align 1
  %8 = load i64, i64* @IO_BASE_64, align 8
  %9 = load i64, i64* %3, align 8
  %10 = or i64 %8, %9
  store i64 %10, i64* %5, align 8
  %11 = call i32 (...) @read_c0_status()
  store i32 %11, i32* %7, align 4
  %12 = load i32, i32* %7, align 4
  %13 = load i32, i32* @ST0_KX, align 4
  %14 = or i32 %12, %13
  %15 = load i32, i32* @ST0_IE, align 4
  %16 = xor i32 %15, -1
  %17 = and i32 %14, %16
  %18 = call i32 @write_c0_status(i32 %17)
  %19 = call i32 (...) @ssnop_4()
  %20 = load i8, i8* %4, align 1
  %21 = call i64 asm sideeffect "\09.set\09mips3\09\09\0A\09ld\09$0, $1\09\09\0A\09sb\09$2, ($0)\09\0A\09.set\09mips0\09\09\0A", "=&r,*m,r,~{dirflag},~{fpsr},~{flags}"(i64* %5, i8 %20) #2, !srcloc !2
  store i64 %21, i64* %6, align 8
  %22 = load i32, i32* %7, align 4
  %23 = call i32 @write_c0_status(i32 %22)
  %24 = call i32 (...) @ssnop_4()
  ret void
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
!2 = !{i32 592, i32 612, i32 630, i32 649}
