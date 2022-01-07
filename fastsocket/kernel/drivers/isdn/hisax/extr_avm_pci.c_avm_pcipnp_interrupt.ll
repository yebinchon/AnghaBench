; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_avm_pci.c_avm_pcipnp_interrupt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_avm_pci.c_avm_pcipnp_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.IsdnCardState = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

@AVM_STATUS0_IRQ_MASK = common dso_local global i32 0, align 4
@IRQ_NONE = common dso_local global i32 0, align 4
@AVM_STATUS0_IRQ_ISAC = common dso_local global i32 0, align 4
@ISAC_ISTA = common dso_local global i32 0, align 4
@AVM_STATUS0_IRQ_HDLC = common dso_local global i32 0, align 4
@ISAC_MASK = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @avm_pcipnp_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @avm_pcipnp_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.IsdnCardState*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to %struct.IsdnCardState*
  store %struct.IsdnCardState* %11, %struct.IsdnCardState** %6, align 8
  %12 = load %struct.IsdnCardState*, %struct.IsdnCardState** %6, align 8
  %13 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %12, i32 0, i32 0
  %14 = load i32, i32* %7, align 4
  %15 = call i32 @spin_lock_irqsave(i32* %13, i32 %14)
  %16 = load %struct.IsdnCardState*, %struct.IsdnCardState** %6, align 8
  %17 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = add nsw i64 %20, 2
  %22 = call i32 @inb(i64 %21)
  store i32 %22, i32* %9, align 4
  %23 = load i32, i32* %9, align 4
  %24 = load i32, i32* @AVM_STATUS0_IRQ_MASK, align 4
  %25 = and i32 %23, %24
  %26 = load i32, i32* @AVM_STATUS0_IRQ_MASK, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %34

28:                                               ; preds = %2
  %29 = load %struct.IsdnCardState*, %struct.IsdnCardState** %6, align 8
  %30 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %29, i32 0, i32 0
  %31 = load i32, i32* %7, align 4
  %32 = call i32 @spin_unlock_irqrestore(i32* %30, i32 %31)
  %33 = load i32, i32* @IRQ_NONE, align 4
  store i32 %33, i32* %3, align 4
  br label %66

34:                                               ; preds = %2
  %35 = load i32, i32* %9, align 4
  %36 = load i32, i32* @AVM_STATUS0_IRQ_ISAC, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %46, label %39

39:                                               ; preds = %34
  %40 = load %struct.IsdnCardState*, %struct.IsdnCardState** %6, align 8
  %41 = load i32, i32* @ISAC_ISTA, align 4
  %42 = call i32 @ReadISAC(%struct.IsdnCardState* %40, i32 %41)
  store i32 %42, i32* %8, align 4
  %43 = load %struct.IsdnCardState*, %struct.IsdnCardState** %6, align 8
  %44 = load i32, i32* %8, align 4
  %45 = call i32 @isac_interrupt(%struct.IsdnCardState* %43, i32 %44)
  br label %46

46:                                               ; preds = %39, %34
  %47 = load i32, i32* %9, align 4
  %48 = load i32, i32* @AVM_STATUS0_IRQ_HDLC, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %54, label %51

51:                                               ; preds = %46
  %52 = load %struct.IsdnCardState*, %struct.IsdnCardState** %6, align 8
  %53 = call i32 @HDLC_irq_main(%struct.IsdnCardState* %52)
  br label %54

54:                                               ; preds = %51, %46
  %55 = load %struct.IsdnCardState*, %struct.IsdnCardState** %6, align 8
  %56 = load i32, i32* @ISAC_MASK, align 4
  %57 = call i32 @WriteISAC(%struct.IsdnCardState* %55, i32 %56, i32 255)
  %58 = load %struct.IsdnCardState*, %struct.IsdnCardState** %6, align 8
  %59 = load i32, i32* @ISAC_MASK, align 4
  %60 = call i32 @WriteISAC(%struct.IsdnCardState* %58, i32 %59, i32 0)
  %61 = load %struct.IsdnCardState*, %struct.IsdnCardState** %6, align 8
  %62 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %61, i32 0, i32 0
  %63 = load i32, i32* %7, align 4
  %64 = call i32 @spin_unlock_irqrestore(i32* %62, i32 %63)
  %65 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %65, i32* %3, align 4
  br label %66

66:                                               ; preds = %54, %28
  %67 = load i32, i32* %3, align 4
  ret i32 %67
}

declare dso_local i32 @spin_lock_irqsave(i32*, i32) #1

declare dso_local i32 @inb(i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i32) #1

declare dso_local i32 @ReadISAC(%struct.IsdnCardState*, i32) #1

declare dso_local i32 @isac_interrupt(%struct.IsdnCardState*, i32) #1

declare dso_local i32 @HDLC_irq_main(%struct.IsdnCardState*) #1

declare dso_local i32 @WriteISAC(%struct.IsdnCardState*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
