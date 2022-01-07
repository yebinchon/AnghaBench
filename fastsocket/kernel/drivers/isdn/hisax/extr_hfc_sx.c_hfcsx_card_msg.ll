; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_hfc_sx.c_hfcsx_card_msg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_hfc_sx.c_hfcsx_card_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.IsdnCardState = type { i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }

@L1_DEB_ISAC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"HFCSX: card_msg %x\00", align 1
@HFCSX_INTS_TIMER = common dso_local global i32 0, align 4
@HFCSX_INT_M1 = common dso_local global i32 0, align 4
@HFCSX_MST_MODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.IsdnCardState*, i32, i8*)* @hfcsx_card_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hfcsx_card_msg(%struct.IsdnCardState* %0, i32 %1, i8* %2) #0 {
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
  %18 = call i32 @debugl1(%struct.IsdnCardState* %16, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %17)
  br label %19

19:                                               ; preds = %15, %3
  %20 = load i32, i32* %6, align 4
  switch i32 %20, label %80 [
    i32 129, label %21
    i32 130, label %32
    i32 131, label %35
    i32 128, label %79
  ]

21:                                               ; preds = %19
  %22 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %23 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %22, i32 0, i32 1
  %24 = load i32, i32* %8, align 4
  %25 = call i32 @spin_lock_irqsave(i32* %23, i32 %24)
  %26 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %27 = call i32 @reset_hfcsx(%struct.IsdnCardState* %26)
  %28 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %29 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %28, i32 0, i32 1
  %30 = load i32, i32* %8, align 4
  %31 = call i32 @spin_unlock_irqrestore(i32* %29, i32 %30)
  store i32 0, i32* %4, align 4
  br label %81

32:                                               ; preds = %19
  %33 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %34 = call i32 @release_io_hfcsx(%struct.IsdnCardState* %33)
  store i32 0, i32* %4, align 4
  br label %81

35:                                               ; preds = %19
  %36 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %37 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %36, i32 0, i32 1
  %38 = load i32, i32* %8, align 4
  %39 = call i32 @spin_lock_irqsave(i32* %37, i32 %38)
  %40 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %41 = call i32 @inithfcsx(%struct.IsdnCardState* %40)
  %42 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %43 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %42, i32 0, i32 1
  %44 = load i32, i32* %8, align 4
  %45 = call i32 @spin_unlock_irqrestore(i32* %43, i32 %44)
  %46 = call i32 @msleep(i32 80)
  %47 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %48 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %47, i32 0, i32 1
  %49 = load i32, i32* %8, align 4
  %50 = call i32 @spin_lock_irqsave(i32* %48, i32 %49)
  %51 = load i32, i32* @HFCSX_INTS_TIMER, align 4
  %52 = xor i32 %51, -1
  %53 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %54 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %53, i32 0, i32 2
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = and i32 %57, %52
  store i32 %58, i32* %56, align 4
  %59 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %60 = load i32, i32* @HFCSX_INT_M1, align 4
  %61 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %62 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %61, i32 0, i32 2
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @Write_hfc(%struct.IsdnCardState* %59, i32 %60, i32 %65)
  %67 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %68 = load i32, i32* @HFCSX_MST_MODE, align 4
  %69 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %70 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %69, i32 0, i32 2
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @Write_hfc(%struct.IsdnCardState* %67, i32 %68, i32 %73)
  %75 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %76 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %75, i32 0, i32 1
  %77 = load i32, i32* %8, align 4
  %78 = call i32 @spin_unlock_irqrestore(i32* %76, i32 %77)
  store i32 0, i32* %4, align 4
  br label %81

79:                                               ; preds = %19
  store i32 0, i32* %4, align 4
  br label %81

80:                                               ; preds = %19
  store i32 0, i32* %4, align 4
  br label %81

81:                                               ; preds = %80, %79, %35, %32, %21
  %82 = load i32, i32* %4, align 4
  ret i32 %82
}

declare dso_local i32 @debugl1(%struct.IsdnCardState*, i8*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i32) #1

declare dso_local i32 @reset_hfcsx(%struct.IsdnCardState*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i32) #1

declare dso_local i32 @release_io_hfcsx(%struct.IsdnCardState*) #1

declare dso_local i32 @inithfcsx(%struct.IsdnCardState*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @Write_hfc(%struct.IsdnCardState*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
