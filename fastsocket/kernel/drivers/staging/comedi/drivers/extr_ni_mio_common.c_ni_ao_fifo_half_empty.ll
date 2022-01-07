; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_ni_mio_common.c_ni_ao_fifo_half_empty.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_ni_mio_common.c_ni_ao_fifo_half_empty.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.comedi_device = type { i32 }
%struct.comedi_subdevice = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@COMEDI_CB_OVERFLOW = common dso_local global i32 0, align 4
@boardtype = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@COMEDI_CB_BLOCK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*)* @ni_ao_fifo_half_empty to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ni_ao_fifo_half_empty(%struct.comedi_device* %0, %struct.comedi_subdevice* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.comedi_device*, align 8
  %5 = alloca %struct.comedi_subdevice*, align 8
  %6 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %4, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %5, align 8
  %7 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %5, align 8
  %8 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %7, i32 0, i32 0
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %10 = call i32 @comedi_buf_read_n_available(%struct.TYPE_3__* %9)
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* %6, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %21

13:                                               ; preds = %2
  %14 = load i32, i32* @COMEDI_CB_OVERFLOW, align 4
  %15 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %5, align 8
  %16 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %15, i32 0, i32 0
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = or i32 %19, %14
  store i32 %20, i32* %18, align 4
  store i32 0, i32* %3, align 4
  br label %45

21:                                               ; preds = %2
  %22 = load i32, i32* %6, align 4
  %23 = sext i32 %22 to i64
  %24 = udiv i64 %23, 2
  %25 = trunc i64 %24 to i32
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @boardtype, i32 0, i32 0), align 4
  %28 = sdiv i32 %27, 2
  %29 = icmp sgt i32 %26, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %21
  %31 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @boardtype, i32 0, i32 0), align 4
  %32 = sdiv i32 %31, 2
  store i32 %32, i32* %6, align 4
  br label %33

33:                                               ; preds = %30, %21
  %34 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %35 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %5, align 8
  %36 = load i32, i32* %6, align 4
  %37 = call i32 @ni_ao_fifo_load(%struct.comedi_device* %34, %struct.comedi_subdevice* %35, i32 %36)
  %38 = load i32, i32* @COMEDI_CB_BLOCK, align 4
  %39 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %5, align 8
  %40 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %39, i32 0, i32 0
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = or i32 %43, %38
  store i32 %44, i32* %42, align 4
  store i32 1, i32* %3, align 4
  br label %45

45:                                               ; preds = %33, %13
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare dso_local i32 @comedi_buf_read_n_available(%struct.TYPE_3__*) #1

declare dso_local i32 @ni_ao_fifo_load(%struct.comedi_device*, %struct.comedi_subdevice*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
