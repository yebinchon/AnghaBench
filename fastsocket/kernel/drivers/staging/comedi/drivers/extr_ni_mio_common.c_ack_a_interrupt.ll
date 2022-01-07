; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_ni_mio_common.c_ack_a_interrupt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_ni_mio_common.c_ack_a_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (%struct.comedi_device*, i16, i32)* }
%struct.comedi_device = type { i32 }

@AI_SC_TC_St = common dso_local global i16 0, align 2
@AI_SC_TC_Interrupt_Ack = common dso_local global i16 0, align 2
@AI_START1_St = common dso_local global i16 0, align 2
@AI_START1_Interrupt_Ack = common dso_local global i16 0, align 2
@AI_START_St = common dso_local global i16 0, align 2
@AI_START_Interrupt_Ack = common dso_local global i16 0, align 2
@AI_STOP_St = common dso_local global i16 0, align 2
@AI_STOP_Interrupt_Ack = common dso_local global i16 0, align 2
@devpriv = common dso_local global %struct.TYPE_2__* null, align 8
@Interrupt_A_Ack_Register = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.comedi_device*, i16)* @ack_a_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ack_a_interrupt(%struct.comedi_device* %0, i16 zeroext %1) #0 {
  %3 = alloca %struct.comedi_device*, align 8
  %4 = alloca i16, align 2
  %5 = alloca i16, align 2
  store %struct.comedi_device* %0, %struct.comedi_device** %3, align 8
  store i16 %1, i16* %4, align 2
  store i16 0, i16* %5, align 2
  %6 = load i16, i16* %4, align 2
  %7 = zext i16 %6 to i32
  %8 = load i16, i16* @AI_SC_TC_St, align 2
  %9 = zext i16 %8 to i32
  %10 = and i32 %7, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %19

12:                                               ; preds = %2
  %13 = load i16, i16* @AI_SC_TC_Interrupt_Ack, align 2
  %14 = zext i16 %13 to i32
  %15 = load i16, i16* %5, align 2
  %16 = zext i16 %15 to i32
  %17 = or i32 %16, %14
  %18 = trunc i32 %17 to i16
  store i16 %18, i16* %5, align 2
  br label %19

19:                                               ; preds = %12, %2
  %20 = load i16, i16* %4, align 2
  %21 = zext i16 %20 to i32
  %22 = load i16, i16* @AI_START1_St, align 2
  %23 = zext i16 %22 to i32
  %24 = and i32 %21, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %33

26:                                               ; preds = %19
  %27 = load i16, i16* @AI_START1_Interrupt_Ack, align 2
  %28 = zext i16 %27 to i32
  %29 = load i16, i16* %5, align 2
  %30 = zext i16 %29 to i32
  %31 = or i32 %30, %28
  %32 = trunc i32 %31 to i16
  store i16 %32, i16* %5, align 2
  br label %33

33:                                               ; preds = %26, %19
  %34 = load i16, i16* %4, align 2
  %35 = zext i16 %34 to i32
  %36 = load i16, i16* @AI_START_St, align 2
  %37 = zext i16 %36 to i32
  %38 = and i32 %35, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %47

40:                                               ; preds = %33
  %41 = load i16, i16* @AI_START_Interrupt_Ack, align 2
  %42 = zext i16 %41 to i32
  %43 = load i16, i16* %5, align 2
  %44 = zext i16 %43 to i32
  %45 = or i32 %44, %42
  %46 = trunc i32 %45 to i16
  store i16 %46, i16* %5, align 2
  br label %47

47:                                               ; preds = %40, %33
  %48 = load i16, i16* %4, align 2
  %49 = zext i16 %48 to i32
  %50 = load i16, i16* @AI_STOP_St, align 2
  %51 = zext i16 %50 to i32
  %52 = and i32 %49, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %61

54:                                               ; preds = %47
  %55 = load i16, i16* @AI_STOP_Interrupt_Ack, align 2
  %56 = zext i16 %55 to i32
  %57 = load i16, i16* %5, align 2
  %58 = zext i16 %57 to i32
  %59 = or i32 %58, %56
  %60 = trunc i32 %59 to i16
  store i16 %60, i16* %5, align 2
  br label %61

61:                                               ; preds = %54, %47
  %62 = load i16, i16* %5, align 2
  %63 = icmp ne i16 %62, 0
  br i1 %63, label %64, label %72

64:                                               ; preds = %61
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  %67 = load i32 (%struct.comedi_device*, i16, i32)*, i32 (%struct.comedi_device*, i16, i32)** %66, align 8
  %68 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %69 = load i16, i16* %5, align 2
  %70 = load i32, i32* @Interrupt_A_Ack_Register, align 4
  %71 = call i32 %67(%struct.comedi_device* %68, i16 zeroext %69, i32 %70)
  br label %72

72:                                               ; preds = %64, %61
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
