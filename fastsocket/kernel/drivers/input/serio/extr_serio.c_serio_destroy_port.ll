; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/serio/extr_serio.c_serio_destroy_port.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/serio/extr_serio.c_serio_destroy_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.serio = type { i32, %struct.TYPE_6__, i32, %struct.TYPE_5__*, i32 (%struct.serio*)* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32* }

@serio_id_attr_group = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.serio*)* @serio_destroy_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @serio_destroy_port(%struct.serio* %0) #0 {
  %2 = alloca %struct.serio*, align 8
  %3 = alloca %struct.serio*, align 8
  store %struct.serio* %0, %struct.serio** %2, align 8
  %4 = load %struct.serio*, %struct.serio** %2, align 8
  %5 = call %struct.serio* @serio_get_pending_child(%struct.serio* %4)
  store %struct.serio* %5, %struct.serio** %3, align 8
  %6 = load %struct.serio*, %struct.serio** %3, align 8
  %7 = icmp ne %struct.serio* %6, null
  br i1 %7, label %8, label %14

8:                                                ; preds = %1
  %9 = load %struct.serio*, %struct.serio** %3, align 8
  %10 = call i32 @serio_remove_pending_events(%struct.serio* %9)
  %11 = load %struct.serio*, %struct.serio** %3, align 8
  %12 = getelementptr inbounds %struct.serio, %struct.serio* %11, i32 0, i32 1
  %13 = call i32 @put_device(%struct.TYPE_6__* %12)
  br label %14

14:                                               ; preds = %8, %1
  %15 = load %struct.serio*, %struct.serio** %2, align 8
  %16 = getelementptr inbounds %struct.serio, %struct.serio* %15, i32 0, i32 4
  %17 = load i32 (%struct.serio*)*, i32 (%struct.serio*)** %16, align 8
  %18 = icmp ne i32 (%struct.serio*)* %17, null
  br i1 %18, label %19, label %25

19:                                               ; preds = %14
  %20 = load %struct.serio*, %struct.serio** %2, align 8
  %21 = getelementptr inbounds %struct.serio, %struct.serio* %20, i32 0, i32 4
  %22 = load i32 (%struct.serio*)*, i32 (%struct.serio*)** %21, align 8
  %23 = load %struct.serio*, %struct.serio** %2, align 8
  %24 = call i32 %22(%struct.serio* %23)
  br label %25

25:                                               ; preds = %19, %14
  %26 = load %struct.serio*, %struct.serio** %2, align 8
  %27 = getelementptr inbounds %struct.serio, %struct.serio* %26, i32 0, i32 3
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %27, align 8
  %29 = icmp ne %struct.TYPE_5__* %28, null
  br i1 %29, label %30, label %45

30:                                               ; preds = %25
  %31 = load %struct.serio*, %struct.serio** %2, align 8
  %32 = getelementptr inbounds %struct.serio, %struct.serio* %31, i32 0, i32 3
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %32, align 8
  %34 = call i32 @serio_pause_rx(%struct.TYPE_5__* %33)
  %35 = load %struct.serio*, %struct.serio** %2, align 8
  %36 = getelementptr inbounds %struct.serio, %struct.serio* %35, i32 0, i32 3
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  store i32* null, i32** %38, align 8
  %39 = load %struct.serio*, %struct.serio** %2, align 8
  %40 = getelementptr inbounds %struct.serio, %struct.serio* %39, i32 0, i32 3
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %40, align 8
  %42 = call i32 @serio_continue_rx(%struct.TYPE_5__* %41)
  %43 = load %struct.serio*, %struct.serio** %2, align 8
  %44 = getelementptr inbounds %struct.serio, %struct.serio* %43, i32 0, i32 3
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %44, align 8
  br label %45

45:                                               ; preds = %30, %25
  %46 = load %struct.serio*, %struct.serio** %2, align 8
  %47 = getelementptr inbounds %struct.serio, %struct.serio* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %60

50:                                               ; preds = %45
  %51 = load %struct.serio*, %struct.serio** %2, align 8
  %52 = getelementptr inbounds %struct.serio, %struct.serio* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  %54 = call i32 @sysfs_remove_group(i32* %53, i32* @serio_id_attr_group)
  %55 = load %struct.serio*, %struct.serio** %2, align 8
  %56 = getelementptr inbounds %struct.serio, %struct.serio* %55, i32 0, i32 1
  %57 = call i32 @device_del(%struct.TYPE_6__* %56)
  %58 = load %struct.serio*, %struct.serio** %2, align 8
  %59 = getelementptr inbounds %struct.serio, %struct.serio* %58, i32 0, i32 0
  store i32 0, i32* %59, align 8
  br label %60

60:                                               ; preds = %50, %45
  %61 = load %struct.serio*, %struct.serio** %2, align 8
  %62 = getelementptr inbounds %struct.serio, %struct.serio* %61, i32 0, i32 2
  %63 = call i32 @list_del_init(i32* %62)
  %64 = load %struct.serio*, %struct.serio** %2, align 8
  %65 = call i32 @serio_remove_pending_events(%struct.serio* %64)
  %66 = load %struct.serio*, %struct.serio** %2, align 8
  %67 = getelementptr inbounds %struct.serio, %struct.serio* %66, i32 0, i32 1
  %68 = call i32 @put_device(%struct.TYPE_6__* %67)
  ret void
}

declare dso_local %struct.serio* @serio_get_pending_child(%struct.serio*) #1

declare dso_local i32 @serio_remove_pending_events(%struct.serio*) #1

declare dso_local i32 @put_device(%struct.TYPE_6__*) #1

declare dso_local i32 @serio_pause_rx(%struct.TYPE_5__*) #1

declare dso_local i32 @serio_continue_rx(%struct.TYPE_5__*) #1

declare dso_local i32 @sysfs_remove_group(i32*, i32*) #1

declare dso_local i32 @device_del(%struct.TYPE_6__*) #1

declare dso_local i32 @list_del_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
