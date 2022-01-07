; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_ni_tiocmd.c_ni_tio_input_cmd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_ni_tiocmd.c_ni_tio_input_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ni_gpct = type { %struct.TYPE_3__*, i32, %struct.ni_gpct_device* }
%struct.TYPE_3__ = type { i32 }
%struct.ni_gpct_device = type { i32 }
%struct.comedi_async = type { i32*, i32, %struct.comedi_cmd }
%struct.comedi_cmd = type { i32, i32 }

@COMEDI_INPUT = common dso_local global i32 0, align 4
@Gi_Save_Trace_Bit = common dso_local global i32 0, align 4
@NI_GPCT_ARM_IMMEDIATE = common dso_local global i32 0, align 4
@ni_tio_input_inttrig = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ni_gpct*, %struct.comedi_async*)* @ni_tio_input_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ni_tio_input_cmd(%struct.ni_gpct* %0, %struct.comedi_async* %1) #0 {
  %3 = alloca %struct.ni_gpct*, align 8
  %4 = alloca %struct.comedi_async*, align 8
  %5 = alloca %struct.ni_gpct_device*, align 8
  %6 = alloca %struct.comedi_cmd*, align 8
  %7 = alloca i32, align 4
  store %struct.ni_gpct* %0, %struct.ni_gpct** %3, align 8
  store %struct.comedi_async* %1, %struct.comedi_async** %4, align 8
  %8 = load %struct.ni_gpct*, %struct.ni_gpct** %3, align 8
  %9 = getelementptr inbounds %struct.ni_gpct, %struct.ni_gpct* %8, i32 0, i32 2
  %10 = load %struct.ni_gpct_device*, %struct.ni_gpct_device** %9, align 8
  store %struct.ni_gpct_device* %10, %struct.ni_gpct_device** %5, align 8
  %11 = load %struct.comedi_async*, %struct.comedi_async** %4, align 8
  %12 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %11, i32 0, i32 2
  store %struct.comedi_cmd* %12, %struct.comedi_cmd** %6, align 8
  store i32 0, i32* %7, align 4
  %13 = load %struct.comedi_async*, %struct.comedi_async** %4, align 8
  %14 = load %struct.comedi_async*, %struct.comedi_async** %4, align 8
  %15 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @comedi_buf_write_alloc(%struct.comedi_async* %13, i32 %16)
  %18 = load i32, i32* @COMEDI_INPUT, align 4
  %19 = load %struct.ni_gpct*, %struct.ni_gpct** %3, align 8
  %20 = getelementptr inbounds %struct.ni_gpct, %struct.ni_gpct* %19, i32 0, i32 0
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  store i32 %18, i32* %22, align 4
  %23 = load %struct.ni_gpct_device*, %struct.ni_gpct_device** %5, align 8
  %24 = getelementptr inbounds %struct.ni_gpct_device, %struct.ni_gpct_device* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  switch i32 %25, label %36 [
    i32 128, label %26
    i32 130, label %26
    i32 129, label %31
  ]

26:                                               ; preds = %2, %2
  %27 = load %struct.ni_gpct*, %struct.ni_gpct** %3, align 8
  %28 = getelementptr inbounds %struct.ni_gpct, %struct.ni_gpct* %27, i32 0, i32 0
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %28, align 8
  %30 = call i32 @mite_prep_dma(%struct.TYPE_3__* %29, i32 32, i32 32)
  br label %38

31:                                               ; preds = %2
  %32 = load %struct.ni_gpct*, %struct.ni_gpct** %3, align 8
  %33 = getelementptr inbounds %struct.ni_gpct, %struct.ni_gpct* %32, i32 0, i32 0
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %33, align 8
  %35 = call i32 @mite_prep_dma(%struct.TYPE_3__* %34, i32 16, i32 32)
  br label %38

36:                                               ; preds = %2
  %37 = call i32 (...) @BUG()
  br label %38

