; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_gazel.c_gazel_interrupt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_gazel.c_gazel_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.IsdnCardState = type { i32 }

@HSCX_ISTA = common dso_local global i32 0, align 4
@ISAC_ISTA = common dso_local global i32 0, align 4
@HSCX_MASK = common dso_local global i32 0, align 4
@ISAC_MASK = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@MAXCOUNT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @gazel_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gazel_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.IsdnCardState*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = bitcast i8* %10 to %struct.IsdnCardState*
  store %struct.IsdnCardState* %11, %struct.IsdnCardState** %5, align 8
  store i32 0, i32* %8, align 4
  %12 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %13 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %12, i32 0, i32 0
  %14 = load i32, i32* %9, align 4
  %15 = call i32 @spin_lock_irqsave(i32* %13, i32 %14)
  br label %16

16:                                               ; preds = %48, %2
  %17 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %18 = load i32, i32* @HSCX_ISTA, align 4
  %19 = call i64 @ReadHSCX(%struct.IsdnCardState* %17, i32 1, i32 %18)
  store i64 %19, i64* %7, align 8
  %20 = load i64, i64* %7, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %16
  %23 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %24 = load i64, i64* %7, align 8
  %25 = call i32 @hscx_int_main(%struct.IsdnCardState* %23, i64 %24)
  br label %26

26:                                               ; preds = %22, %16
  %27 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %28 = load i32, i32* @ISAC_ISTA, align 4
  %29 = call i64 @ReadISAC(%struct.IsdnCardState* %27, i32 %28)
  store i64 %29, i64* %6, align 8
  %30 = load i64, i64* %6, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %26
  %33 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %34 = load i64, i64* %6, align 8
  %35 = call i32 @isac_interrupt(%struct.IsdnCardState* %33, i64 %34)
  br label %36

36:                                               ; preds = %32, %26
  %37 = load i32, i32* %8, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %8, align 4
  br label %39

39:                                               ; preds = %36
  %40 = load i64, i64* %7, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %45, label %42

42:                                               ; preds = %39
  %43 = load i64, i64* %6, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %42, %39
  %46 = load i32, i32* %8, align 4
  %47 = icmp slt i32 %46, 5
  br label %48

48:                                               ; preds = %45, %42
  %49 = phi i1 [ false, %42 ], [ %47, %45 ]
  br i1 %49, label %16, label %50

50:                                               ; preds = %48
  %51 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %52 = load i32, i32* @HSCX_MASK, align 4
  %53 = call i32 @WriteHSCX(%struct.IsdnCardState* %51, i32 0, i32 %52, i32 255)
  %54 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %55 = load i32, i32* @HSCX_MASK, align 4
  %56 = call i32 @WriteHSCX(%struct.IsdnCardState* %54, i32 1, i32 %55, i32 255)
  %57 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %58 = load i32, i32* @ISAC_MASK, align 4
  %59 = call i32 @WriteISAC(%struct.IsdnCardState* %57, i32 %58, i32 255)
  %60 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %61 = load i32, i32* @ISAC_MASK, align 4
  %62 = call i32 @WriteISAC(%struct.IsdnCardState* %60, i32 %61, i32 0)
  %63 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %64 = load i32, i32* @HSCX_MASK, align 4
  %65 = call i32 @WriteHSCX(%struct.IsdnCardState* %63, i32 0, i32 %64, i32 0)
  %66 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %67 = load i32, i32* @HSCX_MASK, align 4
  %68 = call i32 @WriteHSCX(%struct.IsdnCardState* %66, i32 1, i32 %67, i32 0)
  %69 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %70 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %69, i32 0, i32 0
  %71 = load i32, i32* %9, align 4
  %72 = call i32 @spin_unlock_irqrestore(i32* %70, i32 %71)
  %73 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %73
}

declare dso_local i32 @spin_lock_irqsave(i32*, i32) #1

declare dso_local i64 @ReadHSCX(%struct.IsdnCardState*, i32, i32) #1

declare dso_local i32 @hscx_int_main(%struct.IsdnCardState*, i64) #1

declare dso_local i64 @ReadISAC(%struct.IsdnCardState*, i32) #1

declare dso_local i32 @isac_interrupt(%struct.IsdnCardState*, i64) #1

declare dso_local i32 @WriteHSCX(%struct.IsdnCardState*, i32, i32, i32) #1

declare dso_local i32 @WriteISAC(%struct.IsdnCardState*, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
