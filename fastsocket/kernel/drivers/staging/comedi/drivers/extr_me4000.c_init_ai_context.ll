; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_me4000.c_init_ai_context.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_me4000.c_init_ai_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32 }
%struct.comedi_device = type { i32 }

@.str = private unnamed_addr constant [22 x i8] c"In init_ai_context()\0A\00", align 1
@info = common dso_local global %struct.TYPE_4__* null, align 8
@ME4000_AI_CTRL_REG = common dso_local global i64 0, align 8
@ME4000_AI_STATUS_REG = common dso_local global i64 0, align 8
@ME4000_AI_CHANNEL_LIST_REG = common dso_local global i64 0, align 8
@ME4000_AI_DATA_REG = common dso_local global i64 0, align 8
@ME4000_AI_CHAN_TIMER_REG = common dso_local global i64 0, align 8
@ME4000_AI_CHAN_PRE_TIMER_REG = common dso_local global i64 0, align 8
@ME4000_AI_SCAN_TIMER_LOW_REG = common dso_local global i64 0, align 8
@ME4000_AI_SCAN_TIMER_HIGH_REG = common dso_local global i64 0, align 8
@ME4000_AI_SCAN_PRE_TIMER_LOW_REG = common dso_local global i64 0, align 8
@ME4000_AI_SCAN_PRE_TIMER_HIGH_REG = common dso_local global i64 0, align 8
@ME4000_AI_START_REG = common dso_local global i64 0, align 8
@ME4000_IRQ_STATUS_REG = common dso_local global i64 0, align 8
@ME4000_AI_SAMPLE_COUNTER_REG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*)* @init_ai_context to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_ai_context(%struct.comedi_device* %0) #0 {
  %2 = alloca %struct.comedi_device*, align 8
  store %struct.comedi_device* %0, %struct.comedi_device** %2, align 8
  %3 = call i32 @CALL_PDEBUG(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %4 = load %struct.TYPE_4__*, %struct.TYPE_4__** @info, align 8
  %5 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 2
  %6 = load i32, i32* %5, align 8
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** @info, align 8
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 13
  store i32 %6, i32* %9, align 8
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** @info, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @ME4000_AI_CTRL_REG, align 8
  %14 = add nsw i64 %12, %13
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** @info, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 12
  store i64 %14, i64* %17, align 8
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** @info, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @ME4000_AI_STATUS_REG, align 8
  %22 = add nsw i64 %20, %21
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** @info, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 11
  store i64 %22, i64* %25, align 8
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** @info, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @ME4000_AI_CHANNEL_LIST_REG, align 8
  %30 = add nsw i64 %28, %29
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** @info, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 10
  store i64 %30, i64* %33, align 8
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** @info, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @ME4000_AI_DATA_REG, align 8
  %38 = add nsw i64 %36, %37
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** @info, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 9
  store i64 %38, i64* %41, align 8
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** @info, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @ME4000_AI_CHAN_TIMER_REG, align 8
  %46 = add nsw i64 %44, %45
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** @info, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 8
  store i64 %46, i64* %49, align 8
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** @info, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @ME4000_AI_CHAN_PRE_TIMER_REG, align 8
  %54 = add nsw i64 %52, %53
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** @info, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 7
  store i64 %54, i64* %57, align 8
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** @info, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @ME4000_AI_SCAN_TIMER_LOW_REG, align 8
  %62 = add nsw i64 %60, %61
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** @info, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 6
  store i64 %62, i64* %65, align 8
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** @info, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @ME4000_AI_SCAN_TIMER_HIGH_REG, align 8
  %70 = add nsw i64 %68, %69
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** @info, align 8
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 5
  store i64 %70, i64* %73, align 8
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** @info, align 8
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @ME4000_AI_SCAN_PRE_TIMER_LOW_REG, align 8
  %78 = add nsw i64 %76, %77
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** @info, align 8
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 4
  store i64 %78, i64* %81, align 8
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** @info, align 8
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @ME4000_AI_SCAN_PRE_TIMER_HIGH_REG, align 8
  %86 = add nsw i64 %84, %85
  %87 = load %struct.TYPE_4__*, %struct.TYPE_4__** @info, align 8
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 3
  store i64 %86, i64* %89, align 8
  %90 = load %struct.TYPE_4__*, %struct.TYPE_4__** @info, align 8
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* @ME4000_AI_START_REG, align 8
  %94 = add nsw i64 %92, %93
  %95 = load %struct.TYPE_4__*, %struct.TYPE_4__** @info, align 8
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %96, i32 0, i32 2
  store i64 %94, i64* %97, align 8
  %98 = load %struct.TYPE_4__*, %struct.TYPE_4__** @info, align 8
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = load i64, i64* @ME4000_IRQ_STATUS_REG, align 8
  %102 = add nsw i64 %100, %101
  %103 = load %struct.TYPE_4__*, %struct.TYPE_4__** @info, align 8
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 1
  %105 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %104, i32 0, i32 1
  store i64 %102, i64* %105, align 8
  %106 = load %struct.TYPE_4__*, %struct.TYPE_4__** @info, align 8
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = load i64, i64* @ME4000_AI_SAMPLE_COUNTER_REG, align 8
  %110 = add nsw i64 %108, %109
  %111 = load %struct.TYPE_4__*, %struct.TYPE_4__** @info, align 8
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i32 0, i32 1
  %113 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %112, i32 0, i32 0
  store i64 %110, i64* %113, align 8
  ret i32 0
}

declare dso_local i32 @CALL_PDEBUG(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
