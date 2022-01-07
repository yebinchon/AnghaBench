; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_telespci.c_TelesPCI_card_msg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_telespci.c_TelesPCI_card_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.IsdnCardState = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.IsdnCardState*, i32, i8*)* @TelesPCI_card_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @TelesPCI_card_msg(%struct.IsdnCardState* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.IsdnCardState*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store %struct.IsdnCardState* %0, %struct.IsdnCardState** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %9 = load i32, i32* %6, align 4
  switch i32 %9, label %26 [
    i32 129, label %10
    i32 130, label %11
    i32 131, label %14
    i32 128, label %25
  ]

10:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %27

11:                                               ; preds = %3
  %12 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %13 = call i32 @release_io_telespci(%struct.IsdnCardState* %12)
  store i32 0, i32* %4, align 4
  br label %27

14:                                               ; preds = %3
  %15 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %16 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %15, i32 0, i32 0
  %17 = load i32, i32* %8, align 4
  %18 = call i32 @spin_lock_irqsave(i32* %16, i32 %17)
  %19 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %20 = call i32 @inithscxisac(%struct.IsdnCardState* %19, i32 3)
  %21 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %22 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %21, i32 0, i32 0
  %23 = load i32, i32* %8, align 4
  %24 = call i32 @spin_unlock_irqrestore(i32* %22, i32 %23)
  store i32 0, i32* %4, align 4
  br label %27

25:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %27

26:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %27

27:                                               ; preds = %26, %25, %14, %11, %10
  %28 = load i32, i32* %4, align 4
  ret i32 %28
}

declare dso_local i32 @release_io_telespci(%struct.IsdnCardState*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i32) #1

declare dso_local i32 @inithscxisac(%struct.IsdnCardState*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
