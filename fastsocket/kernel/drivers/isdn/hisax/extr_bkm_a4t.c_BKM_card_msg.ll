; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_bkm_a4t.c_BKM_card_msg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_bkm_a4t.c_BKM_card_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.IsdnCardState = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.IsdnCardState*, i32, i8*)* @BKM_card_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @BKM_card_msg(%struct.IsdnCardState* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.IsdnCardState*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store %struct.IsdnCardState* %0, %struct.IsdnCardState** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %9 = load i32, i32* %6, align 4
  switch i32 %9, label %58 [
    i32 129, label %10
    i32 130, label %23
    i32 131, label %38
    i32 128, label %57
  ]

10:                                               ; preds = %3
  %11 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %12 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %11, i32 0, i32 0
  %13 = load i32, i32* %8, align 4
  %14 = call i32 @spin_lock_irqsave(i32* %12, i32 %13)
  %15 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %16 = call i32 @enable_bkm_int(%struct.IsdnCardState* %15, i32 0)
  %17 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %18 = call i32 @reset_bkm(%struct.IsdnCardState* %17)
  %19 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %20 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %19, i32 0, i32 0
  %21 = load i32, i32* %8, align 4
  %22 = call i32 @spin_unlock_irqrestore(i32* %20, i32 %21)
  store i32 0, i32* %4, align 4
  br label %59

23:                                               ; preds = %3
  %24 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %25 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %24, i32 0, i32 0
  %26 = load i32, i32* %8, align 4
  %27 = call i32 @spin_lock_irqsave(i32* %25, i32 %26)
  %28 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %29 = call i32 @enable_bkm_int(%struct.IsdnCardState* %28, i32 0)
  %30 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %31 = call i32 @reset_bkm(%struct.IsdnCardState* %30)
  %32 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %33 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %32, i32 0, i32 0
  %34 = load i32, i32* %8, align 4
  %35 = call i32 @spin_unlock_irqrestore(i32* %33, i32 %34)
  %36 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %37 = call i32 @release_io_bkm(%struct.IsdnCardState* %36)
  store i32 0, i32* %4, align 4
  br label %59

38:                                               ; preds = %3
  %39 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %40 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %39, i32 0, i32 0
  %41 = load i32, i32* %8, align 4
  %42 = call i32 @spin_lock_irqsave(i32* %40, i32 %41)
  %43 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %44 = call i32 @clear_pending_isac_ints(%struct.IsdnCardState* %43)
  %45 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %46 = call i32 @clear_pending_jade_ints(%struct.IsdnCardState* %45)
  %47 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %48 = call i32 @initisac(%struct.IsdnCardState* %47)
  %49 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %50 = call i32 @initjade(%struct.IsdnCardState* %49)
  %51 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %52 = call i32 @enable_bkm_int(%struct.IsdnCardState* %51, i32 1)
  %53 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %54 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %53, i32 0, i32 0
  %55 = load i32, i32* %8, align 4
  %56 = call i32 @spin_unlock_irqrestore(i32* %54, i32 %55)
  store i32 0, i32* %4, align 4
  br label %59

57:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %59

58:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %59

59:                                               ; preds = %58, %57, %38, %23, %10
  %60 = load i32, i32* %4, align 4
  ret i32 %60
}

declare dso_local i32 @spin_lock_irqsave(i32*, i32) #1

declare dso_local i32 @enable_bkm_int(%struct.IsdnCardState*, i32) #1

declare dso_local i32 @reset_bkm(%struct.IsdnCardState*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i32) #1

declare dso_local i32 @release_io_bkm(%struct.IsdnCardState*) #1

declare dso_local i32 @clear_pending_isac_ints(%struct.IsdnCardState*) #1

declare dso_local i32 @clear_pending_jade_ints(%struct.IsdnCardState*) #1

declare dso_local i32 @initisac(%struct.IsdnCardState*) #1

declare dso_local i32 @initjade(%struct.IsdnCardState*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
