; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/kernel/extr_irq_64.c_sun4u_irq_eoi.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/kernel/extr_irq_64.c_sun4u_irq_eoi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_desc = type { i32 }
%struct.irq_handler_data = type { i32 }

@irq_desc = common dso_local global %struct.irq_desc* null, align 8
@IRQ_DISABLED = common dso_local global i32 0, align 4
@IRQ_INPROGRESS = common dso_local global i32 0, align 4
@ICLR_IDLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @sun4u_irq_eoi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sun4u_irq_eoi(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.irq_handler_data*, align 8
  %4 = alloca %struct.irq_desc*, align 8
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = call %struct.irq_handler_data* @get_irq_chip_data(i32 %5)
  store %struct.irq_handler_data* %6, %struct.irq_handler_data** %3, align 8
  %7 = load %struct.irq_desc*, %struct.irq_desc** @irq_desc, align 8
  %8 = load i32, i32* %2, align 4
  %9 = zext i32 %8 to i64
  %10 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %7, i64 %9
  store %struct.irq_desc* %10, %struct.irq_desc** %4, align 8
  %11 = load %struct.irq_desc*, %struct.irq_desc** %4, align 8
  %12 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @IRQ_DISABLED, align 4
  %15 = load i32, i32* @IRQ_INPROGRESS, align 4
  %16 = or i32 %14, %15
  %17 = and i32 %13, %16
  %18 = call i64 @unlikely(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %1
  br label %31

21:                                               ; preds = %1
  %22 = load %struct.irq_handler_data*, %struct.irq_handler_data** %3, align 8
  %23 = call i64 @likely(%struct.irq_handler_data* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %21
  %26 = load i32, i32* @ICLR_IDLE, align 4
  %27 = load %struct.irq_handler_data*, %struct.irq_handler_data** %3, align 8
  %28 = getelementptr inbounds %struct.irq_handler_data, %struct.irq_handler_data* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @upa_writeq(i32 %26, i32 %29)
  br label %31

31:                                               ; preds = %20, %25, %21
  ret void
}

declare dso_local %struct.irq_handler_data* @get_irq_chip_data(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @likely(%struct.irq_handler_data*) #1

declare dso_local i32 @upa_writeq(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
