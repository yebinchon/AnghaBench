; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_pcmmio.c_pcmmio_stop_intr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_pcmmio.c_pcmmio_stop_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32, i32, i64, i64 }
%struct.TYPE_12__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i64 }
%struct.comedi_device = type { i32 }
%struct.comedi_subdevice = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64 }

@subpriv = common dso_local global %struct.TYPE_11__* null, align 8
@CHANS_PER_PORT = common dso_local global i32 0, align 4
@PAGE_ENAB = common dso_local global i32 0, align 4
@devpriv = common dso_local global %struct.TYPE_12__* null, align 8
@REG_ENAB0 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.comedi_device*, %struct.comedi_subdevice*)* @pcmmio_stop_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pcmmio_stop_intr(%struct.comedi_device* %0, %struct.comedi_subdevice* %1) #0 {
  %3 = alloca %struct.comedi_device*, align 8
  %4 = alloca %struct.comedi_subdevice*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %3, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %4, align 8
  %9 = load %struct.TYPE_11__*, %struct.TYPE_11__** @subpriv, align 8
  %10 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* %7, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  br label %73

17:                                               ; preds = %2
  %18 = load %struct.TYPE_11__*, %struct.TYPE_11__** @subpriv, align 8
  %19 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 4
  store i64 0, i64* %21, align 8
  %22 = load %struct.TYPE_11__*, %struct.TYPE_11__** @subpriv, align 8
  %23 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 3
  store i64 0, i64* %25, align 8
  %26 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %4, align 8
  %27 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %26, i32 0, i32 0
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 0
  store i64 0, i64* %29, align 8
  %30 = load %struct.TYPE_11__*, %struct.TYPE_11__** @subpriv, align 8
  %31 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @CHANS_PER_PORT, align 4
  %36 = sdiv i32 %34, %35
  store i32 %36, i32* %5, align 4
  %37 = load %struct.TYPE_11__*, %struct.TYPE_11__** @subpriv, align 8
  %38 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @CHANS_PER_PORT, align 4
  %43 = sdiv i32 %41, %42
  store i32 %43, i32* %6, align 4
  %44 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %45 = load i32, i32* %7, align 4
  %46 = load i32, i32* @PAGE_ENAB, align 4
  %47 = call i32 @switch_page(%struct.comedi_device* %44, i32 %45, i32 %46)
  %48 = load i32, i32* %6, align 4
  store i32 %48, i32* %8, align 4
  br label %49

49:                                               ; preds = %70, %17
  %50 = load i32, i32* %8, align 4
  %51 = load i32, i32* %6, align 4
  %52 = load i32, i32* %5, align 4
  %53 = add nsw i32 %51, %52
  %54 = icmp slt i32 %50, %53
  br i1 %54, label %55, label %73

55:                                               ; preds = %49
  %56 = load %struct.TYPE_12__*, %struct.TYPE_12__** @devpriv, align 8
  %57 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %56, i32 0, i32 0
  %58 = load %struct.TYPE_10__*, %struct.TYPE_10__** %57, align 8
  %59 = load i32, i32* %7, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %58, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @REG_ENAB0, align 8
  %65 = add nsw i64 %63, %64
  %66 = load i32, i32* %8, align 4
  %67 = sext i32 %66 to i64
  %68 = add nsw i64 %65, %67
  %69 = call i32 @outb(i32 0, i64 %68)
  br label %70

70:                                               ; preds = %55
  %71 = load i32, i32* %8, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %8, align 4
  br label %49

73:                                               ; preds = %16, %49
  ret void
}

declare dso_local i32 @switch_page(%struct.comedi_device*, i32, i32) #1

declare dso_local i32 @outb(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
