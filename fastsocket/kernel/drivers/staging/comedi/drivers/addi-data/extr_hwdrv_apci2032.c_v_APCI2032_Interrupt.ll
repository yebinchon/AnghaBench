; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/addi-data/extr_hwdrv_apci2032.c_v_APCI2032_Interrupt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/addi-data/extr_hwdrv_apci2032.c_v_APCI2032_Interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i64 }
%struct.comedi_device = type { i32 }

@devpriv = common dso_local global %struct.TYPE_2__* null, align 8
@APCI2032_DIGITAL_OP_IRQ = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [32 x i8] c"\0AInterrupt from unKnown source\0A\00", align 1
@APCI2032_DIGITAL_OP_INTERRUPT_STATUS = common dso_local global i64 0, align 8
@ui_Type = common dso_local global i32 0, align 4
@APCI2032_DIGITAL_OP = common dso_local global i64 0, align 8
@APCI2032_DIGITAL_OP_INTERRUPT = common dso_local global i64 0, align 8
@SIGIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @v_APCI2032_Interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.comedi_device*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = bitcast i8* %7 to %struct.comedi_device*
  store %struct.comedi_device* %8, %struct.comedi_device** %5, align 8
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @APCI2032_DIGITAL_OP_IRQ, align 8
  %13 = add nsw i64 %11, %12
  %14 = call i32 @inl(i64 %13)
  %15 = and i32 %14, 1
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %2
  %19 = call i32 @printk(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  br label %20

20:                                               ; preds = %18, %2
  %21 = load i32, i32* %6, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %58

23:                                               ; preds = %20
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @APCI2032_DIGITAL_OP_INTERRUPT_STATUS, align 8
  %28 = add nsw i64 %26, %27
  %29 = call i32 @inl(i64 %28)
  %30 = and i32 %29, 3
  store i32 %30, i32* @ui_Type, align 4
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @APCI2032_DIGITAL_OP, align 8
  %35 = add nsw i64 %33, %34
  %36 = load i64, i64* @APCI2032_DIGITAL_OP_INTERRUPT, align 8
  %37 = add nsw i64 %35, %36
  %38 = call i32 @outl(i32 0, i64 %37)
  %39 = load i32, i32* @ui_Type, align 4
  %40 = icmp eq i32 %39, 1
  br i1 %40, label %41, label %47

41:                                               ; preds = %23
  %42 = load i32, i32* @SIGIO, align 4
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @send_sig(i32 %42, i32 %45, i32 0)
  br label %57

47:                                               ; preds = %23
  %48 = load i32, i32* @ui_Type, align 4
  %49 = icmp eq i32 %48, 2
  br i1 %49, label %50, label %56

50:                                               ; preds = %47
  %51 = load i32, i32* @SIGIO, align 4
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @send_sig(i32 %51, i32 %54, i32 0)
  br label %56

56:                                               ; preds = %50, %47
  br label %57

57:                                               ; preds = %56, %41
  br label %58

58:                                               ; preds = %57, %20
  ret void
}

declare dso_local i32 @inl(i64) #1

declare dso_local i32 @printk(i8*) #1

declare dso_local i32 @outl(i32, i64) #1

declare dso_local i32 @send_sig(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
