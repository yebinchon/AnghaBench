; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/base/extr_map.c_kobj_map_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/base/extr_map.c_kobj_map_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kobj_map = type { i32, %struct.mutex*, %struct.kobj_map**, i32*, i32 }
%struct.mutex = type { i32 }
%struct.probe = type { i32, %struct.mutex*, %struct.probe**, i32*, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.kobj_map* @kobj_map_init(i32* %0, %struct.mutex* %1) #0 {
  %3 = alloca %struct.kobj_map*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.mutex*, align 8
  %6 = alloca %struct.kobj_map*, align 8
  %7 = alloca %struct.probe*, align 8
  %8 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.mutex* %1, %struct.mutex** %5, align 8
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.probe* @kmalloc(i32 40, i32 %9)
  %11 = bitcast %struct.probe* %10 to %struct.kobj_map*
  store %struct.kobj_map* %11, %struct.kobj_map** %6, align 8
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.probe* @kzalloc(i32 40, i32 %12)
  store %struct.probe* %13, %struct.probe** %7, align 8
  %14 = load %struct.kobj_map*, %struct.kobj_map** %6, align 8
  %15 = icmp eq %struct.kobj_map* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %2
  %17 = load %struct.probe*, %struct.probe** %7, align 8
  %18 = icmp eq %struct.probe* %17, null
  br i1 %18, label %19, label %25

19:                                               ; preds = %16, %2
  %20 = load %struct.kobj_map*, %struct.kobj_map** %6, align 8
  %21 = bitcast %struct.kobj_map* %20 to %struct.probe*
  %22 = call i32 @kfree(%struct.probe* %21)
  %23 = load %struct.probe*, %struct.probe** %7, align 8
  %24 = call i32 @kfree(%struct.probe* %23)
  store %struct.kobj_map* null, %struct.kobj_map** %3, align 8
  br label %53

25:                                               ; preds = %16
  %26 = load %struct.probe*, %struct.probe** %7, align 8
  %27 = getelementptr inbounds %struct.probe, %struct.probe* %26, i32 0, i32 0
  store i32 1, i32* %27, align 8
  %28 = load %struct.probe*, %struct.probe** %7, align 8
  %29 = getelementptr inbounds %struct.probe, %struct.probe* %28, i32 0, i32 4
  store i32 -1, i32* %29, align 8
  %30 = load i32*, i32** %4, align 8
  %31 = load %struct.probe*, %struct.probe** %7, align 8
  %32 = getelementptr inbounds %struct.probe, %struct.probe* %31, i32 0, i32 3
  store i32* %30, i32** %32, align 8
  store i32 0, i32* %8, align 4
  br label %33

33:                                               ; preds = %45, %25
  %34 = load i32, i32* %8, align 4
  %35 = icmp slt i32 %34, 255
  br i1 %35, label %36, label %48

36:                                               ; preds = %33
  %37 = load %struct.probe*, %struct.probe** %7, align 8
  %38 = bitcast %struct.probe* %37 to %struct.kobj_map*
  %39 = load %struct.kobj_map*, %struct.kobj_map** %6, align 8
  %40 = getelementptr inbounds %struct.kobj_map, %struct.kobj_map* %39, i32 0, i32 2
  %41 = load %struct.kobj_map**, %struct.kobj_map*** %40, align 8
  %42 = load i32, i32* %8, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.kobj_map*, %struct.kobj_map** %41, i64 %43
  store %struct.kobj_map* %38, %struct.kobj_map** %44, align 8
  br label %45

45:                                               ; preds = %36
  %46 = load i32, i32* %8, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %8, align 4
  br label %33

48:                                               ; preds = %33
  %49 = load %struct.mutex*, %struct.mutex** %5, align 8
  %50 = load %struct.kobj_map*, %struct.kobj_map** %6, align 8
  %51 = getelementptr inbounds %struct.kobj_map, %struct.kobj_map* %50, i32 0, i32 1
  store %struct.mutex* %49, %struct.mutex** %51, align 8
  %52 = load %struct.kobj_map*, %struct.kobj_map** %6, align 8
  store %struct.kobj_map* %52, %struct.kobj_map** %3, align 8
  br label %53

53:                                               ; preds = %48, %19
  %54 = load %struct.kobj_map*, %struct.kobj_map** %3, align 8
  ret %struct.kobj_map* %54
}

declare dso_local %struct.probe* @kmalloc(i32, i32) #1

declare dso_local %struct.probe* @kzalloc(i32, i32) #1

declare dso_local i32 @kfree(%struct.probe*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
