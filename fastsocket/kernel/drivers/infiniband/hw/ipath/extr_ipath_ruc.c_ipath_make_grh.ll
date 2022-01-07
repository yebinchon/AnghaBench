; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ipath/extr_ipath_ruc.c_ipath_make_grh.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ipath/extr_ipath_ruc.c_ipath_make_grh.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipath_ibdev = type { %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.ib_grh = type { i32, i32, %struct.TYPE_5__, i32, i32, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.ib_global_route = type { i32, i32, i32, i32 }

@SIZE_OF_CRC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ipath_make_grh(%struct.ipath_ibdev* %0, %struct.ib_grh* %1, %struct.ib_global_route* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.ipath_ibdev*, align 8
  %7 = alloca %struct.ib_grh*, align 8
  %8 = alloca %struct.ib_global_route*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ipath_ibdev* %0, %struct.ipath_ibdev** %6, align 8
  store %struct.ib_grh* %1, %struct.ib_grh** %7, align 8
  store %struct.ib_global_route* %2, %struct.ib_global_route** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %11 = load %struct.ib_global_route*, %struct.ib_global_route** %8, align 8
  %12 = getelementptr inbounds %struct.ib_global_route, %struct.ib_global_route* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = shl i32 %13, 20
  %15 = or i32 1610612736, %14
  %16 = load %struct.ib_global_route*, %struct.ib_global_route** %8, align 8
  %17 = getelementptr inbounds %struct.ib_global_route, %struct.ib_global_route* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = or i32 %15, %18
  %20 = call i32 @cpu_to_be32(i32 %19)
  %21 = load %struct.ib_grh*, %struct.ib_grh** %7, align 8
  %22 = getelementptr inbounds %struct.ib_grh, %struct.ib_grh* %21, i32 0, i32 5
  store i32 %20, i32* %22, align 4
  %23 = load i32, i32* %9, align 4
  %24 = sub nsw i32 %23, 2
  %25 = load i32, i32* %10, align 4
  %26 = add nsw i32 %24, %25
  %27 = load i32, i32* @SIZE_OF_CRC, align 4
  %28 = add nsw i32 %26, %27
  %29 = shl i32 %28, 2
  %30 = call i32 @cpu_to_be16(i32 %29)
  %31 = load %struct.ib_grh*, %struct.ib_grh** %7, align 8
  %32 = getelementptr inbounds %struct.ib_grh, %struct.ib_grh* %31, i32 0, i32 4
  store i32 %30, i32* %32, align 4
  %33 = load %struct.ib_grh*, %struct.ib_grh** %7, align 8
  %34 = getelementptr inbounds %struct.ib_grh, %struct.ib_grh* %33, i32 0, i32 0
  store i32 27, i32* %34, align 4
  %35 = load %struct.ib_global_route*, %struct.ib_global_route** %8, align 8
  %36 = getelementptr inbounds %struct.ib_global_route, %struct.ib_global_route* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.ib_grh*, %struct.ib_grh** %7, align 8
  %39 = getelementptr inbounds %struct.ib_grh, %struct.ib_grh* %38, i32 0, i32 3
  store i32 %37, i32* %39, align 4
  %40 = load %struct.ipath_ibdev*, %struct.ipath_ibdev** %6, align 8
  %41 = getelementptr inbounds %struct.ipath_ibdev, %struct.ipath_ibdev* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.ib_grh*, %struct.ib_grh** %7, align 8
  %44 = getelementptr inbounds %struct.ib_grh, %struct.ib_grh* %43, i32 0, i32 2
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 1
  store i32 %42, i32* %46, align 4
  %47 = load %struct.ipath_ibdev*, %struct.ipath_ibdev** %6, align 8
  %48 = getelementptr inbounds %struct.ipath_ibdev, %struct.ipath_ibdev* %47, i32 0, i32 0
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.ib_grh*, %struct.ib_grh** %7, align 8
  %53 = getelementptr inbounds %struct.ib_grh, %struct.ib_grh* %52, i32 0, i32 2
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  store i32 %51, i32* %55, align 4
  %56 = load %struct.ib_global_route*, %struct.ib_global_route** %8, align 8
  %57 = getelementptr inbounds %struct.ib_global_route, %struct.ib_global_route* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.ib_grh*, %struct.ib_grh** %7, align 8
  %60 = getelementptr inbounds %struct.ib_grh, %struct.ib_grh* %59, i32 0, i32 1
  store i32 %58, i32* %60, align 4
  ret i32 7
}

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local i32 @cpu_to_be16(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
