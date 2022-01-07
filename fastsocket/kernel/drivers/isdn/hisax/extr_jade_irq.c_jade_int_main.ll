; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_jade_irq.c_jade_int_main.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_jade_irq.c_jade_int_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.IsdnCardState = type { i32, %struct.BCState* }
%struct.BCState = type { i32, %struct.TYPE_4__, i32, i64 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i64 }

@jadeISR_RFO = common dso_local global i32 0, align 4
@jadeISR_XDU = common dso_local global i32 0, align 4
@jade_HDLC_XCMD = common dso_local global i32 0, align 4
@jadeXCMD_XRES = common dso_local global i32 0, align 4
@L1_DEB_WARN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"JADE %c EXIR %x Lost TX\00", align 1
@jadeISR_RME = common dso_local global i32 0, align 4
@jadeISR_RPF = common dso_local global i32 0, align 4
@jadeISR_XPR = common dso_local global i32 0, align 4
@L1_DEB_HSCX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"JADE %c interrupt %x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.IsdnCardState*, i32, i32)* @jade_int_main to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @jade_int_main(%struct.IsdnCardState* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.IsdnCardState*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.BCState*, align 8
  store %struct.IsdnCardState* %0, %struct.IsdnCardState** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.IsdnCardState*, %struct.IsdnCardState** %4, align 8
  %9 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %8, i32 0, i32 1
  %10 = load %struct.BCState*, %struct.BCState** %9, align 8
  %11 = load i32, i32* %6, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds %struct.BCState, %struct.BCState* %10, i64 %12
  store %struct.BCState* %13, %struct.BCState** %7, align 8
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* @jadeISR_RFO, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %3
  %19 = load i32, i32* @jadeISR_RFO, align 4
  %20 = xor i32 %19, -1
  %21 = load i32, i32* %5, align 4
  %22 = and i32 %21, %20
  store i32 %22, i32* %5, align 4
  br label %23

23:                                               ; preds = %18, %3
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* @jadeISR_XDU, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %91

28:                                               ; preds = %23
  %29 = load %struct.BCState*, %struct.BCState** %7, align 8
  %30 = getelementptr inbounds %struct.BCState, %struct.BCState* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp eq i32 %31, 1
  br i1 %32, label %33, label %36

33:                                               ; preds = %28
  %34 = load %struct.BCState*, %struct.BCState** %7, align 8
  %35 = call i32 @jade_fill_fifo(%struct.BCState* %34)
  br label %90

36:                                               ; preds = %28
  %37 = load %struct.BCState*, %struct.BCState** %7, align 8
  %38 = getelementptr inbounds %struct.BCState, %struct.BCState* %37, i32 0, i32 3
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %66

41:                                               ; preds = %36
  %42 = load %struct.BCState*, %struct.BCState** %7, align 8
  %43 = getelementptr inbounds %struct.BCState, %struct.BCState* %42, i32 0, i32 3
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.BCState*, %struct.BCState** %7, align 8
  %46 = getelementptr inbounds %struct.BCState, %struct.BCState* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = call i32 @skb_push(i64 %44, i64 %49)
  %51 = load %struct.BCState*, %struct.BCState** %7, align 8
  %52 = getelementptr inbounds %struct.BCState, %struct.BCState* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.BCState*, %struct.BCState** %7, align 8
  %57 = getelementptr inbounds %struct.BCState, %struct.BCState* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = sext i32 %58 to i64
  %60 = add nsw i64 %59, %55
  %61 = trunc i64 %60 to i32
  store i32 %61, i32* %57, align 8
  %62 = load %struct.BCState*, %struct.BCState** %7, align 8
  %63 = getelementptr inbounds %struct.BCState, %struct.BCState* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 1
  store i64 0, i64* %65, align 8
  br label %66

66:                                               ; preds = %41, %36
  %67 = load %struct.IsdnCardState*, %struct.IsdnCardState** %4, align 8
  %68 = load %struct.BCState*, %struct.BCState** %7, align 8
  %69 = getelementptr inbounds %struct.BCState, %struct.BCState* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* @jade_HDLC_XCMD, align 4
  %74 = load i32, i32* @jadeXCMD_XRES, align 4
  %75 = call i32 @WriteJADECMDR(%struct.IsdnCardState* %67, i32 %72, i32 %73, i32 %74)
  %76 = load %struct.IsdnCardState*, %struct.IsdnCardState** %4, align 8
  %77 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = load i32, i32* @L1_DEB_WARN, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %89

82:                                               ; preds = %66
  %83 = load %struct.IsdnCardState*, %struct.IsdnCardState** %4, align 8
  %84 = load i32, i32* %6, align 4
  %85 = add nsw i32 65, %84
  %86 = trunc i32 %85 to i8
  %87 = load i32, i32* %5, align 4
  %88 = call i32 @debugl1(%struct.IsdnCardState* %83, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i8 signext %86, i32 %87)
  br label %89

89:                                               ; preds = %82, %66
  br label %90

90:                                               ; preds = %89, %33
  br label %91

91:                                               ; preds = %90, %23
  %92 = load i32, i32* %5, align 4
  %93 = load i32, i32* @jadeISR_RME, align 4
  %94 = load i32, i32* @jadeISR_RPF, align 4
  %95 = or i32 %93, %94
  %96 = load i32, i32* @jadeISR_XPR, align 4
  %97 = or i32 %95, %96
  %98 = and i32 %92, %97
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %119

100:                                              ; preds = %91
  %101 = load %struct.IsdnCardState*, %struct.IsdnCardState** %4, align 8
  %102 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = load i32, i32* @L1_DEB_HSCX, align 4
  %105 = and i32 %103, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %114

107:                                              ; preds = %100
  %108 = load %struct.IsdnCardState*, %struct.IsdnCardState** %4, align 8
  %109 = load i32, i32* %6, align 4
  %110 = add nsw i32 65, %109
  %111 = trunc i32 %110 to i8
  %112 = load i32, i32* %5, align 4
  %113 = call i32 @debugl1(%struct.IsdnCardState* %108, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i8 signext %111, i32 %112)
  br label %114

114:                                              ; preds = %107, %100
  %115 = load %struct.IsdnCardState*, %struct.IsdnCardState** %4, align 8
  %116 = load i32, i32* %5, align 4
  %117 = load i32, i32* %6, align 4
  %118 = call i32 @jade_interrupt(%struct.IsdnCardState* %115, i32 %116, i32 %117)
  br label %119

119:                                              ; preds = %114, %91
  ret void
}

declare dso_local i32 @jade_fill_fifo(%struct.BCState*) #1

declare dso_local i32 @skb_push(i64, i64) #1

declare dso_local i32 @WriteJADECMDR(%struct.IsdnCardState*, i32, i32, i32) #1

declare dso_local i32 @debugl1(%struct.IsdnCardState*, i8*, i8 signext, i32) #1

declare dso_local i32 @jade_interrupt(%struct.IsdnCardState*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
