; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_qeth_core_main.c_qeth_clear_output_buffer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_qeth_core_main.c_qeth_clear_output_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qeth_qdio_out_q = type { i32, i32 }
%struct.qeth_qdio_out_buffer = type { i32, i64, %struct.TYPE_4__*, i64* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i64, i32*, i64 }

@SBAL_SFLAGS0_PCI_REQ = common dso_local global i32 0, align 4
@QETH_QDIO_BUF_EMPTY = common dso_local global i32 0, align 4
@qeth_core_header_cache = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qeth_qdio_out_q*, %struct.qeth_qdio_out_buffer*, i32)* @qeth_clear_output_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qeth_clear_output_buffer(%struct.qeth_qdio_out_q* %0, %struct.qeth_qdio_out_buffer* %1, i32 %2) #0 {
  %4 = alloca %struct.qeth_qdio_out_q*, align 8
  %5 = alloca %struct.qeth_qdio_out_buffer*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.qeth_qdio_out_q* %0, %struct.qeth_qdio_out_q** %4, align 8
  store %struct.qeth_qdio_out_buffer* %1, %struct.qeth_qdio_out_buffer** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.qeth_qdio_out_buffer*, %struct.qeth_qdio_out_buffer** %5, align 8
  %9 = getelementptr inbounds %struct.qeth_qdio_out_buffer, %struct.qeth_qdio_out_buffer* %8, i32 0, i32 2
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i64 0
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @SBAL_SFLAGS0_PCI_REQ, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %3
  %20 = load %struct.qeth_qdio_out_q*, %struct.qeth_qdio_out_q** %4, align 8
  %21 = getelementptr inbounds %struct.qeth_qdio_out_q, %struct.qeth_qdio_out_q* %20, i32 0, i32 1
  %22 = call i32 @atomic_dec(i32* %21)
  br label %23

23:                                               ; preds = %19, %3
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* @QETH_QDIO_BUF_EMPTY, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %23
  %28 = load %struct.qeth_qdio_out_buffer*, %struct.qeth_qdio_out_buffer** %5, align 8
  %29 = call i32 @qeth_release_skbs(%struct.qeth_qdio_out_buffer* %28)
  br label %30

30:                                               ; preds = %27, %23
  store i32 0, i32* %7, align 4
  br label %31

31:                                               ; preds = %115, %30
  %32 = load i32, i32* %7, align 4
  %33 = load %struct.qeth_qdio_out_q*, %struct.qeth_qdio_out_q** %4, align 8
  %34 = getelementptr inbounds %struct.qeth_qdio_out_q, %struct.qeth_qdio_out_q* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @QETH_MAX_BUFFER_ELEMENTS(i32 %35)
  %37 = icmp slt i32 %32, %36
  br i1 %37, label %38, label %118

38:                                               ; preds = %31
  %39 = load %struct.qeth_qdio_out_buffer*, %struct.qeth_qdio_out_buffer** %5, align 8
  %40 = getelementptr inbounds %struct.qeth_qdio_out_buffer, %struct.qeth_qdio_out_buffer* %39, i32 0, i32 2
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %42, align 8
  %44 = load i32, i32* %7, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 2
  %48 = load i32*, i32** %47, align 8
  %49 = icmp ne i32* %48, null
  br i1 %49, label %50, label %72

50:                                               ; preds = %38
  %51 = load %struct.qeth_qdio_out_buffer*, %struct.qeth_qdio_out_buffer** %5, align 8
  %52 = getelementptr inbounds %struct.qeth_qdio_out_buffer, %struct.qeth_qdio_out_buffer* %51, i32 0, i32 3
  %53 = load i64*, i64** %52, align 8
  %54 = load i32, i32* %7, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i64, i64* %53, i64 %55
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %72

59:                                               ; preds = %50
  %60 = load i32, i32* @qeth_core_header_cache, align 4
  %61 = load %struct.qeth_qdio_out_buffer*, %struct.qeth_qdio_out_buffer** %5, align 8
  %62 = getelementptr inbounds %struct.qeth_qdio_out_buffer, %struct.qeth_qdio_out_buffer* %61, i32 0, i32 2
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = load %struct.TYPE_3__*, %struct.TYPE_3__** %64, align 8
  %66 = load i32, i32* %7, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 2
  %70 = load i32*, i32** %69, align 8
  %71 = call i32 @kmem_cache_free(i32 %60, i32* %70)
  br label %72

