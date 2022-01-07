; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/nes/extr_nes_cm.c_nes_cm_post_event.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/nes/extr_nes_cm.c_nes_cm_post_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nes_cm_event = type { i32, %struct.TYPE_8__*, %struct.TYPE_5__ }
%struct.TYPE_8__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 (%struct.TYPE_7__*)* }

@nes_cm_event_handler = common dso_local global i32 0, align 4
@NES_DBG_CM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"cm_node=%p queue_work, event=%p\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"Exit\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nes_cm_event*)* @nes_cm_post_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nes_cm_post_event(%struct.nes_cm_event* %0) #0 {
  %2 = alloca %struct.nes_cm_event*, align 8
  store %struct.nes_cm_event* %0, %struct.nes_cm_event** %2, align 8
  %3 = load %struct.nes_cm_event*, %struct.nes_cm_event** %2, align 8
  %4 = getelementptr inbounds %struct.nes_cm_event, %struct.nes_cm_event* %3, i32 0, i32 1
  %5 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %6 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 0
  %7 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 1
  %9 = call i32 @atomic_inc(i32* %8)
  %10 = load %struct.nes_cm_event*, %struct.nes_cm_event** %2, align 8
  %11 = getelementptr inbounds %struct.nes_cm_event, %struct.nes_cm_event* %10, i32 0, i32 1
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %13 = call i32 @add_ref_cm_node(%struct.TYPE_8__* %12)
  %14 = load %struct.nes_cm_event*, %struct.nes_cm_event** %2, align 8
  %15 = getelementptr inbounds %struct.nes_cm_event, %struct.nes_cm_event* %14, i32 0, i32 2
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 0
  %19 = load i32 (%struct.TYPE_7__*)*, i32 (%struct.TYPE_7__*)** %18, align 8
  %20 = load %struct.nes_cm_event*, %struct.nes_cm_event** %2, align 8
  %21 = getelementptr inbounds %struct.nes_cm_event, %struct.nes_cm_event* %20, i32 0, i32 2
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %22, align 8
  %24 = call i32 %19(%struct.TYPE_7__* %23)
  %25 = load %struct.nes_cm_event*, %struct.nes_cm_event** %2, align 8
  %26 = getelementptr inbounds %struct.nes_cm_event, %struct.nes_cm_event* %25, i32 0, i32 0
  %27 = load i32, i32* @nes_cm_event_handler, align 4
  %28 = call i32 @INIT_WORK(i32* %26, i32 %27)
  %29 = load i32, i32* @NES_DBG_CM, align 4
  %30 = load %struct.nes_cm_event*, %struct.nes_cm_event** %2, align 8
  %31 = getelementptr inbounds %struct.nes_cm_event, %struct.nes_cm_event* %30, i32 0, i32 1
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %31, align 8
  %33 = load %struct.nes_cm_event*, %struct.nes_cm_event** %2, align 8
  %34 = call i32 (i32, i8*, ...) @nes_debug(i32 %29, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), %struct.TYPE_8__* %32, %struct.nes_cm_event* %33)
  %35 = load %struct.nes_cm_event*, %struct.nes_cm_event** %2, align 8
  %36 = getelementptr inbounds %struct.nes_cm_event, %struct.nes_cm_event* %35, i32 0, i32 1
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.nes_cm_event*, %struct.nes_cm_event** %2, align 8
  %43 = getelementptr inbounds %struct.nes_cm_event, %struct.nes_cm_event* %42, i32 0, i32 0
  %44 = call i32 @queue_work(i32 %41, i32* %43)
  %45 = load i32, i32* @NES_DBG_CM, align 4
  %46 = call i32 (i32, i8*, ...) @nes_debug(i32 %45, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  ret i32 0
}

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @add_ref_cm_node(%struct.TYPE_8__*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @nes_debug(i32, i8*, ...) #1

declare dso_local i32 @queue_work(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
