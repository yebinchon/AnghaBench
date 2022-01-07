; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_ni_tiocmd.c_ni_tio_cmd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_ni_tiocmd.c_ni_tio_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ni_gpct = type { i32, i32* }
%struct.comedi_async = type { %struct.comedi_cmd }
%struct.comedi_cmd = type { i32 }

@.str = private unnamed_addr constant [91 x i8] c"ni_tio: commands only supported with DMA.  Interrupt-driven commands not yet implemented.\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@CMDF_WRITE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ni_tio_cmd(%struct.ni_gpct* %0, %struct.comedi_async* %1) #0 {
  %3 = alloca %struct.ni_gpct*, align 8
  %4 = alloca %struct.comedi_async*, align 8
  %5 = alloca %struct.comedi_cmd*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.ni_gpct* %0, %struct.ni_gpct** %3, align 8
  store %struct.comedi_async* %1, %struct.comedi_async** %4, align 8
  %8 = load %struct.comedi_async*, %struct.comedi_async** %4, align 8
  %9 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %8, i32 0, i32 0
  store %struct.comedi_cmd* %9, %struct.comedi_cmd** %5, align 8
  store i32 0, i32* %6, align 4
  %10 = load %struct.ni_gpct*, %struct.ni_gpct** %3, align 8
  %11 = getelementptr inbounds %struct.ni_gpct, %struct.ni_gpct* %10, i32 0, i32 0
  %12 = load i64, i64* %7, align 8
  %13 = call i32 @spin_lock_irqsave(i32* %11, i64 %12)
  %14 = load %struct.ni_gpct*, %struct.ni_gpct** %3, align 8
  %15 = getelementptr inbounds %struct.ni_gpct, %struct.ni_gpct* %14, i32 0, i32 1
  %16 = load i32*, i32** %15, align 8
  %17 = icmp eq i32* %16, null
  br i1 %17, label %18, label %22

18:                                               ; preds = %2
  %19 = call i32 @printk(i8* getelementptr inbounds ([91 x i8], [91 x i8]* @.str, i64 0, i64 0))
  %20 = load i32, i32* @EIO, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %6, align 4
  br label %45

22:                                               ; preds = %2
  %23 = load %struct.ni_gpct*, %struct.ni_gpct** %3, align 8
  %24 = load %struct.comedi_async*, %struct.comedi_async** %4, align 8
  %25 = call i32 @ni_tio_cmd_setup(%struct.ni_gpct* %23, %struct.comedi_async* %24)
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* %6, align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %44

28:                                               ; preds = %22
  %29 = load %struct.comedi_cmd*, %struct.comedi_cmd** %5, align 8
  %30 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @CMDF_WRITE, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %28
  %36 = load %struct.ni_gpct*, %struct.ni_gpct** %3, align 8
  %37 = load %struct.comedi_async*, %struct.comedi_async** %4, align 8
  %38 = call i32 @ni_tio_output_cmd(%struct.ni_gpct* %36, %struct.comedi_async* %37)
  store i32 %38, i32* %6, align 4
  br label %43

39:                                               ; preds = %28
  %40 = load %struct.ni_gpct*, %struct.ni_gpct** %3, align 8
  %41 = load %struct.comedi_async*, %struct.comedi_async** %4, align 8
  %42 = call i32 @ni_tio_input_cmd(%struct.ni_gpct* %40, %struct.comedi_async* %41)
  store i32 %42, i32* %6, align 4
  br label %43

43:                                               ; preds = %39, %35
  br label %44

44:                                               ; preds = %43, %22
  br label %45

45:                                               ; preds = %44, %18
  %46 = load %struct.ni_gpct*, %struct.ni_gpct** %3, align 8
  %47 = getelementptr inbounds %struct.ni_gpct, %struct.ni_gpct* %46, i32 0, i32 0
  %48 = load i64, i64* %7, align 8
  %49 = call i32 @spin_unlock_irqrestore(i32* %47, i64 %48)
  %50 = load i32, i32* %6, align 4
  ret i32 %50
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @printk(i8*) #1

declare dso_local i32 @ni_tio_cmd_setup(%struct.ni_gpct*, %struct.comedi_async*) #1

declare dso_local i32 @ni_tio_output_cmd(%struct.ni_gpct*, %struct.comedi_async*) #1

declare dso_local i32 @ni_tio_input_cmd(%struct.ni_gpct*, %struct.comedi_async*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
