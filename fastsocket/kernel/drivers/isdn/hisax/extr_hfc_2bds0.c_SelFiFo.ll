; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_hfc_2bds0.c_SelFiFo.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_hfc_2bds0.c_SelFiFo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.IsdnCardState = type { i32 (%struct.IsdnCardState*, i32, i32, i32)*, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@HFCB_FIFO = common dso_local global i32 0, align 4
@HFCB_Z1 = common dso_local global i32 0, align 4
@HFCB_SEND = common dso_local global i32 0, align 4
@HFCB_B1 = common dso_local global i32 0, align 4
@HFCB_REC = common dso_local global i32 0, align 4
@HFCB_B2 = common dso_local global i32 0, align 4
@HFCD_FIFO = common dso_local global i32 0, align 4
@HFCD_Z1 = common dso_local global i32 0, align 4
@HFCD_SEND = common dso_local global i32 0, align 4
@HFCD_REC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"SelFiFo Error\00", align 1
@HFCD_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.IsdnCardState*, i32)* @SelFiFo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @SelFiFo(%struct.IsdnCardState* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.IsdnCardState*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.IsdnCardState* %0, %struct.IsdnCardState** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.IsdnCardState*, %struct.IsdnCardState** %4, align 8
  %8 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* %5, align 4
  %13 = icmp eq i32 %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %81

15:                                               ; preds = %2
  %16 = load i32, i32* %5, align 4
  switch i32 %16, label %61 [
    i32 0, label %17
    i32 1, label %25
    i32 2, label %33
    i32 3, label %41
    i32 4, label %49
    i32 5, label %55
  ]

17:                                               ; preds = %15
  %18 = load i32, i32* @HFCB_FIFO, align 4
  %19 = load i32, i32* @HFCB_Z1, align 4
  %20 = or i32 %18, %19
  %21 = load i32, i32* @HFCB_SEND, align 4
  %22 = or i32 %20, %21
  %23 = load i32, i32* @HFCB_B1, align 4
  %24 = or i32 %22, %23
  store i32 %24, i32* %6, align 4
  br label %64

25:                                               ; preds = %15
  %26 = load i32, i32* @HFCB_FIFO, align 4
  %27 = load i32, i32* @HFCB_Z1, align 4
  %28 = or i32 %26, %27
  %29 = load i32, i32* @HFCB_REC, align 4
  %30 = or i32 %28, %29
  %31 = load i32, i32* @HFCB_B1, align 4
  %32 = or i32 %30, %31
  store i32 %32, i32* %6, align 4
  br label %64

33:                                               ; preds = %15
  %34 = load i32, i32* @HFCB_FIFO, align 4
  %35 = load i32, i32* @HFCB_Z1, align 4
  %36 = or i32 %34, %35
  %37 = load i32, i32* @HFCB_SEND, align 4
  %38 = or i32 %36, %37
  %39 = load i32, i32* @HFCB_B2, align 4
  %40 = or i32 %38, %39
  store i32 %40, i32* %6, align 4
  br label %64

41:                                               ; preds = %15
  %42 = load i32, i32* @HFCB_FIFO, align 4
  %43 = load i32, i32* @HFCB_Z1, align 4
  %44 = or i32 %42, %43
  %45 = load i32, i32* @HFCB_REC, align 4
  %46 = or i32 %44, %45
  %47 = load i32, i32* @HFCB_B2, align 4
  %48 = or i32 %46, %47
  store i32 %48, i32* %6, align 4
  br label %64

49:                                               ; preds = %15
  %50 = load i32, i32* @HFCD_FIFO, align 4
  %51 = load i32, i32* @HFCD_Z1, align 4
  %52 = or i32 %50, %51
  %53 = load i32, i32* @HFCD_SEND, align 4
  %54 = or i32 %52, %53
  store i32 %54, i32* %6, align 4
  br label %64

55:                                               ; preds = %15
  %56 = load i32, i32* @HFCD_FIFO, align 4
  %57 = load i32, i32* @HFCD_Z1, align 4
  %58 = or i32 %56, %57
  %59 = load i32, i32* @HFCD_REC, align 4
  %60 = or i32 %58, %59
  store i32 %60, i32* %6, align 4
  br label %64

61:                                               ; preds = %15
  %62 = load %struct.IsdnCardState*, %struct.IsdnCardState** %4, align 8
  %63 = call i32 @debugl1(%struct.IsdnCardState* %62, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %81

64:                                               ; preds = %55, %49, %41, %33, %25, %17
  %65 = load i32, i32* %5, align 4
  %66 = load %struct.IsdnCardState*, %struct.IsdnCardState** %4, align 8
  %67 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 0
  store i32 %65, i32* %69, align 8
  %70 = load %struct.IsdnCardState*, %struct.IsdnCardState** %4, align 8
  %71 = call i32 @WaitNoBusy(%struct.IsdnCardState* %70)
  %72 = load %struct.IsdnCardState*, %struct.IsdnCardState** %4, align 8
  %73 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %72, i32 0, i32 0
  %74 = load i32 (%struct.IsdnCardState*, i32, i32, i32)*, i32 (%struct.IsdnCardState*, i32, i32, i32)** %73, align 8
  %75 = load %struct.IsdnCardState*, %struct.IsdnCardState** %4, align 8
  %76 = load i32, i32* @HFCD_DATA, align 4
  %77 = load i32, i32* %6, align 4
  %78 = call i32 %74(%struct.IsdnCardState* %75, i32 %76, i32 %77, i32 0)
  %79 = load %struct.IsdnCardState*, %struct.IsdnCardState** %4, align 8
  %80 = call i32 @WaitForBusy(%struct.IsdnCardState* %79)
  store i32 2, i32* %3, align 4
  br label %81

81:                                               ; preds = %64, %61, %14
  %82 = load i32, i32* %3, align 4
  ret i32 %82
}

declare dso_local i32 @debugl1(%struct.IsdnCardState*, i8*) #1

declare dso_local i32 @WaitNoBusy(%struct.IsdnCardState*) #1

declare dso_local i32 @WaitForBusy(%struct.IsdnCardState*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
