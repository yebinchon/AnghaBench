; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/lib/extr_strstr_32.c_strstr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/lib/extr_strstr_32.c_strstr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @strstr(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = load i8*, i8** %3, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = call { i8*, i32, i8* } asm sideeffect "movl $6,%edi\0A\09repne\0A\09scasb\0A\09notl %ecx\0A\09decl %ecx\0A\09movl %ecx,%edx\0A1:\09movl $6,%edi\0A\09movl %esi,%eax\0A\09movl %edx,%ecx\0A\09repe\0A\09cmpsb\0A\09je 2f\0A\09xchgl %eax,%esi\0A\09incl %esi\0A\09cmpb $$0,-1(%eax)\0A\09jne 1b\0A\09xorl %eax,%eax\0A\092:", "={ax},=&{cx},=&{si},0,1,2,imr,~{dx},~{di},~{dirflag},~{fpsr},~{flags}"(i64 0, i32 -1, i8* %8, i8* %9) #1, !srcloc !2
  %11 = extractvalue { i8*, i32, i8* } %10, 0
  %12 = extractvalue { i8*, i32, i8* } %10, 1
  %13 = extractvalue { i8*, i32, i8* } %10, 2
  store i8* %11, i8** %7, align 8
  store i32 %12, i32* %5, align 4
  %14 = ptrtoint i8* %13 to i64
  %15 = trunc i64 %14 to i32
  store i32 %15, i32* %6, align 4
  %16 = load i8*, i8** %7, align 8
  ret i8* %16
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{i32 237, i32 253, i32 266, i32 279, i32 297, i32 315, i32 343, i32 362, i32 386, i32 410, i32 422, i32 435, i32 448, i32 473, i32 491, i32 516, i32 530, i32 554}
