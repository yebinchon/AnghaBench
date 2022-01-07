; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/b3dfg/extr_b3dfg.c_get_cstate_change.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/b3dfg/extr_b3dfg.c_get_cstate_change.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b3dfg_dev = type { i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.b3dfg_dev*)* @get_cstate_change to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @get_cstate_change(%struct.b3dfg_dev* %0) #0 {
  %2 = alloca %struct.b3dfg_dev*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store %struct.b3dfg_dev* %0, %struct.b3dfg_dev** %2, align 8
  %5 = load %struct.b3dfg_dev*, %struct.b3dfg_dev** %2, align 8
  %6 = getelementptr inbounds %struct.b3dfg_dev, %struct.b3dfg_dev* %5, i32 0, i32 1
  %7 = load i64, i64* %3, align 8
  %8 = call i32 @spin_lock_irqsave(i32* %6, i64 %7)
  %9 = load %struct.b3dfg_dev*, %struct.b3dfg_dev** %2, align 8
  %10 = getelementptr inbounds %struct.b3dfg_dev, %struct.b3dfg_dev* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  store i64 %11, i64* %4, align 8
  %12 = load %struct.b3dfg_dev*, %struct.b3dfg_dev** %2, align 8
  %13 = getelementptr inbounds %struct.b3dfg_dev, %struct.b3dfg_dev* %12, i32 0, i32 1
  %14 = load i64, i64* %3, align 8
  %15 = call i32 @spin_unlock_irqrestore(i32* %13, i64 %14)
  %16 = load i64, i64* %4, align 8
  ret i64 %16
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
