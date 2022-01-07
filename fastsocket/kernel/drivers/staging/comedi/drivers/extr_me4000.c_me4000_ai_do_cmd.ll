; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_me4000.c_me4000_ai_do_cmd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_me4000.c_me4000_ai_do_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.comedi_device = type { i32 }
%struct.comedi_subdevice = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.comedi_cmd }
%struct.comedi_cmd = type { i32 }

@.str = private unnamed_addr constant [23 x i8] c"In me4000_ai_do_cmd()\0A\00", align 1
@info = common dso_local global %struct.TYPE_6__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*)* @me4000_ai_do_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @me4000_ai_do_cmd(%struct.comedi_device* %0, %struct.comedi_subdevice* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.comedi_device*, align 8
  %5 = alloca %struct.comedi_subdevice*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.comedi_cmd*, align 8
  store %struct.comedi_device* %0, %struct.comedi_device** %4, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %5, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %11 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %5, align 8
  %12 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %11, i32 0, i32 0
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  store %struct.comedi_cmd* %14, %struct.comedi_cmd** %10, align 8
  %15 = call i32 @CALL_PDEBUG(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %16 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %17 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %5, align 8
  %18 = call i32 @me4000_ai_cancel(%struct.comedi_device* %16, %struct.comedi_subdevice* %17)
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %2
  %22 = load i32, i32* %6, align 4
  store i32 %22, i32* %3, align 4
  br label %51

23:                                               ; preds = %2
  %24 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %25 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %5, align 8
  %26 = load %struct.comedi_cmd*, %struct.comedi_cmd** %10, align 8
  %27 = call i32 @ai_round_cmd_args(%struct.comedi_device* %24, %struct.comedi_subdevice* %25, %struct.comedi_cmd* %26, i32* %7, i32* %8, i32* %9)
  store i32 %27, i32* %6, align 4
  %28 = load i32, i32* %6, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %23
  %31 = load i32, i32* %6, align 4
  store i32 %31, i32* %3, align 4
  br label %51

32:                                               ; preds = %23
  %33 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %34 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %5, align 8
  %35 = load %struct.comedi_cmd*, %struct.comedi_cmd** %10, align 8
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* %8, align 4
  %38 = load i32, i32* %9, align 4
  %39 = call i32 @ai_prepare(%struct.comedi_device* %33, %struct.comedi_subdevice* %34, %struct.comedi_cmd* %35, i32 %36, i32 %37, i32 %38)
  store i32 %39, i32* %6, align 4
  %40 = load i32, i32* %6, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %32
  %43 = load i32, i32* %6, align 4
  store i32 %43, i32* %3, align 4
  br label %51

44:                                               ; preds = %32
  %45 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** @info, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @me4000_inl(%struct.comedi_device* %45, i32 %49)
  store i32 0, i32* %3, align 4
  br label %51

51:                                               ; preds = %44, %42, %30, %21
  %52 = load i32, i32* %3, align 4
  ret i32 %52
}

declare dso_local i32 @CALL_PDEBUG(i8*) #1

declare dso_local i32 @me4000_ai_cancel(%struct.comedi_device*, %struct.comedi_subdevice*) #1

declare dso_local i32 @ai_round_cmd_args(%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_cmd*, i32*, i32*, i32*) #1

declare dso_local i32 @ai_prepare(%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_cmd*, i32, i32, i32) #1

declare dso_local i32 @me4000_inl(%struct.comedi_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
