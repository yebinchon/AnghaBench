; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_ni_at_ao.c_atao_reset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_ni_at_ao.c_atao_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64, i64 }
%struct.comedi_device = type { i64 }

@devpriv = common dso_local global %struct.TYPE_2__* null, align 8
@ATAO_CFG1 = common dso_local global i64 0, align 8
@RWSEL0 = common dso_local global i32 0, align 4
@MODESEL2 = common dso_local global i32 0, align 4
@ATAO_82C53_CNTRCMD = common dso_local global i64 0, align 8
@ATAO_82C53_CNTR1 = common dso_local global i64 0, align 8
@CNTRSEL0 = common dso_local global i32 0, align 4
@ATAO_CFG2 = common dso_local global i64 0, align 8
@ATAO_CFG3 = common dso_local global i64 0, align 8
@ATAO_FIFO_CLEAR = common dso_local global i64 0, align 8
@GRP2WR = common dso_local global i64 0, align 8
@ATAO_2_INT1CLR = common dso_local global i64 0, align 8
@ATAO_2_INT2CLR = common dso_local global i64 0, align 8
@ATAO_2_DMATCCLR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.comedi_device*)* @atao_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @atao_reset(%struct.comedi_device* %0) #0 {
  %2 = alloca %struct.comedi_device*, align 8
  store %struct.comedi_device* %0, %struct.comedi_device** %2, align 8
  %3 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %4 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %3, i32 0, i32 0
  store i64 0, i64* %4, align 8
  %5 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %9 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @ATAO_CFG1, align 8
  %12 = add nsw i64 %10, %11
  %13 = call i32 @outw(i64 %7, i64 %12)
  %14 = load i32, i32* @RWSEL0, align 4
  %15 = load i32, i32* @MODESEL2, align 4
  %16 = or i32 %14, %15
  %17 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %18 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @ATAO_82C53_CNTRCMD, align 8
  %21 = add nsw i64 %19, %20
  %22 = call i32 @outb(i32 %16, i64 %21)
  %23 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %24 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @ATAO_82C53_CNTR1, align 8
  %27 = add nsw i64 %25, %26
  %28 = call i32 @outb(i32 3, i64 %27)
  %29 = load i32, i32* @CNTRSEL0, align 4
  %30 = load i32, i32* @RWSEL0, align 4
  %31 = or i32 %29, %30
  %32 = load i32, i32* @MODESEL2, align 4
  %33 = or i32 %31, %32
  %34 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %35 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @ATAO_82C53_CNTRCMD, align 8
  %38 = add nsw i64 %36, %37
  %39 = call i32 @outb(i32 %33, i64 %38)
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 2
  store i64 0, i64* %41, align 8
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 2
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %46 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @ATAO_CFG2, align 8
  %49 = add nsw i64 %47, %48
  %50 = call i32 @outw(i64 %44, i64 %49)
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 1
  store i64 0, i64* %52, align 8
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %57 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @ATAO_CFG3, align 8
  %60 = add nsw i64 %58, %59
  %61 = call i32 @outw(i64 %55, i64 %60)
  %62 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %63 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @ATAO_FIFO_CLEAR, align 8
  %66 = add nsw i64 %64, %65
  %67 = call i32 @inw(i64 %66)
  %68 = load i64, i64* @GRP2WR, align 8
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = or i64 %71, %68
  store i64 %72, i64* %70, align 8
  %73 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %77 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @ATAO_CFG1, align 8
  %80 = add nsw i64 %78, %79
  %81 = call i32 @outw(i64 %75, i64 %80)
  %82 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %83 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @ATAO_2_INT1CLR, align 8
  %86 = add nsw i64 %84, %85
  %87 = call i32 @outw(i64 0, i64 %86)
  %88 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %89 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* @ATAO_2_INT2CLR, align 8
  %92 = add nsw i64 %90, %91
  %93 = call i32 @outw(i64 0, i64 %92)
  %94 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %95 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = load i64, i64* @ATAO_2_DMATCCLR, align 8
  %98 = add nsw i64 %96, %97
  %99 = call i32 @outw(i64 0, i64 %98)
  %100 = load i64, i64* @GRP2WR, align 8
  %101 = xor i64 %100, -1
  %102 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = and i64 %104, %101
  store i64 %105, i64* %103, align 8
  %106 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %110 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = load i64, i64* @ATAO_CFG1, align 8
  %113 = add nsw i64 %111, %112
  %114 = call i32 @outw(i64 %108, i64 %113)
  ret void
}

declare dso_local i32 @outw(i64, i64) #1

declare dso_local i32 @outb(i32, i64) #1

declare dso_local i32 @inw(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
