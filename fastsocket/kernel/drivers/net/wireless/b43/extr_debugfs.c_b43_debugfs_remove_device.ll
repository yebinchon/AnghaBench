; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_debugfs.c_b43_debugfs_remove_device.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_debugfs.c_b43_debugfs_remove_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43_wldev = type { %struct.b43_dfsentry* }
%struct.b43_dfsentry = type { %struct.TYPE_15__, i32, %struct.TYPE_14__, %struct.TYPE_13__, %struct.TYPE_24__, %struct.TYPE_23__, %struct.TYPE_22__, %struct.TYPE_21__, %struct.TYPE_20__, %struct.TYPE_19__, %struct.TYPE_18__, %struct.TYPE_17__, %struct.TYPE_16__ }
%struct.TYPE_15__ = type { %struct.b43_dfsentry* }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_24__ = type { i32 }
%struct.TYPE_23__ = type { i32 }
%struct.TYPE_22__ = type { i32 }
%struct.TYPE_21__ = type { i32 }
%struct.TYPE_20__ = type { i32 }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_16__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @b43_debugfs_remove_device(%struct.b43_wldev* %0) #0 {
  %2 = alloca %struct.b43_wldev*, align 8
  %3 = alloca %struct.b43_dfsentry*, align 8
  store %struct.b43_wldev* %0, %struct.b43_wldev** %2, align 8
  %4 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %5 = icmp ne %struct.b43_wldev* %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  br label %83

7:                                                ; preds = %1
  %8 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %9 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %8, i32 0, i32 0
  %10 = load %struct.b43_dfsentry*, %struct.b43_dfsentry** %9, align 8
  store %struct.b43_dfsentry* %10, %struct.b43_dfsentry** %3, align 8
  %11 = load %struct.b43_dfsentry*, %struct.b43_dfsentry** %3, align 8
  %12 = icmp ne %struct.b43_dfsentry* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %7
  br label %83

14:                                               ; preds = %7
  %15 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %16 = call i32 @b43_remove_dynamic_debug(%struct.b43_wldev* %15)
  %17 = load %struct.b43_dfsentry*, %struct.b43_dfsentry** %3, align 8
  %18 = getelementptr inbounds %struct.b43_dfsentry, %struct.b43_dfsentry* %17, i32 0, i32 12
  %19 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @debugfs_remove(i32 %20)
  %22 = load %struct.b43_dfsentry*, %struct.b43_dfsentry** %3, align 8
  %23 = getelementptr inbounds %struct.b43_dfsentry, %struct.b43_dfsentry* %22, i32 0, i32 11
  %24 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @debugfs_remove(i32 %25)
  %27 = load %struct.b43_dfsentry*, %struct.b43_dfsentry** %3, align 8
  %28 = getelementptr inbounds %struct.b43_dfsentry, %struct.b43_dfsentry* %27, i32 0, i32 10
  %29 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @debugfs_remove(i32 %30)
  %32 = load %struct.b43_dfsentry*, %struct.b43_dfsentry** %3, align 8
  %33 = getelementptr inbounds %struct.b43_dfsentry, %struct.b43_dfsentry* %32, i32 0, i32 9
  %34 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @debugfs_remove(i32 %35)
  %37 = load %struct.b43_dfsentry*, %struct.b43_dfsentry** %3, align 8
  %38 = getelementptr inbounds %struct.b43_dfsentry, %struct.b43_dfsentry* %37, i32 0, i32 8
  %39 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @debugfs_remove(i32 %40)
  %42 = load %struct.b43_dfsentry*, %struct.b43_dfsentry** %3, align 8
  %43 = getelementptr inbounds %struct.b43_dfsentry, %struct.b43_dfsentry* %42, i32 0, i32 7
  %44 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @debugfs_remove(i32 %45)
  %47 = load %struct.b43_dfsentry*, %struct.b43_dfsentry** %3, align 8
  %48 = getelementptr inbounds %struct.b43_dfsentry, %struct.b43_dfsentry* %47, i32 0, i32 6
  %49 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @debugfs_remove(i32 %50)
  %52 = load %struct.b43_dfsentry*, %struct.b43_dfsentry** %3, align 8
  %53 = getelementptr inbounds %struct.b43_dfsentry, %struct.b43_dfsentry* %52, i32 0, i32 5
  %54 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @debugfs_remove(i32 %55)
  %57 = load %struct.b43_dfsentry*, %struct.b43_dfsentry** %3, align 8
  %58 = getelementptr inbounds %struct.b43_dfsentry, %struct.b43_dfsentry* %57, i32 0, i32 4
  %59 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @debugfs_remove(i32 %60)
  %62 = load %struct.b43_dfsentry*, %struct.b43_dfsentry** %3, align 8
  %63 = getelementptr inbounds %struct.b43_dfsentry, %struct.b43_dfsentry* %62, i32 0, i32 3
  %64 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @debugfs_remove(i32 %65)
  %67 = load %struct.b43_dfsentry*, %struct.b43_dfsentry** %3, align 8
  %68 = getelementptr inbounds %struct.b43_dfsentry, %struct.b43_dfsentry* %67, i32 0, i32 2
  %69 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @debugfs_remove(i32 %70)
  %72 = load %struct.b43_dfsentry*, %struct.b43_dfsentry** %3, align 8
  %73 = getelementptr inbounds %struct.b43_dfsentry, %struct.b43_dfsentry* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @debugfs_remove(i32 %74)
  %76 = load %struct.b43_dfsentry*, %struct.b43_dfsentry** %3, align 8
  %77 = getelementptr inbounds %struct.b43_dfsentry, %struct.b43_dfsentry* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %77, i32 0, i32 0
  %79 = load %struct.b43_dfsentry*, %struct.b43_dfsentry** %78, align 8
  %80 = call i32 @kfree(%struct.b43_dfsentry* %79)
  %81 = load %struct.b43_dfsentry*, %struct.b43_dfsentry** %3, align 8
  %82 = call i32 @kfree(%struct.b43_dfsentry* %81)
  br label %83

83:                                               ; preds = %14, %13, %6
  ret void
}

declare dso_local i32 @b43_remove_dynamic_debug(%struct.b43_wldev*) #1

declare dso_local i32 @debugfs_remove(i32) #1

declare dso_local i32 @kfree(%struct.b43_dfsentry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
