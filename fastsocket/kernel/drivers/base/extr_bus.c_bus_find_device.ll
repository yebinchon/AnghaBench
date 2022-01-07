; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/base/extr_bus.c_bus_find_device.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/base/extr_bus.c_bus_find_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bus_type = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.device = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.klist_iter = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.device* @bus_find_device(%struct.bus_type* %0, %struct.device* %1, i8* %2, i32 (%struct.device*, i8*)* %3) #0 {
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.bus_type*, align 8
  %7 = alloca %struct.device*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32 (%struct.device*, i8*)*, align 8
  %10 = alloca %struct.klist_iter, align 4
  %11 = alloca %struct.device*, align 8
  store %struct.bus_type* %0, %struct.bus_type** %6, align 8
  store %struct.device* %1, %struct.device** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 (%struct.device*, i8*)* %3, i32 (%struct.device*, i8*)** %9, align 8
  %12 = load %struct.bus_type*, %struct.bus_type** %6, align 8
  %13 = icmp ne %struct.bus_type* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %4
  store %struct.device* null, %struct.device** %5, align 8
  br label %49

15:                                               ; preds = %4
  %16 = load %struct.bus_type*, %struct.bus_type** %6, align 8
  %17 = getelementptr inbounds %struct.bus_type, %struct.bus_type* %16, i32 0, i32 0
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load %struct.device*, %struct.device** %7, align 8
  %21 = icmp ne %struct.device* %20, null
  br i1 %21, label %22, label %27

22:                                               ; preds = %15
  %23 = load %struct.device*, %struct.device** %7, align 8
  %24 = getelementptr inbounds %struct.device, %struct.device* %23, i32 0, i32 0
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  br label %28

27:                                               ; preds = %15
  br label %28

28:                                               ; preds = %27, %22
  %29 = phi i32* [ %26, %22 ], [ null, %27 ]
  %30 = call i32 @klist_iter_init_node(i32* %19, %struct.klist_iter* %10, i32* %29)
  br label %31

31:                                               ; preds = %45, %28
  %32 = call %struct.device* @next_device(%struct.klist_iter* %10)
  store %struct.device* %32, %struct.device** %11, align 8
  %33 = icmp ne %struct.device* %32, null
  br i1 %33, label %34, label %46

34:                                               ; preds = %31
  %35 = load i32 (%struct.device*, i8*)*, i32 (%struct.device*, i8*)** %9, align 8
  %36 = load %struct.device*, %struct.device** %11, align 8
  %37 = load i8*, i8** %8, align 8
  %38 = call i32 %35(%struct.device* %36, i8* %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %34
  %41 = load %struct.device*, %struct.device** %11, align 8
  %42 = call i64 @get_device(%struct.device* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %40
  br label %46

45:                                               ; preds = %40, %34
  br label %31

46:                                               ; preds = %44, %31
  %47 = call i32 @klist_iter_exit(%struct.klist_iter* %10)
  %48 = load %struct.device*, %struct.device** %11, align 8
  store %struct.device* %48, %struct.device** %5, align 8
  br label %49

49:                                               ; preds = %46, %14
  %50 = load %struct.device*, %struct.device** %5, align 8
  ret %struct.device* %50
}

declare dso_local i32 @klist_iter_init_node(i32*, %struct.klist_iter*, i32*) #1

declare dso_local %struct.device* @next_device(%struct.klist_iter*) #1

declare dso_local i64 @get_device(%struct.device*) #1

declare dso_local i32 @klist_iter_exit(%struct.klist_iter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
