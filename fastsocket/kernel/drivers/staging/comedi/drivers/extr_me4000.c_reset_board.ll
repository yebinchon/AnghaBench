; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_me4000.c_reset_board.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_me4000.c_reset_board.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64 }
%struct.comedi_device = type { i32 }

@.str = private unnamed_addr constant [18 x i8] c"In reset_board()\0A\00", align 1
@info = common dso_local global %struct.TYPE_2__* null, align 8
@PLX_ICR = common dso_local global i64 0, align 8
@ME4000_AO_00_SINGLE_REG = common dso_local global i64 0, align 8
@ME4000_AO_01_SINGLE_REG = common dso_local global i64 0, align 8
@ME4000_AO_02_SINGLE_REG = common dso_local global i64 0, align 8
@ME4000_AO_03_SINGLE_REG = common dso_local global i64 0, align 8
@ME4000_AI_CTRL_BIT_IMMEDIATE_STOP = common dso_local global i32 0, align 4
@ME4000_AI_CTRL_BIT_STOP = common dso_local global i32 0, align 4
@ME4000_AI_CTRL_REG = common dso_local global i64 0, align 8
@ME4000_AO_CTRL_BIT_IMMEDIATE_STOP = common dso_local global i32 0, align 4
@ME4000_AO_CTRL_BIT_STOP = common dso_local global i32 0, align 4
@ME4000_AO_00_CTRL_REG = common dso_local global i64 0, align 8
@ME4000_AO_01_CTRL_REG = common dso_local global i64 0, align 8
@ME4000_AO_02_CTRL_REG = common dso_local global i64 0, align 8
@ME4000_AO_03_CTRL_REG = common dso_local global i64 0, align 8
@PLX_INTCSR = common dso_local global i64 0, align 8
@ME4000_AO_DEMUX_ADJUST_VALUE = common dso_local global i32 0, align 4
@ME4000_AO_DEMUX_ADJUST_REG = common dso_local global i64 0, align 8
@ME4000_DIO_DIR_REG = common dso_local global i64 0, align 8
@ME4000_DIO_CTRL_REG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*)* @reset_board to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @reset_board(%struct.comedi_device* %0) #0 {
  %2 = alloca %struct.comedi_device*, align 8
  %3 = alloca i64, align 8
  store %struct.comedi_device* %0, %struct.comedi_device** %2, align 8
  %4 = call i32 @CALL_PDEBUG(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %5 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** @info, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 1
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @PLX_ICR, align 8
  %10 = add nsw i64 %8, %9
  %11 = call i32 @me4000_inl(%struct.comedi_device* %5, i64 %10)
  %12 = sext i32 %11 to i64
  store i64 %12, i64* %3, align 8
  %13 = load i64, i64* %3, align 8
  %14 = or i64 %13, 1073741824
  store i64 %14, i64* %3, align 8
  %15 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %16 = load i64, i64* %3, align 8
  %17 = trunc i64 %16 to i32
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** @info, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @PLX_ICR, align 8
  %22 = add nsw i64 %20, %21
  %23 = call i32 @me4000_outl(%struct.comedi_device* %15, i32 %17, i64 %22)
  %24 = load i64, i64* %3, align 8
  %25 = and i64 %24, -1073741825
  store i64 %25, i64* %3, align 8
  %26 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %27 = load i64, i64* %3, align 8
  %28 = trunc i64 %27 to i32
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** @info, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @PLX_ICR, align 8
  %33 = add nsw i64 %31, %32
  %34 = call i32 @me4000_outl(%struct.comedi_device* %26, i32 %28, i64 %33)
  %35 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** @info, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @ME4000_AO_00_SINGLE_REG, align 8
  %40 = add nsw i64 %38, %39
  %41 = call i32 @me4000_outl(%struct.comedi_device* %35, i32 32768, i64 %40)
  %42 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** @info, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @ME4000_AO_01_SINGLE_REG, align 8
  %47 = add nsw i64 %45, %46
  %48 = call i32 @me4000_outl(%struct.comedi_device* %42, i32 32768, i64 %47)
  %49 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** @info, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @ME4000_AO_02_SINGLE_REG, align 8
  %54 = add nsw i64 %52, %53
  %55 = call i32 @me4000_outl(%struct.comedi_device* %49, i32 32768, i64 %54)
  %56 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** @info, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @ME4000_AO_03_SINGLE_REG, align 8
  %61 = add nsw i64 %59, %60
  %62 = call i32 @me4000_outl(%struct.comedi_device* %56, i32 32768, i64 %61)
  %63 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %64 = load i32, i32* @ME4000_AI_CTRL_BIT_IMMEDIATE_STOP, align 4
  %65 = load i32, i32* @ME4000_AI_CTRL_BIT_STOP, align 4
  %66 = or i32 %64, %65
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** @info, align 8
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @ME4000_AI_CTRL_REG, align 8
  %71 = add nsw i64 %69, %70
  %72 = call i32 @me4000_outl(%struct.comedi_device* %63, i32 %66, i64 %71)
  %73 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %74 = load i32, i32* @ME4000_AO_CTRL_BIT_IMMEDIATE_STOP, align 4
  %75 = load i32, i32* @ME4000_AO_CTRL_BIT_STOP, align 4
  %76 = or i32 %74, %75
  %77 = load %struct.TYPE_2__*, %struct.TYPE_2__** @info, align 8
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @ME4000_AO_00_CTRL_REG, align 8
  %81 = add nsw i64 %79, %80
  %82 = call i32 @me4000_outl(%struct.comedi_device* %73, i32 %76, i64 %81)
  %83 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %84 = load i32, i32* @ME4000_AO_CTRL_BIT_IMMEDIATE_STOP, align 4
  %85 = load i32, i32* @ME4000_AO_CTRL_BIT_STOP, align 4
  %86 = or i32 %84, %85
  %87 = load %struct.TYPE_2__*, %struct.TYPE_2__** @info, align 8
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* @ME4000_AO_01_CTRL_REG, align 8
  %91 = add nsw i64 %89, %90
  %92 = call i32 @me4000_outl(%struct.comedi_device* %83, i32 %86, i64 %91)
  %93 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %94 = load i32, i32* @ME4000_AO_CTRL_BIT_IMMEDIATE_STOP, align 4
  %95 = load i32, i32* @ME4000_AO_CTRL_BIT_STOP, align 4
  %96 = or i32 %94, %95
  %97 = load %struct.TYPE_2__*, %struct.TYPE_2__** @info, align 8
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = load i64, i64* @ME4000_AO_02_CTRL_REG, align 8
  %101 = add nsw i64 %99, %100
  %102 = call i32 @me4000_outl(%struct.comedi_device* %93, i32 %96, i64 %101)
  %103 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %104 = load i32, i32* @ME4000_AO_CTRL_BIT_IMMEDIATE_STOP, align 4
  %105 = load i32, i32* @ME4000_AO_CTRL_BIT_STOP, align 4
  %106 = or i32 %104, %105
  %107 = load %struct.TYPE_2__*, %struct.TYPE_2__** @info, align 8
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = load i64, i64* @ME4000_AO_03_CTRL_REG, align 8
  %111 = add nsw i64 %109, %110
  %112 = call i32 @me4000_outl(%struct.comedi_device* %103, i32 %106, i64 %111)
  %113 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %114 = load %struct.TYPE_2__*, %struct.TYPE_2__** @info, align 8
  %115 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %114, i32 0, i32 1
  %116 = load i64, i64* %115, align 8
  %117 = load i64, i64* @PLX_INTCSR, align 8
  %118 = add nsw i64 %116, %117
  %119 = call i32 @me4000_outl(%struct.comedi_device* %113, i32 67, i64 %118)
  %120 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %121 = load i32, i32* @ME4000_AO_DEMUX_ADJUST_VALUE, align 4
  %122 = load %struct.TYPE_2__*, %struct.TYPE_2__** @info, align 8
  %123 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = load i64, i64* @ME4000_AO_DEMUX_ADJUST_REG, align 8
  %126 = add nsw i64 %124, %125
  %127 = call i32 @me4000_outl(%struct.comedi_device* %120, i32 %121, i64 %126)
  %128 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %129 = load %struct.TYPE_2__*, %struct.TYPE_2__** @info, align 8
  %130 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = load i64, i64* @ME4000_DIO_DIR_REG, align 8
  %133 = add nsw i64 %131, %132
  %134 = call i32 @me4000_inl(%struct.comedi_device* %128, i64 %133)
  %135 = and i32 %134, 1
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %145, label %137

137:                                              ; preds = %1
  %138 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %139 = load %struct.TYPE_2__*, %struct.TYPE_2__** @info, align 8
  %140 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %139, i32 0, i32 0
  %141 = load i64, i64* %140, align 8
  %142 = load i64, i64* @ME4000_DIO_CTRL_REG, align 8
  %143 = add nsw i64 %141, %142
  %144 = call i32 @me4000_outl(%struct.comedi_device* %138, i32 1, i64 %143)
  br label %145

145:                                              ; preds = %137, %1
  ret i32 0
}

declare dso_local i32 @CALL_PDEBUG(i8*) #1

declare dso_local i32 @me4000_inl(%struct.comedi_device*, i64) #1

declare dso_local i32 @me4000_outl(%struct.comedi_device*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
