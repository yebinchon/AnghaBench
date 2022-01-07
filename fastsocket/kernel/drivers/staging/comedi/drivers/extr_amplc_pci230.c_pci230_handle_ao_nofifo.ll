; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_amplc_pci230.c_pci230_handle_ao_nofifo.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_amplc_pci230.c_pci230_handle_ao_nofifo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i32 }
%struct.comedi_device = type { i32 }
%struct.comedi_subdevice = type { %struct.comedi_async* }
%struct.comedi_async = type { i32, %struct.comedi_cmd }
%struct.comedi_cmd = type { i32, i32* }

@devpriv = common dso_local global %struct.TYPE_2__* null, align 8
@COMEDI_CB_OVERFLOW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"AO buffer underrun\00", align 1
@COMEDI_CB_BLOCK = common dso_local global i32 0, align 4
@COMEDI_CB_EOS = common dso_local global i32 0, align 4
@COMEDI_CB_EOA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.comedi_device*, %struct.comedi_subdevice*)* @pci230_handle_ao_nofifo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pci230_handle_ao_nofifo(%struct.comedi_device* %0, %struct.comedi_subdevice* %1) #0 {
  %3 = alloca %struct.comedi_device*, align 8
  %4 = alloca %struct.comedi_subdevice*, align 8
  %5 = alloca i16, align 2
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.comedi_async*, align 8
  %9 = alloca %struct.comedi_cmd*, align 8
  store %struct.comedi_device* %0, %struct.comedi_device** %3, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %4, align 8
  %10 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %4, align 8
  %11 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %10, i32 0, i32 0
  %12 = load %struct.comedi_async*, %struct.comedi_async** %11, align 8
  store %struct.comedi_async* %12, %struct.comedi_async** %8, align 8
  %13 = load %struct.comedi_async*, %struct.comedi_async** %8, align 8
  %14 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %13, i32 0, i32 1
  store %struct.comedi_cmd* %14, %struct.comedi_cmd** %9, align 8
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %25, label %19

19:                                               ; preds = %2
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %19
  br label %98

25:                                               ; preds = %19, %2
  store i32 0, i32* %6, align 4
  br label %26

26:                                               ; preds = %64, %25
  %27 = load i32, i32* %6, align 4
  %28 = load %struct.comedi_cmd*, %struct.comedi_cmd** %9, align 8
  %29 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp slt i32 %27, %30
  br i1 %31, label %32, label %67

32:                                               ; preds = %26
  %33 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %4, align 8
  %34 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %33, i32 0, i32 0
  %35 = load %struct.comedi_async*, %struct.comedi_async** %34, align 8
  %36 = call i32 @comedi_buf_get(%struct.comedi_async* %35, i16* %5)
  store i32 %36, i32* %7, align 4
  %37 = load i32, i32* %7, align 4
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %52

39:                                               ; preds = %32
  %40 = load i32, i32* @COMEDI_CB_OVERFLOW, align 4
  %41 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %4, align 8
  %42 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %41, i32 0, i32 0
  %43 = load %struct.comedi_async*, %struct.comedi_async** %42, align 8
  %44 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = or i32 %45, %40
  store i32 %46, i32* %44, align 8
  %47 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %48 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %4, align 8
  %49 = call i32 @pci230_ao_stop(%struct.comedi_device* %47, %struct.comedi_subdevice* %48)
  %50 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %51 = call i32 @comedi_error(%struct.comedi_device* %50, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  br label %98

52:                                               ; preds = %32
  %53 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %54 = load i16, i16* %5, align 2
  %55 = load %struct.comedi_cmd*, %struct.comedi_cmd** %9, align 8
  %56 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %55, i32 0, i32 1
  %57 = load i32*, i32** %56, align 8
  %58 = load i32, i32* %6, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %57, i64 %59
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @CR_CHAN(i32 %61)
  %63 = call i32 @pci230_ao_write_nofifo(%struct.comedi_device* %53, i16 signext %54, i32 %62)
  br label %64

64:                                               ; preds = %52
  %65 = load i32, i32* %6, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %6, align 4
  br label %26

67:                                               ; preds = %26
  %68 = load i32, i32* @COMEDI_CB_BLOCK, align 4
  %69 = load i32, i32* @COMEDI_CB_EOS, align 4
  %70 = or i32 %68, %69
  %71 = load %struct.comedi_async*, %struct.comedi_async** %8, align 8
  %72 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = or i32 %73, %70
  store i32 %74, i32* %72, align 8
  %75 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 8
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %98, label %79

79:                                               ; preds = %67
  %80 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = add nsw i64 %82, -1
  store i64 %83, i64* %81, align 8
  %84 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = icmp eq i64 %86, 0
  br i1 %87, label %88, label %97

88:                                               ; preds = %79
  %89 = load i32, i32* @COMEDI_CB_EOA, align 4
  %90 = load %struct.comedi_async*, %struct.comedi_async** %8, align 8
  %91 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = or i32 %92, %89
  store i32 %93, i32* %91, align 8
  %94 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %95 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %4, align 8
  %96 = call i32 @pci230_ao_stop(%struct.comedi_device* %94, %struct.comedi_subdevice* %95)
  br label %97

97:                                               ; preds = %88, %79
  br label %98

98:                                               ; preds = %24, %39, %97, %67
  ret void
}

declare dso_local i32 @comedi_buf_get(%struct.comedi_async*, i16*) #1

declare dso_local i32 @pci230_ao_stop(%struct.comedi_device*, %struct.comedi_subdevice*) #1

declare dso_local i32 @comedi_error(%struct.comedi_device*, i8*) #1

declare dso_local i32 @pci230_ao_write_nofifo(%struct.comedi_device*, i16 signext, i32) #1

declare dso_local i32 @CR_CHAN(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
