; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_bkm_a8.c_BKM_card_msg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_bkm_a8.c_BKM_card_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.IsdnCardState = type { i32, i32 }

@L1_DEB_IPAC = common dso_local global i32 0, align 4
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
  switch i32 %9, label %61 [
    i32 129, label %10
    i32 130, label %25
    i32 131, label %40
    i32 128, label %60
  ]

10:                                               ; preds = %3
  %11 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %12 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %11, i32 0, i32 0
  %13 = load i32, i32* %8, align 4
  %14 = call i32 @spin_lock_irqsave(i32* %12, i32 %13)
  %15 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %16 = call i32 @set_ipac_active(%struct.IsdnCardState* %15, i32 0)
  %17 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %18 = call i32 @enable_bkm_int(%struct.IsdnCardState* %17, i32 0)
  %19 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %20 = call i32 @reset_bkm(%struct.IsdnCardState* %19)
  %21 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %22 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %21, i32 0, i32 0
  %23 = load i32, i32* %8, align 4
  %24 = call i32 @spin_unlock_irqrestore(i32* %22, i32 %23)
  store i32 0, i32* %4, align 4
  br label %62

25:                                               ; preds = %3
  %26 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %27 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %26, i32 0, i32 0
  %28 = load i32, i32* %8, align 4
  %29 = call i32 @spin_lock_irqsave(i32* %27, i32 %28)
  %30 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %31 = call i32 @set_ipac_active(%struct.IsdnCardState* %30, i32 0)
  %32 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %33 = call i32 @enable_bkm_int(%struct.IsdnCardState* %32, i32 0)
  %34 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %35 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %34, i32 0, i32 0
  %36 = load i32, i32* %8, align 4
  %37 = call i32 @spin_unlock_irqrestore(i32* %35, i32 %36)
  %38 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %39 = call i32 @release_io_sct_quadro(%struct.IsdnCardState* %38)
  store i32 0, i32* %4, align 4
  br label %62

40:                                               ; preds = %3
  %41 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %42 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %41, i32 0, i32 0
  %43 = load i32, i32* %8, align 4
  %44 = call i32 @spin_lock_irqsave(i32* %42, i32 %43)
  %45 = load i32, i32* @L1_DEB_IPAC, align 4
  %46 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %47 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = or i32 %48, %45
  store i32 %49, i32* %47, align 4
  %50 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %51 = call i32 @set_ipac_active(%struct.IsdnCardState* %50, i32 1)
  %52 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %53 = call i32 @inithscxisac(%struct.IsdnCardState* %52, i32 3)
  %54 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %55 = call i32 @enable_bkm_int(%struct.IsdnCardState* %54, i32 1)
  %56 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %57 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %56, i32 0, i32 0
  %58 = load i32, i32* %8, align 4
  %59 = call i32 @spin_unlock_irqrestore(i32* %57, i32 %58)
  store i32 0, i32* %4, align 4
  br label %62

60:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %62

61:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %62

62:                                               ; preds = %61, %60, %40, %25, %10
  %63 = load i32, i32* %4, align 4
  ret i32 %63
}

declare dso_local i32 @spin_lock_irqsave(i32*, i32) #1

declare dso_local i32 @set_ipac_active(%struct.IsdnCardState*, i32) #1

declare dso_local i32 @enable_bkm_int(%struct.IsdnCardState*, i32) #1

declare dso_local i32 @reset_bkm(%struct.IsdnCardState*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i32) #1

declare dso_local i32 @release_io_sct_quadro(%struct.IsdnCardState*) #1

declare dso_local i32 @inithscxisac(%struct.IsdnCardState*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
