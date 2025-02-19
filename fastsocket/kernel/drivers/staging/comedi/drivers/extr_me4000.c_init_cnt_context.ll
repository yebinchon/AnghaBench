; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_me4000.c_init_cnt_context.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_me4000.c_init_cnt_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i64, i64, i64 }
%struct.comedi_device = type { i32 }

@.str = private unnamed_addr constant [23 x i8] c"In init_cnt_context()\0A\00", align 1
@info = common dso_local global %struct.TYPE_4__* null, align 8
@ME4000_CNT_CTRL_REG = common dso_local global i64 0, align 8
@ME4000_CNT_COUNTER_0_REG = common dso_local global i64 0, align 8
@ME4000_CNT_COUNTER_1_REG = common dso_local global i64 0, align 8
@ME4000_CNT_COUNTER_2_REG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*)* @init_cnt_context to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_cnt_context(%struct.comedi_device* %0) #0 {
  %2 = alloca %struct.comedi_device*, align 8
  store %struct.comedi_device* %0, %struct.comedi_device** %2, align 8
  %3 = call i32 @CALL_PDEBUG(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %4 = load %struct.TYPE_4__*, %struct.TYPE_4__** @info, align 8
  %5 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @ME4000_CNT_CTRL_REG, align 8
  %8 = add nsw i64 %6, %7
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** @info, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 3
  store i64 %8, i64* %11, align 8
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** @info, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @ME4000_CNT_COUNTER_0_REG, align 8
  %16 = add nsw i64 %14, %15
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** @info, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 2
  store i64 %16, i64* %19, align 8
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** @info, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @ME4000_CNT_COUNTER_1_REG, align 8
  %24 = add nsw i64 %22, %23
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** @info, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 1
  store i64 %24, i64* %27, align 8
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** @info, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @ME4000_CNT_COUNTER_2_REG, align 8
  %32 = add nsw i64 %30, %31
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** @info, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  store i64 %32, i64* %35, align 8
  ret i32 0
}

declare dso_local i32 @CALL_PDEBUG(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
