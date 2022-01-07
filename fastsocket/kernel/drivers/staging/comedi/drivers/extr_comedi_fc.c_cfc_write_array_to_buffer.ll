; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_comedi_fc.c_cfc_write_array_to_buffer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_comedi_fc.c_cfc_write_array_to_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_subdevice = type { %struct.comedi_async* }
%struct.comedi_async = type { i32 }

@.str = private unnamed_addr constant [24 x i8] c"comedi: buffer overrun\0A\00", align 1
@COMEDI_CB_OVERFLOW = common dso_local global i32 0, align 4
@COMEDI_CB_BLOCK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cfc_write_array_to_buffer(%struct.comedi_subdevice* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.comedi_subdevice*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.comedi_async*, align 8
  %9 = alloca i32, align 4
  store %struct.comedi_subdevice* %0, %struct.comedi_subdevice** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %5, align 8
  %11 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %10, i32 0, i32 0
  %12 = load %struct.comedi_async*, %struct.comedi_async** %11, align 8
  store %struct.comedi_async* %12, %struct.comedi_async** %8, align 8
  %13 = load i32, i32* %7, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %47

16:                                               ; preds = %3
  %17 = load %struct.comedi_async*, %struct.comedi_async** %8, align 8
  %18 = load i32, i32* %7, align 4
  %19 = call i32 @comedi_buf_write_alloc(%struct.comedi_async* %17, i32 %18)
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* %9, align 4
  %21 = load i32, i32* %7, align 4
  %22 = icmp ne i32 %20, %21
  br i1 %22, label %23, label %30

23:                                               ; preds = %16
  %24 = call i32 @printk(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %25 = load i32, i32* @COMEDI_CB_OVERFLOW, align 4
  %26 = load %struct.comedi_async*, %struct.comedi_async** %8, align 8
  %27 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = or i32 %28, %25
  store i32 %29, i32* %27, align 4
  store i32 0, i32* %4, align 4
  br label %47

30:                                               ; preds = %16
  %31 = load %struct.comedi_async*, %struct.comedi_async** %8, align 8
  %32 = load i8*, i8** %6, align 8
  %33 = load i32, i32* %7, align 4
  %34 = call i32 @comedi_buf_memcpy_to(%struct.comedi_async* %31, i32 0, i8* %32, i32 %33)
  %35 = load %struct.comedi_async*, %struct.comedi_async** %8, align 8
  %36 = load i32, i32* %7, align 4
  %37 = call i32 @comedi_buf_write_free(%struct.comedi_async* %35, i32 %36)
  %38 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %5, align 8
  %39 = load i32, i32* %7, align 4
  %40 = call i32 @increment_scan_progress(%struct.comedi_subdevice* %38, i32 %39)
  %41 = load i32, i32* @COMEDI_CB_BLOCK, align 4
  %42 = load %struct.comedi_async*, %struct.comedi_async** %8, align 8
  %43 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = or i32 %44, %41
  store i32 %45, i32* %43, align 4
  %46 = load i32, i32* %7, align 4
  store i32 %46, i32* %4, align 4
  br label %47

47:                                               ; preds = %30, %23, %15
  %48 = load i32, i32* %4, align 4
  ret i32 %48
}

declare dso_local i32 @comedi_buf_write_alloc(%struct.comedi_async*, i32) #1

declare dso_local i32 @printk(i8*) #1

declare dso_local i32 @comedi_buf_memcpy_to(%struct.comedi_async*, i32, i8*, i32) #1

declare dso_local i32 @comedi_buf_write_free(%struct.comedi_async*, i32) #1

declare dso_local i32 @increment_scan_progress(%struct.comedi_subdevice*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
