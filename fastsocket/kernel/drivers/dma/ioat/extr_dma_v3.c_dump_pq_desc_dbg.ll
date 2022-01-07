; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/dma/ioat/extr_dma_v3.c_dump_pq_desc_dbg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/dma/ioat/extr_dma_v3.c_dump_pq_desc_dbg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ioat2_dma_chan = type { i32 }
%struct.ioat_ring_ent = type { %struct.TYPE_3__, %struct.ioat_pq_ext_descriptor*, %struct.ioat_pq_descriptor* }
%struct.TYPE_3__ = type { i32, i64 }
%struct.ioat_pq_ext_descriptor = type { i64 }
%struct.ioat_pq_descriptor = type { i32, i32, i32*, %struct.TYPE_4__, i32, i32, i64 }
%struct.TYPE_4__ = type { i32, i64, i64, i32, i32, i32 }
%struct.device = type { i32 }
%struct.ioat_raw_descriptor = type opaque

@.str = private unnamed_addr constant [104 x i8] c"desc[%d]: (%#llx->%#llx) flags: %#x sz: %#x ctl: %#x (op: %d int: %d compl: %d pq: '%s%s' src_cnt: %d)\0A\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"p\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"q\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"\09src[%d]: %#llx coef: %#x\0A\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"\09P: %#llx\0A\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"\09Q: %#llx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ioat2_dma_chan*, %struct.ioat_ring_ent*, %struct.ioat_ring_ent*)* @dump_pq_desc_dbg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dump_pq_desc_dbg(%struct.ioat2_dma_chan* %0, %struct.ioat_ring_ent* %1, %struct.ioat_ring_ent* %2) #0 {
  %4 = alloca %struct.ioat2_dma_chan*, align 8
  %5 = alloca %struct.ioat_ring_ent*, align 8
  %6 = alloca %struct.ioat_ring_ent*, align 8
  %7 = alloca %struct.device*, align 8
  %8 = alloca %struct.ioat_pq_descriptor*, align 8
  %9 = alloca %struct.ioat_pq_ext_descriptor*, align 8
  %10 = alloca [2 x %struct.ioat_raw_descriptor*], align 16
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.ioat2_dma_chan* %0, %struct.ioat2_dma_chan** %4, align 8
  store %struct.ioat_ring_ent* %1, %struct.ioat_ring_ent** %5, align 8
  store %struct.ioat_ring_ent* %2, %struct.ioat_ring_ent** %6, align 8
  %13 = load %struct.ioat2_dma_chan*, %struct.ioat2_dma_chan** %4, align 8
  %14 = getelementptr inbounds %struct.ioat2_dma_chan, %struct.ioat2_dma_chan* %13, i32 0, i32 0
  %15 = call %struct.device* @to_dev(i32* %14)
  store %struct.device* %15, %struct.device** %7, align 8
  %16 = load %struct.ioat_ring_ent*, %struct.ioat_ring_ent** %5, align 8
  %17 = getelementptr inbounds %struct.ioat_ring_ent, %struct.ioat_ring_ent* %16, i32 0, i32 2
  %18 = load %struct.ioat_pq_descriptor*, %struct.ioat_pq_descriptor** %17, align 8
  store %struct.ioat_pq_descriptor* %18, %struct.ioat_pq_descriptor** %8, align 8
  %19 = load %struct.ioat_ring_ent*, %struct.ioat_ring_ent** %6, align 8
  %20 = icmp ne %struct.ioat_ring_ent* %19, null
  br i1 %20, label %21, label %25

21:                                               ; preds = %3
  %22 = load %struct.ioat_ring_ent*, %struct.ioat_ring_ent** %6, align 8
  %23 = getelementptr inbounds %struct.ioat_ring_ent, %struct.ioat_ring_ent* %22, i32 0, i32 1
  %24 = load %struct.ioat_pq_ext_descriptor*, %struct.ioat_pq_ext_descriptor** %23, align 8
  br label %26

25:                                               ; preds = %3
  br label %26

