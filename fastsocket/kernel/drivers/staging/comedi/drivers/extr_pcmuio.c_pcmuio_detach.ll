; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_pcmuio.c_pcmuio_detach.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_pcmuio.c_pcmuio_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_8__ = type { i64, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64 }
%struct.comedi_device = type { i64, i32 }

@.str = private unnamed_addr constant [22 x i8] c"comedi%d: %s: remove\0A\00", align 1
@driver = common dso_local global %struct.TYPE_7__ zeroinitializer, align 4
@ASIC_IOSIZE = common dso_local global i32 0, align 4
@thisboard = common dso_local global %struct.TYPE_6__* null, align 8
@MAX_ASICS = common dso_local global i32 0, align 4
@devpriv = common dso_local global %struct.TYPE_8__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*)* @pcmuio_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcmuio_detach(%struct.comedi_device* %0) #0 {
  %2 = alloca %struct.comedi_device*, align 8
  %3 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %2, align 8
  %4 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %5 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %4, i32 0, i32 1
  %6 = load i32, i32* %5, align 8
  %7 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @driver, i32 0, i32 0), align 4
  %8 = call i32 @printk(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %6, i32 %7)
  %9 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %10 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %23

13:                                               ; preds = %1
  %14 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %15 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i32, i32* @ASIC_IOSIZE, align 4
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** @thisboard, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = mul nsw i32 %17, %20
  %22 = call i32 @release_region(i64 %16, i32 %21)
  br label %23

23:                                               ; preds = %13, %1
  store i32 0, i32* %3, align 4
  br label %24

24:                                               ; preds = %50, %23
  %25 = load i32, i32* %3, align 4
  %26 = load i32, i32* @MAX_ASICS, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %53

28:                                               ; preds = %24
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** @devpriv, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 1
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %30, align 8
  %32 = load i32, i32* %3, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %49

38:                                               ; preds = %28
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** @devpriv, align 8
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 1
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %40, align 8
  %42 = load i32, i32* %3, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %48 = call i32 @free_irq(i64 %46, %struct.comedi_device* %47)
  br label %49

49:                                               ; preds = %38, %28
  br label %50

50:                                               ; preds = %49
  %51 = load i32, i32* %3, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %3, align 4
  br label %24

53:                                               ; preds = %24
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** @devpriv, align 8
  %55 = icmp ne %struct.TYPE_8__* %54, null
  br i1 %55, label %56, label %66

56:                                               ; preds = %53
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** @devpriv, align 8
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %66

61:                                               ; preds = %56
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** @devpriv, align 8
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = call i32 @kfree(i64 %64)
  br label %66

66:                                               ; preds = %61, %56, %53
  ret i32 0
}

declare dso_local i32 @printk(i8*, i32, i32) #1

declare dso_local i32 @release_region(i64, i32) #1

declare dso_local i32 @free_irq(i64, %struct.comedi_device*) #1

declare dso_local i32 @kfree(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
