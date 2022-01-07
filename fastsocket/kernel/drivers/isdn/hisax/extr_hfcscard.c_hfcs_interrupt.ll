; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_hfcscard.c_hfcs_interrupt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_hfcscard.c_hfcs_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.IsdnCardState = type { i32 (%struct.IsdnCardState*, i32, i32)*, i32, i32 }

@HFCD_ANYINT = common dso_local global i32 0, align 4
@HFCD_BUSY_NBUSY = common dso_local global i32 0, align 4
@HFCD_DATA = common dso_local global i32 0, align 4
@HFCD_STAT = common dso_local global i32 0, align 4
@HFCD_INT_S1 = common dso_local global i32 0, align 4
@L1_DEB_ISAC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"HFCS: stat(%02x) s1(%02x)\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"HFCS: irq_no_irq stat(%02x)\00", align 1
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @hfcs_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hfcs_interrupt(i32 %0, i8* %1) #0 {
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
  %12 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %11, i32 0, i32 2
  %13 = load i32, i32* %8, align 4
  %14 = call i32 @spin_lock_irqsave(i32* %12, i32 %13)
  %15 = load i32, i32* @HFCD_ANYINT, align 4
  %16 = load i32, i32* @HFCD_BUSY_NBUSY, align 4
  %17 = or i32 %15, %16
  %18 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %19 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %18, i32 0, i32 0
  %20 = load i32 (%struct.IsdnCardState*, i32, i32)*, i32 (%struct.IsdnCardState*, i32, i32)** %19, align 8
  %21 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %22 = load i32, i32* @HFCD_DATA, align 4
  %23 = load i32, i32* @HFCD_STAT, align 4
  %24 = call i32 %20(%struct.IsdnCardState* %21, i32 %22, i32 %23)
  store i32 %24, i32* %7, align 4
  %25 = and i32 %17, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %50

27:                                               ; preds = %2
  %28 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %29 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %28, i32 0, i32 0
  %30 = load i32 (%struct.IsdnCardState*, i32, i32)*, i32 (%struct.IsdnCardState*, i32, i32)** %29, align 8
  %31 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %32 = load i32, i32* @HFCD_DATA, align 4
  %33 = load i32, i32* @HFCD_INT_S1, align 4
  %34 = call i32 %30(%struct.IsdnCardState* %31, i32 %32, i32 %33)
  store i32 %34, i32* %6, align 4
  %35 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %36 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @L1_DEB_ISAC, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %27
  %42 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %43 = load i32, i32* %7, align 4
  %44 = load i32, i32* %6, align 4
  %45 = call i32 (%struct.IsdnCardState*, i8*, i32, ...) @debugl1(%struct.IsdnCardState* %42, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %43, i32 %44)
  br label %46

46:                                               ; preds = %41, %27
  %47 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %48 = load i32, i32* %6, align 4
  %49 = call i32 @hfc2bds0_interrupt(%struct.IsdnCardState* %47, i32 %48)
  br label %62

50:                                               ; preds = %2
  %51 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %52 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* @L1_DEB_ISAC, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %50
  %58 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %59 = load i32, i32* %7, align 4
  %60 = call i32 (%struct.IsdnCardState*, i8*, i32, ...) @debugl1(%struct.IsdnCardState* %58, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %59)
  br label %61

61:                                               ; preds = %57, %50
  br label %62

62:                                               ; preds = %61, %46
  %63 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %64 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %63, i32 0, i32 2
  %65 = load i32, i32* %8, align 4
  %66 = call i32 @spin_unlock_irqrestore(i32* %64, i32 %65)
  %67 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %67
}

declare dso_local i32 @spin_lock_irqsave(i32*, i32) #1

declare dso_local i32 @debugl1(%struct.IsdnCardState*, i8*, i32, ...) #1

declare dso_local i32 @hfc2bds0_interrupt(%struct.IsdnCardState*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
