; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/act2000/extr_act2000_isa.c_act2000_isa_select_irq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/act2000/extr_act2000_isa.c_act2000_isa_select_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@ISA_PORT_COR = common dso_local global i32 0, align 4
@ISA_COR_IRQOFF = common dso_local global i8 0, align 1
@ISA_COR_PERR = common dso_local global i8 0, align 1
@ISA_COR_IRQ03 = common dso_local global i8 0, align 1
@ISA_COR_IRQ05 = common dso_local global i8 0, align 1
@ISA_COR_IRQ07 = common dso_local global i8 0, align 1
@ISA_COR_IRQ10 = common dso_local global i8 0, align 1
@ISA_COR_IRQ11 = common dso_local global i8 0, align 1
@ISA_COR_IRQ12 = common dso_local global i8 0, align 1
@ISA_COR_IRQ15 = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*)* @act2000_isa_select_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @act2000_isa_select_irq(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca i8, align 1
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  %4 = load i32, i32* @ISA_PORT_COR, align 4
  %5 = call zeroext i8 @inb(i32 %4)
  %6 = zext i8 %5 to i32
  %7 = load i8, i8* @ISA_COR_IRQOFF, align 1
  %8 = zext i8 %7 to i32
  %9 = xor i32 %8, -1
  %10 = and i32 %6, %9
  %11 = load i8, i8* @ISA_COR_PERR, align 1
  %12 = zext i8 %11 to i32
  %13 = or i32 %10, %12
  %14 = trunc i32 %13 to i8
  store i8 %14, i8* %3, align 1
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  switch i32 %17, label %32 [
    i32 3, label %18
    i32 5, label %20
    i32 7, label %22
    i32 10, label %24
    i32 11, label %26
    i32 12, label %28
    i32 15, label %30
  ]

18:                                               ; preds = %1
  %19 = load i8, i8* @ISA_COR_IRQ03, align 1
  store i8 %19, i8* %3, align 1
  br label %32

20:                                               ; preds = %1
  %21 = load i8, i8* @ISA_COR_IRQ05, align 1
  store i8 %21, i8* %3, align 1
  br label %32

22:                                               ; preds = %1
  %23 = load i8, i8* @ISA_COR_IRQ07, align 1
  store i8 %23, i8* %3, align 1
  br label %32

24:                                               ; preds = %1
  %25 = load i8, i8* @ISA_COR_IRQ10, align 1
  store i8 %25, i8* %3, align 1
  br label %32

26:                                               ; preds = %1
  %27 = load i8, i8* @ISA_COR_IRQ11, align 1
  store i8 %27, i8* %3, align 1
  br label %32

28:                                               ; preds = %1
  %29 = load i8, i8* @ISA_COR_IRQ12, align 1
  store i8 %29, i8* %3, align 1
  br label %32

30:                                               ; preds = %1
  %31 = load i8, i8* @ISA_COR_IRQ15, align 1
  store i8 %31, i8* %3, align 1
  br label %32

32:                                               ; preds = %1, %30, %28, %26, %24, %22, %20, %18
  %33 = load i8, i8* %3, align 1
  %34 = load i32, i32* @ISA_PORT_COR, align 4
  %35 = call i32 @outb(i8 zeroext %33, i32 %34)
  ret void
}

declare dso_local zeroext i8 @inb(i32) #1

declare dso_local i32 @outb(i8 zeroext, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
