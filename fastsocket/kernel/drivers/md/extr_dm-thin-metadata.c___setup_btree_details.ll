; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-thin-metadata.c___setup_btree_details.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-thin-metadata.c___setup_btree_details.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_pool_metadata = type { %struct.TYPE_16__, i32, %struct.TYPE_14__, i32, %struct.TYPE_12__, i32, %struct.TYPE_17__, %struct.TYPE_18__ }
%struct.TYPE_16__ = type { i32, %struct.TYPE_15__, i32 }
%struct.TYPE_15__ = type { i32, i32*, i32*, i32*, i32* }
%struct.TYPE_14__ = type { i32, %struct.TYPE_13__, i32 }
%struct.TYPE_13__ = type { i32, i8*, i8*, i8*, i32 }
%struct.TYPE_12__ = type { i32, %struct.TYPE_11__, i32 }
%struct.TYPE_11__ = type { i32, i32, i32, i32, %struct.TYPE_14__* }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_18__ = type { i32, %struct.TYPE_10__, i32 }
%struct.TYPE_10__ = type { i32, i8*, i8*, i8*, i32 }

@data_block_inc = common dso_local global i8* null, align 8
@data_block_dec = common dso_local global i8* null, align 8
@data_block_equal = common dso_local global i8* null, align 8
@subtree_inc = common dso_local global i32 0, align 4
@subtree_dec = common dso_local global i32 0, align 4
@subtree_equal = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dm_pool_metadata*)* @__setup_btree_details to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__setup_btree_details(%struct.dm_pool_metadata* %0) #0 {
  %2 = alloca %struct.dm_pool_metadata*, align 8
  store %struct.dm_pool_metadata* %0, %struct.dm_pool_metadata** %2, align 8
  %3 = load %struct.dm_pool_metadata*, %struct.dm_pool_metadata** %2, align 8
  %4 = getelementptr inbounds %struct.dm_pool_metadata, %struct.dm_pool_metadata* %3, i32 0, i32 1
  %5 = load i32, i32* %4, align 8
  %6 = load %struct.dm_pool_metadata*, %struct.dm_pool_metadata** %2, align 8
  %7 = getelementptr inbounds %struct.dm_pool_metadata, %struct.dm_pool_metadata* %6, i32 0, i32 7
  %8 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %7, i32 0, i32 2
  store i32 %5, i32* %8, align 8
  %9 = load %struct.dm_pool_metadata*, %struct.dm_pool_metadata** %2, align 8
  %10 = getelementptr inbounds %struct.dm_pool_metadata, %struct.dm_pool_metadata* %9, i32 0, i32 7
  %11 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %10, i32 0, i32 0
  store i32 2, i32* %11, align 8
  %12 = load %struct.dm_pool_metadata*, %struct.dm_pool_metadata** %2, align 8
  %13 = getelementptr inbounds %struct.dm_pool_metadata, %struct.dm_pool_metadata* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 8
  %15 = load %struct.dm_pool_metadata*, %struct.dm_pool_metadata** %2, align 8
  %16 = getelementptr inbounds %struct.dm_pool_metadata, %struct.dm_pool_metadata* %15, i32 0, i32 7
  %17 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 4
  store i32 %14, i32* %18, align 8
  %19 = load %struct.dm_pool_metadata*, %struct.dm_pool_metadata** %2, align 8
  %20 = getelementptr inbounds %struct.dm_pool_metadata, %struct.dm_pool_metadata* %19, i32 0, i32 7
  %21 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 0
  store i32 4, i32* %22, align 8
  %23 = load i8*, i8** @data_block_inc, align 8
  %24 = load %struct.dm_pool_metadata*, %struct.dm_pool_metadata** %2, align 8
  %25 = getelementptr inbounds %struct.dm_pool_metadata, %struct.dm_pool_metadata* %24, i32 0, i32 7
  %26 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 3
  store i8* %23, i8** %27, align 8
  %28 = load i8*, i8** @data_block_dec, align 8
  %29 = load %struct.dm_pool_metadata*, %struct.dm_pool_metadata** %2, align 8
  %30 = getelementptr inbounds %struct.dm_pool_metadata, %struct.dm_pool_metadata* %29, i32 0, i32 7
  %31 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 2
  store i8* %28, i8** %32, align 8
  %33 = load i8*, i8** @data_block_equal, align 8
  %34 = load %struct.dm_pool_metadata*, %struct.dm_pool_metadata** %2, align 8
  %35 = getelementptr inbounds %struct.dm_pool_metadata, %struct.dm_pool_metadata* %34, i32 0, i32 7
  %36 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 1
  store i8* %33, i8** %37, align 8
  %38 = load %struct.dm_pool_metadata*, %struct.dm_pool_metadata** %2, align 8
  %39 = getelementptr inbounds %struct.dm_pool_metadata, %struct.dm_pool_metadata* %38, i32 0, i32 6
  %40 = load %struct.dm_pool_metadata*, %struct.dm_pool_metadata** %2, align 8
  %41 = getelementptr inbounds %struct.dm_pool_metadata, %struct.dm_pool_metadata* %40, i32 0, i32 7
  %42 = call i32 @memcpy(%struct.TYPE_17__* %39, %struct.TYPE_18__* %41, i32 4)
  %43 = load %struct.dm_pool_metadata*, %struct.dm_pool_metadata** %2, align 8
  %44 = getelementptr inbounds %struct.dm_pool_metadata, %struct.dm_pool_metadata* %43, i32 0, i32 5
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.dm_pool_metadata*, %struct.dm_pool_metadata** %2, align 8
  %47 = getelementptr inbounds %struct.dm_pool_metadata, %struct.dm_pool_metadata* %46, i32 0, i32 6
  %48 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %47, i32 0, i32 0
  store i32 %45, i32* %48, align 4
  %49 = load %struct.dm_pool_metadata*, %struct.dm_pool_metadata** %2, align 8
  %50 = getelementptr inbounds %struct.dm_pool_metadata, %struct.dm_pool_metadata* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.dm_pool_metadata*, %struct.dm_pool_metadata** %2, align 8
  %53 = getelementptr inbounds %struct.dm_pool_metadata, %struct.dm_pool_metadata* %52, i32 0, i32 4
  %54 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %53, i32 0, i32 2
  store i32 %51, i32* %54, align 8
  %55 = load %struct.dm_pool_metadata*, %struct.dm_pool_metadata** %2, align 8
  %56 = getelementptr inbounds %struct.dm_pool_metadata, %struct.dm_pool_metadata* %55, i32 0, i32 4
  %57 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %56, i32 0, i32 0
  store i32 1, i32* %57, align 8
  %58 = load %struct.dm_pool_metadata*, %struct.dm_pool_metadata** %2, align 8
  %59 = getelementptr inbounds %struct.dm_pool_metadata, %struct.dm_pool_metadata* %58, i32 0, i32 2
  %60 = load %struct.dm_pool_metadata*, %struct.dm_pool_metadata** %2, align 8
  %61 = getelementptr inbounds %struct.dm_pool_metadata, %struct.dm_pool_metadata* %60, i32 0, i32 4
  %62 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %62, i32 0, i32 4
  store %struct.TYPE_14__* %59, %struct.TYPE_14__** %63, align 8
  %64 = load %struct.dm_pool_metadata*, %struct.dm_pool_metadata** %2, align 8
  %65 = getelementptr inbounds %struct.dm_pool_metadata, %struct.dm_pool_metadata* %64, i32 0, i32 4
  %66 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %66, i32 0, i32 0
  store i32 4, i32* %67, align 8
  %68 = load i32, i32* @subtree_inc, align 4
  %69 = load %struct.dm_pool_metadata*, %struct.dm_pool_metadata** %2, align 8
  %70 = getelementptr inbounds %struct.dm_pool_metadata, %struct.dm_pool_metadata* %69, i32 0, i32 4
  %71 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %71, i32 0, i32 3
  store i32 %68, i32* %72, align 4
  %73 = load i32, i32* @subtree_dec, align 4
  %74 = load %struct.dm_pool_metadata*, %struct.dm_pool_metadata** %2, align 8
  %75 = getelementptr inbounds %struct.dm_pool_metadata, %struct.dm_pool_metadata* %74, i32 0, i32 4
  %76 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %76, i32 0, i32 2
  store i32 %73, i32* %77, align 8
  %78 = load i32, i32* @subtree_equal, align 4
  %79 = load %struct.dm_pool_metadata*, %struct.dm_pool_metadata** %2, align 8
  %80 = getelementptr inbounds %struct.dm_pool_metadata, %struct.dm_pool_metadata* %79, i32 0, i32 4
  %81 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %81, i32 0, i32 1
  store i32 %78, i32* %82, align 4
  %83 = load %struct.dm_pool_metadata*, %struct.dm_pool_metadata** %2, align 8
  %84 = getelementptr inbounds %struct.dm_pool_metadata, %struct.dm_pool_metadata* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 8
  %86 = load %struct.dm_pool_metadata*, %struct.dm_pool_metadata** %2, align 8
  %87 = getelementptr inbounds %struct.dm_pool_metadata, %struct.dm_pool_metadata* %86, i32 0, i32 2
  %88 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %87, i32 0, i32 2
  store i32 %85, i32* %88, align 8
  %89 = load %struct.dm_pool_metadata*, %struct.dm_pool_metadata** %2, align 8
  %90 = getelementptr inbounds %struct.dm_pool_metadata, %struct.dm_pool_metadata* %89, i32 0, i32 2
  %91 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %90, i32 0, i32 0
  store i32 1, i32* %91, align 8
  %92 = load %struct.dm_pool_metadata*, %struct.dm_pool_metadata** %2, align 8
  %93 = getelementptr inbounds %struct.dm_pool_metadata, %struct.dm_pool_metadata* %92, i32 0, i32 3
  %94 = load i32, i32* %93, align 8
  %95 = load %struct.dm_pool_metadata*, %struct.dm_pool_metadata** %2, align 8
  %96 = getelementptr inbounds %struct.dm_pool_metadata, %struct.dm_pool_metadata* %95, i32 0, i32 2
  %97 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %96, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %97, i32 0, i32 4
  store i32 %94, i32* %98, align 8
  %99 = load %struct.dm_pool_metadata*, %struct.dm_pool_metadata** %2, align 8
  %100 = getelementptr inbounds %struct.dm_pool_metadata, %struct.dm_pool_metadata* %99, i32 0, i32 2
  %101 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %100, i32 0, i32 1
  %102 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %101, i32 0, i32 0
  store i32 4, i32* %102, align 8
  %103 = load i8*, i8** @data_block_inc, align 8
  %104 = load %struct.dm_pool_metadata*, %struct.dm_pool_metadata** %2, align 8
  %105 = getelementptr inbounds %struct.dm_pool_metadata, %struct.dm_pool_metadata* %104, i32 0, i32 2
  %106 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %105, i32 0, i32 1
  %107 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %106, i32 0, i32 3
  store i8* %103, i8** %107, align 8
  %108 = load i8*, i8** @data_block_dec, align 8
  %109 = load %struct.dm_pool_metadata*, %struct.dm_pool_metadata** %2, align 8
  %110 = getelementptr inbounds %struct.dm_pool_metadata, %struct.dm_pool_metadata* %109, i32 0, i32 2
  %111 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %110, i32 0, i32 1
  %112 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %111, i32 0, i32 2
  store i8* %108, i8** %112, align 8
  %113 = load i8*, i8** @data_block_equal, align 8
  %114 = load %struct.dm_pool_metadata*, %struct.dm_pool_metadata** %2, align 8
  %115 = getelementptr inbounds %struct.dm_pool_metadata, %struct.dm_pool_metadata* %114, i32 0, i32 2
  %116 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %115, i32 0, i32 1
  %117 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %116, i32 0, i32 1
  store i8* %113, i8** %117, align 8
  %118 = load %struct.dm_pool_metadata*, %struct.dm_pool_metadata** %2, align 8
  %119 = getelementptr inbounds %struct.dm_pool_metadata, %struct.dm_pool_metadata* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 8
  %121 = load %struct.dm_pool_metadata*, %struct.dm_pool_metadata** %2, align 8
  %122 = getelementptr inbounds %struct.dm_pool_metadata, %struct.dm_pool_metadata* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %122, i32 0, i32 2
  store i32 %120, i32* %123, align 8
  %124 = load %struct.dm_pool_metadata*, %struct.dm_pool_metadata** %2, align 8
  %125 = getelementptr inbounds %struct.dm_pool_metadata, %struct.dm_pool_metadata* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %125, i32 0, i32 0
  store i32 1, i32* %126, align 8
  %127 = load %struct.dm_pool_metadata*, %struct.dm_pool_metadata** %2, align 8
  %128 = getelementptr inbounds %struct.dm_pool_metadata, %struct.dm_pool_metadata* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %128, i32 0, i32 1
  %130 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %129, i32 0, i32 4
  store i32* null, i32** %130, align 8
  %131 = load %struct.dm_pool_metadata*, %struct.dm_pool_metadata** %2, align 8
  %132 = getelementptr inbounds %struct.dm_pool_metadata, %struct.dm_pool_metadata* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %132, i32 0, i32 1
  %134 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %133, i32 0, i32 0
  store i32 4, i32* %134, align 8
  %135 = load %struct.dm_pool_metadata*, %struct.dm_pool_metadata** %2, align 8
  %136 = getelementptr inbounds %struct.dm_pool_metadata, %struct.dm_pool_metadata* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %136, i32 0, i32 1
  %138 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %137, i32 0, i32 3
  store i32* null, i32** %138, align 8
  %139 = load %struct.dm_pool_metadata*, %struct.dm_pool_metadata** %2, align 8
  %140 = getelementptr inbounds %struct.dm_pool_metadata, %struct.dm_pool_metadata* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %140, i32 0, i32 1
  %142 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %141, i32 0, i32 2
  store i32* null, i32** %142, align 8
  %143 = load %struct.dm_pool_metadata*, %struct.dm_pool_metadata** %2, align 8
  %144 = getelementptr inbounds %struct.dm_pool_metadata, %struct.dm_pool_metadata* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %144, i32 0, i32 1
  %146 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %145, i32 0, i32 1
  store i32* null, i32** %146, align 8
  ret void
}

declare dso_local i32 @memcpy(%struct.TYPE_17__*, %struct.TYPE_18__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
