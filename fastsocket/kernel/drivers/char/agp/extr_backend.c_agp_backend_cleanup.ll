; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/agp/extr_backend.c_agp_backend_cleanup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/agp/extr_backend.c_agp_backend_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.agp_bridge_data = type { %struct.TYPE_2__*, i32, i32, i32* }
%struct.TYPE_2__ = type { i32 (i8*, i32)*, i32 (i32, i32)*, i64, i32 (%struct.agp_bridge_data*)*, i32 (...)* }

@AGP_PAGE_DESTROY_UNMAP = common dso_local global i32 0, align 4
@AGP_PAGE_DESTROY_FREE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.agp_bridge_data*)* @agp_backend_cleanup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @agp_backend_cleanup(%struct.agp_bridge_data* %0) #0 {
  %2 = alloca %struct.agp_bridge_data*, align 8
  %3 = alloca i8*, align 8
  store %struct.agp_bridge_data* %0, %struct.agp_bridge_data** %2, align 8
  %4 = load %struct.agp_bridge_data*, %struct.agp_bridge_data** %2, align 8
  %5 = getelementptr inbounds %struct.agp_bridge_data, %struct.agp_bridge_data* %4, i32 0, i32 0
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 4
  %8 = load i32 (...)*, i32 (...)** %7, align 8
  %9 = icmp ne i32 (...)* %8, null
  br i1 %9, label %10, label %17

10:                                               ; preds = %1
  %11 = load %struct.agp_bridge_data*, %struct.agp_bridge_data** %2, align 8
  %12 = getelementptr inbounds %struct.agp_bridge_data, %struct.agp_bridge_data* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 4
  %15 = load i32 (...)*, i32 (...)** %14, align 8
  %16 = call i32 (...) %15()
  br label %17

17:                                               ; preds = %10, %1
  %18 = load %struct.agp_bridge_data*, %struct.agp_bridge_data** %2, align 8
  %19 = getelementptr inbounds %struct.agp_bridge_data, %struct.agp_bridge_data* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 3
  %22 = load i32 (%struct.agp_bridge_data*)*, i32 (%struct.agp_bridge_data*)** %21, align 8
  %23 = icmp ne i32 (%struct.agp_bridge_data*)* %22, null
  br i1 %23, label %24, label %32

24:                                               ; preds = %17
  %25 = load %struct.agp_bridge_data*, %struct.agp_bridge_data** %2, align 8
  %26 = getelementptr inbounds %struct.agp_bridge_data, %struct.agp_bridge_data* %25, i32 0, i32 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 3
  %29 = load i32 (%struct.agp_bridge_data*)*, i32 (%struct.agp_bridge_data*)** %28, align 8
  %30 = load %struct.agp_bridge_data*, %struct.agp_bridge_data** %2, align 8
  %31 = call i32 %29(%struct.agp_bridge_data* %30)
  br label %32

32:                                               ; preds = %24, %17
  %33 = load %struct.agp_bridge_data*, %struct.agp_bridge_data** %2, align 8
  %34 = getelementptr inbounds %struct.agp_bridge_data, %struct.agp_bridge_data* %33, i32 0, i32 3
  %35 = load i32*, i32** %34, align 8
  %36 = call i32 @vfree(i32* %35)
  %37 = load %struct.agp_bridge_data*, %struct.agp_bridge_data** %2, align 8
  %38 = getelementptr inbounds %struct.agp_bridge_data, %struct.agp_bridge_data* %37, i32 0, i32 3
  store i32* null, i32** %38, align 8
  %39 = load %struct.agp_bridge_data*, %struct.agp_bridge_data** %2, align 8
  %40 = getelementptr inbounds %struct.agp_bridge_data, %struct.agp_bridge_data* %39, i32 0, i32 0
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32 (i8*, i32)*, i32 (i8*, i32)** %42, align 8
  %44 = icmp ne i32 (i8*, i32)* %43, null
  br i1 %44, label %45, label %93

45:                                               ; preds = %32
  %46 = load %struct.agp_bridge_data*, %struct.agp_bridge_data** %2, align 8
  %47 = getelementptr inbounds %struct.agp_bridge_data, %struct.agp_bridge_data* %46, i32 0, i32 0
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 2
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %93

52:                                               ; preds = %45
  %53 = load %struct.agp_bridge_data*, %struct.agp_bridge_data** %2, align 8
  %54 = getelementptr inbounds %struct.agp_bridge_data, %struct.agp_bridge_data* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = call i8* @page_address(i32 %55)
  store i8* %56, i8** %3, align 8
  %57 = load %struct.agp_bridge_data*, %struct.agp_bridge_data** %2, align 8
  %58 = getelementptr inbounds %struct.agp_bridge_data, %struct.agp_bridge_data* %57, i32 0, i32 0
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 1
  %61 = load i32 (i32, i32)*, i32 (i32, i32)** %60, align 8
  %62 = icmp ne i32 (i32, i32)* %61, null
  br i1 %62, label %63, label %76

63:                                               ; preds = %52
  %64 = load %struct.agp_bridge_data*, %struct.agp_bridge_data** %2, align 8
  %65 = getelementptr inbounds %struct.agp_bridge_data, %struct.agp_bridge_data* %64, i32 0, i32 0
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 1
  %68 = load i32 (i32, i32)*, i32 (i32, i32)** %67, align 8
  %69 = load %struct.agp_bridge_data*, %struct.agp_bridge_data** %2, align 8
  %70 = getelementptr inbounds %struct.agp_bridge_data, %struct.agp_bridge_data* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.agp_bridge_data*, %struct.agp_bridge_data** %2, align 8
  %73 = getelementptr inbounds %struct.agp_bridge_data, %struct.agp_bridge_data* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = call i32 %68(i32 %71, i32 %74)
  br label %76

76:                                               ; preds = %63, %52
  %77 = load %struct.agp_bridge_data*, %struct.agp_bridge_data** %2, align 8
  %78 = getelementptr inbounds %struct.agp_bridge_data, %struct.agp_bridge_data* %77, i32 0, i32 0
  %79 = load %struct.TYPE_2__*, %struct.TYPE_2__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 0
  %81 = load i32 (i8*, i32)*, i32 (i8*, i32)** %80, align 8
  %82 = load i8*, i8** %3, align 8
  %83 = load i32, i32* @AGP_PAGE_DESTROY_UNMAP, align 4
  %84 = call i32 %81(i8* %82, i32 %83)
  %85 = load %struct.agp_bridge_data*, %struct.agp_bridge_data** %2, align 8
  %86 = getelementptr inbounds %struct.agp_bridge_data, %struct.agp_bridge_data* %85, i32 0, i32 0
  %87 = load %struct.TYPE_2__*, %struct.TYPE_2__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 0
  %89 = load i32 (i8*, i32)*, i32 (i8*, i32)** %88, align 8
  %90 = load i8*, i8** %3, align 8
  %91 = load i32, i32* @AGP_PAGE_DESTROY_FREE, align 4
  %92 = call i32 %89(i8* %90, i32 %91)
  br label %93

93:                                               ; preds = %76, %45, %32
  ret void
}

declare dso_local i32 @vfree(i32*) #1

declare dso_local i8* @page_address(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
