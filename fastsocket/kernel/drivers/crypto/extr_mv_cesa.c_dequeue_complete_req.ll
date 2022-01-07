; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/crypto/extr_mv_cesa.c_dequeue_complete_req.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/crypto/extr_mv_cesa.c_dequeue_complete_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, %struct.TYPE_6__, i64, %struct.ablkcipher_request* }
%struct.TYPE_6__ = type { i64, i64, %struct.TYPE_8__, %struct.TYPE_8__, i64, i64 }
%struct.TYPE_8__ = type { i8*, i64 }
%struct.ablkcipher_request = type { i64, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 (%struct.TYPE_7__*, i32)* }

@cpg = common dso_local global %struct.TYPE_9__* null, align 8
@SRAM_DATA_OUT_START = common dso_local global i64 0, align 8
@ENGINE_W_DEQUEUE = common dso_local global i64 0, align 8
@ENGINE_BUSY = common dso_local global i64 0, align 8
@ENGINE_IDLE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @dequeue_complete_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dequeue_complete_req() #0 {
  %1 = alloca %struct.ablkcipher_request*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = load %struct.TYPE_9__*, %struct.TYPE_9__** @cpg, align 8
  %6 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 3
  %7 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %6, align 8
  store %struct.ablkcipher_request* %7, %struct.ablkcipher_request** %1, align 8
  %8 = load %struct.TYPE_9__*, %struct.TYPE_9__** @cpg, align 8
  %9 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = load %struct.TYPE_9__*, %struct.TYPE_9__** @cpg, align 8
  %13 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = add nsw i64 %15, %11
  store i64 %16, i64* %14, align 8
  br label %17

17:                                               ; preds = %94, %0
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** @cpg, align 8
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 5
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %44, label %23

23:                                               ; preds = %17
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** @cpg, align 8
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 2
  %27 = call i32 @sg_miter_next(%struct.TYPE_8__* %26)
  store i32 %27, i32* %3, align 4
  %28 = load i32, i32* %3, align 4
  %29 = icmp ne i32 %28, 0
  %30 = xor i1 %29, true
  %31 = zext i1 %30 to i32
  %32 = call i32 @BUG_ON(i32 %31)
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** @cpg, align 8
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 2
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** @cpg, align 8
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 5
  store i64 %37, i64* %40, align 8
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** @cpg, align 8
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 4
  store i64 0, i64* %43, align 8
  br label %44

44:                                               ; preds = %23, %17
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** @cpg, align 8
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 2
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 0
  %49 = load i8*, i8** %48, align 8
  store i8* %49, i8** %2, align 8
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** @cpg, align 8
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 4
  %53 = load i64, i64* %52, align 8
  %54 = load i8*, i8** %2, align 8
  %55 = getelementptr i8, i8* %54, i64 %53
  store i8* %55, i8** %2, align 8
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** @cpg, align 8
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = load %struct.TYPE_9__*, %struct.TYPE_9__** @cpg, align 8
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 5
  %63 = load i64, i64* %62, align 8
  %64 = call i32 @min(i64 %59, i64 %63)
  store i32 %64, i32* %4, align 4
  %65 = load i8*, i8** %2, align 8
  %66 = load %struct.TYPE_9__*, %struct.TYPE_9__** @cpg, align 8
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i32 0, i32 2
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @SRAM_DATA_OUT_START, align 8
  %70 = add nsw i64 %68, %69
  %71 = load i32, i32* %4, align 4
  %72 = call i32 @memcpy(i8* %65, i64 %70, i32 %71)
  %73 = load i32, i32* %4, align 4
  %74 = sext i32 %73 to i64
  %75 = load %struct.TYPE_9__*, %struct.TYPE_9__** @cpg, align 8
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 5
  %78 = load i64, i64* %77, align 8
  %79 = sub nsw i64 %78, %74
  store i64 %79, i64* %77, align 8
  %80 = load i32, i32* %4, align 4
  %81 = sext i32 %80 to i64
  %82 = load %struct.TYPE_9__*, %struct.TYPE_9__** @cpg, align 8
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = sub nsw i64 %85, %81
  store i64 %86, i64* %84, align 8
  %87 = load i32, i32* %4, align 4
  %88 = sext i32 %87 to i64
  %89 = load %struct.TYPE_9__*, %struct.TYPE_9__** @cpg, align 8
  %90 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 4
  %92 = load i64, i64* %91, align 8
  %93 = add nsw i64 %92, %88
  store i64 %93, i64* %91, align 8
  br label %94

