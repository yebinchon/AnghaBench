; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_ni_labpc.c_labpc_drain_dma.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_ni_labpc.c_labpc_drain_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i32, i32* }
%struct.comedi_device = type { %struct.comedi_subdevice* }
%struct.comedi_subdevice = type { %struct.comedi_async* }
%struct.comedi_async = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

@devpriv = common dso_local global %struct.TYPE_4__* null, align 8
@sample_size = common dso_local global i32 0, align 4
@TRIG_COUNT = common dso_local global i64 0, align 8
@COMEDI_CB_BLOCK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.comedi_device*)* @labpc_drain_dma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @labpc_drain_dma(%struct.comedi_device* %0) #0 {
  %2 = alloca %struct.comedi_device*, align 8
  %3 = alloca %struct.comedi_subdevice*, align 8
  %4 = alloca %struct.comedi_async*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %2, align 8
  %12 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %13 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %12, i32 0, i32 0
  %14 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %13, align 8
  store %struct.comedi_subdevice* %14, %struct.comedi_subdevice** %3, align 8
  %15 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %3, align 8
  %16 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %15, i32 0, i32 0
  %17 = load %struct.comedi_async*, %struct.comedi_async** %16, align 8
  store %struct.comedi_async* %17, %struct.comedi_async** %4, align 8
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  store i32 %20, i32* %5, align 4
  %21 = call i64 (...) @claim_dma_lock()
  store i64 %21, i64* %6, align 8
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @disable_dma(i32 %24)
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @clear_dma_ff(i32 %28)
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @sample_size, align 4
  %34 = udiv i32 %32, %33
  store i32 %34, i32* %7, align 4
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @get_dma_residue(i32 %37)
  %39 = load i32, i32* @sample_size, align 4
  %40 = udiv i32 %38, %39
  store i32 %40, i32* %9, align 4
  %41 = load i32, i32* %7, align 4
  %42 = load i32, i32* %9, align 4
  %43 = sub i32 %41, %42
  store i32 %43, i32* %8, align 4
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* %8, align 4
  %48 = icmp ult i32 %46, %47
  br i1 %48, label %49, label %60

49:                                               ; preds = %1
  %50 = load %struct.comedi_async*, %struct.comedi_async** %4, align 8
  %51 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @TRIG_COUNT, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %60

56:                                               ; preds = %49
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  store i32 %59, i32* %8, align 4
  br label %60

60:                                               ; preds = %56, %49, %1
  store i32 0, i32* %10, align 4
  %61 = load %struct.comedi_async*, %struct.comedi_async** %4, align 8
  %62 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @TRIG_COUNT, align 8
  %66 = icmp ne i64 %64, %65
  br i1 %66, label %67, label %73

67:                                               ; preds = %60
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @sample_size, align 4
  %72 = udiv i32 %70, %71
  store i32 %72, i32* %10, align 4
  br label %92

73:                                               ; preds = %60
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* %8, align 4
  %78 = icmp ugt i32 %76, %77
  br i1 %78, label %79, label %91

79:                                               ; preds = %73
  %80 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 8
  %83 = load i32, i32* %8, align 4
  %84 = sub i32 %82, %83
  store i32 %84, i32* %10, align 4
  %85 = load i32, i32* %10, align 4
  %86 = load i32, i32* %7, align 4
  %87 = icmp ugt i32 %85, %86
  br i1 %87, label %88, label %90

88:                                               ; preds = %79
  %89 = load i32, i32* %7, align 4
  store i32 %89, i32* %10, align 4
  br label %90

90:                                               ; preds = %88, %79
  br label %91

91:                                               ; preds = %90, %73
  br label %92

92:                                               ; preds = %91, %67
  store i32 0, i32* %11, align 4
  br label %93

93:                                               ; preds = %107, %92
  %94 = load i32, i32* %11, align 4
  %95 = load i32, i32* %8, align 4
  %96 = icmp ult i32 %94, %95
  br i1 %96, label %97, label %110

97:                                               ; preds = %93
  %98 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %3, align 8
  %99 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 4
  %101 = load i32*, i32** %100, align 8
  %102 = load i32, i32* %11, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i32, i32* %101, i64 %103
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @cfc_write_to_buffer(%struct.comedi_subdevice* %98, i32 %105)
  br label %107

107:                                              ; preds = %97
  %108 = load i32, i32* %11, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %11, align 4
  br label %93

110:                                              ; preds = %93
  %111 = load %struct.comedi_async*, %struct.comedi_async** %4, align 8
  %112 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %111, i32 0, i32 1
  %113 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = load i64, i64* @TRIG_COUNT, align 8
  %116 = icmp eq i64 %114, %115
  br i1 %116, label %117, label %123

117:                                              ; preds = %110
  %118 = load i32, i32* %8, align 4
  %119 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %119, i32 0, i32 2
  %121 = load i32, i32* %120, align 8
  %122 = sub i32 %121, %118
  store i32 %122, i32* %120, align 8
  br label %123

123:                                              ; preds = %117, %110
  %124 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %125 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %124, i32 0, i32 3
  %126 = load i32, i32* %125, align 4
  %127 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %128 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %127, i32 0, i32 4
  %129 = load i32*, i32** %128, align 8
  %130 = call i32 @virt_to_bus(i32* %129)
  %131 = call i32 @set_dma_addr(i32 %126, i32 %130)
  %132 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %133 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %132, i32 0, i32 3
  %134 = load i32, i32* %133, align 4
  %135 = load i32, i32* %10, align 4
  %136 = load i32, i32* @sample_size, align 4
  %137 = mul i32 %135, %136
  %138 = call i32 @set_dma_count(i32 %134, i32 %137)
  %139 = load i64, i64* %6, align 8
  %140 = call i32 @release_dma_lock(i64 %139)
  %141 = load i32, i32* @COMEDI_CB_BLOCK, align 4
  %142 = load %struct.comedi_async*, %struct.comedi_async** %4, align 8
  %143 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = or i32 %144, %141
  store i32 %145, i32* %143, align 8
  ret void
}

declare dso_local i64 @claim_dma_lock(...) #1

declare dso_local i32 @disable_dma(i32) #1

declare dso_local i32 @clear_dma_ff(i32) #1

declare dso_local i32 @get_dma_residue(i32) #1

declare dso_local i32 @cfc_write_to_buffer(%struct.comedi_subdevice*, i32) #1

declare dso_local i32 @set_dma_addr(i32, i32) #1

declare dso_local i32 @virt_to_bus(i32*) #1

declare dso_local i32 @set_dma_count(i32, i32) #1

declare dso_local i32 @release_dma_lock(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
