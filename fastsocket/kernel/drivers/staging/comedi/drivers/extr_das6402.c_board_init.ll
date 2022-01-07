; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_das6402.c_board_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_das6402.c_board_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.comedi_device = type { i64 }

@devpriv = common dso_local global %struct.TYPE_2__* null, align 8
@MODE = common dso_local global i32 0, align 4
@BIP = common dso_local global i32 0, align 4
@SEM = common dso_local global i32 0, align 4
@GAIN = common dso_local global i32 0, align 4
@FIFOHFULL = common dso_local global i32 0, align 4
@EXTEND = common dso_local global i32 0, align 4
@MHZ = common dso_local global i32 0, align 4
@CLRINT = common dso_local global i32 0, align 4
@CLRXTR = common dso_local global i32 0, align 4
@CLRXIN = common dso_local global i32 0, align 4
@IRQ = common dso_local global i32 0, align 4
@CONVSRC = common dso_local global i32 0, align 4
@BURSTEN = common dso_local global i32 0, align 4
@INTE = common dso_local global i32 0, align 4
@TGSEL = common dso_local global i32 0, align 4
@TGEN = common dso_local global i32 0, align 4
@SCANL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*)* @board_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @board_init(%struct.comedi_device* %0) #0 {
  %2 = alloca %struct.comedi_device*, align 8
  %3 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %2, align 8
  %4 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %5 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %4, i32 0, i32 0
  store i32 1, i32* %5, align 4
  %6 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %7 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = add nsw i64 %8, 8
  %10 = call i32 @outb(i32 7, i64 %9)
  %11 = load i32, i32* @MODE, align 4
  %12 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %13 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = add nsw i64 %14, 11
  %16 = call i32 @outb_p(i32 %11, i64 %15)
  %17 = load i32, i32* @BIP, align 4
  %18 = load i32, i32* @SEM, align 4
  %19 = or i32 %17, %18
  %20 = load i32, i32* @MODE, align 4
  %21 = or i32 %19, %20
  %22 = load i32, i32* @GAIN, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* @FIFOHFULL, align 4
  %25 = or i32 %23, %24
  store i32 %25, i32* %3, align 4
  %26 = load i32, i32* %3, align 4
  %27 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %28 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = add nsw i64 %29, 11
  %31 = call i32 @outb_p(i32 %26, i64 %30)
  %32 = load i32, i32* @EXTEND, align 4
  %33 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %34 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = add nsw i64 %35, 8
  %37 = call i32 @outb_p(i32 %32, i64 %36)
  %38 = load i32, i32* @EXTEND, align 4
  %39 = load i32, i32* @MHZ, align 4
  %40 = or i32 %38, %39
  store i32 %40, i32* %3, align 4
  %41 = load i32, i32* %3, align 4
  %42 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %43 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = add nsw i64 %44, 8
  %46 = call i32 @outb_p(i32 %41, i64 %45)
  %47 = load i32, i32* @MHZ, align 4
  %48 = load i32, i32* @CLRINT, align 4
  %49 = or i32 %47, %48
  %50 = load i32, i32* @CLRXTR, align 4
  %51 = or i32 %49, %50
  %52 = load i32, i32* @CLRXIN, align 4
  %53 = or i32 %51, %52
  store i32 %53, i32* %3, align 4
  %54 = load i32, i32* %3, align 4
  %55 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %56 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = add nsw i64 %57, 8
  %59 = call i32 @outb_p(i32 %54, i64 %58)
  %60 = load i32, i32* @IRQ, align 4
  %61 = load i32, i32* @CONVSRC, align 4
  %62 = or i32 %60, %61
  %63 = load i32, i32* @BURSTEN, align 4
  %64 = or i32 %62, %63
  %65 = load i32, i32* @INTE, align 4
  %66 = or i32 %64, %65
  store i32 %66, i32* %3, align 4
  %67 = load i32, i32* %3, align 4
  %68 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %69 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = add nsw i64 %70, 9
  %72 = call i32 @outb_p(i32 %67, i64 %71)
  %73 = load i32, i32* @TGSEL, align 4
  %74 = load i32, i32* @TGEN, align 4
  %75 = or i32 %73, %74
  store i32 %75, i32* %3, align 4
  %76 = load i32, i32* %3, align 4
  %77 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %78 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = add nsw i64 %79, 10
  %81 = call i32 @outb_p(i32 %76, i64 %80)
  store i32 7, i32* %3, align 4
  %82 = load i32, i32* %3, align 4
  %83 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %84 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = add nsw i64 %85, 8
  %87 = call i32 @outb_p(i32 %82, i64 %86)
  %88 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %89 = call i32 @das6402_setcounter(%struct.comedi_device* %88)
  %90 = load i32, i32* @SCANL, align 4
  %91 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %92 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = add nsw i64 %93, 2
  %95 = call i32 @outw_p(i32 %90, i64 %94)
  %96 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 0
  store i32 0, i32* %97, align 4
  ret i32 0
}

declare dso_local i32 @outb(i32, i64) #1

declare dso_local i32 @outb_p(i32, i64) #1

declare dso_local i32 @das6402_setcounter(%struct.comedi_device*) #1

declare dso_local i32 @outw_p(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
