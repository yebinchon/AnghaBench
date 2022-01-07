; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_avm_pci.c_HDLC_irq_main.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_avm_pci.c_HDLC_irq_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.IsdnCardState = type { i64, i64 }
%struct.BCState = type { i32 }

@AVM_FRITZ_PCI = common dso_local global i64 0, align 8
@HDLC_STATUS = common dso_local global i64 0, align 8
@HDLC_INT_RPR = common dso_local global i32 0, align 4
@HDLC_INT_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"hdlc spurious channel 0 IRQ\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"hdlc spurious channel 1 IRQ\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.IsdnCardState*)* @HDLC_irq_main to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @HDLC_irq_main(%struct.IsdnCardState* %0) #0 {
  %2 = alloca %struct.IsdnCardState*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.BCState*, align 8
  store %struct.IsdnCardState* %0, %struct.IsdnCardState** %2, align 8
  %5 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %6 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @AVM_FRITZ_PCI, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %10, label %14

10:                                               ; preds = %1
  %11 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %12 = load i64, i64* @HDLC_STATUS, align 8
  %13 = call i32 @ReadHDLCPCI(%struct.IsdnCardState* %11, i32 0, i64 %12)
  store i32 %13, i32* %3, align 4
  br label %31

14:                                               ; preds = %1
  %15 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %16 = load i64, i64* @HDLC_STATUS, align 8
  %17 = call i32 @ReadHDLCPnP(%struct.IsdnCardState* %15, i32 0, i64 %16)
  store i32 %17, i32* %3, align 4
  %18 = load i32, i32* %3, align 4
  %19 = load i32, i32* @HDLC_INT_RPR, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %30

22:                                               ; preds = %14
  %23 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %24 = load i64, i64* @HDLC_STATUS, align 8
  %25 = add nsw i64 %24, 1
  %26 = call i32 @ReadHDLCPnP(%struct.IsdnCardState* %23, i32 0, i64 %25)
  %27 = shl i32 %26, 8
  %28 = load i32, i32* %3, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %3, align 4
  br label %30

30:                                               ; preds = %22, %14
  br label %31

31:                                               ; preds = %30, %10
  %32 = load i32, i32* %3, align 4
  %33 = load i32, i32* @HDLC_INT_MASK, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %54

36:                                               ; preds = %31
  %37 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %38 = call %struct.BCState* @Sel_BCS(%struct.IsdnCardState* %37, i32 0)
  store %struct.BCState* %38, %struct.BCState** %4, align 8
  %39 = icmp ne %struct.BCState* %38, null
  br i1 %39, label %49, label %40

40:                                               ; preds = %36
  %41 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %42 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %40
  %46 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %47 = call i32 @debugl1(%struct.IsdnCardState* %46, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  br label %48

48:                                               ; preds = %45, %40
  br label %53

49:                                               ; preds = %36
  %50 = load %struct.BCState*, %struct.BCState** %4, align 8
  %51 = load i32, i32* %3, align 4
  %52 = call i32 @HDLC_irq(%struct.BCState* %50, i32 %51)
  br label %53

53:                                               ; preds = %49, %48
  br label %54

54:                                               ; preds = %53, %31
  %55 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %56 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @AVM_FRITZ_PCI, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %64

60:                                               ; preds = %54
  %61 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %62 = load i64, i64* @HDLC_STATUS, align 8
  %63 = call i32 @ReadHDLCPCI(%struct.IsdnCardState* %61, i32 1, i64 %62)
  store i32 %63, i32* %3, align 4
  br label %81

64:                                               ; preds = %54
  %65 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %66 = load i64, i64* @HDLC_STATUS, align 8
  %67 = call i32 @ReadHDLCPnP(%struct.IsdnCardState* %65, i32 1, i64 %66)
  store i32 %67, i32* %3, align 4
  %68 = load i32, i32* %3, align 4
  %69 = load i32, i32* @HDLC_INT_RPR, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %80

72:                                               ; preds = %64
  %73 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %74 = load i64, i64* @HDLC_STATUS, align 8
  %75 = add nsw i64 %74, 1
  %76 = call i32 @ReadHDLCPnP(%struct.IsdnCardState* %73, i32 1, i64 %75)
  %77 = shl i32 %76, 8
  %78 = load i32, i32* %3, align 4
  %79 = or i32 %78, %77
  store i32 %79, i32* %3, align 4
  br label %80

80:                                               ; preds = %72, %64
  br label %81

81:                                               ; preds = %80, %60
  %82 = load i32, i32* %3, align 4
  %83 = load i32, i32* @HDLC_INT_MASK, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %104

86:                                               ; preds = %81
  %87 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %88 = call %struct.BCState* @Sel_BCS(%struct.IsdnCardState* %87, i32 1)
  store %struct.BCState* %88, %struct.BCState** %4, align 8
  %89 = icmp ne %struct.BCState* %88, null
  br i1 %89, label %99, label %90

90:                                               ; preds = %86
  %91 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %92 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %98

95:                                               ; preds = %90
  %96 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %97 = call i32 @debugl1(%struct.IsdnCardState* %96, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  br label %98

98:                                               ; preds = %95, %90
  br label %103

99:                                               ; preds = %86
  %100 = load %struct.BCState*, %struct.BCState** %4, align 8
  %101 = load i32, i32* %3, align 4
  %102 = call i32 @HDLC_irq(%struct.BCState* %100, i32 %101)
  br label %103

103:                                              ; preds = %99, %98
  br label %104

104:                                              ; preds = %103, %81
  ret void
}

declare dso_local i32 @ReadHDLCPCI(%struct.IsdnCardState*, i32, i64) #1

declare dso_local i32 @ReadHDLCPnP(%struct.IsdnCardState*, i32, i64) #1

declare dso_local %struct.BCState* @Sel_BCS(%struct.IsdnCardState*, i32) #1

declare dso_local i32 @debugl1(%struct.IsdnCardState*, i8*) #1

declare dso_local i32 @HDLC_irq(%struct.BCState*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
