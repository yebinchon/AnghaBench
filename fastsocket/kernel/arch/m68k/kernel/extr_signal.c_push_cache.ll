; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/m68k/kernel/extr_signal.c_push_cache.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/m68k/kernel/extr_signal.c_push_cache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CPU_IS_040 = common dso_local global i64 0, align 8
@PAGE_MASK = common dso_local global i64 0, align 8
@CPU_IS_060 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @push_cache to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @push_cache(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %6 = load i64, i64* @CPU_IS_040, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %21

8:                                                ; preds = %1
  %9 = load i64, i64* %2, align 8
  %10 = call i64 asm sideeffect ".chip 68040\0A\09nop\0A\09ptestr ($1)\0A\09movec %mmusr,$0\0A\09.chip 68k", "=r,{ax},~{dirflag},~{fpsr},~{flags}"(i64 %9) #1, !srcloc !2
  store i64 %10, i64* %3, align 8
  %11 = load i64, i64* @PAGE_MASK, align 8
  %12 = load i64, i64* %3, align 8
  %13 = and i64 %12, %11
  store i64 %13, i64* %3, align 8
  %14 = load i64, i64* %2, align 8
  %15 = load i64, i64* @PAGE_MASK, align 8
  %16 = xor i64 %15, -1
  %17 = and i64 %14, %16
  %18 = load i64, i64* %3, align 8
  %19 = or i64 %18, %17
  store i64 %19, i64* %3, align 8
  %20 = load i64, i64* %3, align 8
  call void asm sideeffect ".chip 68040\0A\09nop\0A\09cpushl %bc,($0)\0A\09.chip 68k", "{ax},~{dirflag},~{fpsr},~{flags}"(i64 %20) #1, !srcloc !3
  br label %38

21:                                               ; preds = %1
  %22 = load i64, i64* @CPU_IS_060, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %21
  %25 = load i64, i64* %2, align 8
  %26 = call i64 asm sideeffect ".chip 68060\0A\09plpar ($0)\0A\09.chip 68k", "={ax},0,~{dirflag},~{fpsr},~{flags}"(i64 %25) #1, !srcloc !4
  store i64 %26, i64* %4, align 8
  %27 = load i64, i64* %4, align 8
  call void asm sideeffect ".chip 68060\0A\09cpushl %bc,($0)\0A\09.chip 68k", "{ax},~{dirflag},~{fpsr},~{flags}"(i64 %27) #1, !srcloc !5
  br label %37

28:                                               ; preds = %21
  %29 = call i64 asm sideeffect "movec %cacr,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #1, !srcloc !6
  store i64 %29, i64* %5, align 8
  %30 = load i64, i64* %5, align 8
  %31 = add i64 %30, 4
  store i64 %31, i64* %5, align 8
  %32 = load i64, i64* %2, align 8
  %33 = load i64, i64* %5, align 8
  call void asm sideeffect "movec $0,%caar\0A\09movec $1,%cacr", "r,r,~{dirflag},~{fpsr},~{flags}"(i64 %32, i64 %33) #1, !srcloc !7
  %34 = load i64, i64* %2, align 8
  %35 = add i64 %34, 4
  %36 = load i64, i64* %5, align 8
  call void asm sideeffect "movec $0,%caar\0A\09movec $1,%cacr", "r,r,~{dirflag},~{fpsr},~{flags}"(i64 %35, i64 %36) #1, !srcloc !8
  br label %37

37:                                               ; preds = %28, %24
  br label %38

38:                                               ; preds = %37, %8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{i32 353, i32 367, i32 387, i32 415, i32 448}
!3 = !{i32 601, i32 615, i32 635, i32 668}
!4 = !{i32 794, i32 808, i32 835}
!5 = !{i32 935, i32 949, i32 982}
!6 = !{i32 1089}
!7 = !{i32 1152, i32 1170}
!8 = !{i32 1256, i32 1274}
