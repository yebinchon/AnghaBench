; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_avm_pci.c_AVM_card_msg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_avm_pci.c_AVM_card_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.IsdnCardState = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@AVM_STATUS0_DIS_TIMER = common dso_local global i32 0, align 4
@AVM_STATUS0_RES_TIMER = common dso_local global i32 0, align 4
@ISAC_MASK = common dso_local global i32 0, align 4
@AVM_STATUS0_ENA_IRQ = common dso_local global i32 0, align 4
@ISAC_CMDR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.IsdnCardState*, i32, i8*)* @AVM_card_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @AVM_card_msg(%struct.IsdnCardState* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.IsdnCardState*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store %struct.IsdnCardState* %0, %struct.IsdnCardState** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %9 = load i32, i32* %6, align 4
  switch i32 %9, label %81 [
    i32 129, label %10
    i32 130, label %21
    i32 131, label %35
    i32 128, label %80
  ]

10:                                               ; preds = %3
  %11 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %12 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %11, i32 0, i32 0
  %13 = load i32, i32* %8, align 4
  %14 = call i32 @spin_lock_irqsave(i32* %12, i32 %13)
  %15 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %16 = call i32 @reset_avmpcipnp(%struct.IsdnCardState* %15)
  %17 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %18 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %17, i32 0, i32 0
  %19 = load i32, i32* %8, align 4
  %20 = call i32 @spin_unlock_irqrestore(i32* %18, i32 %19)
  store i32 0, i32* %4, align 4
  br label %82

21:                                               ; preds = %3
  %22 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %23 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = add nsw i32 %26, 2
  %28 = call i32 @outb(i32 0, i32 %27)
  %29 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %30 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @release_region(i32 %33, i32 32)
  store i32 0, i32* %4, align 4
  br label %82

35:                                               ; preds = %3
  %36 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %37 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %36, i32 0, i32 0
  %38 = load i32, i32* %8, align 4
  %39 = call i32 @spin_lock_irqsave(i32* %37, i32 %38)
  %40 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %41 = call i32 @reset_avmpcipnp(%struct.IsdnCardState* %40)
  %42 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %43 = call i32 @clear_pending_isac_ints(%struct.IsdnCardState* %42)
  %44 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %45 = call i32 @initisac(%struct.IsdnCardState* %44)
  %46 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %47 = call i32 @inithdlc(%struct.IsdnCardState* %46)
  %48 = load i32, i32* @AVM_STATUS0_DIS_TIMER, align 4
  %49 = load i32, i32* @AVM_STATUS0_RES_TIMER, align 4
  %50 = or i32 %48, %49
  %51 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %52 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = add nsw i32 %55, 2
  %57 = call i32 @outb(i32 %50, i32 %56)
  %58 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %59 = load i32, i32* @ISAC_MASK, align 4
  %60 = call i32 @WriteISAC(%struct.IsdnCardState* %58, i32 %59, i32 0)
  %61 = load i32, i32* @AVM_STATUS0_DIS_TIMER, align 4
  %62 = load i32, i32* @AVM_STATUS0_RES_TIMER, align 4
  %63 = or i32 %61, %62
  %64 = load i32, i32* @AVM_STATUS0_ENA_IRQ, align 4
  %65 = or i32 %63, %64
  %66 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %67 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = add nsw i32 %70, 2
  %72 = call i32 @outb(i32 %65, i32 %71)
  %73 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %74 = load i32, i32* @ISAC_CMDR, align 4
  %75 = call i32 @WriteISAC(%struct.IsdnCardState* %73, i32 %74, i32 65)
  %76 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %77 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %76, i32 0, i32 0
  %78 = load i32, i32* %8, align 4
  %79 = call i32 @spin_unlock_irqrestore(i32* %77, i32 %78)
  store i32 0, i32* %4, align 4
  br label %82

80:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %82

81:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %82

82:                                               ; preds = %81, %80, %35, %21, %10
  %83 = load i32, i32* %4, align 4
  ret i32 %83
}

declare dso_local i32 @spin_lock_irqsave(i32*, i32) #1

declare dso_local i32 @reset_avmpcipnp(%struct.IsdnCardState*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i32) #1

declare dso_local i32 @outb(i32, i32) #1

declare dso_local i32 @release_region(i32, i32) #1

declare dso_local i32 @clear_pending_isac_ints(%struct.IsdnCardState*) #1

declare dso_local i32 @initisac(%struct.IsdnCardState*) #1

declare dso_local i32 @inithdlc(%struct.IsdnCardState*) #1

declare dso_local i32 @WriteISAC(%struct.IsdnCardState*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