72:                                               ; preds = %59, %50, %38
  %73 = load %struct.qeth_qdio_out_buffer*, %struct.qeth_qdio_out_buffer** %5, align 8
  %74 = getelementptr inbounds %struct.qeth_qdio_out_buffer, %struct.qeth_qdio_out_buffer* %73, i32 0, i32 3
  %75 = load i64*, i64** %74, align 8
  %76 = load i32, i32* %7, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i64, i64* %75, i64 %77
  store i64 0, i64* %78, align 8
  %79 = load %struct.qeth_qdio_out_buffer*, %struct.qeth_qdio_out_buffer** %5, align 8
  %80 = getelementptr inbounds %struct.qeth_qdio_out_buffer, %struct.qeth_qdio_out_buffer* %79, i32 0, i32 2
  %81 = load %struct.TYPE_4__*, %struct.TYPE_4__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 0
  %83 = load %struct.TYPE_3__*, %struct.TYPE_3__** %82, align 8
  %84 = load i32, i32* %7, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i64 %85
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 3
  store i64 0, i64* %87, align 8
  %88 = load %struct.qeth_qdio_out_buffer*, %struct.qeth_qdio_out_buffer** %5, align 8
  %89 = getelementptr inbounds %struct.qeth_qdio_out_buffer, %struct.qeth_qdio_out_buffer* %88, i32 0, i32 2
  %90 = load %struct.TYPE_4__*, %struct.TYPE_4__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 0
  %92 = load %struct.TYPE_3__*, %struct.TYPE_3__** %91, align 8
  %93 = load i32, i32* %7, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i64 %94
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i32 0, i32 2
  store i32* null, i32** %96, align 8
  %97 = load %struct.qeth_qdio_out_buffer*, %struct.qeth_qdio_out_buffer** %5, align 8
  %98 = getelementptr inbounds %struct.qeth_qdio_out_buffer, %struct.qeth_qdio_out_buffer* %97, i32 0, i32 2
  %99 = load %struct.TYPE_4__*, %struct.TYPE_4__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 0
  %101 = load %struct.TYPE_3__*, %struct.TYPE_3__** %100, align 8
  %102 = load i32, i32* %7, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %101, i64 %103
  %105 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %104, i32 0, i32 1
  store i64 0, i64* %105, align 8
  %106 = load %struct.qeth_qdio_out_buffer*, %struct.qeth_qdio_out_buffer** %5, align 8
  %107 = getelementptr inbounds %struct.qeth_qdio_out_buffer, %struct.qeth_qdio_out_buffer* %106, i32 0, i32 2
  %108 = load %struct.TYPE_4__*, %struct.TYPE_4__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 0
  %110 = load %struct.TYPE_3__*, %struct.TYPE_3__** %109, align 8
  %111 = load i32, i32* %7, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %110, i64 %112
  %114 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %113, i32 0, i32 0
  store i32 0, i32* %114, align 8
  br label %115

115:                                              ; preds = %72
  %116 = load i32, i32* %7, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %7, align 4
  br label %31

118:                                              ; preds = %31
  %119 = load %struct.qeth_qdio_out_buffer*, %struct.qeth_qdio_out_buffer** %5, align 8
  %120 = getelementptr inbounds %struct.qeth_qdio_out_buffer, %struct.qeth_qdio_out_buffer* %119, i32 0, i32 2
  %121 = load %struct.TYPE_4__*, %struct.TYPE_4__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i32 0, i32 0
  %123 = load %struct.TYPE_3__*, %struct.TYPE_3__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %123, i64 15
  %125 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %124, i32 0, i32 1
  store i64 0, i64* %125, align 8
  %126 = load %struct.qeth_qdio_out_buffer*, %struct.qeth_qdio_out_buffer** %5, align 8
  %127 = getelementptr inbounds %struct.qeth_qdio_out_buffer, %struct.qeth_qdio_out_buffer* %126, i32 0, i32 2
  %128 = load %struct.TYPE_4__*, %struct.TYPE_4__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %128, i32 0, i32 0
  %130 = load %struct.TYPE_3__*, %struct.TYPE_3__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %130, i64 15
  %132 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %131, i32 0, i32 0
  store i32 0, i32* %132, align 8
  %133 = load %struct.qeth_qdio_out_buffer*, %struct.qeth_qdio_out_buffer** %5, align 8
  %134 = getelementptr inbounds %struct.qeth_qdio_out_buffer, %struct.qeth_qdio_out_buffer* %133, i32 0, i32 1
  store i64 0, i64* %134, align 8
  %135 = load %struct.qeth_qdio_out_buffer*, %struct.qeth_qdio_out_buffer** %5, align 8
  %136 = getelementptr inbounds %struct.qeth_qdio_out_buffer, %struct.qeth_qdio_out_buffer* %135, i32 0, i32 0
  %137 = load i32, i32* %6, align 4
  %138 = call i32 @atomic_set(i32* %136, i32 %137)
  ret void
}

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local i32 @qeth_release_skbs(%struct.qeth_qdio_out_buffer*) #1

declare dso_local i32 @QETH_MAX_BUFFER_ELEMENTS(i32) #1

declare dso_local i32 @kmem_cache_free(i32, i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
