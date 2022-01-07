; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/atm/extr_idt77252.c_fill_tst.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/atm/extr_idt77252.c_fill_tst.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.idt77252_dev = type { i32, i32, i32 }
%struct.vc_map = type { i32 }

@TST_SWITCH_PENDING = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.idt77252_dev*, %struct.vc_map*, i32, i32)* @fill_tst to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fill_tst(%struct.idt77252_dev* %0, %struct.vc_map* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.idt77252_dev*, align 8
  %6 = alloca %struct.vc_map*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.idt77252_dev* %0, %struct.idt77252_dev** %5, align 8
  store %struct.vc_map* %1, %struct.vc_map** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load %struct.idt77252_dev*, %struct.idt77252_dev** %5, align 8
  %12 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %11, i32 0, i32 0
  %13 = load i64, i64* %9, align 8
  %14 = call i32 @spin_lock_irqsave(i32* %12, i64 %13)
  %15 = load %struct.idt77252_dev*, %struct.idt77252_dev** %5, align 8
  %16 = load %struct.vc_map*, %struct.vc_map** %6, align 8
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* %8, align 4
  %19 = call i32 @__fill_tst(%struct.idt77252_dev* %15, %struct.vc_map* %16, i32 %17, i32 %18)
  store i32 %19, i32* %10, align 4
  %20 = load i32, i32* @TST_SWITCH_PENDING, align 4
  %21 = load %struct.idt77252_dev*, %struct.idt77252_dev** %5, align 8
  %22 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %21, i32 0, i32 2
  %23 = call i32 @set_bit(i32 %20, i32* %22)
  %24 = load %struct.idt77252_dev*, %struct.idt77252_dev** %5, align 8
  %25 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %24, i32 0, i32 1
  %26 = call i32 @timer_pending(i32* %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %34, label %28

28:                                               ; preds = %4
  %29 = load %struct.idt77252_dev*, %struct.idt77252_dev** %5, align 8
  %30 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %29, i32 0, i32 1
  %31 = load i64, i64* @jiffies, align 8
  %32 = add nsw i64 %31, 1
  %33 = call i32 @mod_timer(i32* %30, i64 %32)
  br label %34

34:                                               ; preds = %28, %4
  %35 = load %struct.idt77252_dev*, %struct.idt77252_dev** %5, align 8
  %36 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %35, i32 0, i32 0
  %37 = load i64, i64* %9, align 8
  %38 = call i32 @spin_unlock_irqrestore(i32* %36, i64 %37)
  %39 = load i32, i32* %10, align 4
  ret i32 %39
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @__fill_tst(%struct.idt77252_dev*, %struct.vc_map*, i32, i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @timer_pending(i32*) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
