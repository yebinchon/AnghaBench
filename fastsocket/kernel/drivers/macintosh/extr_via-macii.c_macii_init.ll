; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/macintosh/extr_via-macii.c_macii_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/macintosh/extr_via-macii.c_macii_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@IRQ_MAC_ADB = common dso_local global i32 0, align 4
@macii_interrupt = common dso_local global i32 0, align 4
@IRQ_FLG_LOCK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"ADB\00", align 1
@idle = common dso_local global i32 0, align 4
@macii_state = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @macii_init() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i32, align 4
  %3 = load i64, i64* %1, align 8
  %4 = call i32 @local_irq_save(i64 %3)
  %5 = call i32 (...) @macii_init_via()
  store i32 %5, i32* %2, align 4
  %6 = load i32, i32* %2, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %0
  br label %20

9:                                                ; preds = %0
  %10 = load i32, i32* @IRQ_MAC_ADB, align 4
  %11 = load i32, i32* @macii_interrupt, align 4
  %12 = load i32, i32* @IRQ_FLG_LOCK, align 4
  %13 = load i32, i32* @macii_interrupt, align 4
  %14 = call i32 @request_irq(i32 %10, i32 %11, i32 %12, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %13)
  store i32 %14, i32* %2, align 4
  %15 = load i32, i32* %2, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %9
  br label %20

18:                                               ; preds = %9
  %19 = load i32, i32* @idle, align 4
  store i32 %19, i32* @macii_state, align 4
  br label %20

20:                                               ; preds = %18, %17, %8
  %21 = load i64, i64* %1, align 8
  %22 = call i32 @local_irq_restore(i64 %21)
  %23 = load i32, i32* %2, align 4
  ret i32 %23
}

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i32 @macii_init_via(...) #1

declare dso_local i32 @request_irq(i32, i32, i32, i8*, i32) #1

declare dso_local i32 @local_irq_restore(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
