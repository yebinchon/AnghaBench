; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_toshiba.c_tosh_smm.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_toshiba.c_tosh_smm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tosh_smm(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %4 = load i32*, i32** %2, align 8
  %5 = call i32 asm "# load the values into the registers\0A\09pushl %eax\0A\09movl 0(%eax),%edx\0A\09push %edx\0A\09movl 4(%eax),%ebx\0A\09movl 8(%eax),%ecx\0A\09movl 12(%eax),%edx\0A\09movl 16(%eax),%esi\0A\09movl 20(%eax),%edi\0A\09popl %eax\0A\09# call the System Management mode\0A\09inb $$0xb2,%al\0A\09# fill out the memory with the values in the registers\0A\09xchgl %eax,(%esp)\0A\09movl %ebx,4(%eax)\0A\09movl %ecx,8(%eax)\0A\09movl %edx,12(%eax)\0A\09movl %esi,16(%eax)\0A\09movl %edi,20(%eax)\0A\09popl %edx\0A\09movl %edx,0(%eax)\0A\09# setup the return value to the carry flag\0A\09lahf\0A\09shrl $$8,%eax\0A\09andl $$1,%eax\0A", "={ax},{ax},~{ebx},~{ecx},~{edx},~{esi},~{edi},~{memory},~{dirflag},~{fpsr},~{flags}"(i32* %4) #1, !srcloc !2
  store i32 %5, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  ret i32 %6
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{i32 221, i32 260, i32 278, i32 304, i32 321, i32 347, i32 373, i32 400, i32 427, i32 454, i32 471, i32 511, i32 532, i32 595, i32 621, i32 650, i32 676, i32 703, i32 730, i32 757, i32 774, i32 800, i32 849, i32 860, i32 880}
