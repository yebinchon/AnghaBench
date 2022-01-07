; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/kernel/extr_irq_64.c_do_softirq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/kernel/extr_irq_64.c_do_softirq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@softirq_stack = common dso_local global i8** null, align 8
@THREAD_SIZE = common dso_local global i32 0, align 4
@STACK_BIAS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @do_softirq() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = call i64 (...) @in_interrupt()
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %0
  br label %31

7:                                                ; preds = %0
  %8 = load i64, i64* %1, align 8
  %9 = call i32 @local_irq_save(i64 %8)
  %10 = call i64 (...) @local_softirq_pending()
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %28

12:                                               ; preds = %7
  %13 = load i8**, i8*** @softirq_stack, align 8
  %14 = call i64 (...) @smp_processor_id()
  %15 = getelementptr inbounds i8*, i8** %13, i64 %14
  %16 = load i8*, i8** %15, align 8
  store i8* %16, i8** %3, align 8
  %17 = load i32, i32* @THREAD_SIZE, align 4
  %18 = sub nsw i32 %17, 192
  %19 = load i32, i32* @STACK_BIAS, align 4
  %20 = sub nsw i32 %18, %19
  %21 = load i8*, i8** %3, align 8
  %22 = sext i32 %20 to i64
  %23 = getelementptr i8, i8* %21, i64 %22
  store i8* %23, i8** %3, align 8
  %24 = load i8*, i8** %3, align 8
  %25 = call i8* asm sideeffect "mov %sp, $0\0A\09mov $1, %sp", "=&r,r,~{dirflag},~{fpsr},~{flags}"(i8* %24) #2, !srcloc !2
  store i8* %25, i8** %2, align 8
  %26 = call i32 (...) @__do_softirq()
  %27 = load i8*, i8** %2, align 8
  call void asm sideeffect "mov $0, %sp", "r,~{dirflag},~{fpsr},~{flags}"(i8* %27) #2, !srcloc !3
  br label %28

28:                                               ; preds = %12, %7
  %29 = load i64, i64* %1, align 8
  %30 = call i32 @local_irq_restore(i64 %29)
  br label %31

31:                                               ; preds = %28, %6
  ret void
}

declare dso_local i64 @in_interrupt(...) #1

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i64 @local_softirq_pending(...) #1

declare dso_local i64 @smp_processor_id(...) #1

declare dso_local i32 @__do_softirq(...) #1

declare dso_local i32 @local_irq_restore(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{i32 655, i32 670}
!3 = !{i32 788}
