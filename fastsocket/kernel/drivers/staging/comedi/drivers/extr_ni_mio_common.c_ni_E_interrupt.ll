; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_ni_mio_common.c_ni_E_interrupt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_ni_mio_common.c_ni_E_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i16 (%struct.comedi_device*, i32)*, i32, %struct.TYPE_3__*, %struct.TYPE_3__*, %struct.mite_struct* }
%struct.comedi_device = type { i64, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.mite_struct = type { i64 }

@IRQ_NONE = common dso_local global i32 0, align 4
@devpriv = common dso_local global %struct.TYPE_4__* null, align 8
@AI_Status_1_Register = common dso_local global i32 0, align 4
@AO_Status_1_Register = common dso_local global i32 0, align 4
@Interrupt_A_St = common dso_local global i16 0, align 2
@CHSR_INT = common dso_local global i32 0, align 4
@Interrupt_B_St = common dso_local global i16 0, align 2
@IRQ_HANDLED = common dso_local global i32 0, align 4
@CHOR_CLRLC = common dso_local global i32 0, align 4
@CHSR_LINKC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @ni_E_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ni_E_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.comedi_device*, align 8
  %7 = alloca i16, align 2
  %8 = alloca i16, align 2
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = bitcast i8* %12 to %struct.comedi_device*
  store %struct.comedi_device* %13, %struct.comedi_device** %6, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %14 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %15 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %2
  %19 = load i32, i32* @IRQ_NONE, align 4
  store i32 %19, i32* %3, align 4
  br label %89

20:                                               ; preds = %2
  %21 = call i32 (...) @smp_mb()
  %22 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %23 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %22, i32 0, i32 1
  %24 = load i64, i64* %11, align 8
  %25 = call i32 @spin_lock_irqsave(i32* %23, i64 %24)
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i16 (%struct.comedi_device*, i32)*, i16 (%struct.comedi_device*, i32)** %27, align 8
  %29 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %30 = load i32, i32* @AI_Status_1_Register, align 4
  %31 = call zeroext i16 %28(%struct.comedi_device* %29, i32 %30)
  store i16 %31, i16* %7, align 2
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i16 (%struct.comedi_device*, i32)*, i16 (%struct.comedi_device*, i32)** %33, align 8
  %35 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %36 = load i32, i32* @AO_Status_1_Register, align 4
  %37 = call zeroext i16 %34(%struct.comedi_device* %35, i32 %36)
  store i16 %37, i16* %8, align 2
  %38 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %39 = load i16, i16* %7, align 2
  %40 = call i32 @ack_a_interrupt(%struct.comedi_device* %38, i16 zeroext %39)
  %41 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %42 = load i16, i16* %8, align 2
  %43 = call i32 @ack_b_interrupt(%struct.comedi_device* %41, i16 zeroext %42)
  %44 = load i16, i16* %7, align 2
  %45 = zext i16 %44 to i32
  %46 = load i16, i16* @Interrupt_A_St, align 2
  %47 = zext i16 %46 to i32
  %48 = and i32 %45, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %55, label %50

50:                                               ; preds = %20
  %51 = load i32, i32* %9, align 4
  %52 = load i32, i32* @CHSR_INT, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %50, %20
  %56 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %57 = load i16, i16* %7, align 2
  %58 = load i32, i32* %9, align 4
  %59 = call i32 @handle_a_interrupt(%struct.comedi_device* %56, i16 zeroext %57, i32 %58)
  br label %60

60:                                               ; preds = %55, %50
  %61 = load i16, i16* %8, align 2
  %62 = zext i16 %61 to i32
  %63 = load i16, i16* @Interrupt_B_St, align 2
  %64 = zext i16 %63 to i32
  %65 = and i32 %62, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %72, label %67

67:                                               ; preds = %60
  %68 = load i32, i32* %10, align 4
  %69 = load i32, i32* @CHSR_INT, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %77

72:                                               ; preds = %67, %60
  %73 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %74 = load i16, i16* %8, align 2
  %75 = load i32, i32* %10, align 4
  %76 = call i32 @handle_b_interrupt(%struct.comedi_device* %73, i16 zeroext %74, i32 %75)
  br label %77

77:                                               ; preds = %72, %67
  %78 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %79 = call i32 @handle_gpct_interrupt(%struct.comedi_device* %78, i32 0)
  %80 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %81 = call i32 @handle_gpct_interrupt(%struct.comedi_device* %80, i32 1)
  %82 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %83 = call i32 @handle_cdio_interrupt(%struct.comedi_device* %82)
  %84 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %85 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %84, i32 0, i32 1
  %86 = load i64, i64* %11, align 8
  %87 = call i32 @spin_unlock_irqrestore(i32* %85, i64 %86)
  %88 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %88, i32* %3, align 4
  br label %89

89:                                               ; preds = %77, %18
  %90 = load i32, i32* %3, align 4
  ret i32 %90
}

declare dso_local i32 @smp_mb(...) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @ack_a_interrupt(%struct.comedi_device*, i16 zeroext) #1

declare dso_local i32 @ack_b_interrupt(%struct.comedi_device*, i16 zeroext) #1

declare dso_local i32 @handle_a_interrupt(%struct.comedi_device*, i16 zeroext, i32) #1

declare dso_local i32 @handle_b_interrupt(%struct.comedi_device*, i16 zeroext, i32) #1

declare dso_local i32 @handle_gpct_interrupt(%struct.comedi_device*, i32) #1

declare dso_local i32 @handle_cdio_interrupt(%struct.comedi_device*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
