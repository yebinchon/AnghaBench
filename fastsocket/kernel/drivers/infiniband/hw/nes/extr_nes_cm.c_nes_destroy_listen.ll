; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/nes/extr_nes_cm.c_nes_destroy_listen.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/nes/extr_nes_cm.c_nes_destroy_listen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (%struct.TYPE_5__*, i64)* }
%struct.iw_cm_id = type { {}*, i64 }

@g_cm_core = common dso_local global %struct.TYPE_5__* null, align 8
@NES_DBG_CM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"cm_id->provider_data was NULL\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nes_destroy_listen(%struct.iw_cm_id* %0) #0 {
  %2 = alloca %struct.iw_cm_id*, align 8
  store %struct.iw_cm_id* %0, %struct.iw_cm_id** %2, align 8
  %3 = load %struct.iw_cm_id*, %struct.iw_cm_id** %2, align 8
  %4 = getelementptr inbounds %struct.iw_cm_id, %struct.iw_cm_id* %3, i32 0, i32 1
  %5 = load i64, i64* %4, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %18

7:                                                ; preds = %1
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** @g_cm_core, align 8
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load i32 (%struct.TYPE_5__*, i64)*, i32 (%struct.TYPE_5__*, i64)** %11, align 8
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** @g_cm_core, align 8
  %14 = load %struct.iw_cm_id*, %struct.iw_cm_id** %2, align 8
  %15 = getelementptr inbounds %struct.iw_cm_id, %struct.iw_cm_id* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = call i32 %12(%struct.TYPE_5__* %13, i64 %16)
  br label %21

18:                                               ; preds = %1
  %19 = load i32, i32* @NES_DBG_CM, align 4
  %20 = call i32 @nes_debug(i32 %19, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  br label %21

21:                                               ; preds = %18, %7
  %22 = load %struct.iw_cm_id*, %struct.iw_cm_id** %2, align 8
  %23 = getelementptr inbounds %struct.iw_cm_id, %struct.iw_cm_id* %22, i32 0, i32 0
  %24 = bitcast {}** %23 to i32 (%struct.iw_cm_id*)**
  %25 = load i32 (%struct.iw_cm_id*)*, i32 (%struct.iw_cm_id*)** %24, align 8
  %26 = load %struct.iw_cm_id*, %struct.iw_cm_id** %2, align 8
  %27 = call i32 %25(%struct.iw_cm_id* %26)
  ret i32 0
}

declare dso_local i32 @nes_debug(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
