; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hardware/eicon/extr_diva.c_divasa_xdi_driver_unload.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hardware/eicon/extr_diva.c_divasa_xdi_driver_unload.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 (%struct.TYPE_8__*)* }

@IoAdapters = common dso_local global i32** null, align 8
@adapter_lock = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"adapter\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @divasa_xdi_driver_unload() #0 {
  %1 = alloca %struct.TYPE_8__*, align 8
  br label %2

2:                                                ; preds = %33, %0
  %3 = call %struct.TYPE_8__* (...) @get_and_remove_from_queue()
  store %struct.TYPE_8__* %3, %struct.TYPE_8__** %1, align 8
  %4 = icmp ne %struct.TYPE_8__* %3, null
  br i1 %4, label %5, label %36

5:                                                ; preds = %2
  %6 = load %struct.TYPE_8__*, %struct.TYPE_8__** %1, align 8
  %7 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 0
  %9 = load i32 (%struct.TYPE_8__*)*, i32 (%struct.TYPE_8__*)** %8, align 8
  %10 = icmp ne i32 (%struct.TYPE_8__*)* %9, null
  br i1 %10, label %11, label %18

11:                                               ; preds = %5
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** %1, align 8
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  %15 = load i32 (%struct.TYPE_8__*)*, i32 (%struct.TYPE_8__*)** %14, align 8
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %1, align 8
  %17 = call i32 %15(%struct.TYPE_8__* %16)
  br label %18

18:                                               ; preds = %11, %5
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %1, align 8
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %33

23:                                               ; preds = %18
  %24 = load i32**, i32*** @IoAdapters, align 8
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %1, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = sub nsw i32 %27, 1
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32*, i32** %24, i64 %29
  store i32* null, i32** %30, align 8
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %1, align 8
  %32 = call i32 @remove_adapter_proc(%struct.TYPE_8__* %31)
  br label %33

33:                                               ; preds = %23, %18
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %1, align 8
  %35 = call i32 @diva_os_free(i32 0, %struct.TYPE_8__* %34)
  br label %2

36:                                               ; preds = %2
  %37 = call i32 @diva_os_destroy_spin_lock(i32* @adapter_lock, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  ret void
}

declare dso_local %struct.TYPE_8__* @get_and_remove_from_queue(...) #1

declare dso_local i32 @remove_adapter_proc(%struct.TYPE_8__*) #1

declare dso_local i32 @diva_os_free(i32, %struct.TYPE_8__*) #1

declare dso_local i32 @diva_os_destroy_spin_lock(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
