; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_sportster.c_Sportster_card_msg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_sportster.c_Sportster_card_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.IsdnCardState = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i64 }

@SPORTSTER_INTE = common dso_local global i32 0, align 4
@SPORTSTER_RES_IRQ = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.IsdnCardState*, i32, i8*)* @Sportster_card_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @Sportster_card_msg(%struct.IsdnCardState* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.IsdnCardState*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store %struct.IsdnCardState* %0, %struct.IsdnCardState** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %9 = load i32, i32* %6, align 4
  switch i32 %9, label %60 [
    i32 129, label %10
    i32 130, label %21
    i32 131, label %24
    i32 128, label %59
  ]

10:                                               ; preds = %3
  %11 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %12 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %11, i32 0, i32 0
  %13 = load i32, i32* %8, align 4
  %14 = call i32 @spin_lock_irqsave(i32* %12, i32 %13)
  %15 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %16 = call i32 @reset_sportster(%struct.IsdnCardState* %15)
  %17 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %18 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %17, i32 0, i32 0
  %19 = load i32, i32* %8, align 4
  %20 = call i32 @spin_unlock_irqrestore(i32* %18, i32 %19)
  store i32 0, i32* %4, align 4
  br label %61

21:                                               ; preds = %3
  %22 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %23 = call i32 @release_io_sportster(%struct.IsdnCardState* %22)
  store i32 0, i32* %4, align 4
  br label %61

24:                                               ; preds = %3
  %25 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %26 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %25, i32 0, i32 0
  %27 = load i32, i32* %8, align 4
  %28 = call i32 @spin_lock_irqsave(i32* %26, i32 %27)
  %29 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %30 = call i32 @reset_sportster(%struct.IsdnCardState* %29)
  %31 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %32 = call i32 @inithscxisac(%struct.IsdnCardState* %31, i32 1)
  %33 = load i32, i32* @SPORTSTER_INTE, align 4
  %34 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %35 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = or i32 %38, %33
  store i32 %39, i32* %37, align 8
  %40 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %41 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @SPORTSTER_RES_IRQ, align 8
  %46 = add nsw i64 %44, %45
  %47 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %48 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @byteout(i64 %46, i32 %51)
  %53 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %54 = call i32 @inithscxisac(%struct.IsdnCardState* %53, i32 2)
  %55 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %56 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %55, i32 0, i32 0
  %57 = load i32, i32* %8, align 4
  %58 = call i32 @spin_unlock_irqrestore(i32* %56, i32 %57)
  store i32 0, i32* %4, align 4
  br label %61

59:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %61

60:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %61

61:                                               ; preds = %60, %59, %24, %21, %10
  %62 = load i32, i32* %4, align 4
  ret i32 %62
}

declare dso_local i32 @spin_lock_irqsave(i32*, i32) #1

declare dso_local i32 @reset_sportster(%struct.IsdnCardState*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i32) #1

declare dso_local i32 @release_io_sportster(%struct.IsdnCardState*) #1

declare dso_local i32 @inithscxisac(%struct.IsdnCardState*, i32) #1

declare dso_local i32 @byteout(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
