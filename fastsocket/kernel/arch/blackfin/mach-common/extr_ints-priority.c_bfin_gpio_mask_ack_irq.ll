; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/blackfin/mach-common/extr_ints-priority.c_bfin_gpio_mask_ack_irq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/blackfin/mach-common/extr_ints-priority.c_bfin_gpio_mask_ack_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_desc = type { i64 }

@irq_desc = common dso_local global %struct.irq_desc* null, align 8
@handle_edge_irq = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @bfin_gpio_mask_ack_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bfin_gpio_mask_ack_irq(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.irq_desc*, align 8
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %5 = load %struct.irq_desc*, %struct.irq_desc** @irq_desc, align 8
  %6 = load i32, i32* %2, align 4
  %7 = zext i32 %6 to i64
  %8 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %5, i64 %7
  store %struct.irq_desc* %8, %struct.irq_desc** %3, align 8
  %9 = load i32, i32* %2, align 4
  %10 = call i32 @irq_to_gpio(i32 %9)
  store i32 %10, i32* %4, align 4
  %11 = load %struct.irq_desc*, %struct.irq_desc** %3, align 8
  %12 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @handle_edge_irq, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %19

16:                                               ; preds = %1
  %17 = load i32, i32* %4, align 4
  %18 = call i32 @set_gpio_data(i32 %17, i32 0)
  br label %19

19:                                               ; preds = %16, %1
  %20 = load i32, i32* %4, align 4
  %21 = call i32 @set_gpio_maska(i32 %20, i32 0)
  ret void
}

declare dso_local i32 @irq_to_gpio(i32) #1

declare dso_local i32 @set_gpio_data(i32, i32) #1

declare dso_local i32 @set_gpio_maska(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
