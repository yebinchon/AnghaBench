; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_dt2814.c_dt2814_interrupt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_dt2814.c_dt2814_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.comedi_device = type { i64, %struct.comedi_subdevice*, i32 }
%struct.comedi_subdevice = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [19 x i8] c"spurious interrupt\00", align 1
@IRQ_HANDLED = common dso_local global i32 0, align 4
@DT2814_DATA = common dso_local global i64 0, align 8
@devpriv = common dso_local global %struct.TYPE_4__* null, align 8
@DT2814_CSR = common dso_local global i64 0, align 8
@DT2814_TIMEOUT = common dso_local global i32 0, align 4
@DT2814_FINISH = common dso_local global i32 0, align 4
@COMEDI_CB_EOA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @dt2814_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dt2814_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.comedi_device*, align 8
  %9 = alloca %struct.comedi_subdevice*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = bitcast i8* %12 to %struct.comedi_device*
  store %struct.comedi_device* %13, %struct.comedi_device** %8, align 8
  %14 = load %struct.comedi_device*, %struct.comedi_device** %8, align 8
  %15 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 8
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %2
  %19 = load %struct.comedi_device*, %struct.comedi_device** %8, align 8
  %20 = call i32 @comedi_error(%struct.comedi_device* %19, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %21 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %21, i32* %3, align 4
  br label %100

22:                                               ; preds = %2
  %23 = load %struct.comedi_device*, %struct.comedi_device** %8, align 8
  %24 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %23, i32 0, i32 1
  %25 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %24, align 8
  %26 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %25, i64 0
  store %struct.comedi_subdevice* %26, %struct.comedi_subdevice** %9, align 8
  %27 = load %struct.comedi_device*, %struct.comedi_device** %8, align 8
  %28 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @DT2814_DATA, align 8
  %31 = add nsw i64 %29, %30
  %32 = call i32 @inb(i64 %31)
  store i32 %32, i32* %7, align 4
  %33 = load %struct.comedi_device*, %struct.comedi_device** %8, align 8
  %34 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @DT2814_DATA, align 8
  %37 = add nsw i64 %35, %36
  %38 = call i32 @inb(i64 %37)
  store i32 %38, i32* %6, align 4
  %39 = load i32, i32* %7, align 4
  %40 = shl i32 %39, 4
  %41 = load i32, i32* %6, align 4
  %42 = ashr i32 %41, 4
  %43 = or i32 %40, %42
  store i32 %43, i32* %10, align 4
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = add nsw i32 %46, -1
  store i32 %47, i32* %45, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %95, label %49

49:                                               ; preds = %22
  %50 = load %struct.comedi_device*, %struct.comedi_device** %8, align 8
  %51 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @DT2814_CSR, align 8
  %54 = add nsw i64 %52, %53
  %55 = call i32 @outb(i32 0, i64 %54)
  store i32 0, i32* %11, align 4
  br label %56

56:                                               ; preds = %72, %49
  %57 = load i32, i32* %11, align 4
  %58 = load i32, i32* @DT2814_TIMEOUT, align 4
  %59 = icmp slt i32 %57, %58
  br i1 %59, label %60, label %75

60:                                               ; preds = %56
  %61 = load %struct.comedi_device*, %struct.comedi_device** %8, align 8
  %62 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @DT2814_CSR, align 8
  %65 = add nsw i64 %63, %64
  %66 = call i32 @inb(i64 %65)
  %67 = load i32, i32* @DT2814_FINISH, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %60
  br label %75

71:                                               ; preds = %60
  br label %72

72:                                               ; preds = %71
  %73 = load i32, i32* %11, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %11, align 4
  br label %56

75:                                               ; preds = %70, %56
  %76 = load %struct.comedi_device*, %struct.comedi_device** %8, align 8
  %77 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @DT2814_DATA, align 8
  %80 = add nsw i64 %78, %79
  %81 = call i32 @inb(i64 %80)
  %82 = load %struct.comedi_device*, %struct.comedi_device** %8, align 8
  %83 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @DT2814_DATA, align 8
  %86 = add nsw i64 %84, %85
  %87 = call i32 @inb(i64 %86)
  %88 = load i32, i32* @COMEDI_CB_EOA, align 4
  %89 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %9, align 8
  %90 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %89, i32 0, i32 0
  %91 = load %struct.TYPE_3__*, %struct.TYPE_3__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = or i32 %93, %88
  store i32 %94, i32* %92, align 4
  br label %95

95:                                               ; preds = %75, %22
  %96 = load %struct.comedi_device*, %struct.comedi_device** %8, align 8
  %97 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %9, align 8
  %98 = call i32 @comedi_event(%struct.comedi_device* %96, %struct.comedi_subdevice* %97)
  %99 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %99, i32* %3, align 4
  br label %100

100:                                              ; preds = %95, %18
  %101 = load i32, i32* %3, align 4
  ret i32 %101
}

declare dso_local i32 @comedi_error(%struct.comedi_device*, i8*) #1

declare dso_local i32 @inb(i64) #1

declare dso_local i32 @outb(i32, i64) #1

declare dso_local i32 @comedi_event(%struct.comedi_device*, %struct.comedi_subdevice*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
