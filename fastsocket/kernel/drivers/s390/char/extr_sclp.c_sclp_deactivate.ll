; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/char/extr_sclp.c_sclp_deactivate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/char/extr_sclp.c_sclp_deactivate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@sclp_lock = common dso_local global i32 0, align 4
@sclp_activation_state = common dso_local global i64 0, align 8
@sclp_activation_state_active = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@sclp_activation_state_deactivating = common dso_local global i64 0, align 8
@sclp_activation_state_inactive = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sclp_deactivate() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = load i64, i64* %2, align 8
  %5 = call i32 @spin_lock_irqsave(i32* @sclp_lock, i64 %4)
  %6 = load i64, i64* @sclp_activation_state, align 8
  %7 = load i64, i64* @sclp_activation_state_active, align 8
  %8 = icmp ne i64 %6, %7
  br i1 %8, label %9, label %14

9:                                                ; preds = %0
  %10 = load i64, i64* %2, align 8
  %11 = call i32 @spin_unlock_irqrestore(i32* @sclp_lock, i64 %10)
  %12 = load i32, i32* @EINVAL, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %1, align 4
  br label %31

14:                                               ; preds = %0
  %15 = load i64, i64* @sclp_activation_state_deactivating, align 8
  store i64 %15, i64* @sclp_activation_state, align 8
  %16 = load i64, i64* %2, align 8
  %17 = call i32 @spin_unlock_irqrestore(i32* @sclp_lock, i64 %16)
  %18 = call i32 @sclp_init_mask(i32 0)
  store i32 %18, i32* %3, align 4
  %19 = load i64, i64* %2, align 8
  %20 = call i32 @spin_lock_irqsave(i32* @sclp_lock, i64 %19)
  %21 = load i32, i32* %3, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %14
  %24 = load i64, i64* @sclp_activation_state_inactive, align 8
  store i64 %24, i64* @sclp_activation_state, align 8
  br label %27

25:                                               ; preds = %14
  %26 = load i64, i64* @sclp_activation_state_active, align 8
  store i64 %26, i64* @sclp_activation_state, align 8
  br label %27

27:                                               ; preds = %25, %23
  %28 = load i64, i64* %2, align 8
  %29 = call i32 @spin_unlock_irqrestore(i32* @sclp_lock, i64 %28)
  %30 = load i32, i32* %3, align 4
  store i32 %30, i32* %1, align 4
  br label %31

31:                                               ; preds = %27, %9
  %32 = load i32, i32* %1, align 4
  ret i32 %32
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @sclp_init_mask(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
