; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_avm_a1.c_avm_a1_interrupt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_avm_a1.c_avm_a1_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.IsdnCardState = type { i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32*, i32, i32 }

@AVM_A1_STAT_TIMER = common dso_local global i32 0, align 4
@L1_DEB_INTSTAT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"avm IntStatus %x\00", align 1
@AVM_A1_STAT_HSCX = common dso_local global i32 0, align 4
@HSCX_ISTA = common dso_local global i32 0, align 4
@AVM_A1_STAT_ISAC = common dso_local global i32 0, align 4
@ISAC_ISTA = common dso_local global i32 0, align 4
@HSCX_MASK = common dso_local global i32 0, align 4
@ISAC_MASK = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @avm_a1_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @avm_a1_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.IsdnCardState*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.IsdnCardState*
  store %struct.IsdnCardState* %10, %struct.IsdnCardState** %5, align 8
  %11 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %12 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %11, i32 0, i32 1
  %13 = load i32, i32* %8, align 4
  %14 = call i32 @spin_lock_irqsave(i32* %12, i32 %13)
  br label %15

15:                                               ; preds = %96, %2
  %16 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %17 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %16, i32 0, i32 2
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @bytein(i32 %20)
  store i32 %21, i32* %7, align 4
  %22 = and i32 %21, 15
  %23 = icmp ne i32 %22, 7
  br i1 %23, label %24, label %97

24:                                               ; preds = %15
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* @AVM_A1_STAT_TIMER, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %42, label %29

29:                                               ; preds = %24
  %30 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %31 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @byteout(i32 %34, i32 30)
  %36 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %37 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %36, i32 0, i32 2
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @bytein(i32 %40)
  store i32 %41, i32* %7, align 4
  br label %54

42:                                               ; preds = %24
  %43 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %44 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @L1_DEB_INTSTAT, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %42
  %50 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %51 = load i32, i32* %7, align 4
  %52 = call i32 @debugl1(%struct.IsdnCardState* %50, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %51)
  br label %53

53:                                               ; preds = %49, %42
  br label %54

54:                                               ; preds = %53, %29
  %55 = load i32, i32* %7, align 4
  %56 = load i32, i32* @AVM_A1_STAT_HSCX, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %76, label %59

59:                                               ; preds = %54
  %60 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %61 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %60, i32 0, i32 2
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 0
  %64 = load i32*, i32** %63, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 1
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @HSCX_ISTA, align 4
  %68 = call i32 @readreg(i32 %66, i32 %67)
  store i32 %68, i32* %6, align 4
  %69 = load i32, i32* %6, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %59
  %72 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %73 = load i32, i32* %6, align 4
  %74 = call i32 @hscx_int_main(%struct.IsdnCardState* %72, i32 %73)
  br label %75

75:                                               ; preds = %71, %59
  br label %76

76:                                               ; preds = %75, %54
  %77 = load i32, i32* %7, align 4
  %78 = load i32, i32* @AVM_A1_STAT_ISAC, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %96, label %81

81:                                               ; preds = %76
  %82 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %83 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %82, i32 0, i32 2
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 8
  %87 = load i32, i32* @ISAC_ISTA, align 4
  %88 = call i32 @readreg(i32 %86, i32 %87)
  store i32 %88, i32* %6, align 4
  %89 = load i32, i32* %6, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %95

91:                                               ; preds = %81
  %92 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %93 = load i32, i32* %6, align 4
  %94 = call i32 @isac_interrupt(%struct.IsdnCardState* %92, i32 %93)
  br label %95

95:                                               ; preds = %91, %81
  br label %96

96:                                               ; preds = %95, %76
  br label %15

97:                                               ; preds = %15
  %98 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %99 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %98, i32 0, i32 2
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %100, i32 0, i32 0
  %102 = load i32*, i32** %101, align 8
  %103 = getelementptr inbounds i32, i32* %102, i64 0
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* @HSCX_MASK, align 4
  %106 = call i32 @writereg(i32 %104, i32 %105, i32 255)
  %107 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %108 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %107, i32 0, i32 2
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %109, i32 0, i32 0
  %111 = load i32*, i32** %110, align 8
  %112 = getelementptr inbounds i32, i32* %111, i64 1
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* @HSCX_MASK, align 4
  %115 = call i32 @writereg(i32 %113, i32 %114, i32 255)
  %116 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %117 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %116, i32 0, i32 2
  %118 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 8
  %121 = load i32, i32* @ISAC_MASK, align 4
  %122 = call i32 @writereg(i32 %120, i32 %121, i32 255)
  %123 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %124 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %123, i32 0, i32 2
  %125 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 8
  %128 = load i32, i32* @ISAC_MASK, align 4
  %129 = call i32 @writereg(i32 %127, i32 %128, i32 0)
  %130 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %131 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %130, i32 0, i32 2
  %132 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %132, i32 0, i32 0
  %134 = load i32*, i32** %133, align 8
  %135 = getelementptr inbounds i32, i32* %134, i64 0
  %136 = load i32, i32* %135, align 4
  %137 = load i32, i32* @HSCX_MASK, align 4
  %138 = call i32 @writereg(i32 %136, i32 %137, i32 0)
  %139 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %140 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %139, i32 0, i32 2
  %141 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %141, i32 0, i32 0
  %143 = load i32*, i32** %142, align 8
  %144 = getelementptr inbounds i32, i32* %143, i64 1
  %145 = load i32, i32* %144, align 4
  %146 = load i32, i32* @HSCX_MASK, align 4
  %147 = call i32 @writereg(i32 %145, i32 %146, i32 0)
  %148 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %149 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %148, i32 0, i32 1
  %150 = load i32, i32* %8, align 4
  %151 = call i32 @spin_unlock_irqrestore(i32* %149, i32 %150)
  %152 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %152
}

declare dso_local i32 @spin_lock_irqsave(i32*, i32) #1

declare dso_local i32 @bytein(i32) #1

declare dso_local i32 @byteout(i32, i32) #1

declare dso_local i32 @debugl1(%struct.IsdnCardState*, i8*, i32) #1

declare dso_local i32 @readreg(i32, i32) #1

declare dso_local i32 @hscx_int_main(%struct.IsdnCardState*, i32) #1

declare dso_local i32 @isac_interrupt(%struct.IsdnCardState*, i32) #1

declare dso_local i32 @writereg(i32, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
