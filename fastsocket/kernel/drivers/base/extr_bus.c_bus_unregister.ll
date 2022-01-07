; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/base/extr_bus.c_bus_unregister.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/base/extr_bus.c_bus_unregister.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bus_type = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, i32*, i32* }

@.str = private unnamed_addr constant [26 x i8] c"bus: '%s': unregistering\0A\00", align 1
@bus_attr_uevent = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bus_unregister(%struct.bus_type* %0) #0 {
  %2 = alloca %struct.bus_type*, align 8
  store %struct.bus_type* %0, %struct.bus_type** %2, align 8
  %3 = load %struct.bus_type*, %struct.bus_type** %2, align 8
  %4 = getelementptr inbounds %struct.bus_type, %struct.bus_type* %3, i32 0, i32 1
  %5 = load i32, i32* %4, align 8
  %6 = call i32 @pr_debug(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %5)
  %7 = load %struct.bus_type*, %struct.bus_type** %2, align 8
  %8 = call i32 @bus_remove_attrs(%struct.bus_type* %7)
  %9 = load %struct.bus_type*, %struct.bus_type** %2, align 8
  %10 = call i32 @remove_probe_files(%struct.bus_type* %9)
  %11 = load %struct.bus_type*, %struct.bus_type** %2, align 8
  %12 = getelementptr inbounds %struct.bus_type, %struct.bus_type* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 2
  %15 = load i32*, i32** %14, align 8
  %16 = call i32 @kset_unregister(i32* %15)
  %17 = load %struct.bus_type*, %struct.bus_type** %2, align 8
  %18 = getelementptr inbounds %struct.bus_type, %struct.bus_type* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 1
  %21 = load i32*, i32** %20, align 8
  %22 = call i32 @kset_unregister(i32* %21)
  %23 = load %struct.bus_type*, %struct.bus_type** %2, align 8
  %24 = call i32 @bus_remove_file(%struct.bus_type* %23, i32* @bus_attr_uevent)
  %25 = load %struct.bus_type*, %struct.bus_type** %2, align 8
  %26 = getelementptr inbounds %struct.bus_type, %struct.bus_type* %25, i32 0, i32 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = call i32 @kset_unregister(i32* %28)
  %30 = load %struct.bus_type*, %struct.bus_type** %2, align 8
  %31 = getelementptr inbounds %struct.bus_type, %struct.bus_type* %30, i32 0, i32 0
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = call i32 @kfree(%struct.TYPE_2__* %32)
  %34 = load %struct.bus_type*, %struct.bus_type** %2, align 8
  %35 = getelementptr inbounds %struct.bus_type, %struct.bus_type* %34, i32 0, i32 0
  store %struct.TYPE_2__* null, %struct.TYPE_2__** %35, align 8
  ret void
}

declare dso_local i32 @pr_debug(i8*, i32) #1

declare dso_local i32 @bus_remove_attrs(%struct.bus_type*) #1

declare dso_local i32 @remove_probe_files(%struct.bus_type*) #1

declare dso_local i32 @kset_unregister(i32*) #1

declare dso_local i32 @bus_remove_file(%struct.bus_type*, i32*) #1

declare dso_local i32 @kfree(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