38:                                               ; preds = %36, %31, %26
  %39 = load %struct.ni_gpct*, %struct.ni_gpct** %3, align 8
  %40 = load %struct.ni_gpct*, %struct.ni_gpct** %3, align 8
  %41 = getelementptr inbounds %struct.ni_gpct, %struct.ni_gpct* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @NITIO_Gi_Command_Reg(i32 %42)
  %44 = load i32, i32* @Gi_Save_Trace_Bit, align 4
  %45 = call i32 @ni_tio_set_bits(%struct.ni_gpct* %39, i32 %43, i32 %44, i32 0)
  %46 = load %struct.ni_gpct*, %struct.ni_gpct** %3, align 8
  %47 = call i32 @ni_tio_configure_dma(%struct.ni_gpct* %46, i32 1, i32 1)
  %48 = load %struct.comedi_cmd*, %struct.comedi_cmd** %6, align 8
  %49 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  switch i32 %50, label %83 [
    i32 132, label %51
    i32 133, label %61
    i32 134, label %64
    i32 131, label %76
  ]

51:                                               ; preds = %38
  %52 = load %struct.comedi_async*, %struct.comedi_async** %4, align 8
  %53 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %52, i32 0, i32 0
  store i32* null, i32** %53, align 8
  %54 = load %struct.ni_gpct*, %struct.ni_gpct** %3, align 8
  %55 = getelementptr inbounds %struct.ni_gpct, %struct.ni_gpct* %54, i32 0, i32 0
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %55, align 8
  %57 = call i32 @mite_dma_arm(%struct.TYPE_3__* %56)
  %58 = load %struct.ni_gpct*, %struct.ni_gpct** %3, align 8
  %59 = load i32, i32* @NI_GPCT_ARM_IMMEDIATE, align 4
  %60 = call i32 @ni_tio_arm(%struct.ni_gpct* %58, i32 1, i32 %59)
  store i32 %60, i32* %7, align 4
  br label %85

61:                                               ; preds = %38
  %62 = load %struct.comedi_async*, %struct.comedi_async** %4, align 8
  %63 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %62, i32 0, i32 0
  store i32* @ni_tio_input_inttrig, i32** %63, align 8
  br label %85

64:                                               ; preds = %38
  %65 = load %struct.comedi_async*, %struct.comedi_async** %4, align 8
  %66 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %65, i32 0, i32 0
  store i32* null, i32** %66, align 8
  %67 = load %struct.ni_gpct*, %struct.ni_gpct** %3, align 8
  %68 = getelementptr inbounds %struct.ni_gpct, %struct.ni_gpct* %67, i32 0, i32 0
  %69 = load %struct.TYPE_3__*, %struct.TYPE_3__** %68, align 8
  %70 = call i32 @mite_dma_arm(%struct.TYPE_3__* %69)
  %71 = load %struct.ni_gpct*, %struct.ni_gpct** %3, align 8
  %72 = load %struct.comedi_cmd*, %struct.comedi_cmd** %6, align 8
  %73 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @ni_tio_arm(%struct.ni_gpct* %71, i32 1, i32 %74)
  store i32 %75, i32* %7, align 4
  br label %76

76:                                               ; preds = %38, %64
  %77 = load %struct.comedi_async*, %struct.comedi_async** %4, align 8
  %78 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %77, i32 0, i32 0
  store i32* null, i32** %78, align 8
  %79 = load %struct.ni_gpct*, %struct.ni_gpct** %3, align 8
  %80 = getelementptr inbounds %struct.ni_gpct, %struct.ni_gpct* %79, i32 0, i32 0
  %81 = load %struct.TYPE_3__*, %struct.TYPE_3__** %80, align 8
  %82 = call i32 @mite_dma_arm(%struct.TYPE_3__* %81)
  br label %85

83:                                               ; preds = %38
  %84 = call i32 (...) @BUG()
  br label %85

85:                                               ; preds = %83, %76, %61, %51
  %86 = load i32, i32* %7, align 4
  ret i32 %86
}

declare dso_local i32 @comedi_buf_write_alloc(%struct.comedi_async*, i32) #1

declare dso_local i32 @mite_prep_dma(%struct.TYPE_3__*, i32, i32) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @ni_tio_set_bits(%struct.ni_gpct*, i32, i32, i32) #1

declare dso_local i32 @NITIO_Gi_Command_Reg(i32) #1

declare dso_local i32 @ni_tio_configure_dma(%struct.ni_gpct*, i32, i32) #1

declare dso_local i32 @mite_dma_arm(%struct.TYPE_3__*) #1

declare dso_local i32 @ni_tio_arm(%struct.ni_gpct*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
