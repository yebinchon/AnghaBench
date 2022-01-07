; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/mthca/extr_mthca_av.c_mthca_ah_query.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/mthca/extr_mthca_av.c_mthca_ah_query.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_ah = type { i32 }
%struct.ib_ah_attr = type { i32, i32, i32, i32, %struct.TYPE_7__, i32, i32 }
%struct.TYPE_7__ = type { i32, i32, i32, %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.mthca_ah = type { i64, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.mthca_dev = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@MTHCA_AH_ON_HCA = common dso_local global i64 0, align 8
@ENOSYS = common dso_local global i32 0, align 4
@IB_AH_GRH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mthca_ah_query(%struct.ib_ah* %0, %struct.ib_ah_attr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ib_ah*, align 8
  %5 = alloca %struct.ib_ah_attr*, align 8
  %6 = alloca %struct.mthca_ah*, align 8
  %7 = alloca %struct.mthca_dev*, align 8
  store %struct.ib_ah* %0, %struct.ib_ah** %4, align 8
  store %struct.ib_ah_attr* %1, %struct.ib_ah_attr** %5, align 8
  %8 = load %struct.ib_ah*, %struct.ib_ah** %4, align 8
  %9 = call %struct.mthca_ah* @to_mah(%struct.ib_ah* %8)
  store %struct.mthca_ah* %9, %struct.mthca_ah** %6, align 8
  %10 = load %struct.ib_ah*, %struct.ib_ah** %4, align 8
  %11 = getelementptr inbounds %struct.ib_ah, %struct.ib_ah* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.mthca_dev* @to_mdev(i32 %12)
  store %struct.mthca_dev* %13, %struct.mthca_dev** %7, align 8
  %14 = load %struct.mthca_ah*, %struct.mthca_ah** %6, align 8
  %15 = getelementptr inbounds %struct.mthca_ah, %struct.mthca_ah* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @MTHCA_AH_ON_HCA, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %2
  %20 = load i32, i32* @ENOSYS, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %141

22:                                               ; preds = %2
  %23 = load %struct.ib_ah_attr*, %struct.ib_ah_attr** %5, align 8
  %24 = call i32 @memset(%struct.ib_ah_attr* %23, i32 0, i32 44)
  %25 = load %struct.mthca_ah*, %struct.mthca_ah** %6, align 8
  %26 = getelementptr inbounds %struct.mthca_ah, %struct.mthca_ah* %25, i32 0, i32 1
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 7
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @be16_to_cpu(i32 %29)
  %31 = load %struct.ib_ah_attr*, %struct.ib_ah_attr** %5, align 8
  %32 = getelementptr inbounds %struct.ib_ah_attr, %struct.ib_ah_attr* %31, i32 0, i32 6
  store i32 %30, i32* %32, align 4
  %33 = load %struct.mthca_ah*, %struct.mthca_ah** %6, align 8
  %34 = getelementptr inbounds %struct.mthca_ah, %struct.mthca_ah* %33, i32 0, i32 1
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 5
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @be32_to_cpu(i32 %37)
  %39 = ashr i32 %38, 28
  %40 = load %struct.ib_ah_attr*, %struct.ib_ah_attr** %5, align 8
  %41 = getelementptr inbounds %struct.ib_ah_attr, %struct.ib_ah_attr* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 4
  %42 = load %struct.mthca_ah*, %struct.mthca_ah** %6, align 8
  %43 = getelementptr inbounds %struct.mthca_ah, %struct.mthca_ah* %42, i32 0, i32 1
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 6
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @be32_to_cpu(i32 %46)
  %48 = ashr i32 %47, 24
  %49 = load %struct.ib_ah_attr*, %struct.ib_ah_attr** %5, align 8
  %50 = getelementptr inbounds %struct.ib_ah_attr, %struct.ib_ah_attr* %49, i32 0, i32 1
  store i32 %48, i32* %50, align 4
  %51 = load %struct.mthca_dev*, %struct.mthca_dev** %7, align 8
  %52 = load %struct.mthca_ah*, %struct.mthca_ah** %6, align 8
  %53 = getelementptr inbounds %struct.mthca_ah, %struct.mthca_ah* %52, i32 0, i32 1
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = and i32 %56, 7
  %58 = load %struct.ib_ah_attr*, %struct.ib_ah_attr** %5, align 8
  %59 = getelementptr inbounds %struct.ib_ah_attr, %struct.ib_ah_attr* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @mthca_rate_to_ib(%struct.mthca_dev* %51, i32 %57, i32 %60)
  %62 = load %struct.ib_ah_attr*, %struct.ib_ah_attr** %5, align 8
  %63 = getelementptr inbounds %struct.ib_ah_attr, %struct.ib_ah_attr* %62, i32 0, i32 5
  store i32 %61, i32* %63, align 4
  %64 = load %struct.mthca_ah*, %struct.mthca_ah** %6, align 8
  %65 = getelementptr inbounds %struct.mthca_ah, %struct.mthca_ah* %64, i32 0, i32 1
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = and i32 %68, 127
  %70 = load %struct.ib_ah_attr*, %struct.ib_ah_attr** %5, align 8
  %71 = getelementptr inbounds %struct.ib_ah_attr, %struct.ib_ah_attr* %70, i32 0, i32 2
  store i32 %69, i32* %71, align 4
  %72 = load %struct.mthca_ah*, %struct.mthca_ah** %6, align 8
  %73 = call i64 @mthca_ah_grh_present(%struct.mthca_ah* %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %22
  %76 = load i32, i32* @IB_AH_GRH, align 4
  br label %78

77:                                               ; preds = %22
  br label %78

78:                                               ; preds = %77, %75
  %79 = phi i32 [ %76, %75 ], [ 0, %77 ]
  %80 = load %struct.ib_ah_attr*, %struct.ib_ah_attr** %5, align 8
  %81 = getelementptr inbounds %struct.ib_ah_attr, %struct.ib_ah_attr* %80, i32 0, i32 3
  store i32 %79, i32* %81, align 4
  %82 = load %struct.ib_ah_attr*, %struct.ib_ah_attr** %5, align 8
  %83 = getelementptr inbounds %struct.ib_ah_attr, %struct.ib_ah_attr* %82, i32 0, i32 3
  %84 = load i32, i32* %83, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %140

86:                                               ; preds = %78
  %87 = load %struct.mthca_ah*, %struct.mthca_ah** %6, align 8
  %88 = getelementptr inbounds %struct.mthca_ah, %struct.mthca_ah* %87, i32 0, i32 1
  %89 = load %struct.TYPE_8__*, %struct.TYPE_8__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i32 0, i32 5
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @be32_to_cpu(i32 %91)
  %93 = ashr i32 %92, 20
  %94 = load %struct.ib_ah_attr*, %struct.ib_ah_attr** %5, align 8
  %95 = getelementptr inbounds %struct.ib_ah_attr, %struct.ib_ah_attr* %94, i32 0, i32 4
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %95, i32 0, i32 0
  store i32 %93, i32* %96, align 4
  %97 = load %struct.mthca_ah*, %struct.mthca_ah** %6, align 8
  %98 = getelementptr inbounds %struct.mthca_ah, %struct.mthca_ah* %97, i32 0, i32 1
  %99 = load %struct.TYPE_8__*, %struct.TYPE_8__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %99, i32 0, i32 5
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @be32_to_cpu(i32 %101)
  %103 = and i32 %102, 1048575
  %104 = load %struct.ib_ah_attr*, %struct.ib_ah_attr** %5, align 8
  %105 = getelementptr inbounds %struct.ib_ah_attr, %struct.ib_ah_attr* %104, i32 0, i32 4
  %106 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %105, i32 0, i32 1
  store i32 %103, i32* %106, align 4
  %107 = load %struct.mthca_ah*, %struct.mthca_ah** %6, align 8
  %108 = getelementptr inbounds %struct.mthca_ah, %struct.mthca_ah* %107, i32 0, i32 1
  %109 = load %struct.TYPE_8__*, %struct.TYPE_8__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %109, i32 0, i32 4
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.ib_ah_attr*, %struct.ib_ah_attr** %5, align 8
  %113 = getelementptr inbounds %struct.ib_ah_attr, %struct.ib_ah_attr* %112, i32 0, i32 4
  %114 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %113, i32 0, i32 4
  store i32 %111, i32* %114, align 4
  %115 = load %struct.mthca_ah*, %struct.mthca_ah** %6, align 8
  %116 = getelementptr inbounds %struct.mthca_ah, %struct.mthca_ah* %115, i32 0, i32 1
  %117 = load %struct.TYPE_8__*, %struct.TYPE_8__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.mthca_dev*, %struct.mthca_dev** %7, align 8
  %121 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = sub nsw i32 %123, 1
  %125 = and i32 %119, %124
  %126 = load %struct.ib_ah_attr*, %struct.ib_ah_attr** %5, align 8
  %127 = getelementptr inbounds %struct.ib_ah_attr, %struct.ib_ah_attr* %126, i32 0, i32 4
  %128 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %127, i32 0, i32 2
  store i32 %125, i32* %128, align 4
  %129 = load %struct.ib_ah_attr*, %struct.ib_ah_attr** %5, align 8
  %130 = getelementptr inbounds %struct.ib_ah_attr, %struct.ib_ah_attr* %129, i32 0, i32 4
  %131 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %130, i32 0, i32 3
  %132 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = load %struct.mthca_ah*, %struct.mthca_ah** %6, align 8
  %135 = getelementptr inbounds %struct.mthca_ah, %struct.mthca_ah* %134, i32 0, i32 1
  %136 = load %struct.TYPE_8__*, %struct.TYPE_8__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %136, i32 0, i32 3
  %138 = load i32, i32* %137, align 4
  %139 = call i32 @memcpy(i32 %133, i32 %138, i32 16)
  br label %140

140:                                              ; preds = %86, %78
  store i32 0, i32* %3, align 4
  br label %141

141:                                              ; preds = %140, %19
  %142 = load i32, i32* %3, align 4
  ret i32 %142
}

declare dso_local %struct.mthca_ah* @to_mah(%struct.ib_ah*) #1

declare dso_local %struct.mthca_dev* @to_mdev(i32) #1

declare dso_local i32 @memset(%struct.ib_ah_attr*, i32, i32) #1

declare dso_local i32 @be16_to_cpu(i32) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @mthca_rate_to_ib(%struct.mthca_dev*, i32, i32) #1

declare dso_local i64 @mthca_ah_grh_present(%struct.mthca_ah*) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
