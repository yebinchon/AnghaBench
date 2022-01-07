; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_ruc.c_qib_make_grh.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_ruc.c_qib_make_grh.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qib_ibport = type { i32*, i32 }
%struct.ib_grh = type { i32, %struct.TYPE_5__, i32, i32, i32, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.ib_global_route = type { i32, i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i32 }

@IB_GRH_VERSION = common dso_local global i32 0, align 4
@IB_GRH_VERSION_SHIFT = common dso_local global i32 0, align 4
@IB_GRH_TCLASS_SHIFT = common dso_local global i32 0, align 4
@IB_GRH_FLOW_SHIFT = common dso_local global i32 0, align 4
@SIZE_OF_CRC = common dso_local global i32 0, align 4
@IB_GRH_NEXT_HDR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qib_make_grh(%struct.qib_ibport* %0, %struct.ib_grh* %1, %struct.ib_global_route* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.qib_ibport*, align 8
  %7 = alloca %struct.ib_grh*, align 8
  %8 = alloca %struct.ib_global_route*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.qib_ibport* %0, %struct.qib_ibport** %6, align 8
  store %struct.ib_grh* %1, %struct.ib_grh** %7, align 8
  store %struct.ib_global_route* %2, %struct.ib_global_route** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %11 = load i32, i32* @IB_GRH_VERSION, align 4
  %12 = load i32, i32* @IB_GRH_VERSION_SHIFT, align 4
  %13 = shl i32 %11, %12
  %14 = load %struct.ib_global_route*, %struct.ib_global_route** %8, align 8
  %15 = getelementptr inbounds %struct.ib_global_route, %struct.ib_global_route* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @IB_GRH_TCLASS_SHIFT, align 4
  %18 = shl i32 %16, %17
  %19 = or i32 %13, %18
  %20 = load %struct.ib_global_route*, %struct.ib_global_route** %8, align 8
  %21 = getelementptr inbounds %struct.ib_global_route, %struct.ib_global_route* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @IB_GRH_FLOW_SHIFT, align 4
  %24 = shl i32 %22, %23
  %25 = or i32 %19, %24
  %26 = call i32 @cpu_to_be32(i32 %25)
  %27 = load %struct.ib_grh*, %struct.ib_grh** %7, align 8
  %28 = getelementptr inbounds %struct.ib_grh, %struct.ib_grh* %27, i32 0, i32 5
  store i32 %26, i32* %28, align 4
  %29 = load i32, i32* %9, align 4
  %30 = sub nsw i32 %29, 2
  %31 = load i32, i32* %10, align 4
  %32 = add nsw i32 %30, %31
  %33 = load i32, i32* @SIZE_OF_CRC, align 4
  %34 = add nsw i32 %32, %33
  %35 = shl i32 %34, 2
  %36 = call i32 @cpu_to_be16(i32 %35)
  %37 = load %struct.ib_grh*, %struct.ib_grh** %7, align 8
  %38 = getelementptr inbounds %struct.ib_grh, %struct.ib_grh* %37, i32 0, i32 4
  store i32 %36, i32* %38, align 4
  %39 = load i32, i32* @IB_GRH_NEXT_HDR, align 4
  %40 = load %struct.ib_grh*, %struct.ib_grh** %7, align 8
  %41 = getelementptr inbounds %struct.ib_grh, %struct.ib_grh* %40, i32 0, i32 3
  store i32 %39, i32* %41, align 4
  %42 = load %struct.ib_global_route*, %struct.ib_global_route** %8, align 8
  %43 = getelementptr inbounds %struct.ib_global_route, %struct.ib_global_route* %42, i32 0, i32 4
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.ib_grh*, %struct.ib_grh** %7, align 8
  %46 = getelementptr inbounds %struct.ib_grh, %struct.ib_grh* %45, i32 0, i32 2
  store i32 %44, i32* %46, align 4
  %47 = load %struct.qib_ibport*, %struct.qib_ibport** %6, align 8
  %48 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.ib_grh*, %struct.ib_grh** %7, align 8
  %51 = getelementptr inbounds %struct.ib_grh, %struct.ib_grh* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 1
  store i32 %49, i32* %53, align 4
  %54 = load %struct.ib_global_route*, %struct.ib_global_route** %8, align 8
  %55 = getelementptr inbounds %struct.ib_global_route, %struct.ib_global_route* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %69

58:                                               ; preds = %5
  %59 = load %struct.qib_ibport*, %struct.qib_ibport** %6, align 8
  %60 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %59, i32 0, i32 0
  %61 = load i32*, i32** %60, align 8
  %62 = load %struct.ib_global_route*, %struct.ib_global_route** %8, align 8
  %63 = getelementptr inbounds %struct.ib_global_route, %struct.ib_global_route* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  %65 = sub nsw i32 %64, 1
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %61, i64 %66
  %68 = load i32, i32* %67, align 4
  br label %74

69:                                               ; preds = %5
  %70 = load %struct.qib_ibport*, %struct.qib_ibport** %6, align 8
  %71 = call %struct.TYPE_6__* @ppd_from_ibp(%struct.qib_ibport* %70)
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  br label %74

74:                                               ; preds = %69, %58
  %75 = phi i32 [ %68, %58 ], [ %73, %69 ]
  %76 = load %struct.ib_grh*, %struct.ib_grh** %7, align 8
  %77 = getelementptr inbounds %struct.ib_grh, %struct.ib_grh* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 0
  store i32 %75, i32* %79, align 4
  %80 = load %struct.ib_global_route*, %struct.ib_global_route** %8, align 8
  %81 = getelementptr inbounds %struct.ib_global_route, %struct.ib_global_route* %80, i32 0, i32 3
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.ib_grh*, %struct.ib_grh** %7, align 8
  %84 = getelementptr inbounds %struct.ib_grh, %struct.ib_grh* %83, i32 0, i32 0
  store i32 %82, i32* %84, align 4
  ret i32 7
}

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local i32 @cpu_to_be16(i32) #1

declare dso_local %struct.TYPE_6__* @ppd_from_ibp(%struct.qib_ibport*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
