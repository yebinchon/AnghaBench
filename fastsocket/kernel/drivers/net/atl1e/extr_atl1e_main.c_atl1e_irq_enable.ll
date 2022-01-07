; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/atl1e/extr_atl1e_main.c_atl1e_irq_enable.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/atl1e/extr_atl1e_main.c_atl1e_irq_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atl1e_adapter = type { i32, i32 }

@REG_ISR = common dso_local global i32 0, align 4
@REG_IMR = common dso_local global i32 0, align 4
@IMR_NORMAL_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.atl1e_adapter*)* @atl1e_irq_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @atl1e_irq_enable(%struct.atl1e_adapter* %0) #0 {
  %2 = alloca %struct.atl1e_adapter*, align 8
  store %struct.atl1e_adapter* %0, %struct.atl1e_adapter** %2, align 8
  %3 = load %struct.atl1e_adapter*, %struct.atl1e_adapter** %2, align 8
  %4 = getelementptr inbounds %struct.atl1e_adapter, %struct.atl1e_adapter* %3, i32 0, i32 1
  %5 = call i32 @atomic_dec_and_test(i32* %4)
  %6 = call i64 @likely(i32 %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %21

8:                                                ; preds = %1
  %9 = load %struct.atl1e_adapter*, %struct.atl1e_adapter** %2, align 8
  %10 = getelementptr inbounds %struct.atl1e_adapter, %struct.atl1e_adapter* %9, i32 0, i32 0
  %11 = load i32, i32* @REG_ISR, align 4
  %12 = call i32 @AT_WRITE_REG(i32* %10, i32 %11, i32 0)
  %13 = load %struct.atl1e_adapter*, %struct.atl1e_adapter** %2, align 8
  %14 = getelementptr inbounds %struct.atl1e_adapter, %struct.atl1e_adapter* %13, i32 0, i32 0
  %15 = load i32, i32* @REG_IMR, align 4
  %16 = load i32, i32* @IMR_NORMAL_MASK, align 4
  %17 = call i32 @AT_WRITE_REG(i32* %14, i32 %15, i32 %16)
  %18 = load %struct.atl1e_adapter*, %struct.atl1e_adapter** %2, align 8
  %19 = getelementptr inbounds %struct.atl1e_adapter, %struct.atl1e_adapter* %18, i32 0, i32 0
  %20 = call i32 @AT_WRITE_FLUSH(i32* %19)
  br label %21

21:                                               ; preds = %8, %1
  ret void
}

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @atomic_dec_and_test(i32*) #1

declare dso_local i32 @AT_WRITE_REG(i32*, i32, i32) #1

declare dso_local i32 @AT_WRITE_FLUSH(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
