; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_libata-core.c_ata_ratelimit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_libata-core.c_ata_ratelimit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ata_ratelimit_lock = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@ratelimit_time = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ata_ratelimit() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  %3 = load i64, i64* %2, align 8
  %4 = call i32 @spin_lock_irqsave(i32* @ata_ratelimit_lock, i64 %3)
  %5 = load i64, i64* @jiffies, align 8
  %6 = load i64, i64* @ratelimit_time, align 8
  %7 = call i64 @time_after(i64 %5, i64 %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %15

9:                                                ; preds = %0
  store i32 1, i32* %1, align 4
  %10 = load i64, i64* @jiffies, align 8
  %11 = load i32, i32* @HZ, align 4
  %12 = sdiv i32 %11, 5
  %13 = sext i32 %12 to i64
  %14 = add nsw i64 %10, %13
  store i64 %14, i64* @ratelimit_time, align 8
  br label %16

15:                                               ; preds = %0
  store i32 0, i32* %1, align 4
  br label %16

16:                                               ; preds = %15, %9
  %17 = load i64, i64* %2, align 8
  %18 = call i32 @spin_unlock_irqrestore(i32* @ata_ratelimit_lock, i64 %17)
  %19 = load i32, i32* %1, align 4
  ret i32 %19
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @time_after(i64, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
