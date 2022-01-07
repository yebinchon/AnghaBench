; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_dt282x.c_dt282x_ao_cmd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_dt282x.c_dt282x_ao_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i32, i32, i32, i32, i64, i32 }
%struct.comedi_device = type { i64 }
%struct.comedi_subdevice = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, %struct.comedi_cmd }
%struct.comedi_cmd = type { i32, i32, i32 }

@devpriv = common dso_local global %struct.TYPE_4__* null, align 8
@.str = private unnamed_addr constant [50 x i8] c"driver requires 2 dma channels to execute command\00", align 1
@EIO = common dso_local global i32 0, align 4
@DT2821_ERRINTEN = common dso_local global i32 0, align 4
@DT2821_DS1 = common dso_local global i32 0, align 4
@DT2821_DDMA = common dso_local global i32 0, align 4
@DT2821_CLRDMADNE = common dso_local global i32 0, align 4
@DT2821_BUFFB = common dso_local global i32 0, align 4
@DT2821_DACINIT = common dso_local global i32 0, align 4
@DMA_MODE_WRITE = common dso_local global i32 0, align 4
@TRIG_ROUND_NEAREST = common dso_local global i32 0, align 4
@DT2821_TMRCTR = common dso_local global i64 0, align 8
@DT2821_SSEL = common dso_local global i32 0, align 4
@DT2821_DACLK = common dso_local global i32 0, align 4
@DT2821_IDARDY = common dso_local global i32 0, align 4
@dt282x_ao_inttrig = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*)* @dt282x_ao_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dt282x_ao_cmd(%struct.comedi_device* %0, %struct.comedi_subdevice* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.comedi_device*, align 8
  %5 = alloca %struct.comedi_subdevice*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.comedi_cmd*, align 8
  store %struct.comedi_device* %0, %struct.comedi_device** %4, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %5, align 8
  %8 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %5, align 8
  %9 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %8, i32 0, i32 0
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 1
  store %struct.comedi_cmd* %11, %struct.comedi_cmd** %7, align 8
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %2
  %17 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %18 = call i32 @comedi_error(%struct.comedi_device* %17, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0))
  %19 = load i32, i32* @EIO, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %80

21:                                               ; preds = %2
  %22 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %23 = call i32 @dt282x_disable_dma(%struct.comedi_device* %22)
  %24 = load i32, i32* @DT2821_ERRINTEN, align 4
  %25 = load i32, i32* @DT2821_DS1, align 4
  %26 = or i32 %24, %25
  %27 = load i32, i32* @DT2821_DDMA, align 4
  %28 = or i32 %26, %27
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 1
  store i32 %28, i32* %30, align 8
  %31 = load i32, i32* @DT2821_CLRDMADNE, align 4
  %32 = load i32, i32* @DT2821_BUFFB, align 4
  %33 = or i32 %31, %32
  %34 = load i32, i32* @DT2821_DACINIT, align 4
  %35 = or i32 %33, %34
  %36 = call i32 @update_supcsr(i32 %35)
  %37 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %38 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %41 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = mul nsw i32 %39, %42
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 2
  store i32 %43, i32* %45, align 4
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 3
  store i32 %48, i32* %50, align 8
  %51 = load i32, i32* @DMA_MODE_WRITE, align 4
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 6
  store i32 %51, i32* %53, align 8
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 5
  store i64 0, i64* %55, align 8
  %56 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %57 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %56, i32 0, i32 2
  %58 = load i32, i32* @TRIG_ROUND_NEAREST, align 4
  %59 = call i32 @dt282x_ns_to_timer(i32* %57, i32 %58)
  store i32 %59, i32* %6, align 4
  %60 = load i32, i32* %6, align 4
  %61 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %62 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @DT2821_TMRCTR, align 8
  %65 = add nsw i64 %63, %64
  %66 = call i32 @outw(i32 %60, i64 %65)
  %67 = load i32, i32* @DT2821_SSEL, align 4
  %68 = load i32, i32* @DT2821_DACLK, align 4
  %69 = or i32 %67, %68
  %70 = load i32, i32* @DT2821_IDARDY, align 4
  %71 = or i32 %69, %70
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 4
  store i32 %71, i32* %73, align 4
  %74 = call i32 @update_dacsr(i32 0)
  %75 = load i32, i32* @dt282x_ao_inttrig, align 4
  %76 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %5, align 8
  %77 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %76, i32 0, i32 0
  %78 = load %struct.TYPE_3__*, %struct.TYPE_3__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 0
  store i32 %75, i32* %79, align 4
  store i32 0, i32* %3, align 4
  br label %80

80:                                               ; preds = %21, %16
  %81 = load i32, i32* %3, align 4
  ret i32 %81
}

declare dso_local i32 @comedi_error(%struct.comedi_device*, i8*) #1

declare dso_local i32 @dt282x_disable_dma(%struct.comedi_device*) #1

declare dso_local i32 @update_supcsr(i32) #1

declare dso_local i32 @dt282x_ns_to_timer(i32*, i32) #1

declare dso_local i32 @outw(i32, i64) #1

declare dso_local i32 @update_dacsr(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
