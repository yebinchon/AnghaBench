; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_ni_mio_common.c_ni_ao_fifo_load.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_ni_mio_common.c_ni_ao_fifo_load.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.comedi_device = type { i32 }
%struct.comedi_subdevice = type { %struct.comedi_async* }
%struct.comedi_async = type { i32, i32, %struct.comedi_cmd }
%struct.comedi_cmd = type { i32, i32* }

@boardtype = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@ni_reg_6xxx_mask = common dso_local global i32 0, align 4
@ni_reg_6711 = common dso_local global i32 0, align 4
@DAC_FIFO_Data_611x = common dso_local global i32 0, align 4
@DAC_FIFO_Data = common dso_local global i32 0, align 4
@COMEDI_CB_OVERFLOW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.comedi_device*, %struct.comedi_subdevice*, i32)* @ni_ao_fifo_load to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ni_ao_fifo_load(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, i32 %2) #0 {
  %4 = alloca %struct.comedi_device*, align 8
  %5 = alloca %struct.comedi_subdevice*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.comedi_async*, align 8
  %8 = alloca %struct.comedi_cmd*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i16, align 2
  %12 = alloca i16, align 2
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %4, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %5, align 8
  store i32 %2, i32* %6, align 4
  %15 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %5, align 8
  %16 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %15, i32 0, i32 0
  %17 = load %struct.comedi_async*, %struct.comedi_async** %16, align 8
  store %struct.comedi_async* %17, %struct.comedi_async** %7, align 8
  %18 = load %struct.comedi_async*, %struct.comedi_async** %7, align 8
  %19 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %18, i32 0, i32 2
  store %struct.comedi_cmd* %19, %struct.comedi_cmd** %8, align 8
  store i32 1, i32* %14, align 4
  %20 = load %struct.comedi_async*, %struct.comedi_async** %7, align 8
  %21 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  store i32 %22, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %23

23:                                               ; preds = %93, %3
  %24 = load i32, i32* %10, align 4
  %25 = load i32, i32* %6, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %96

27:                                               ; preds = %23
  %28 = load %struct.comedi_async*, %struct.comedi_async** %7, align 8
  %29 = call i32 @comedi_buf_get(%struct.comedi_async* %28, i16* %11)
  %30 = load i32, i32* %14, align 4
  %31 = and i32 %30, %29
  store i32 %31, i32* %14, align 4
  %32 = load i32, i32* %14, align 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %27
  br label %96

35:                                               ; preds = %27
  %36 = load %struct.comedi_cmd*, %struct.comedi_cmd** %8, align 8
  %37 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %36, i32 0, i32 1
  %38 = load i32*, i32** %37, align 8
  %39 = load i32, i32* %9, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @CR_RANGE(i32 %42)
  store i32 %43, i32* %13, align 4
  %44 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @boardtype, i32 0, i32 0), align 4
  %45 = load i32, i32* @ni_reg_6xxx_mask, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %81

48:                                               ; preds = %35
  %49 = load i16, i16* %11, align 2
  %50 = sext i16 %49 to i32
  %51 = and i32 %50, 65535
  %52 = trunc i32 %51 to i16
  store i16 %52, i16* %12, align 2
  %53 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @boardtype, i32 0, i32 0), align 4
  %54 = load i32, i32* @ni_reg_6711, align 4
  %55 = icmp ne i32 %53, %54
  br i1 %55, label %56, label %77

56:                                               ; preds = %48
  %57 = load %struct.comedi_async*, %struct.comedi_async** %7, align 8
  %58 = call i32 @comedi_buf_get(%struct.comedi_async* %57, i16* %11)
  %59 = load i32, i32* %14, align 4
  %60 = and i32 %59, %58
  store i32 %60, i32* %14, align 4
  %61 = load i32, i32* %14, align 4
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %56
  br label %96

64:                                               ; preds = %56
  %65 = load i32, i32* %9, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %9, align 4
  %67 = load i32, i32* %10, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %10, align 4
  %69 = load i16, i16* %11, align 2
  %70 = sext i16 %69 to i32
  %71 = shl i32 %70, 16
  %72 = and i32 %71, -65536
  %73 = load i16, i16* %12, align 2
  %74 = sext i16 %73 to i32
  %75 = or i32 %74, %72
  %76 = trunc i32 %75 to i16
  store i16 %76, i16* %12, align 2
  br label %77

77:                                               ; preds = %64, %48
  %78 = load i16, i16* %12, align 2
  %79 = load i32, i32* @DAC_FIFO_Data_611x, align 4
  %80 = call i32 @ni_writel(i16 signext %78, i32 %79)
  br label %85

81:                                               ; preds = %35
  %82 = load i16, i16* %11, align 2
  %83 = load i32, i32* @DAC_FIFO_Data, align 4
  %84 = call i32 @ni_writew(i16 signext %82, i32 %83)
  br label %85

85:                                               ; preds = %81, %77
  %86 = load i32, i32* %9, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %9, align 4
  %88 = load %struct.comedi_cmd*, %struct.comedi_cmd** %8, align 8
  %89 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = load i32, i32* %9, align 4
  %92 = srem i32 %91, %90
  store i32 %92, i32* %9, align 4
  br label %93

93:                                               ; preds = %85
  %94 = load i32, i32* %10, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %10, align 4
  br label %23

96:                                               ; preds = %63, %34, %23
  %97 = load i32, i32* %9, align 4
  %98 = load %struct.comedi_async*, %struct.comedi_async** %7, align 8
  %99 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %98, i32 0, i32 0
  store i32 %97, i32* %99, align 8
  %100 = load i32, i32* %14, align 4
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %102, label %108

102:                                              ; preds = %96
  %103 = load i32, i32* @COMEDI_CB_OVERFLOW, align 4
  %104 = load %struct.comedi_async*, %struct.comedi_async** %7, align 8
  %105 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = or i32 %106, %103
  store i32 %107, i32* %105, align 4
  br label %108

108:                                              ; preds = %102, %96
  ret void
}

declare dso_local i32 @comedi_buf_get(%struct.comedi_async*, i16*) #1

declare dso_local i32 @CR_RANGE(i32) #1

declare dso_local i32 @ni_writel(i16 signext, i32) #1

declare dso_local i32 @ni_writew(i16 signext, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
