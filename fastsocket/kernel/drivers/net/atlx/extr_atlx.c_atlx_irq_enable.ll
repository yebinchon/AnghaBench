; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/atlx/extr_atlx.c_atlx_irq_enable.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/atlx/extr_atlx.c_atlx_irq_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atlx_adapter = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@IMR_NORMAL_MASK = common dso_local global i32 0, align 4
@REG_IMR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.atlx_adapter*)* @atlx_irq_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @atlx_irq_enable(%struct.atlx_adapter* %0) #0 {
  %2 = alloca %struct.atlx_adapter*, align 8
  store %struct.atlx_adapter* %0, %struct.atlx_adapter** %2, align 8
  %3 = load i32, i32* @IMR_NORMAL_MASK, align 4
  %4 = load %struct.atlx_adapter*, %struct.atlx_adapter** %2, align 8
  %5 = getelementptr inbounds %struct.atlx_adapter, %struct.atlx_adapter* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @REG_IMR, align 8
  %9 = add nsw i64 %7, %8
  %10 = call i32 @iowrite32(i32 %3, i64 %9)
  %11 = load %struct.atlx_adapter*, %struct.atlx_adapter** %2, align 8
  %12 = getelementptr inbounds %struct.atlx_adapter, %struct.atlx_adapter* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @REG_IMR, align 8
  %16 = add nsw i64 %14, %15
  %17 = call i32 @ioread32(i64 %16)
  ret void
}

declare dso_local i32 @iowrite32(i32, i64) #1

declare dso_local i32 @ioread32(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
