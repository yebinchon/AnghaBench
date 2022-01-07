; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_bkm_a4t.c_bkm_interrupt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_bkm_a4t.c_bkm_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.IsdnCardState = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i64 }
%struct.TYPE_6__ = type { i32, i32 }

@intISDN = common dso_local global i32 0, align 4
@jade_HDLC_ISR = common dso_local global i64 0, align 8
@ISAC_ISTA = common dso_local global i64 0, align 8
@IRQ_HANDLED = common dso_local global i32 0, align 4
@IRQ_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @bkm_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bkm_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.IsdnCardState*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_6__*, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to %struct.IsdnCardState*
  store %struct.IsdnCardState* %11, %struct.IsdnCardState** %6, align 8
  store i64 0, i64* %7, align 8
  %12 = load %struct.IsdnCardState*, %struct.IsdnCardState** %6, align 8
  %13 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %12, i32 0, i32 0
  %14 = load i32, i32* %8, align 4
  %15 = call i32 @spin_lock_irqsave(i32* %13, i32 %14)
  %16 = load %struct.IsdnCardState*, %struct.IsdnCardState** %6, align 8
  %17 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 4
  %20 = load i64, i64* %19, align 8
  %21 = inttoptr i64 %20 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %21, %struct.TYPE_6__** %9, align 8
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @intISDN, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %107

28:                                               ; preds = %2
  %29 = load i32, i32* @intISDN, align 4
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 4
  %32 = load i32, i32* @intISDN, align 4
  %33 = xor i32 %32, -1
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = and i32 %36, %33
  store i32 %37, i32* %35, align 4
  %38 = load %struct.IsdnCardState*, %struct.IsdnCardState** %6, align 8
  %39 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.IsdnCardState*, %struct.IsdnCardState** %6, align 8
  %44 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = load i64, i64* @jade_HDLC_ISR, align 8
  %49 = add nsw i64 %48, 128
  %50 = call i64 @readreg(i32 %42, i32 %47, i64 %49)
  store i64 %50, i64* %7, align 8
  %51 = load i64, i64* %7, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %28
  %54 = load %struct.IsdnCardState*, %struct.IsdnCardState** %6, align 8
  %55 = load i64, i64* %7, align 8
  %56 = call i32 @jade_int_main(%struct.IsdnCardState* %54, i64 %55, i32 0)
  br label %57

57:                                               ; preds = %53, %28
  %58 = load %struct.IsdnCardState*, %struct.IsdnCardState** %6, align 8
  %59 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.IsdnCardState*, %struct.IsdnCardState** %6, align 8
  %64 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  %68 = load i64, i64* @jade_HDLC_ISR, align 8
  %69 = add nsw i64 %68, 192
  %70 = call i64 @readreg(i32 %62, i32 %67, i64 %69)
  store i64 %70, i64* %7, align 8
  %71 = load i64, i64* %7, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %77

73:                                               ; preds = %57
  %74 = load %struct.IsdnCardState*, %struct.IsdnCardState** %6, align 8
  %75 = load i64, i64* %7, align 8
  %76 = call i32 @jade_int_main(%struct.IsdnCardState* %74, i64 %75, i32 1)
  br label %77

77:                                               ; preds = %73, %57
  %78 = load %struct.IsdnCardState*, %struct.IsdnCardState** %6, align 8
  %79 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.IsdnCardState*, %struct.IsdnCardState** %6, align 8
  %84 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = load i64, i64* @ISAC_ISTA, align 8
  %89 = call i64 @readreg(i32 %82, i32 %87, i64 %88)
  store i64 %89, i64* %7, align 8
  %90 = load i64, i64* %7, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %96

92:                                               ; preds = %77
  %93 = load %struct.IsdnCardState*, %struct.IsdnCardState** %6, align 8
  %94 = load i64, i64* %7, align 8
  %95 = call i32 @isac_interrupt(%struct.IsdnCardState* %93, i64 %94)
  br label %96

96:                                               ; preds = %92, %77
  %97 = load i32, i32* @intISDN, align 4
  %98 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = or i32 %100, %97
  store i32 %101, i32* %99, align 4
  %102 = load %struct.IsdnCardState*, %struct.IsdnCardState** %6, align 8
  %103 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %102, i32 0, i32 0
  %104 = load i32, i32* %8, align 4
  %105 = call i32 @spin_unlock_irqrestore(i32* %103, i32 %104)
  %106 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %106, i32* %3, align 4
  br label %113

107:                                              ; preds = %2
  %108 = load %struct.IsdnCardState*, %struct.IsdnCardState** %6, align 8
  %109 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %108, i32 0, i32 0
  %110 = load i32, i32* %8, align 4
  %111 = call i32 @spin_unlock_irqrestore(i32* %109, i32 %110)
  %112 = load i32, i32* @IRQ_NONE, align 4
  store i32 %112, i32* %3, align 4
  br label %113

113:                                              ; preds = %107, %96
  %114 = load i32, i32* %3, align 4
  ret i32 %114
}

declare dso_local i32 @spin_lock_irqsave(i32*, i32) #1

declare dso_local i64 @readreg(i32, i32, i64) #1

declare dso_local i32 @jade_int_main(%struct.IsdnCardState*, i64, i32) #1

declare dso_local i32 @isac_interrupt(%struct.IsdnCardState*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