26:                                               ; preds = %25, %21
  %27 = phi %struct.ioat_pq_ext_descriptor* [ %24, %21 ], [ null, %25 ]
  store %struct.ioat_pq_ext_descriptor* %27, %struct.ioat_pq_ext_descriptor** %9, align 8
  %28 = getelementptr inbounds [2 x %struct.ioat_raw_descriptor*], [2 x %struct.ioat_raw_descriptor*]* %10, i64 0, i64 0
  %29 = load %struct.ioat_pq_descriptor*, %struct.ioat_pq_descriptor** %8, align 8
  %30 = bitcast %struct.ioat_pq_descriptor* %29 to i8*
  %31 = bitcast i8* %30 to %struct.ioat_raw_descriptor*
  store %struct.ioat_raw_descriptor* %31, %struct.ioat_raw_descriptor** %28, align 8
  %32 = getelementptr inbounds %struct.ioat_raw_descriptor*, %struct.ioat_raw_descriptor** %28, i64 1
  %33 = load %struct.ioat_pq_ext_descriptor*, %struct.ioat_pq_ext_descriptor** %9, align 8
  %34 = bitcast %struct.ioat_pq_ext_descriptor* %33 to i8*
  %35 = bitcast i8* %34 to %struct.ioat_raw_descriptor*
  store %struct.ioat_raw_descriptor* %35, %struct.ioat_raw_descriptor** %32, align 8
  %36 = load %struct.ioat_pq_descriptor*, %struct.ioat_pq_descriptor** %8, align 8
  %37 = getelementptr inbounds %struct.ioat_pq_descriptor, %struct.ioat_pq_descriptor* %36, i32 0, i32 3
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @src_cnt_to_sw(i32 %39)
  store i32 %40, i32* %11, align 4
  %41 = load %struct.device*, %struct.device** %7, align 8
  %42 = load %struct.ioat_ring_ent*, %struct.ioat_ring_ent** %5, align 8
  %43 = call i32 @desc_id(%struct.ioat_ring_ent* %42)
  %44 = load %struct.ioat_ring_ent*, %struct.ioat_ring_ent** %5, align 8
  %45 = getelementptr inbounds %struct.ioat_ring_ent, %struct.ioat_ring_ent* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.ioat_pq_ext_descriptor*, %struct.ioat_pq_ext_descriptor** %9, align 8
  %49 = icmp ne %struct.ioat_pq_ext_descriptor* %48, null
  br i1 %49, label %50, label %54

50:                                               ; preds = %26
  %51 = load %struct.ioat_pq_ext_descriptor*, %struct.ioat_pq_ext_descriptor** %9, align 8
  %52 = getelementptr inbounds %struct.ioat_pq_ext_descriptor, %struct.ioat_pq_ext_descriptor* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  br label %58

54:                                               ; preds = %26
  %55 = load %struct.ioat_pq_descriptor*, %struct.ioat_pq_descriptor** %8, align 8
  %56 = getelementptr inbounds %struct.ioat_pq_descriptor, %struct.ioat_pq_descriptor* %55, i32 0, i32 6
  %57 = load i64, i64* %56, align 8
  br label %58

