; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/math-emu/extr_poly.h_add_two_Xsig.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/math-emu/extr_poly.h_add_two_Xsig.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i64*)* @add_two_Xsig to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_two_Xsig(i32* %0, i32* %1, i64* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64*, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i64* %2, i64** %6, align 8
  %7 = load i64*, i64** %6, align 8
  %8 = load i32*, i32** %4, align 8
  %9 = load i32*, i32** %4, align 8
  %10 = load i32*, i32** %5, align 8
  %11 = load i64*, i64** %6, align 8
  call void asm sideeffect "movl $2,%ecx; movl $3,%esi;\0Amovl (%esi),%eax; addl %eax,(%ecx);\0Amovl 4(%esi),%eax; adcl %eax,4(%ecx);\0Amovl 8(%esi),%eax; adcl %eax,8(%ecx);\0Ajnc 0f;\0Arcrl 8(%ecx); rcrl 4(%ecx); rcrl (%ecx)\0Amovl $4,%ecx; incl (%ecx)\0Amovl $$1,%eax; jmp 1f;\0A0: xorl %eax,%eax;\0A1:\0A", "=*imr,=*imr,imr,imr,imr,~{cx},~{si},~{ax},~{dirflag},~{fpsr},~{flags}"(i64* %7, i32* %8, i32* %9, i32* %10, i64* %11) #1, !srcloc !2
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{i32 275, i32 318, i32 370, i32 424, i32 478, i32 498, i32 553, i32 593, i32 628, i32 653}