94:                                               ; preds = %44
  %95 = load %struct.TYPE_9__*, %struct.TYPE_9__** @cpg, align 8
  %96 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %95, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 1
  %98 = load i64, i64* %97, align 8
  %99 = icmp sgt i64 %98, 0
  br i1 %99, label %17, label %100

100:                                              ; preds = %94
  %101 = load %struct.TYPE_9__*, %struct.TYPE_9__** @cpg, align 8
  %102 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = load i64, i64* @ENGINE_W_DEQUEUE, align 8
  %105 = icmp ne i64 %103, %104
  %106 = zext i1 %105 to i32
  %107 = call i32 @BUG_ON(i32 %106)
  %108 = load %struct.TYPE_9__*, %struct.TYPE_9__** @cpg, align 8
  %109 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %108, i32 0, i32 1
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %1, align 8
  %113 = getelementptr inbounds %struct.ablkcipher_request, %struct.ablkcipher_request* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = icmp slt i64 %111, %114
  br i1 %115, label %116, label %121

116:                                              ; preds = %100
  %117 = load i64, i64* @ENGINE_BUSY, align 8
  %118 = load %struct.TYPE_9__*, %struct.TYPE_9__** @cpg, align 8
  %119 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %118, i32 0, i32 0
  store i64 %117, i64* %119, align 8
  %120 = call i32 @mv_process_current_q(i32 0)
  br label %141

121:                                              ; preds = %100
  %122 = load %struct.TYPE_9__*, %struct.TYPE_9__** @cpg, align 8
  %123 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %122, i32 0, i32 1
  %124 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %123, i32 0, i32 3
  %125 = call i32 @sg_miter_stop(%struct.TYPE_8__* %124)
  %126 = load %struct.TYPE_9__*, %struct.TYPE_9__** @cpg, align 8
  %127 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %126, i32 0, i32 1
  %128 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %127, i32 0, i32 2
  %129 = call i32 @sg_miter_stop(%struct.TYPE_8__* %128)
  %130 = call i32 (...) @mv_crypto_algo_completion()
  %131 = load i64, i64* @ENGINE_IDLE, align 8
  %132 = load %struct.TYPE_9__*, %struct.TYPE_9__** @cpg, align 8
  %133 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %132, i32 0, i32 0
  store i64 %131, i64* %133, align 8
  %134 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %1, align 8
  %135 = getelementptr inbounds %struct.ablkcipher_request, %struct.ablkcipher_request* %134, i32 0, i32 1
  %136 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %135, i32 0, i32 0
  %137 = load i32 (%struct.TYPE_7__*, i32)*, i32 (%struct.TYPE_7__*, i32)** %136, align 8
  %138 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %1, align 8
  %139 = getelementptr inbounds %struct.ablkcipher_request, %struct.ablkcipher_request* %138, i32 0, i32 1
  %140 = call i32 %137(%struct.TYPE_7__* %139, i32 0)
  br label %141

141:                                              ; preds = %121, %116
  ret void
}

declare dso_local i32 @sg_miter_next(%struct.TYPE_8__*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @min(i64, i64) #1

declare dso_local i32 @memcpy(i8*, i64, i32) #1

declare dso_local i32 @mv_process_current_q(i32) #1

declare dso_local i32 @sg_miter_stop(%struct.TYPE_8__*) #1

declare dso_local i32 @mv_crypto_algo_completion(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
