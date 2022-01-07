; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/microblaze/kernel/extr_irq.c_do_IRQ.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/microblaze/kernel/extr_irq.c_do_IRQ.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_regs = type { i32 }

@.str = private unnamed_addr constant [14 x i8] c"next irq: %d\0A\00", align 1
@concurrent_irq = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @do_IRQ(%struct.pt_regs* %0) #0 {
  %2 = alloca %struct.pt_regs*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.pt_regs*, align 8
  store %struct.pt_regs* %0, %struct.pt_regs** %2, align 8
  %5 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %6 = call %struct.pt_regs* @set_irq_regs(%struct.pt_regs* %5)
  store %struct.pt_regs* %6, %struct.pt_regs** %4, align 8
  %7 = call i32 (...) @irq_enter()
  %8 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %9 = call i32 @get_irq(%struct.pt_regs* %8)
  store i32 %9, i32* %3, align 4
  br label %10

10:                                               ; preds = %21, %1
  %11 = load i32, i32* %3, align 4
  %12 = icmp eq i32 %11, -1
  %13 = zext i1 %12 to i32
  %14 = call i32 @BUG_ON(i32 %13)
  %15 = load i32, i32* %3, align 4
  %16 = call i32 @generic_handle_irq(i32 %15)
  %17 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %18 = call i32 @get_irq(%struct.pt_regs* %17)
  store i32 %18, i32* %3, align 4
  %19 = load i32, i32* %3, align 4
  %20 = icmp ne i32 %19, -1
  br i1 %20, label %21, label %26

21:                                               ; preds = %10
  %22 = load i32, i32* %3, align 4
  %23 = call i32 @pr_debug(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %22)
  %24 = load i32, i32* @concurrent_irq, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* @concurrent_irq, align 4
  br label %10

26:                                               ; preds = %10
  %27 = call i32 (...) @irq_exit()
  %28 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %29 = call %struct.pt_regs* @set_irq_regs(%struct.pt_regs* %28)
  ret void
}

declare dso_local %struct.pt_regs* @set_irq_regs(%struct.pt_regs*) #1

declare dso_local i32 @irq_enter(...) #1

declare dso_local i32 @get_irq(%struct.pt_regs*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @generic_handle_irq(i32) #1

declare dso_local i32 @pr_debug(i8*, i32) #1

declare dso_local i32 @irq_exit(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
