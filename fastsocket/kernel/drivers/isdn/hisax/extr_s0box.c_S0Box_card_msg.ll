; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_s0box.c_S0Box_card_msg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_s0box.c_S0Box_card_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.IsdnCardState = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.IsdnCardState*, i32, i8*)* @S0Box_card_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @S0Box_card_msg(%struct.IsdnCardState* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.IsdnCardState*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store %struct.IsdnCardState* %0, %struct.IsdnCardState** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %8 = load i32, i32* %5, align 4
  switch i32 %8, label %25 [
    i32 129, label %9
    i32 130, label %10
    i32 131, label %13
    i32 128, label %24
  ]

9:                                                ; preds = %3
  br label %25

10:                                               ; preds = %3
  %11 = load %struct.IsdnCardState*, %struct.IsdnCardState** %4, align 8
  %12 = call i32 @release_io_s0box(%struct.IsdnCardState* %11)
  br label %25

13:                                               ; preds = %3
  %14 = load %struct.IsdnCardState*, %struct.IsdnCardState** %4, align 8
  %15 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %14, i32 0, i32 0
  %16 = load i32, i32* %7, align 4
  %17 = call i32 @spin_lock_irqsave(i32* %15, i32 %16)
  %18 = load %struct.IsdnCardState*, %struct.IsdnCardState** %4, align 8
  %19 = call i32 @inithscxisac(%struct.IsdnCardState* %18, i32 3)
  %20 = load %struct.IsdnCardState*, %struct.IsdnCardState** %4, align 8
  %21 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %20, i32 0, i32 0
  %22 = load i32, i32* %7, align 4
  %23 = call i32 @spin_unlock_irqrestore(i32* %21, i32 %22)
  br label %25

24:                                               ; preds = %3
  br label %25

25:                                               ; preds = %3, %24, %13, %10, %9
  ret i32 0
}

declare dso_local i32 @release_io_s0box(%struct.IsdnCardState*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i32) #1

declare dso_local i32 @inithscxisac(%struct.IsdnCardState*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
