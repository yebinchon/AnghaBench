; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/m68k/q40/extr_q40ints.c_q40_disable_irq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/m68k/q40/extr_q40ints.c_q40_disable_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EXT_ENABLE_REG = common dso_local global i32 0, align 4
@mext_disabled = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"disable_irq nesting count %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @q40_disable_irq(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = icmp uge i32 %3, 5
  br i1 %4, label %5, label %19

5:                                                ; preds = %1
  %6 = load i32, i32* %2, align 4
  %7 = icmp ule i32 %6, 15
  br i1 %7, label %8, label %19

8:                                                ; preds = %5
  %9 = load i32, i32* @EXT_ENABLE_REG, align 4
  %10 = call i32 @master_outb(i32 0, i32 %9)
  %11 = load i32, i32* @mext_disabled, align 4
  %12 = add nsw i32 %11, 1
  store i32 %12, i32* @mext_disabled, align 4
  %13 = load i32, i32* @mext_disabled, align 4
  %14 = icmp sgt i32 %13, 1
  br i1 %14, label %15, label %18

15:                                               ; preds = %8
  %16 = load i32, i32* @mext_disabled, align 4
  %17 = call i32 @printk(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %16)
  br label %18

18:                                               ; preds = %15, %8
  br label %19

19:                                               ; preds = %18, %5, %1
  ret void
}

declare dso_local i32 @master_outb(i32, i32) #1

declare dso_local i32 @printk(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
