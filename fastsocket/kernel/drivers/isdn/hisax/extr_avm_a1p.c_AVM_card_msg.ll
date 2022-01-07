; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_avm_a1p.c_AVM_card_msg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_avm_a1p.c_AVM_card_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.IsdnCardState = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

@ASL0_OFFSET = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4
@ASL0_W_RESET = common dso_local global i32 0, align 4
@ASL0_W_TDISABLE = common dso_local global i32 0, align 4
@ASL0_W_TRESET = common dso_local global i32 0, align 4
@ASL0_W_IRQENABLE = common dso_local global i32 0, align 4
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
  switch i32 %9, label %84 [
    i32 129, label %10
    i32 130, label %52
    i32 131, label %53
    i32 128, label %83
  ]

10:                                               ; preds = %3
  %11 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %12 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %11, i32 0, i32 0
  %13 = load i32, i32* %8, align 4
  %14 = call i32 @spin_lock_irqsave(i32* %12, i32 %13)
  %15 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %16 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @ASL0_OFFSET, align 8
  %21 = add nsw i64 %19, %20
  %22 = call i32 @byteout(i64 %21, i32 0)
  %23 = load i32, i32* @HZ, align 4
  %24 = sdiv i32 %23, 5
  %25 = add nsw i32 %24, 1
  %26 = call i32 @HZDELAY(i32 %25)
  %27 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %28 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @ASL0_OFFSET, align 8
  %33 = add nsw i64 %31, %32
  %34 = load i32, i32* @ASL0_W_RESET, align 4
  %35 = call i32 @byteout(i64 %33, i32 %34)
  %36 = load i32, i32* @HZ, align 4
  %37 = sdiv i32 %36, 5
  %38 = add nsw i32 %37, 1
  %39 = call i32 @HZDELAY(i32 %38)
  %40 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %41 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @ASL0_OFFSET, align 8
  %46 = add nsw i64 %44, %45
  %47 = call i32 @byteout(i64 %46, i32 0)
  %48 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %49 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %48, i32 0, i32 0
  %50 = load i32, i32* %8, align 4
  %51 = call i32 @spin_unlock_irqrestore(i32* %49, i32 %50)
  store i32 0, i32* %4, align 4
  br label %85

52:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %85

53:                                               ; preds = %3
  %54 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %55 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %54, i32 0, i32 0
  %56 = load i32, i32* %8, align 4
  %57 = call i32 @spin_lock_irqsave(i32* %55, i32 %56)
  %58 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %59 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @ASL0_OFFSET, align 8
  %64 = add nsw i64 %62, %63
  %65 = load i32, i32* @ASL0_W_TDISABLE, align 4
  %66 = load i32, i32* @ASL0_W_TRESET, align 4
  %67 = or i32 %65, %66
  %68 = load i32, i32* @ASL0_W_IRQENABLE, align 4
  %69 = or i32 %67, %68
  %70 = call i32 @byteout(i64 %64, i32 %69)
  %71 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %72 = call i32 @clear_pending_isac_ints(%struct.IsdnCardState* %71)
  %73 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %74 = call i32 @clear_pending_hscx_ints(%struct.IsdnCardState* %73)
  %75 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %76 = call i32 @inithscxisac(%struct.IsdnCardState* %75, i32 1)
  %77 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %78 = call i32 @inithscxisac(%struct.IsdnCardState* %77, i32 2)
  %79 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %80 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %79, i32 0, i32 0
  %81 = load i32, i32* %8, align 4
  %82 = call i32 @spin_unlock_irqrestore(i32* %80, i32 %81)
  store i32 0, i32* %4, align 4
  br label %85

83:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %85

84:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %85

85:                                               ; preds = %84, %83, %53, %52, %10
  %86 = load i32, i32* %4, align 4
  ret i32 %86
}

declare dso_local i32 @spin_lock_irqsave(i32*, i32) #1

declare dso_local i32 @byteout(i64, i32) #1

declare dso_local i32 @HZDELAY(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i32) #1

declare dso_local i32 @clear_pending_isac_ints(%struct.IsdnCardState*) #1

declare dso_local i32 @clear_pending_hscx_ints(%struct.IsdnCardState*) #1

declare dso_local i32 @inithscxisac(%struct.IsdnCardState*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
