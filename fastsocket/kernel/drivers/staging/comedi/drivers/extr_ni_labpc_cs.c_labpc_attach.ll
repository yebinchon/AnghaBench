; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_ni_labpc_cs.c_labpc_attach.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_ni_labpc_cs.c_labpc_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.pcmcia_device = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i64 }
%struct.comedi_device = type { i32 }
%struct.comedi_devconfig = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@thisboard = common dso_local global %struct.TYPE_6__* null, align 8
@pcmcia_cur_dev = common dso_local global %struct.pcmcia_device* null, align 8
@EIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"bug! couldn't determine board type\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_devconfig*)* @labpc_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @labpc_attach(%struct.comedi_device* %0, %struct.comedi_devconfig* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.comedi_device*, align 8
  %5 = alloca %struct.comedi_devconfig*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.pcmcia_device*, align 8
  store %struct.comedi_device* %0, %struct.comedi_device** %4, align 8
  store %struct.comedi_devconfig* %1, %struct.comedi_devconfig** %5, align 8
  store i64 0, i64* %6, align 8
  store i32 0, i32* %7, align 4
  %9 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %10 = call i64 @alloc_private(%struct.comedi_device* %9, i32 4)
  %11 = icmp slt i64 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %3, align 4
  br label %44

15:                                               ; preds = %2
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** @thisboard, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  switch i32 %18, label %35 [
    i32 128, label %19
  ]

19:                                               ; preds = %15
  %20 = load %struct.pcmcia_device*, %struct.pcmcia_device** @pcmcia_cur_dev, align 8
  store %struct.pcmcia_device* %20, %struct.pcmcia_device** %8, align 8
  %21 = load %struct.pcmcia_device*, %struct.pcmcia_device** %8, align 8
  %22 = icmp ne %struct.pcmcia_device* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %19
  %24 = load i32, i32* @EIO, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %44

26:                                               ; preds = %19
  %27 = load %struct.pcmcia_device*, %struct.pcmcia_device** %8, align 8
  %28 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  store i64 %30, i64* %6, align 8
  %31 = load %struct.pcmcia_device*, %struct.pcmcia_device** %8, align 8
  %32 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  store i32 %34, i32* %7, align 4
  br label %39

35:                                               ; preds = %15
  %36 = call i32 @printk(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %3, align 4
  br label %44

39:                                               ; preds = %26
  %40 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %41 = load i64, i64* %6, align 8
  %42 = load i32, i32* %7, align 4
  %43 = call i32 @labpc_common_attach(%struct.comedi_device* %40, i64 %41, i32 %42, i32 0)
  store i32 %43, i32* %3, align 4
  br label %44

44:                                               ; preds = %39, %35, %23, %12
  %45 = load i32, i32* %3, align 4
  ret i32 %45
}

declare dso_local i64 @alloc_private(%struct.comedi_device*, i32) #1

declare dso_local i32 @printk(i8*) #1

declare dso_local i32 @labpc_common_attach(%struct.comedi_device*, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