58:                                               ; preds = %54, %50
  %59 = phi i64 [ %53, %50 ], [ %57, %54 ]
  %60 = load %struct.ioat_ring_ent*, %struct.ioat_ring_ent** %5, align 8
  %61 = getelementptr inbounds %struct.ioat_ring_ent, %struct.ioat_ring_ent* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load %struct.ioat_pq_descriptor*, %struct.ioat_pq_descriptor** %8, align 8
  %65 = getelementptr inbounds %struct.ioat_pq_descriptor, %struct.ioat_pq_descriptor* %64, i32 0, i32 5
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.ioat_pq_descriptor*, %struct.ioat_pq_descriptor** %8, align 8
  %68 = getelementptr inbounds %struct.ioat_pq_descriptor, %struct.ioat_pq_descriptor* %67, i32 0, i32 4
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.ioat_pq_descriptor*, %struct.ioat_pq_descriptor** %8, align 8
  %71 = getelementptr inbounds %struct.ioat_pq_descriptor, %struct.ioat_pq_descriptor* %70, i32 0, i32 3
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 5
  %73 = load i32, i32* %72, align 8
  %74 = load %struct.ioat_pq_descriptor*, %struct.ioat_pq_descriptor** %8, align 8
  %75 = getelementptr inbounds %struct.ioat_pq_descriptor, %struct.ioat_pq_descriptor* %74, i32 0, i32 3
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 4
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.ioat_pq_descriptor*, %struct.ioat_pq_descriptor** %8, align 8
  %79 = getelementptr inbounds %struct.ioat_pq_descriptor, %struct.ioat_pq_descriptor* %78, i32 0, i32 3
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 3
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.ioat_pq_descriptor*, %struct.ioat_pq_descriptor** %8, align 8
  %83 = getelementptr inbounds %struct.ioat_pq_descriptor, %struct.ioat_pq_descriptor* %82, i32 0, i32 3
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 2
  %85 = load i64, i64* %84, align 8
  %86 = icmp ne i64 %85, 0
  %87 = zext i1 %86 to i64
  %88 = select i1 %86, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)
  %89 = load %struct.ioat_pq_descriptor*, %struct.ioat_pq_descriptor** %8, align 8
  %90 = getelementptr inbounds %struct.ioat_pq_descriptor, %struct.ioat_pq_descriptor* %89, i32 0, i32 3
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = icmp ne i64 %92, 0
  %94 = zext i1 %93 to i64
  %95 = select i1 %93, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)
  %96 = load %struct.ioat_pq_descriptor*, %struct.ioat_pq_descriptor** %8, align 8
  %97 = getelementptr inbounds %struct.ioat_pq_descriptor, %struct.ioat_pq_descriptor* %96, i32 0, i32 3
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = call i32 (%struct.device*, i8*, i32, ...) @dev_dbg(%struct.device* %41, i8* getelementptr inbounds ([104 x i8], [104 x i8]* @.str, i64 0, i64 0), i32 %43, i64 %47, i64 %59, i32 %63, i32 %66, i32 %69, i32 %73, i32 %77, i32 %81, i8* %88, i8* %95, i32 %99)
  store i32 0, i32* %12, align 4
  br label %101

101:                                              ; preds = %120, %58
  %102 = load i32, i32* %12, align 4
  %103 = load i32, i32* %11, align 4
  %104 = icmp slt i32 %102, %103
  br i1 %104, label %105, label %123

105:                                              ; preds = %101
  %106 = load %struct.device*, %struct.device** %7, align 8
  %107 = load i32, i32* %12, align 4
  %108 = getelementptr inbounds [2 x %struct.ioat_raw_descriptor*], [2 x %struct.ioat_raw_descriptor*]* %10, i64 0, i64 0
  %109 = bitcast %struct.ioat_raw_descriptor** %108 to i8**
  %110 = load i32, i32* %12, align 4
  %111 = call i64 @pq_get_src(i8** %109, i32 %110)
  %112 = load %struct.ioat_pq_descriptor*, %struct.ioat_pq_descriptor** %8, align 8
  %113 = getelementptr inbounds %struct.ioat_pq_descriptor, %struct.ioat_pq_descriptor* %112, i32 0, i32 2
  %114 = load i32*, i32** %113, align 8
  %115 = load i32, i32* %12, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i32, i32* %114, i64 %116
  %118 = load i32, i32* %117, align 4
  %119 = call i32 (%struct.device*, i8*, i32, ...) @dev_dbg(%struct.device* %106, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i32 %107, i64 %111, i32 %118)
  br label %120

120:                                              ; preds = %105
  %121 = load i32, i32* %12, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %12, align 4
  br label %101

123:                                              ; preds = %101
  %124 = load %struct.device*, %struct.device** %7, align 8
  %125 = load %struct.ioat_pq_descriptor*, %struct.ioat_pq_descriptor** %8, align 8
  %126 = getelementptr inbounds %struct.ioat_pq_descriptor, %struct.ioat_pq_descriptor* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = call i32 (%struct.device*, i8*, i32, ...) @dev_dbg(%struct.device* %124, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i32 %127)
  %129 = load %struct.device*, %struct.device** %7, align 8
  %130 = load %struct.ioat_pq_descriptor*, %struct.ioat_pq_descriptor** %8, align 8
  %131 = getelementptr inbounds %struct.ioat_pq_descriptor, %struct.ioat_pq_descriptor* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = call i32 (%struct.device*, i8*, i32, ...) @dev_dbg(%struct.device* %129, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0), i32 %132)
  ret void
}

declare dso_local %struct.device* @to_dev(i32*) #1

declare dso_local i32 @src_cnt_to_sw(i32) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32, ...) #1

declare dso_local i32 @desc_id(%struct.ioat_ring_ent*) #1

declare dso_local i64 @pq_get_src(i8**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
