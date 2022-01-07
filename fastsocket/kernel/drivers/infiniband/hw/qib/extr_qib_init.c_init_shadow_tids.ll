; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_init.c_init_shadow_tids.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_init.c_init_shadow_tids.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qib_devdata = type { i32, i32, %struct.page**, i32* }
%struct.page = type { i32 }

@.str = private unnamed_addr constant [60 x i8] c"failed to allocate shadow page * array, no expected sends!\0A\00", align 1
@.str.1 = private unnamed_addr constant [64 x i8] c"failed to allocate shadow dma handle array, no expected sends!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qib_devdata*)* @init_shadow_tids to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_shadow_tids(%struct.qib_devdata* %0) #0 {
  %2 = alloca %struct.qib_devdata*, align 8
  %3 = alloca %struct.page**, align 8
  %4 = alloca i32*, align 8
  store %struct.qib_devdata* %0, %struct.qib_devdata** %2, align 8
  %5 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %6 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %9 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = mul nsw i32 %7, %10
  %12 = sext i32 %11 to i64
  %13 = mul i64 %12, 8
  %14 = trunc i64 %13 to i32
  %15 = call i8* @vzalloc(i32 %14)
  %16 = bitcast i8* %15 to %struct.page**
  store %struct.page** %16, %struct.page*** %3, align 8
  %17 = load %struct.page**, %struct.page*** %3, align 8
  %18 = icmp ne %struct.page** %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %1
  %20 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %21 = call i32 @qib_dev_err(%struct.qib_devdata* %20, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0))
  br label %50

22:                                               ; preds = %1
  %23 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %24 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %27 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = mul nsw i32 %25, %28
  %30 = sext i32 %29 to i64
  %31 = mul i64 %30, 4
  %32 = trunc i64 %31 to i32
  %33 = call i8* @vzalloc(i32 %32)
  %34 = bitcast i8* %33 to i32*
  store i32* %34, i32** %4, align 8
  %35 = load i32*, i32** %4, align 8
  %36 = icmp ne i32* %35, null
  br i1 %36, label %40, label %37

37:                                               ; preds = %22
  %38 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %39 = call i32 @qib_dev_err(%struct.qib_devdata* %38, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.1, i64 0, i64 0))
  br label %47

40:                                               ; preds = %22
  %41 = load %struct.page**, %struct.page*** %3, align 8
  %42 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %43 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %42, i32 0, i32 2
  store %struct.page** %41, %struct.page*** %43, align 8
  %44 = load i32*, i32** %4, align 8
  %45 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %46 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %45, i32 0, i32 3
  store i32* %44, i32** %46, align 8
  br label %53

47:                                               ; preds = %37
  %48 = load %struct.page**, %struct.page*** %3, align 8
  %49 = call i32 @vfree(%struct.page** %48)
  br label %50

50:                                               ; preds = %47, %19
  %51 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %52 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %51, i32 0, i32 2
  store %struct.page** null, %struct.page*** %52, align 8
  br label %53

53:                                               ; preds = %50, %40
  ret void
}

declare dso_local i8* @vzalloc(i32) #1

declare dso_local i32 @qib_dev_err(%struct.qib_devdata*, i8*) #1

declare dso_local i32 @vfree(%struct.page**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
