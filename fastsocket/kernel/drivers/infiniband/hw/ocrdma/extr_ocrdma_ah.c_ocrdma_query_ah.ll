; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ocrdma/extr_ocrdma_ah.c_ocrdma_query_ah.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ocrdma/extr_ocrdma_ah.c_ocrdma_query_ah.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_ah = type { i32 }
%struct.ib_ah_attr = type { i32, %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i32, i32, i32, i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32* }
%struct.ocrdma_ah = type { i32, %struct.ocrdma_av* }
%struct.ocrdma_av = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.ocrdma_grh = type { i32, i32, i32* }

@IB_AH_GRH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ocrdma_query_ah(%struct.ib_ah* %0, %struct.ib_ah_attr* %1) #0 {
  %3 = alloca %struct.ib_ah*, align 8
  %4 = alloca %struct.ib_ah_attr*, align 8
  %5 = alloca %struct.ocrdma_ah*, align 8
  %6 = alloca %struct.ocrdma_av*, align 8
  %7 = alloca %struct.ocrdma_grh*, align 8
  store %struct.ib_ah* %0, %struct.ib_ah** %3, align 8
  store %struct.ib_ah_attr* %1, %struct.ib_ah_attr** %4, align 8
  %8 = load %struct.ib_ah*, %struct.ib_ah** %3, align 8
  %9 = call %struct.ocrdma_ah* @get_ocrdma_ah(%struct.ib_ah* %8)
  store %struct.ocrdma_ah* %9, %struct.ocrdma_ah** %5, align 8
  %10 = load %struct.ocrdma_ah*, %struct.ocrdma_ah** %5, align 8
  %11 = getelementptr inbounds %struct.ocrdma_ah, %struct.ocrdma_ah* %10, i32 0, i32 1
  %12 = load %struct.ocrdma_av*, %struct.ocrdma_av** %11, align 8
  store %struct.ocrdma_av* %12, %struct.ocrdma_av** %6, align 8
  %13 = load i32, i32* @IB_AH_GRH, align 4
  %14 = load %struct.ib_ah_attr*, %struct.ib_ah_attr** %4, align 8
  %15 = getelementptr inbounds %struct.ib_ah_attr, %struct.ib_ah_attr* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 8
  %17 = or i32 %16, %13
  store i32 %17, i32* %15, align 8
  %18 = load %struct.ocrdma_ah*, %struct.ocrdma_ah** %5, align 8
  %19 = getelementptr inbounds %struct.ocrdma_ah, %struct.ocrdma_ah* %18, i32 0, i32 1
  %20 = load %struct.ocrdma_av*, %struct.ocrdma_av** %19, align 8
  %21 = getelementptr inbounds %struct.ocrdma_av, %struct.ocrdma_av* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @Bit(i32 1)
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %41

26:                                               ; preds = %2
  %27 = load %struct.ocrdma_ah*, %struct.ocrdma_ah** %5, align 8
  %28 = getelementptr inbounds %struct.ocrdma_ah, %struct.ocrdma_ah* %27, i32 0, i32 1
  %29 = load %struct.ocrdma_av*, %struct.ocrdma_av** %28, align 8
  %30 = bitcast %struct.ocrdma_av* %29 to i32*
  %31 = getelementptr inbounds i32, i32* %30, i64 4
  %32 = bitcast i32* %31 to %struct.ocrdma_grh*
  store %struct.ocrdma_grh* %32, %struct.ocrdma_grh** %7, align 8
  %33 = load %struct.ocrdma_av*, %struct.ocrdma_av** %6, align 8
  %34 = getelementptr inbounds %struct.ocrdma_av, %struct.ocrdma_av* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @be16_to_cpu(i32 %36)
  %38 = ashr i32 %37, 13
  %39 = load %struct.ib_ah_attr*, %struct.ib_ah_attr** %4, align 8
  %40 = getelementptr inbounds %struct.ib_ah_attr, %struct.ib_ah_attr* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 8
  br label %50

