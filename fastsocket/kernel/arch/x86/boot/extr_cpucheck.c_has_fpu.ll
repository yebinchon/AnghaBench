; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/boot/extr_cpucheck.c_has_fpu.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/boot/extr_cpucheck.c_has_fpu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@X86_CR0_EM = common dso_local global i32 0, align 4
@X86_CR0_TS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @has_fpu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @has_fpu() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  store i64 -1, i64* %1, align 8
  store i64 -1, i64* %2, align 8
  %4 = call i32 asm "movl %cr0,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #1, !srcloc !2
  store i32 %4, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = load i32, i32* @X86_CR0_EM, align 4
  %7 = load i32, i32* @X86_CR0_TS, align 4
  %8 = or i32 %6, %7
  %9 = and i32 %5, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %19

11:                                               ; preds = %0
  %12 = load i32, i32* @X86_CR0_EM, align 4
  %13 = load i32, i32* @X86_CR0_TS, align 4
  %14 = or i32 %12, %13
  %15 = xor i32 %14, -1
  %16 = load i32, i32* %3, align 4
  %17 = and i32 %16, %15
  store i32 %17, i32* %3, align 4
  %18 = load i32, i32* %3, align 4
  call void asm sideeffect "movl $0,%cr0", "r,~{dirflag},~{fpsr},~{flags}"(i32 %18) #2, !srcloc !3
  br label %19

19:                                               ; preds = %11, %0
  call void asm sideeffect "fninit ; fnstsw $0 ; fnstcw $1", "=*m,=*m,*m,*m,~{dirflag},~{fpsr},~{flags}"(i64* %2, i64* %1, i64* %2, i64* %1) #2, !srcloc !4
  %20 = load i64, i64* %2, align 8
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %19
  %23 = load i64, i64* %1, align 8
  %24 = and i64 %23, 4159
  %25 = icmp eq i64 %24, 63
  br label %26

26:                                               ; preds = %22, %19
  %27 = phi i1 [ false, %19 ], [ %25, %22 ]
  %28 = zext i1 %27 to i32
  ret i32 %28
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{i32 311}
!3 = !{i32 430}
!4 = !{i32 480}
