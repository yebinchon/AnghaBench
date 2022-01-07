; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/crypto/extr_talitos.c_talitos_submit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/crypto/extr_talitos.c_talitos_submit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.talitos_desc = type { i32 }
%struct.talitos_private = type { i32, i32, %struct.TYPE_2__*, i64, i32 }
%struct.TYPE_2__ = type { i32, i32, %struct.talitos_request*, i32 }
%struct.talitos_request = type { void (%struct.device.0*, %struct.talitos_desc.1*, i8*, i32)*, i32, %struct.talitos_desc*, i8* }
%struct.device.0 = type opaque
%struct.talitos_desc.1 = type opaque

@DESC_HDR_DONE_NOTIFY = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@DMA_BIDIRECTIONAL = common dso_local global i32 0, align 4
@EINPROGRESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.talitos_desc*, void (%struct.device*, %struct.talitos_desc*, i8*, i32)*, i8*)* @talitos_submit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @talitos_submit(%struct.device* %0, %struct.talitos_desc* %1, void (%struct.device*, %struct.talitos_desc*, i8*, i32)* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.talitos_desc*, align 8
  %8 = alloca void (%struct.device*, %struct.talitos_desc*, i8*, i32)*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.talitos_private*, align 8
  %11 = alloca %struct.talitos_request*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.talitos_desc* %1, %struct.talitos_desc** %7, align 8
  store void (%struct.device*, %struct.talitos_desc*, i8*, i32)* %2, void (%struct.device*, %struct.talitos_desc*, i8*, i32)** %8, align 8
  store i8* %3, i8** %9, align 8
  %15 = load %struct.device*, %struct.device** %6, align 8
  %16 = call %struct.talitos_private* @dev_get_drvdata(%struct.device* %15)
  store %struct.talitos_private* %16, %struct.talitos_private** %10, align 8
  %17 = load i32, i32* @DESC_HDR_DONE_NOTIFY, align 4
  %18 = load %struct.talitos_desc*, %struct.talitos_desc** %7, align 8
  %19 = getelementptr inbounds %struct.talitos_desc, %struct.talitos_desc* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = or i32 %20, %17
  store i32 %21, i32* %19, align 4
  %22 = load %struct.talitos_private*, %struct.talitos_private** %10, align 8
  %23 = getelementptr inbounds %struct.talitos_private, %struct.talitos_private* %22, i32 0, i32 4
  %24 = call i32 @atomic_inc_return(i32* %23)
  %25 = load %struct.talitos_private*, %struct.talitos_private** %10, align 8
  %26 = getelementptr inbounds %struct.talitos_private, %struct.talitos_private* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = sub nsw i32 %27, 1
  %29 = and i32 %24, %28
  %30 = sext i32 %29 to i64
  store i64 %30, i64* %13, align 8
  %31 = load %struct.talitos_private*, %struct.talitos_private** %10, align 8
  %32 = getelementptr inbounds %struct.talitos_private, %struct.talitos_private* %31, i32 0, i32 2
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = load i64, i64* %13, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 1
  %37 = load i64, i64* %12, align 8
  %38 = call i32 @spin_lock_irqsave(i32* %36, i64 %37)
  %39 = load %struct.talitos_private*, %struct.talitos_private** %10, align 8
  %40 = getelementptr inbounds %struct.talitos_private, %struct.talitos_private* %39, i32 0, i32 2
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = load i64, i64* %13, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 3
  %45 = call i32 @atomic_inc_not_zero(i32* %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %58, label %47

47:                                               ; preds = %4
  %48 = load %struct.talitos_private*, %struct.talitos_private** %10, align 8
  %49 = getelementptr inbounds %struct.talitos_private, %struct.talitos_private* %48, i32 0, i32 2
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = load i64, i64* %13, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 1
  %54 = load i64, i64* %12, align 8
  %55 = call i32 @spin_unlock_irqrestore(i32* %53, i64 %54)
  %56 = load i32, i32* @EAGAIN, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %5, align 4
  br label %147

58:                                               ; preds = %4
  %59 = load %struct.talitos_private*, %struct.talitos_private** %10, align 8
  %60 = getelementptr inbounds %struct.talitos_private, %struct.talitos_private* %59, i32 0, i32 2
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** %60, align 8
  %62 = load i64, i64* %13, align 8
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  store i32 %65, i32* %14, align 4
  %66 = load %struct.talitos_private*, %struct.talitos_private** %10, align 8
  %67 = getelementptr inbounds %struct.talitos_private, %struct.talitos_private* %66, i32 0, i32 2
  %68 = load %struct.TYPE_2__*, %struct.TYPE_2__** %67, align 8
  %69 = load i64, i64* %13, align 8
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 2
  %72 = load %struct.talitos_request*, %struct.talitos_request** %71, align 8
  %73 = load i32, i32* %14, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.talitos_request, %struct.talitos_request* %72, i64 %74
  store %struct.talitos_request* %75, %struct.talitos_request** %11, align 8
  %76 = load %struct.device*, %struct.device** %6, align 8
  %77 = load %struct.talitos_desc*, %struct.talitos_desc** %7, align 8
  %78 = load i32, i32* @DMA_BIDIRECTIONAL, align 4
  %79 = call i32 @dma_map_single(%struct.device* %76, %struct.talitos_desc* %77, i32 4, i32 %78)
  %80 = load %struct.talitos_request*, %struct.talitos_request** %11, align 8
  %81 = getelementptr inbounds %struct.talitos_request, %struct.talitos_request* %80, i32 0, i32 1
  store i32 %79, i32* %81, align 8
  %82 = load void (%struct.device*, %struct.talitos_desc*, i8*, i32)*, void (%struct.device*, %struct.talitos_desc*, i8*, i32)** %8, align 8
  %83 = bitcast void (%struct.device*, %struct.talitos_desc*, i8*, i32)* %82 to void (%struct.device.0*, %struct.talitos_desc.1*, i8*, i32)*
  %84 = load %struct.talitos_request*, %struct.talitos_request** %11, align 8
  %85 = getelementptr inbounds %struct.talitos_request, %struct.talitos_request* %84, i32 0, i32 0
  store void (%struct.device.0*, %struct.talitos_desc.1*, i8*, i32)* %83, void (%struct.device.0*, %struct.talitos_desc.1*, i8*, i32)** %85, align 8
  %86 = load i8*, i8** %9, align 8
  %87 = load %struct.talitos_request*, %struct.talitos_request** %11, align 8
  %88 = getelementptr inbounds %struct.talitos_request, %struct.talitos_request* %87, i32 0, i32 3
  store i8* %86, i8** %88, align 8
  %89 = load %struct.talitos_private*, %struct.talitos_private** %10, align 8
  %90 = getelementptr inbounds %struct.talitos_private, %struct.talitos_private* %89, i32 0, i32 2
  %91 = load %struct.TYPE_2__*, %struct.TYPE_2__** %90, align 8
  %92 = load i64, i64* %13, align 8
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i64 %92
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = add nsw i32 %95, 1
  %97 = load %struct.talitos_private*, %struct.talitos_private** %10, align 8
  %98 = getelementptr inbounds %struct.talitos_private, %struct.talitos_private* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = sub nsw i32 %99, 1
  %101 = and i32 %96, %100
  %102 = load %struct.talitos_private*, %struct.talitos_private** %10, align 8
  %103 = getelementptr inbounds %struct.talitos_private, %struct.talitos_private* %102, i32 0, i32 2
  %104 = load %struct.TYPE_2__*, %struct.TYPE_2__** %103, align 8
  %105 = load i64, i64* %13, align 8
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i64 %105
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %106, i32 0, i32 0
  store i32 %101, i32* %107, align 8
  %108 = call i32 (...) @smp_wmb()
  %109 = load %struct.talitos_desc*, %struct.talitos_desc** %7, align 8
  %110 = load %struct.talitos_request*, %struct.talitos_request** %11, align 8
  %111 = getelementptr inbounds %struct.talitos_request, %struct.talitos_request* %110, i32 0, i32 2
  store %struct.talitos_desc* %109, %struct.talitos_desc** %111, align 8
  %112 = call i32 (...) @wmb()
  %113 = load %struct.talitos_private*, %struct.talitos_private** %10, align 8
  %114 = getelementptr inbounds %struct.talitos_private, %struct.talitos_private* %113, i32 0, i32 3
  %115 = load i64, i64* %114, align 8
  %116 = load i64, i64* %13, align 8
  %117 = call i64 @TALITOS_FF(i64 %116)
  %118 = add nsw i64 %115, %117
  %119 = load %struct.talitos_request*, %struct.talitos_request** %11, align 8
  %120 = getelementptr inbounds %struct.talitos_request, %struct.talitos_request* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 8
  %122 = call i32 @upper_32_bits(i32 %121)
  %123 = call i32 @cpu_to_be32(i32 %122)
  %124 = call i32 @out_be32(i64 %118, i32 %123)
  %125 = load %struct.talitos_private*, %struct.talitos_private** %10, align 8
  %126 = getelementptr inbounds %struct.talitos_private, %struct.talitos_private* %125, i32 0, i32 3
  %127 = load i64, i64* %126, align 8
  %128 = load i64, i64* %13, align 8
  %129 = call i64 @TALITOS_FF_LO(i64 %128)
  %130 = add nsw i64 %127, %129
  %131 = load %struct.talitos_request*, %struct.talitos_request** %11, align 8
  %132 = getelementptr inbounds %struct.talitos_request, %struct.talitos_request* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 8
  %134 = call i32 @lower_32_bits(i32 %133)
  %135 = call i32 @cpu_to_be32(i32 %134)
  %136 = call i32 @out_be32(i64 %130, i32 %135)
  %137 = load %struct.talitos_private*, %struct.talitos_private** %10, align 8
  %138 = getelementptr inbounds %struct.talitos_private, %struct.talitos_private* %137, i32 0, i32 2
  %139 = load %struct.TYPE_2__*, %struct.TYPE_2__** %138, align 8
  %140 = load i64, i64* %13, align 8
  %141 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %139, i64 %140
  %142 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %141, i32 0, i32 1
  %143 = load i64, i64* %12, align 8
  %144 = call i32 @spin_unlock_irqrestore(i32* %142, i64 %143)
  %145 = load i32, i32* @EINPROGRESS, align 4
  %146 = sub nsw i32 0, %145
  store i32 %146, i32* %5, align 4
  br label %147

147:                                              ; preds = %58, %47
  %148 = load i32, i32* %5, align 4
  ret i32 %148
}

declare dso_local %struct.talitos_private* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @atomic_inc_return(i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @atomic_inc_not_zero(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @dma_map_single(%struct.device*, %struct.talitos_desc*, i32, i32) #1

declare dso_local i32 @smp_wmb(...) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @out_be32(i64, i32) #1

declare dso_local i64 @TALITOS_FF(i64) #1

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local i32 @upper_32_bits(i32) #1

declare dso_local i64 @TALITOS_FF_LO(i64) #1

declare dso_local i32 @lower_32_bits(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
