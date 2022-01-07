; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_dt3000.c_dt3k_writesingle.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_dt3000.c_dt3k_writesingle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }
%struct.comedi_device = type { i32 }

@devpriv = common dso_local global %struct.TYPE_2__* null, align 8
@DPR_SubSys = common dso_local global i64 0, align 8
@CMD_WRITESINGLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.comedi_device*, i32, i32, i32)* @dt3k_writesingle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dt3k_writesingle(%struct.comedi_device* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.comedi_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %9 = load i32, i32* %6, align 4
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @DPR_SubSys, align 8
  %14 = add nsw i64 %12, %13
  %15 = call i32 @writew(i32 %9, i64 %14)
  %16 = load i32, i32* %7, align 4
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = call i64 @DPR_Params(i32 0)
  %21 = add nsw i64 %19, %20
  %22 = call i32 @writew(i32 %16, i64 %21)
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = call i64 @DPR_Params(i32 1)
  %27 = add nsw i64 %25, %26
  %28 = call i32 @writew(i32 0, i64 %27)
  %29 = load i32, i32* %8, align 4
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = call i64 @DPR_Params(i32 2)
  %34 = add nsw i64 %32, %33
  %35 = call i32 @writew(i32 %29, i64 %34)
  %36 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %37 = load i32, i32* @CMD_WRITESINGLE, align 4
  %38 = call i32 @dt3k_send_cmd(%struct.comedi_device* %36, i32 %37)
  ret void
}

declare dso_local i32 @writew(i32, i64) #1

declare dso_local i64 @DPR_Params(i32) #1

declare dso_local i32 @dt3k_send_cmd(%struct.comedi_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
