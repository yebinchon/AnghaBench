; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ipath/extr_ipath_init_chip.c_init_shadow_tids.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ipath/extr_ipath_init_chip.c_init_shadow_tids.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipath_devdata = type { i32, i32, i32*, %struct.page** }
%struct.page = type { i32 }

@.str = private unnamed_addr constant [60 x i8] c"failed to allocate shadow page * array, no expected sends!\0A\00", align 1
@.str.1 = private unnamed_addr constant [64 x i8] c"failed to allocate shadow dma handle array, no expected sends!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ipath_devdata*)* @init_shadow_tids to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_shadow_tids(%struct.ipath_devdata* %0) #0 {
  %2 = alloca %struct.ipath_devdata*, align 8
  %3 = alloca %struct.page**, align 8
  %4 = alloca i32*, align 8
  store %struct.ipath_devdata* %0, %struct.ipath_devdata** %2, align 8
  %5 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %6 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %9 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = mul nsw i32 %7, %10
  %12 = sext i32 %11 to i64
  %13 = mul i64 %12, 8
  %14 = trunc i64 %13 to i32
  %15 = call %struct.page** @vzalloc(i32 %14)
  store %struct.page** %15, %struct.page*** %3, align 8
  %16 = load %struct.page**, %struct.page*** %3, align 8
  %17 = icmp ne %struct.page** %16, null
  br i1 %17, label %23, label %18

18:                                               ; preds = %1
  %19 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %20 = call i32 @ipath_dev_err(%struct.ipath_devdata* %19, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0))
  %21 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %22 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %21, i32 0, i32 3
  store %struct.page** null, %struct.page*** %22, align 8
  br label %51

23:                                               ; preds = %1
  %24 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %25 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %28 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = mul nsw i32 %26, %29
  %31 = sext i32 %30 to i64
  %32 = mul i64 %31, 4
  %33 = trunc i64 %32 to i32
  %34 = call i32* @vmalloc(i32 %33)
  store i32* %34, i32** %4, align 8
  %35 = load i32*, i32** %4, align 8
  %36 = icmp ne i32* %35, null
  br i1 %36, label %44, label %37

37:                                               ; preds = %23
  %38 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %39 = call i32 @ipath_dev_err(%struct.ipath_devdata* %38, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.1, i64 0, i64 0))
  %40 = load %struct.page**, %struct.page*** %3, align 8
  %41 = call i32 @vfree(%struct.page** %40)
  %42 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %43 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %42, i32 0, i32 3
  store %struct.page** null, %struct.page*** %43, align 8
  br label %51

44:                                               ; preds = %23
  %45 = load %struct.page**, %struct.page*** %3, align 8
  %46 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %47 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %46, i32 0, i32 3
  store %struct.page** %45, %struct.page*** %47, align 8
  %48 = load i32*, i32** %4, align 8
  %49 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %50 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %49, i32 0, i32 2
  store i32* %48, i32** %50, align 8
  br label %51

51:                                               ; preds = %44, %37, %18
  ret void
}

declare dso_local %struct.page** @vzalloc(i32) #1

declare dso_local i32 @ipath_dev_err(%struct.ipath_devdata*, i8*) #1

declare dso_local i32* @vmalloc(i32) #1

declare dso_local i32 @vfree(%struct.page**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
