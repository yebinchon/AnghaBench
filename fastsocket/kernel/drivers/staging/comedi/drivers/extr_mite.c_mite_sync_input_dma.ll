; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_mite.c_mite_sync_input_dma.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_mite.c_mite_sync_input_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mite_channel = type { i32 }
%struct.comedi_async = type { i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [34 x i8] c"mite: DMA overwrite of free area\0A\00", align 1
@COMEDI_CB_OVERFLOW = common dso_local global i32 0, align 4
@COMEDI_CB_EOS = common dso_local global i32 0, align 4
@COMEDI_CB_BLOCK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mite_sync_input_dma(%struct.mite_channel* %0, %struct.comedi_async* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mite_channel*, align 8
  %5 = alloca %struct.comedi_async*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.mite_channel* %0, %struct.mite_channel** %4, align 8
  store %struct.comedi_async* %1, %struct.comedi_async** %5, align 8
  %10 = load %struct.comedi_async*, %struct.comedi_async** %5, align 8
  %11 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %10, i32 0, i32 5
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @cfc_bytes_per_scan(i32 %12)
  store i32 %13, i32* %9, align 4
  %14 = load %struct.comedi_async*, %struct.comedi_async** %5, align 8
  %15 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %8, align 4
  %17 = load %struct.comedi_async*, %struct.comedi_async** %5, align 8
  %18 = load %struct.comedi_async*, %struct.comedi_async** %5, align 8
  %19 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %18, i32 0, i32 4
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @comedi_buf_write_alloc(%struct.comedi_async* %17, i32 %20)
  %22 = load %struct.mite_channel*, %struct.mite_channel** %4, align 8
  %23 = call i32 @mite_bytes_written_to_memory_lb(%struct.mite_channel* %22)
  store i32 %23, i32* %7, align 4
  %24 = load %struct.mite_channel*, %struct.mite_channel** %4, align 8
  %25 = call i32 @mite_bytes_written_to_memory_ub(%struct.mite_channel* %24)
  %26 = load i32, i32* %8, align 4
  %27 = sub i32 %25, %26
  %28 = icmp sgt i32 %27, 0
  br i1 %28, label %29, label %36

29:                                               ; preds = %2
  %30 = call i32 @printk(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %31 = load i32, i32* @COMEDI_CB_OVERFLOW, align 4
  %32 = load %struct.comedi_async*, %struct.comedi_async** %5, align 8
  %33 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 4
  %35 = or i32 %34, %31
  store i32 %35, i32* %33, align 4
  store i32 -1, i32* %3, align 4
  br label %76

36:                                               ; preds = %2
  %37 = load i32, i32* %7, align 4
  %38 = load %struct.comedi_async*, %struct.comedi_async** %5, align 8
  %39 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = sub i32 %37, %40
  store i32 %41, i32* %6, align 4
  %42 = load i32, i32* %6, align 4
  %43 = icmp sle i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %36
  store i32 0, i32* %3, align 4
  br label %76

45:                                               ; preds = %36
  %46 = load %struct.comedi_async*, %struct.comedi_async** %5, align 8
  %47 = load i32, i32* %6, align 4
  %48 = call i32 @comedi_buf_write_free(%struct.comedi_async* %46, i32 %47)
  %49 = load i32, i32* %6, align 4
  %50 = load %struct.comedi_async*, %struct.comedi_async** %5, align 8
  %51 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = add nsw i32 %52, %49
  store i32 %53, i32* %51, align 4
  %54 = load %struct.comedi_async*, %struct.comedi_async** %5, align 8
  %55 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* %9, align 4
  %58 = icmp uge i32 %56, %57
  br i1 %58, label %59, label %70

59:                                               ; preds = %45
  %60 = load i32, i32* %9, align 4
  %61 = load %struct.comedi_async*, %struct.comedi_async** %5, align 8
  %62 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %64 = urem i32 %63, %60
  store i32 %64, i32* %62, align 4
  %65 = load i32, i32* @COMEDI_CB_EOS, align 4
  %66 = load %struct.comedi_async*, %struct.comedi_async** %5, align 8
  %67 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 4
  %69 = or i32 %68, %65
  store i32 %69, i32* %67, align 4
  br label %70

70:                                               ; preds = %59, %45
  %71 = load i32, i32* @COMEDI_CB_BLOCK, align 4
  %72 = load %struct.comedi_async*, %struct.comedi_async** %5, align 8
  %73 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %72, i32 0, i32 3
  %74 = load i32, i32* %73, align 4
  %75 = or i32 %74, %71
  store i32 %75, i32* %73, align 4
  store i32 0, i32* %3, align 4
  br label %76

76:                                               ; preds = %70, %44, %29
  %77 = load i32, i32* %3, align 4
  ret i32 %77
}

declare dso_local i32 @cfc_bytes_per_scan(i32) #1

declare dso_local i32 @comedi_buf_write_alloc(%struct.comedi_async*, i32) #1

declare dso_local i32 @mite_bytes_written_to_memory_lb(%struct.mite_channel*) #1

declare dso_local i32 @mite_bytes_written_to_memory_ub(%struct.mite_channel*) #1

declare dso_local i32 @printk(i8*) #1

declare dso_local i32 @comedi_buf_write_free(%struct.comedi_async*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
