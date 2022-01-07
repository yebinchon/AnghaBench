; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_sportster.c_sportster_interrupt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_sportster.c_sportster_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.IsdnCardState = type { i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

@HSCX_ISTA = common dso_local global i32 0, align 4
@ISAC_ISTA = common dso_local global i32 0, align 4
@L1_DEB_HSCX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"HSCX IntStat after IntRoutine\00", align 1
@L1_DEB_ISAC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"ISAC IntStat after IntRoutine\00", align 1
@SPORTSTER_RES_IRQ = common dso_local global i64 0, align 8
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @sportster_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sportster_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.IsdnCardState*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.IsdnCardState*
  store %struct.IsdnCardState* %9, %struct.IsdnCardState** %5, align 8
  %10 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %11 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %10, i32 0, i32 1
  %12 = load i32, i32* %7, align 4
  %13 = call i32 @spin_lock_irqsave(i32* %11, i32 %12)
  %14 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %15 = load i32, i32* @HSCX_ISTA, align 4
  %16 = call i64 @READHSCX(%struct.IsdnCardState* %14, i32 1, i32 %15)
  store i64 %16, i64* %6, align 8
  br label %17

17:                                               ; preds = %51, %2
  %18 = load i64, i64* %6, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %17
  %21 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %22 = load i64, i64* %6, align 8
  %23 = call i32 @hscx_int_main(%struct.IsdnCardState* %21, i64 %22)
  br label %24

24:                                               ; preds = %20, %17
  %25 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %26 = load i32, i32* @ISAC_ISTA, align 4
  %27 = call i64 @ReadISAC(%struct.IsdnCardState* %25, i32 %26)
  store i64 %27, i64* %6, align 8
  br label %28

28:                                               ; preds = %68, %24
  %29 = load i64, i64* %6, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %28
  %32 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %33 = load i64, i64* %6, align 8
  %34 = call i32 @isac_interrupt(%struct.IsdnCardState* %32, i64 %33)
  br label %35

35:                                               ; preds = %31, %28
  %36 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %37 = load i32, i32* @HSCX_ISTA, align 4
  %38 = call i64 @READHSCX(%struct.IsdnCardState* %36, i32 1, i32 %37)
  store i64 %38, i64* %6, align 8
  %39 = load i64, i64* %6, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %52

41:                                               ; preds = %35
  %42 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %43 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @L1_DEB_HSCX, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %41
  %49 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %50 = call i32 @debugl1(%struct.IsdnCardState* %49, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  br label %51

51:                                               ; preds = %48, %41
  br label %17

52:                                               ; preds = %35
  %53 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %54 = load i32, i32* @ISAC_ISTA, align 4
  %55 = call i64 @ReadISAC(%struct.IsdnCardState* %53, i32 %54)
  store i64 %55, i64* %6, align 8
  %56 = load i64, i64* %6, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %69

58:                                               ; preds = %52
  %59 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %60 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* @L1_DEB_ISAC, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %58
  %66 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %67 = call i32 @debugl1(%struct.IsdnCardState* %66, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  br label %68

68:                                               ; preds = %65, %58
  br label %28

69:                                               ; preds = %52
  %70 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %71 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %70, i32 0, i32 2
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @SPORTSTER_RES_IRQ, align 8
  %76 = add nsw i64 %74, %75
  %77 = add nsw i64 %76, 1
  %78 = call i32 @bytein(i64 %77)
  %79 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %80 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %79, i32 0, i32 1
  %81 = load i32, i32* %7, align 4
  %82 = call i32 @spin_unlock_irqrestore(i32* %80, i32 %81)
  %83 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %83
}

declare dso_local i32 @spin_lock_irqsave(i32*, i32) #1

declare dso_local i64 @READHSCX(%struct.IsdnCardState*, i32, i32) #1

declare dso_local i32 @hscx_int_main(%struct.IsdnCardState*, i64) #1

declare dso_local i64 @ReadISAC(%struct.IsdnCardState*, i32) #1

declare dso_local i32 @isac_interrupt(%struct.IsdnCardState*, i64) #1

declare dso_local i32 @debugl1(%struct.IsdnCardState*, i8*) #1

declare dso_local i32 @bytein(i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
