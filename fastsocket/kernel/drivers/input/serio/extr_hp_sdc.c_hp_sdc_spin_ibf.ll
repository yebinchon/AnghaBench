; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/serio/extr_hp_sdc.c_hp_sdc_spin_ibf.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/serio/extr_hp_sdc.c_hp_sdc_spin_ibf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i32, i32 }

@hp_sdc = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@HP_SDC_STATUS_IBF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @hp_sdc_spin_ibf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hp_sdc_spin_ibf() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i32*, align 8
  store i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @hp_sdc, i32 0, i32 2), i32** %2, align 8
  %3 = load i32*, i32** %2, align 8
  %4 = load i64, i64* %1, align 8
  %5 = call i32 @read_lock_irqsave(i32* %3, i64 %4)
  %6 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @hp_sdc, i32 0, i32 0), align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %12, label %8

8:                                                ; preds = %0
  %9 = load i32*, i32** %2, align 8
  %10 = load i64, i64* %1, align 8
  %11 = call i32 @read_unlock_irqrestore(i32* %9, i64 %10)
  br label %28

12:                                               ; preds = %0
  %13 = load i32*, i32** %2, align 8
  %14 = call i32 @read_unlock(i32* %13)
  %15 = load i32*, i32** %2, align 8
  %16 = call i32 @write_lock(i32* %15)
  br label %17

17:                                               ; preds = %23, %12
  %18 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @hp_sdc, i32 0, i32 1), align 8
  %19 = call i32 @sdc_readb(i32 %18)
  %20 = load i32, i32* @HP_SDC_STATUS_IBF, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %17
  br label %17

24:                                               ; preds = %17
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @hp_sdc, i32 0, i32 0), align 8
  %25 = load i32*, i32** %2, align 8
  %26 = load i64, i64* %1, align 8
  %27 = call i32 @write_unlock_irqrestore(i32* %25, i64 %26)
  br label %28

28:                                               ; preds = %24, %8
  ret void
}

declare dso_local i32 @read_lock_irqsave(i32*, i64) #1

declare dso_local i32 @read_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @read_unlock(i32*) #1

declare dso_local i32 @write_lock(i32*) #1

declare dso_local i32 @sdc_readb(i32) #1

declare dso_local i32 @write_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
