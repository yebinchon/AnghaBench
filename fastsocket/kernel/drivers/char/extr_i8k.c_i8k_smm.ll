; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_i8k.c_i8k_smm.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_i8k.c_i8k_smm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smm_regs = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.smm_regs*)* @i8k_smm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i8k_smm(%struct.smm_regs* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.smm_regs*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.smm_regs* %0, %struct.smm_regs** %3, align 8
  %6 = load %struct.smm_regs*, %struct.smm_regs** %3, align 8
  %7 = getelementptr inbounds %struct.smm_regs, %struct.smm_regs* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  store i32 %8, i32* %5, align 4
  %9 = load %struct.smm_regs*, %struct.smm_regs** %3, align 8
  %10 = call i32 asm "pushl %eax\0A\09movl 0(%eax),%edx\0A\09push %edx\0A\09movl 4(%eax),%ebx\0A\09movl 8(%eax),%ecx\0A\09movl 12(%eax),%edx\0A\09movl 16(%eax),%esi\0A\09movl 20(%eax),%edi\0A\09popl %eax\0A\09out %al,$$0xb2\0A\09out %al,$$0x84\0A\09xchgl %eax,(%esp)\0A\09movl %ebx,4(%eax)\0A\09movl %ecx,8(%eax)\0A\09movl %edx,12(%eax)\0A\09movl %esi,16(%eax)\0A\09movl %edi,20(%eax)\0A\09popl %edx\0A\09movl %edx,0(%eax)\0A\09lahf\0A\09shrl $$8,%eax\0A\09andl $$1,%eax\0A", "={ax},{ax},~{ebx},~{ecx},~{edx},~{esi},~{edi},~{memory},~{dirflag},~{fpsr},~{flags}"(%struct.smm_regs* %9) #1, !srcloc !2
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %25, label %13

13:                                               ; preds = %1
  %14 = load %struct.smm_regs*, %struct.smm_regs** %3, align 8
  %15 = getelementptr inbounds %struct.smm_regs, %struct.smm_regs* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = and i32 %16, 65535
  %18 = icmp eq i32 %17, 65535
  br i1 %18, label %25, label %19

19:                                               ; preds = %13
  %20 = load %struct.smm_regs*, %struct.smm_regs** %3, align 8
  %21 = getelementptr inbounds %struct.smm_regs, %struct.smm_regs* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %5, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %19, %13, %1
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %2, align 4
  br label %29

28:                                               ; preds = %19
  store i32 0, i32* %2, align 4
  br label %29

29:                                               ; preds = %28, %25
  %30 = load i32, i32* %2, align 4
  ret i32 %30
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{i32 288, i32 302, i32 333, i32 355, i32 386, i32 417, i32 449, i32 481, i32 513, i32 535, i32 561, i32 587, i32 618, i32 649, i32 680, i32 712, i32 744, i32 776, i32 798, i32 829, i32 845, i32 870}
