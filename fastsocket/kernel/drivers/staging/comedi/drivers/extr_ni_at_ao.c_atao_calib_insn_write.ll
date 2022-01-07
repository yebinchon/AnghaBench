; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_ni_at_ao.c_atao_calib_insn_write.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_ni_at_ao.c_atao_calib_insn_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.comedi_device = type { i64 }
%struct.comedi_subdevice = type { i32 }
%struct.comedi_insn = type { i32, i32 }

@devpriv = common dso_local global %struct.TYPE_2__* null, align 8
@SDATA = common dso_local global i32 0, align 4
@ATAO_CFG2 = common dso_local global i64 0, align 8
@SCLK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)* @atao_calib_insn_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atao_calib_insn_write(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, %struct.comedi_insn* %2, i32* %3) #0 {
  %5 = alloca %struct.comedi_device*, align 8
  %6 = alloca %struct.comedi_subdevice*, align 8
  %7 = alloca %struct.comedi_insn*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %5, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %6, align 8
  store %struct.comedi_insn* %2, %struct.comedi_insn** %7, align 8
  store i32* %3, i32** %8, align 8
  %12 = load %struct.comedi_insn*, %struct.comedi_insn** %7, align 8
  %13 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @CR_CHAN(i32 %14)
  store i32 %15, i32* %11, align 4
  %16 = load i32, i32* %11, align 4
  %17 = and i32 %16, 7
  %18 = shl i32 %17, 8
  %19 = load i32*, i32** %8, align 8
  %20 = load %struct.comedi_insn*, %struct.comedi_insn** %7, align 8
  %21 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = sub nsw i32 %22, 1
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %19, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = and i32 %26, 255
  %28 = or i32 %18, %27
  store i32 %28, i32* %9, align 4
  store i32 1024, i32* %10, align 4
  br label %29

29:                                               ; preds = %73, %4
  %30 = load i32, i32* %10, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %76

32:                                               ; preds = %29
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* %10, align 4
  %37 = load i32, i32* %9, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %32
  %41 = load i32, i32* @SDATA, align 4
  br label %43

42:                                               ; preds = %32
  br label %43

43:                                               ; preds = %42, %40
  %44 = phi i32 [ %41, %40 ], [ 0, %42 ]
  %45 = or i32 %35, %44
  %46 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %47 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @ATAO_CFG2, align 8
  %50 = add nsw i64 %48, %49
  %51 = call i32 @outw(i32 %45, i64 %50)
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @SCLK, align 4
  %56 = or i32 %54, %55
  %57 = load i32, i32* %10, align 4
  %58 = load i32, i32* %9, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %43
  %62 = load i32, i32* @SDATA, align 4
  br label %64

63:                                               ; preds = %43
  br label %64

64:                                               ; preds = %63, %61
  %65 = phi i32 [ %62, %61 ], [ 0, %63 ]
  %66 = or i32 %56, %65
  %67 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %68 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @ATAO_CFG2, align 8
  %71 = add nsw i64 %69, %70
  %72 = call i32 @outw(i32 %66, i64 %71)
  br label %73

73:                                               ; preds = %64
  %74 = load i32, i32* %10, align 4
  %75 = lshr i32 %74, 1
  store i32 %75, i32* %10, align 4
  br label %29

76:                                               ; preds = %29
  %77 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* %11, align 4
  %81 = lshr i32 %80, 3
  %82 = add i32 %81, 1
  %83 = shl i32 %82, 14
  %84 = or i32 %79, %83
  %85 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %86 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* @ATAO_CFG2, align 8
  %89 = add nsw i64 %87, %88
  %90 = call i32 @outw(i32 %84, i64 %89)
  %91 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %95 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = load i64, i64* @ATAO_CFG2, align 8
  %98 = add nsw i64 %96, %97
  %99 = call i32 @outw(i32 %93, i64 %98)
  %100 = load %struct.comedi_insn*, %struct.comedi_insn** %7, align 8
  %101 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  ret i32 %102
}

declare dso_local i32 @CR_CHAN(i32) #1

declare dso_local i32 @outw(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
