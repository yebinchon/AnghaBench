; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_mite.c_mite_sync_output_dma.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_mite.c_mite_sync_output_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mite_channel = type { i32 }
%struct.comedi_async = type { i32, i32, i32, %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32, i64 }

@TRIG_COUNT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [20 x i8] c"mite: DMA underrun\0A\00", align 1
@COMEDI_CB_OVERFLOW = common dso_local global i32 0, align 4
@COMEDI_CB_BLOCK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mite_sync_output_dma(%struct.mite_channel* %0, %struct.comedi_async* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mite_channel*, align 8
  %5 = alloca %struct.comedi_async*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.mite_channel* %0, %struct.mite_channel** %4, align 8
  store %struct.comedi_async* %1, %struct.comedi_async** %5, align 8
  %11 = load %struct.comedi_async*, %struct.comedi_async** %5, align 8
  %12 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %11, i32 0, i32 3
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load %struct.comedi_async*, %struct.comedi_async** %5, align 8
  %16 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %15, i32 0, i32 5
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @cfc_bytes_per_scan(i32 %17)
  %19 = mul i32 %14, %18
  store i32 %19, i32* %10, align 4
  %20 = load %struct.comedi_async*, %struct.comedi_async** %5, align 8
  %21 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  store i32 %22, i32* %9, align 4
  %23 = load %struct.comedi_async*, %struct.comedi_async** %5, align 8
  %24 = load %struct.comedi_async*, %struct.comedi_async** %5, align 8
  %25 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %24, i32 0, i32 4
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @comedi_buf_read_alloc(%struct.comedi_async* %23, i32 %26)
  %28 = load %struct.mite_channel*, %struct.mite_channel** %4, align 8
  %29 = call i32 @mite_bytes_read_from_memory_lb(%struct.mite_channel* %28)
  store i32 %29, i32* %8, align 4
  %30 = load %struct.comedi_async*, %struct.comedi_async** %5, align 8
  %31 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %30, i32 0, i32 3
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @TRIG_COUNT, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %43

36:                                               ; preds = %2
  %37 = load i32, i32* %8, align 4
  %38 = load i32, i32* %10, align 4
  %39 = sub i32 %37, %38
  %40 = icmp sgt i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %36
  %42 = load i32, i32* %10, align 4
  store i32 %42, i32* %8, align 4
  br label %43

43:                                               ; preds = %41, %36, %2
  %44 = load %struct.mite_channel*, %struct.mite_channel** %4, align 8
  %45 = call i32 @mite_bytes_read_from_memory_ub(%struct.mite_channel* %44)
  store i32 %45, i32* %7, align 4
  %46 = load %struct.comedi_async*, %struct.comedi_async** %5, align 8
  %47 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %46, i32 0, i32 3
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @TRIG_COUNT, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %59

52:                                               ; preds = %43
  %53 = load i32, i32* %7, align 4
  %54 = load i32, i32* %10, align 4
  %55 = sub i32 %53, %54
  %56 = icmp sgt i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %52
  %58 = load i32, i32* %10, align 4
  store i32 %58, i32* %7, align 4
  br label %59

59:                                               ; preds = %57, %52, %43
  %60 = load i32, i32* %7, align 4
  %61 = load i32, i32* %9, align 4
  %62 = sub i32 %60, %61
  %63 = icmp sgt i32 %62, 0
  br i1 %63, label %64, label %71

64:                                               ; preds = %59
  %65 = call i32 @printk(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %66 = load i32, i32* @COMEDI_CB_OVERFLOW, align 4
  %67 = load %struct.comedi_async*, %struct.comedi_async** %5, align 8
  %68 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 8
  %70 = or i32 %69, %66
  store i32 %70, i32* %68, align 8
  store i32 -1, i32* %3, align 4
  br label %93

71:                                               ; preds = %59
  %72 = load i32, i32* %8, align 4
  %73 = load %struct.comedi_async*, %struct.comedi_async** %5, align 8
  %74 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = sub i32 %72, %75
  store i32 %76, i32* %6, align 4
  %77 = load i32, i32* %6, align 4
  %78 = icmp sle i32 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %71
  store i32 0, i32* %3, align 4
  br label %93

80:                                               ; preds = %71
  %81 = load i32, i32* %6, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %92

83:                                               ; preds = %80
  %84 = load %struct.comedi_async*, %struct.comedi_async** %5, align 8
  %85 = load i32, i32* %6, align 4
  %86 = call i32 @comedi_buf_read_free(%struct.comedi_async* %84, i32 %85)
  %87 = load i32, i32* @COMEDI_CB_BLOCK, align 4
  %88 = load %struct.comedi_async*, %struct.comedi_async** %5, align 8
  %89 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 8
  %91 = or i32 %90, %87
  store i32 %91, i32* %89, align 8
  br label %92

92:                                               ; preds = %83, %80
  store i32 0, i32* %3, align 4
  br label %93

93:                                               ; preds = %92, %79, %64
  %94 = load i32, i32* %3, align 4
  ret i32 %94
}

declare dso_local i32 @cfc_bytes_per_scan(i32) #1

declare dso_local i32 @comedi_buf_read_alloc(%struct.comedi_async*, i32) #1

declare dso_local i32 @mite_bytes_read_from_memory_lb(%struct.mite_channel*) #1

declare dso_local i32 @mite_bytes_read_from_memory_ub(%struct.mite_channel*) #1

declare dso_local i32 @printk(i8*) #1

declare dso_local i32 @comedi_buf_read_free(%struct.comedi_async*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