41:                                               ; preds = %2
  %42 = load %struct.ocrdma_ah*, %struct.ocrdma_ah** %5, align 8
  %43 = getelementptr inbounds %struct.ocrdma_ah, %struct.ocrdma_ah* %42, i32 0, i32 1
  %44 = load %struct.ocrdma_av*, %struct.ocrdma_av** %43, align 8
  %45 = bitcast %struct.ocrdma_av* %44 to i32*
  %46 = getelementptr inbounds i32, i32* %45, i64 4
  %47 = bitcast i32* %46 to %struct.ocrdma_grh*
  store %struct.ocrdma_grh* %47, %struct.ocrdma_grh** %7, align 8
  %48 = load %struct.ib_ah_attr*, %struct.ib_ah_attr** %4, align 8
  %49 = getelementptr inbounds %struct.ib_ah_attr, %struct.ib_ah_attr* %48, i32 0, i32 0
  store i32 0, i32* %49, align 8
  br label %50

50:                                               ; preds = %41, %26
  %51 = load %struct.ib_ah_attr*, %struct.ib_ah_attr** %4, align 8
  %52 = getelementptr inbounds %struct.ib_ah_attr, %struct.ib_ah_attr* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 4
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 0
  %57 = load %struct.ocrdma_grh*, %struct.ocrdma_grh** %7, align 8
  %58 = getelementptr inbounds %struct.ocrdma_grh, %struct.ocrdma_grh* %57, i32 0, i32 2
  %59 = load i32*, i32** %58, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 0
  %61 = call i32 @memcpy(i32* %56, i32* %60, i32 8)
  %62 = load %struct.ocrdma_ah*, %struct.ocrdma_ah** %5, align 8
  %63 = getelementptr inbounds %struct.ocrdma_ah, %struct.ocrdma_ah* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.ib_ah_attr*, %struct.ib_ah_attr** %4, align 8
  %66 = getelementptr inbounds %struct.ib_ah_attr, %struct.ib_ah_attr* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 3
  store i32 %64, i32* %67, align 4
  %68 = load %struct.ocrdma_grh*, %struct.ocrdma_grh** %7, align 8
  %69 = getelementptr inbounds %struct.ocrdma_grh, %struct.ocrdma_grh* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @be32_to_cpu(i32 %70)
  %72 = and i32 %71, 255
  %73 = load %struct.ib_ah_attr*, %struct.ib_ah_attr** %4, align 8
  %74 = getelementptr inbounds %struct.ib_ah_attr, %struct.ib_ah_attr* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 0
  store i32 %72, i32* %75, align 8
  %76 = load %struct.ocrdma_grh*, %struct.ocrdma_grh** %7, align 8
  %77 = getelementptr inbounds %struct.ocrdma_grh, %struct.ocrdma_grh* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @be32_to_cpu(i32 %78)
  %80 = ashr i32 %79, 24
  %81 = load %struct.ib_ah_attr*, %struct.ib_ah_attr** %4, align 8
  %82 = getelementptr inbounds %struct.ib_ah_attr, %struct.ib_ah_attr* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 1
  store i32 %80, i32* %83, align 4
  %84 = load %struct.ocrdma_grh*, %struct.ocrdma_grh** %7, align 8
  %85 = getelementptr inbounds %struct.ocrdma_grh, %struct.ocrdma_grh* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = call i32 @be32_to_cpu(i32 %86)
  %88 = load %struct.ib_ah_attr*, %struct.ib_ah_attr** %4, align 8
  %89 = getelementptr inbounds %struct.ib_ah_attr, %struct.ib_ah_attr* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 2
  store i32 %87, i32* %90, align 8
  ret i32 0
}

declare dso_local %struct.ocrdma_ah* @get_ocrdma_ah(%struct.ib_ah*) #1

declare dso_local i32 @Bit(i32) #1

declare dso_local i32 @be16_to_cpu(i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @be32_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
