; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/block/extr_genhd.c_get_disk.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/block/extr_genhd.c_get_disk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kobject = type { i32 }
%struct.gendisk = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.module* }
%struct.module = type { i32 }
%struct.TYPE_4__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.kobject* @get_disk(%struct.gendisk* %0) #0 {
  %2 = alloca %struct.kobject*, align 8
  %3 = alloca %struct.gendisk*, align 8
  %4 = alloca %struct.module*, align 8
  %5 = alloca %struct.kobject*, align 8
  store %struct.gendisk* %0, %struct.gendisk** %3, align 8
  %6 = load %struct.gendisk*, %struct.gendisk** %3, align 8
  %7 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %6, i32 0, i32 0
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %9 = icmp ne %struct.TYPE_3__* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  store %struct.kobject* null, %struct.kobject** %2, align 8
  br label %36

11:                                               ; preds = %1
  %12 = load %struct.gendisk*, %struct.gendisk** %3, align 8
  %13 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %12, i32 0, i32 0
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load %struct.module*, %struct.module** %15, align 8
  store %struct.module* %16, %struct.module** %4, align 8
  %17 = load %struct.module*, %struct.module** %4, align 8
  %18 = icmp ne %struct.module* %17, null
  br i1 %18, label %19, label %24

19:                                               ; preds = %11
  %20 = load %struct.module*, %struct.module** %4, align 8
  %21 = call i32 @try_module_get(%struct.module* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %19
  store %struct.kobject* null, %struct.kobject** %2, align 8
  br label %36

24:                                               ; preds = %19, %11
  %25 = load %struct.gendisk*, %struct.gendisk** %3, align 8
  %26 = call %struct.TYPE_4__* @disk_to_dev(%struct.gendisk* %25)
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = call %struct.kobject* @kobject_get(i32* %27)
  store %struct.kobject* %28, %struct.kobject** %5, align 8
  %29 = load %struct.kobject*, %struct.kobject** %5, align 8
  %30 = icmp eq %struct.kobject* %29, null
  br i1 %30, label %31, label %34

31:                                               ; preds = %24
  %32 = load %struct.module*, %struct.module** %4, align 8
  %33 = call i32 @module_put(%struct.module* %32)
  store %struct.kobject* null, %struct.kobject** %2, align 8
  br label %36

34:                                               ; preds = %24
  %35 = load %struct.kobject*, %struct.kobject** %5, align 8
  store %struct.kobject* %35, %struct.kobject** %2, align 8
  br label %36

36:                                               ; preds = %34, %31, %23, %10
  %37 = load %struct.kobject*, %struct.kobject** %2, align 8
  ret %struct.kobject* %37
}

declare dso_local i32 @try_module_get(%struct.module*) #1

declare dso_local %struct.kobject* @kobject_get(i32*) #1

declare dso_local %struct.TYPE_4__* @disk_to_dev(%struct.gendisk*) #1

declare dso_local i32 @module_put(%struct.module*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
