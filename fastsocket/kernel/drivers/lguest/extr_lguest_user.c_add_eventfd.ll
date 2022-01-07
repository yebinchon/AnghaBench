; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/lguest/extr_lguest_user.c_add_eventfd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/lguest/extr_lguest_user.c_add_eventfd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lguest = type { %struct.lg_eventfd_map* }
%struct.lg_eventfd_map = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64, i32 }

@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lguest*, i64, i32)* @add_eventfd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_eventfd(%struct.lguest* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.lguest*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.lg_eventfd_map*, align 8
  %9 = alloca %struct.lg_eventfd_map*, align 8
  %10 = alloca i32, align 4
  store %struct.lguest* %0, %struct.lguest** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.lguest*, %struct.lguest** %5, align 8
  %12 = getelementptr inbounds %struct.lguest, %struct.lguest* %11, i32 0, i32 0
  %13 = load %struct.lg_eventfd_map*, %struct.lg_eventfd_map** %12, align 8
  store %struct.lg_eventfd_map* %13, %struct.lg_eventfd_map** %9, align 8
  %14 = load i64, i64* %6, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %3
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %4, align 4
  br label %115

19:                                               ; preds = %3
  %20 = load %struct.lg_eventfd_map*, %struct.lg_eventfd_map** %9, align 8
  %21 = getelementptr inbounds %struct.lg_eventfd_map, %struct.lg_eventfd_map* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = add nsw i32 %22, 1
  %24 = sext i32 %23 to i64
  %25 = mul i64 16, %24
  %26 = add i64 16, %25
  %27 = trunc i64 %26 to i32
  %28 = load i32, i32* @GFP_KERNEL, align 4
  %29 = call %struct.lg_eventfd_map* @kmalloc(i32 %27, i32 %28)
  store %struct.lg_eventfd_map* %29, %struct.lg_eventfd_map** %8, align 8
  %30 = load %struct.lg_eventfd_map*, %struct.lg_eventfd_map** %8, align 8
  %31 = icmp ne %struct.lg_eventfd_map* %30, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %19
  %33 = load i32, i32* @ENOMEM, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %4, align 4
  br label %115

35:                                               ; preds = %19
  %36 = load %struct.lg_eventfd_map*, %struct.lg_eventfd_map** %8, align 8
  %37 = getelementptr inbounds %struct.lg_eventfd_map, %struct.lg_eventfd_map* %36, i32 0, i32 1
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %37, align 8
  %39 = load %struct.lg_eventfd_map*, %struct.lg_eventfd_map** %9, align 8
  %40 = getelementptr inbounds %struct.lg_eventfd_map, %struct.lg_eventfd_map* %39, i32 0, i32 1
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %40, align 8
  %42 = load %struct.lg_eventfd_map*, %struct.lg_eventfd_map** %9, align 8
  %43 = getelementptr inbounds %struct.lg_eventfd_map, %struct.lg_eventfd_map* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = sext i32 %44 to i64
  %46 = mul i64 16, %45
  %47 = trunc i64 %46 to i32
  %48 = call i32 @memcpy(%struct.TYPE_3__* %38, %struct.TYPE_3__* %41, i32 %47)
  %49 = load %struct.lg_eventfd_map*, %struct.lg_eventfd_map** %9, align 8
  %50 = getelementptr inbounds %struct.lg_eventfd_map, %struct.lg_eventfd_map* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.lg_eventfd_map*, %struct.lg_eventfd_map** %8, align 8
  %53 = getelementptr inbounds %struct.lg_eventfd_map, %struct.lg_eventfd_map* %52, i32 0, i32 0
  store i32 %51, i32* %53, align 8
  %54 = load i64, i64* %6, align 8
  %55 = load %struct.lg_eventfd_map*, %struct.lg_eventfd_map** %8, align 8
  %56 = getelementptr inbounds %struct.lg_eventfd_map, %struct.lg_eventfd_map* %55, i32 0, i32 1
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %56, align 8
  %58 = load %struct.lg_eventfd_map*, %struct.lg_eventfd_map** %8, align 8
  %59 = getelementptr inbounds %struct.lg_eventfd_map, %struct.lg_eventfd_map* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 0
  store i64 %54, i64* %63, align 8
  %64 = load i32, i32* %7, align 4
  %65 = call i32 @eventfd_ctx_fdget(i32 %64)
  %66 = load %struct.lg_eventfd_map*, %struct.lg_eventfd_map** %8, align 8
  %67 = getelementptr inbounds %struct.lg_eventfd_map, %struct.lg_eventfd_map* %66, i32 0, i32 1
  %68 = load %struct.TYPE_3__*, %struct.TYPE_3__** %67, align 8
  %69 = load %struct.lg_eventfd_map*, %struct.lg_eventfd_map** %8, align 8
  %70 = getelementptr inbounds %struct.lg_eventfd_map, %struct.lg_eventfd_map* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 1
  store i32 %65, i32* %74, align 8
  %75 = load %struct.lg_eventfd_map*, %struct.lg_eventfd_map** %8, align 8
  %76 = getelementptr inbounds %struct.lg_eventfd_map, %struct.lg_eventfd_map* %75, i32 0, i32 1
  %77 = load %struct.TYPE_3__*, %struct.TYPE_3__** %76, align 8
  %78 = load %struct.lg_eventfd_map*, %struct.lg_eventfd_map** %8, align 8
  %79 = getelementptr inbounds %struct.lg_eventfd_map, %struct.lg_eventfd_map* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i64 %81
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 8
  %85 = call i64 @IS_ERR(i32 %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %102

87:                                               ; preds = %35
  %88 = load %struct.lg_eventfd_map*, %struct.lg_eventfd_map** %8, align 8
  %89 = getelementptr inbounds %struct.lg_eventfd_map, %struct.lg_eventfd_map* %88, i32 0, i32 1
  %90 = load %struct.TYPE_3__*, %struct.TYPE_3__** %89, align 8
  %91 = load %struct.lg_eventfd_map*, %struct.lg_eventfd_map** %8, align 8
  %92 = getelementptr inbounds %struct.lg_eventfd_map, %struct.lg_eventfd_map* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i64 %94
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 8
  %98 = call i32 @PTR_ERR(i32 %97)
  store i32 %98, i32* %10, align 4
  %99 = load %struct.lg_eventfd_map*, %struct.lg_eventfd_map** %8, align 8
  %100 = call i32 @kfree(%struct.lg_eventfd_map* %99)
  %101 = load i32, i32* %10, align 4
  store i32 %101, i32* %4, align 4
  br label %115

102:                                              ; preds = %35
  %103 = load %struct.lg_eventfd_map*, %struct.lg_eventfd_map** %8, align 8
  %104 = getelementptr inbounds %struct.lg_eventfd_map, %struct.lg_eventfd_map* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %104, align 8
  %107 = load %struct.lguest*, %struct.lguest** %5, align 8
  %108 = getelementptr inbounds %struct.lguest, %struct.lguest* %107, i32 0, i32 0
  %109 = load %struct.lg_eventfd_map*, %struct.lg_eventfd_map** %108, align 8
  %110 = load %struct.lg_eventfd_map*, %struct.lg_eventfd_map** %8, align 8
  %111 = call i32 @rcu_assign_pointer(%struct.lg_eventfd_map* %109, %struct.lg_eventfd_map* %110)
  %112 = call i32 (...) @synchronize_rcu()
  %113 = load %struct.lg_eventfd_map*, %struct.lg_eventfd_map** %9, align 8
  %114 = call i32 @kfree(%struct.lg_eventfd_map* %113)
  store i32 0, i32* %4, align 4
  br label %115

115:                                              ; preds = %102, %87, %32, %16
  %116 = load i32, i32* %4, align 4
  ret i32 %116
}

declare dso_local %struct.lg_eventfd_map* @kmalloc(i32, i32) #1

declare dso_local i32 @memcpy(%struct.TYPE_3__*, %struct.TYPE_3__*, i32) #1

declare dso_local i32 @eventfd_ctx_fdget(i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @kfree(%struct.lg_eventfd_map*) #1

declare dso_local i32 @rcu_assign_pointer(%struct.lg_eventfd_map*, %struct.lg_eventfd_map*) #1

declare dso_local i32 @synchronize_rcu(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
