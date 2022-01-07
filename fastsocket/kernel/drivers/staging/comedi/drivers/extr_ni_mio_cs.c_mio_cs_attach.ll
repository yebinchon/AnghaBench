; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_ni_mio_cs.c_mio_cs_attach.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_ni_mio_cs.c_mio_cs_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcmcia_device = type { %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32*, i32*, i32*, i32* }
%struct.comedi_device = type { i32, i32, i64, i32, %struct.TYPE_8__*, i32 }
%struct.comedi_devconfig = type { i32 }

@.str = private unnamed_addr constant [29 x i8] c"mio_cs_attach(dev=%p,it=%p)\0A\00", align 1
@cur_dev = common dso_local global %struct.pcmcia_device* null, align 8
@EIO = common dso_local global i32 0, align 4
@driver_ni_mio_cs = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"comedi%d: %s: DAQCard: io 0x%04lx, irq %u, \00", align 1
@ni_boards = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [4 x i8] c" %s\00", align 1
@boardtype = common dso_local global %struct.TYPE_10__ zeroinitializer, align 4
@ni_E_interrupt = common dso_local global i32 0, align 4
@NI_E_IRQ_FLAGS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [10 x i8] c"ni_mio_cs\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c" irq not available\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@mio_cs_win_out = common dso_local global i32 0, align 4
@devpriv = common dso_local global %struct.TYPE_9__* null, align 8
@mio_cs_win_in = common dso_local global i32 0, align 4
@win_out2 = common dso_local global i32 0, align 4
@win_in2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_devconfig*)* @mio_cs_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mio_cs_attach(%struct.comedi_device* %0, %struct.comedi_devconfig* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.comedi_device*, align 8
  %5 = alloca %struct.comedi_devconfig*, align 8
  %6 = alloca %struct.pcmcia_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %4, align 8
  store %struct.comedi_devconfig* %1, %struct.comedi_devconfig** %5, align 8
  %9 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %10 = load %struct.comedi_devconfig*, %struct.comedi_devconfig** %5, align 8
  %11 = call i32 @DPRINTK(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), %struct.comedi_device* %9, %struct.comedi_devconfig* %10)
  %12 = load %struct.pcmcia_device*, %struct.pcmcia_device** @cur_dev, align 8
  store %struct.pcmcia_device* %12, %struct.pcmcia_device** %6, align 8
  %13 = load %struct.pcmcia_device*, %struct.pcmcia_device** %6, align 8
  %14 = icmp ne %struct.pcmcia_device* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* @EIO, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %94

18:                                               ; preds = %2
  %19 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %20 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %19, i32 0, i32 4
  store %struct.TYPE_8__* @driver_ni_mio_cs, %struct.TYPE_8__** %20, align 8
  %21 = load %struct.pcmcia_device*, %struct.pcmcia_device** %6, align 8
  %22 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %26 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %25, i32 0, i32 3
  store i32 %24, i32* %26, align 8
  %27 = load %struct.pcmcia_device*, %struct.pcmcia_device** %6, align 8
  %28 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %7, align 4
  %31 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %32 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %31, i32 0, i32 5
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %35 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %34, i32 0, i32 4
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %40 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* %7, align 4
  %43 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i32 %33, i32 %38, i32 %41, i32 %42)
  %44 = load i64, i64* @ni_boards, align 8
  %45 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %46 = load %struct.pcmcia_device*, %struct.pcmcia_device** %6, align 8
  %47 = call i64 @ni_getboardtype(%struct.comedi_device* %45, %struct.pcmcia_device* %46)
  %48 = add nsw i64 %44, %47
  %49 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %50 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %49, i32 0, i32 2
  store i64 %48, i64* %50, align 8
  %51 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @boardtype, i32 0, i32 0), align 4
  %52 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 %51)
  %53 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @boardtype, i32 0, i32 0), align 4
  %54 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %55 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %54, i32 0, i32 1
  store i32 %53, i32* %55, align 4
  %56 = load i32, i32* %7, align 4
  %57 = load i32, i32* @ni_E_interrupt, align 4
  %58 = load i32, i32* @NI_E_IRQ_FLAGS, align 4
  %59 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %60 = call i32 @request_irq(i32 %56, i32 %57, i32 %58, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), %struct.comedi_device* %59)
  store i32 %60, i32* %8, align 4
  %61 = load i32, i32* %8, align 4
  %62 = icmp slt i32 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %18
  %64 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0))
  %65 = load i32, i32* @EINVAL, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %3, align 4
  br label %94

67:                                               ; preds = %18
  %68 = load i32, i32* %7, align 4
  %69 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %70 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %69, i32 0, i32 0
  store i32 %68, i32* %70, align 8
  %71 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %72 = call i32 @ni_alloc_private(%struct.comedi_device* %71)
  store i32 %72, i32* %8, align 4
  %73 = load i32, i32* %8, align 4
  %74 = icmp slt i32 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %67
  %76 = load i32, i32* %8, align 4
  store i32 %76, i32* %3, align 4
  br label %94

77:                                               ; preds = %67
  %78 = load %struct.TYPE_9__*, %struct.TYPE_9__** @devpriv, align 8
  %79 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %78, i32 0, i32 3
  store i32* @mio_cs_win_out, i32** %79, align 8
  %80 = load %struct.TYPE_9__*, %struct.TYPE_9__** @devpriv, align 8
  %81 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %80, i32 0, i32 2
  store i32* @mio_cs_win_in, i32** %81, align 8
  %82 = load %struct.TYPE_9__*, %struct.TYPE_9__** @devpriv, align 8
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %82, i32 0, i32 1
  store i32* @win_out2, i32** %83, align 8
  %84 = load %struct.TYPE_9__*, %struct.TYPE_9__** @devpriv, align 8
  %85 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %84, i32 0, i32 0
  store i32* @win_in2, i32** %85, align 8
  %86 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %87 = load %struct.comedi_devconfig*, %struct.comedi_devconfig** %5, align 8
  %88 = call i32 @ni_E_init(%struct.comedi_device* %86, %struct.comedi_devconfig* %87)
  store i32 %88, i32* %8, align 4
  %89 = load i32, i32* %8, align 4
  %90 = icmp slt i32 %89, 0
  br i1 %90, label %91, label %93

91:                                               ; preds = %77
  %92 = load i32, i32* %8, align 4
  store i32 %92, i32* %3, align 4
  br label %94

93:                                               ; preds = %77
  store i32 0, i32* %3, align 4
  br label %94

94:                                               ; preds = %93, %91, %75, %63, %15
  %95 = load i32, i32* %3, align 4
  ret i32 %95
}

declare dso_local i32 @DPRINTK(i8*, %struct.comedi_device*, %struct.comedi_devconfig*) #1

declare dso_local i32 @printk(i8*, ...) #1

declare dso_local i64 @ni_getboardtype(%struct.comedi_device*, %struct.pcmcia_device*) #1

declare dso_local i32 @request_irq(i32, i32, i32, i8*, %struct.comedi_device*) #1

declare dso_local i32 @ni_alloc_private(%struct.comedi_device*) #1

declare dso_local i32 @ni_E_init(%struct.comedi_device*, %struct.comedi_devconfig*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
