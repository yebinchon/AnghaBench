; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_hfc_pci.c_hfcpci_card_msg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_hfc_pci.c_hfcpci_card_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.IsdnCardState = type { i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }

@L1_DEB_ISAC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"HFCPCI: card_msg %x\00", align 1
@HFCPCI_INTS_TIMER = common dso_local global i32 0, align 4
@HFCPCI_INT_M1 = common dso_local global i32 0, align 4
@HFCPCI_MST_MODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.IsdnCardState*, i32, i8*)* @hfcpci_card_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hfcpci_card_msg(%struct.IsdnCardState* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.IsdnCardState*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store %struct.IsdnCardState* %0, %struct.IsdnCardState** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %9 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %10 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @L1_DEB_ISAC, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %3
  %16 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %17 = load i32, i32* %6, align 4
  %18 = call i32 @debugl1(%struct.IsdnCardState* %16, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %17)
  br label %19

19:                                               ; preds = %15, %3
  %20 = load i32, i32* %6, align 4
  switch i32 %20, label %82 [
    i32 129, label %21
    i32 130, label %32
    i32 131, label %35
    i32 128, label %81
  ]

21:                                               ; preds = %19
  %22 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %23 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %22, i32 0, i32 1
  %24 = load i32, i32* %8, align 4
  %25 = call i32 @spin_lock_irqsave(i32* %23, i32 %24)
  %26 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %27 = call i32 @reset_hfcpci(%struct.IsdnCardState* %26)
  %28 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %29 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %28, i32 0, i32 1
  %30 = load i32, i32* %8, align 4
  %31 = call i32 @spin_unlock_irqrestore(i32* %29, i32 %30)
  store i32 0, i32* %4, align 4
  br label %83

32:                                               ; preds = %19
  %33 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %34 = call i32 @release_io_hfcpci(%struct.IsdnCardState* %33)
  store i32 0, i32* %4, align 4
  br label %83

35:                                               ; preds = %19
  %36 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %37 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %36, i32 0, i32 1
  %38 = load i32, i32* %8, align 4
  %39 = call i32 @spin_lock_irqsave(i32* %37, i32 %38)
  %40 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %41 = call i32 @inithfcpci(%struct.IsdnCardState* %40)
  %42 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %43 = call i32 @reset_hfcpci(%struct.IsdnCardState* %42)
  %44 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %45 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %44, i32 0, i32 1
  %46 = load i32, i32* %8, align 4
  %47 = call i32 @spin_unlock_irqrestore(i32* %45, i32 %46)
  %48 = call i32 @msleep(i32 80)
  %49 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %50 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %49, i32 0, i32 1
  %51 = load i32, i32* %8, align 4
  %52 = call i32 @spin_lock_irqsave(i32* %50, i32 %51)
  %53 = load i32, i32* @HFCPCI_INTS_TIMER, align 4
  %54 = xor i32 %53, -1
  %55 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %56 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %55, i32 0, i32 2
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = and i32 %59, %54
  store i32 %60, i32* %58, align 4
  %61 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %62 = load i32, i32* @HFCPCI_INT_M1, align 4
  %63 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %64 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %63, i32 0, i32 2
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @Write_hfc(%struct.IsdnCardState* %61, i32 %62, i32 %67)
  %69 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %70 = load i32, i32* @HFCPCI_MST_MODE, align 4
  %71 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %72 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %71, i32 0, i32 2
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @Write_hfc(%struct.IsdnCardState* %69, i32 %70, i32 %75)
  %77 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %78 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %77, i32 0, i32 1
  %79 = load i32, i32* %8, align 4
  %80 = call i32 @spin_unlock_irqrestore(i32* %78, i32 %79)
  store i32 0, i32* %4, align 4
  br label %83

81:                                               ; preds = %19
  store i32 0, i32* %4, align 4
  br label %83

82:                                               ; preds = %19
  store i32 0, i32* %4, align 4
  br label %83

83:                                               ; preds = %82, %81, %35, %32, %21
  %84 = load i32, i32* %4, align 4
  ret i32 %84
}

declare dso_local i32 @debugl1(%struct.IsdnCardState*, i8*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i32) #1

declare dso_local i32 @reset_hfcpci(%struct.IsdnCardState*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i32) #1

declare dso_local i32 @release_io_hfcpci(%struct.IsdnCardState*) #1

declare dso_local i32 @inithfcpci(%struct.IsdnCardState*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @Write_hfc(%struct.IsdnCardState*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
