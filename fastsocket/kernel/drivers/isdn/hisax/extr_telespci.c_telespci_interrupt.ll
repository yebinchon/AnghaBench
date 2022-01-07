; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_telespci.c_telespci_interrupt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_telespci.c_telespci_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.IsdnCardState = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

@HSCX_ISTA = common dso_local global i32 0, align 4
@ISAC_ISTA = common dso_local global i32 0, align 4
@IRQ_NONE = common dso_local global i32 0, align 4
@HSCX_MASK = common dso_local global i32 0, align 4
@ISAC_MASK = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @telespci_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @telespci_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.IsdnCardState*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to %struct.IsdnCardState*
  store %struct.IsdnCardState* %11, %struct.IsdnCardState** %6, align 8
  %12 = load %struct.IsdnCardState*, %struct.IsdnCardState** %6, align 8
  %13 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %12, i32 0, i32 0
  %14 = load i32, i32* %9, align 4
  %15 = call i32 @spin_lock_irqsave(i32* %13, i32 %14)
  %16 = load %struct.IsdnCardState*, %struct.IsdnCardState** %6, align 8
  %17 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i32, i32* @HSCX_ISTA, align 4
  %22 = call i32 @readhscx(i64 %20, i32 1, i32 %21)
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* %7, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %2
  %26 = load %struct.IsdnCardState*, %struct.IsdnCardState** %6, align 8
  %27 = load i32, i32* %7, align 4
  %28 = call i32 @hscx_int_main(%struct.IsdnCardState* %26, i32 %27)
  br label %29

29:                                               ; preds = %25, %2
  %30 = load %struct.IsdnCardState*, %struct.IsdnCardState** %6, align 8
  %31 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i32, i32* @ISAC_ISTA, align 4
  %36 = call i32 @readisac(i64 %34, i32 %35)
  store i32 %36, i32* %8, align 4
  %37 = load i32, i32* %7, align 4
  %38 = load i32, i32* %8, align 4
  %39 = or i32 %37, %38
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %47

41:                                               ; preds = %29
  %42 = load %struct.IsdnCardState*, %struct.IsdnCardState** %6, align 8
  %43 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %42, i32 0, i32 0
  %44 = load i32, i32* %9, align 4
  %45 = call i32 @spin_unlock_irqrestore(i32* %43, i32 %44)
  %46 = load i32, i32* @IRQ_NONE, align 4
  store i32 %46, i32* %3, align 4
  br label %109

47:                                               ; preds = %29
  %48 = load i32, i32* %8, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %47
  %51 = load %struct.IsdnCardState*, %struct.IsdnCardState** %6, align 8
  %52 = load i32, i32* %8, align 4
  %53 = call i32 @isac_interrupt(%struct.IsdnCardState* %51, i32 %52)
  br label %54

54:                                               ; preds = %50, %47
  %55 = load %struct.IsdnCardState*, %struct.IsdnCardState** %6, align 8
  %56 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = add nsw i64 %59, 60
  %61 = call i32 @writel(i32 1879048192, i64 %60)
  %62 = load %struct.IsdnCardState*, %struct.IsdnCardState** %6, align 8
  %63 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i32, i32* @HSCX_MASK, align 4
  %68 = call i32 @writehscx(i64 %66, i32 0, i32 %67, i32 255)
  %69 = load %struct.IsdnCardState*, %struct.IsdnCardState** %6, align 8
  %70 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load i32, i32* @HSCX_MASK, align 4
  %75 = call i32 @writehscx(i64 %73, i32 1, i32 %74, i32 255)
  %76 = load %struct.IsdnCardState*, %struct.IsdnCardState** %6, align 8
  %77 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load i32, i32* @ISAC_MASK, align 4
  %82 = call i32 @writeisac(i64 %80, i32 %81, i32 255)
  %83 = load %struct.IsdnCardState*, %struct.IsdnCardState** %6, align 8
  %84 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load i32, i32* @ISAC_MASK, align 4
  %89 = call i32 @writeisac(i64 %87, i32 %88, i32 0)
  %90 = load %struct.IsdnCardState*, %struct.IsdnCardState** %6, align 8
  %91 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = load i32, i32* @HSCX_MASK, align 4
  %96 = call i32 @writehscx(i64 %94, i32 0, i32 %95, i32 0)
  %97 = load %struct.IsdnCardState*, %struct.IsdnCardState** %6, align 8
  %98 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %97, i32 0, i32 1
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = load i32, i32* @HSCX_MASK, align 4
  %103 = call i32 @writehscx(i64 %101, i32 1, i32 %102, i32 0)
  %104 = load %struct.IsdnCardState*, %struct.IsdnCardState** %6, align 8
  %105 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %104, i32 0, i32 0
  %106 = load i32, i32* %9, align 4
  %107 = call i32 @spin_unlock_irqrestore(i32* %105, i32 %106)
  %108 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %108, i32* %3, align 4
  br label %109

109:                                              ; preds = %54, %41
  %110 = load i32, i32* %3, align 4
  ret i32 %110
}

declare dso_local i32 @spin_lock_irqsave(i32*, i32) #1

declare dso_local i32 @readhscx(i64, i32, i32) #1

declare dso_local i32 @hscx_int_main(%struct.IsdnCardState*, i32) #1

declare dso_local i32 @readisac(i64, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i32) #1

declare dso_local i32 @isac_interrupt(%struct.IsdnCardState*, i32) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @writehscx(i64, i32, i32, i32) #1

declare dso_local i32 @writeisac(i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
