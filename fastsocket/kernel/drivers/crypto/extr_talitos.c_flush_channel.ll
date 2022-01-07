; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/crypto/extr_talitos.c_flush_channel.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/crypto/extr_talitos.c_flush_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.talitos_private = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32, i32, %struct.talitos_request* }
%struct.talitos_request = type { i32, %struct.TYPE_4__*, i32 (%struct.device.0*, %struct.TYPE_4__*, i32, i32)*, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.device.0 = type opaque

@DESC_HDR_DONE = common dso_local global i32 0, align 4
@DMA_BIDIRECTIONAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.device*, i32, i32, i32)* @flush_channel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @flush_channel(%struct.device* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.talitos_private*, align 8
  %10 = alloca %struct.talitos_request*, align 8
  %11 = alloca %struct.talitos_request, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %15 = load %struct.device*, %struct.device** %5, align 8
  %16 = call %struct.talitos_private* @dev_get_drvdata(%struct.device* %15)
  store %struct.talitos_private* %16, %struct.talitos_private** %9, align 8
  %17 = load %struct.talitos_private*, %struct.talitos_private** %9, align 8
  %18 = getelementptr inbounds %struct.talitos_private, %struct.talitos_private* %17, i32 0, i32 1
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %20 = load i32, i32* %6, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 1
  %24 = load i64, i64* %12, align 8
  %25 = call i32 @spin_lock_irqsave(i32* %23, i64 %24)
  %26 = load %struct.talitos_private*, %struct.talitos_private** %9, align 8
  %27 = getelementptr inbounds %struct.talitos_private, %struct.talitos_private* %26, i32 0, i32 1
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %27, align 8
  %29 = load i32, i32* %6, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  store i32 %33, i32* %13, align 4
  br label %34

34:                                               ; preds = %152, %4
  %35 = load %struct.talitos_private*, %struct.talitos_private** %9, align 8
  %36 = getelementptr inbounds %struct.talitos_private, %struct.talitos_private* %35, i32 0, i32 1
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %36, align 8
  %38 = load i32, i32* %6, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 3
  %42 = load %struct.talitos_request*, %struct.talitos_request** %41, align 8
  %43 = load i32, i32* %13, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.talitos_request, %struct.talitos_request* %42, i64 %44
  %46 = getelementptr inbounds %struct.talitos_request, %struct.talitos_request* %45, i32 0, i32 1
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %46, align 8
  %48 = icmp ne %struct.TYPE_4__* %47, null
  br i1 %48, label %49, label %170

49:                                               ; preds = %34
  %50 = load %struct.talitos_private*, %struct.talitos_private** %9, align 8
  %51 = getelementptr inbounds %struct.talitos_private, %struct.talitos_private* %50, i32 0, i32 1
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %51, align 8
  %53 = load i32, i32* %6, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 3
  %57 = load %struct.talitos_request*, %struct.talitos_request** %56, align 8
  %58 = load i32, i32* %13, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.talitos_request, %struct.talitos_request* %57, i64 %59
  store %struct.talitos_request* %60, %struct.talitos_request** %10, align 8
  %61 = call i32 (...) @rmb()
  %62 = load %struct.talitos_request*, %struct.talitos_request** %10, align 8
  %63 = getelementptr inbounds %struct.talitos_request, %struct.talitos_request* %62, i32 0, i32 1
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @DESC_HDR_DONE, align 4
  %68 = and i32 %66, %67
  %69 = load i32, i32* @DESC_HDR_DONE, align 4
  %70 = icmp eq i32 %68, %69
  br i1 %70, label %71, label %72

71:                                               ; preds = %49
  store i32 0, i32* %14, align 4
  br label %79

72:                                               ; preds = %49
  %73 = load i32, i32* %7, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %76, label %75

75:                                               ; preds = %72
  br label %170

76:                                               ; preds = %72
  %77 = load i32, i32* %7, align 4
  store i32 %77, i32* %14, align 4
  br label %78

78:                                               ; preds = %76
  br label %79

79:                                               ; preds = %78, %71
  %80 = load %struct.device*, %struct.device** %5, align 8
  %81 = load %struct.talitos_request*, %struct.talitos_request** %10, align 8
  %82 = getelementptr inbounds %struct.talitos_request, %struct.talitos_request* %81, i32 0, i32 3
  %83 = load i32, i32* %82, align 8
  %84 = load i32, i32* @DMA_BIDIRECTIONAL, align 4
  %85 = call i32 @dma_unmap_single(%struct.device* %80, i32 %83, i32 4, i32 %84)
  %86 = load %struct.talitos_request*, %struct.talitos_request** %10, align 8
  %87 = getelementptr inbounds %struct.talitos_request, %struct.talitos_request* %86, i32 0, i32 1
  %88 = load %struct.TYPE_4__*, %struct.TYPE_4__** %87, align 8
  %89 = getelementptr inbounds %struct.talitos_request, %struct.talitos_request* %11, i32 0, i32 1
  store %struct.TYPE_4__* %88, %struct.TYPE_4__** %89, align 8
  %90 = load %struct.talitos_request*, %struct.talitos_request** %10, align 8
  %91 = getelementptr inbounds %struct.talitos_request, %struct.talitos_request* %90, i32 0, i32 2
  %92 = load i32 (%struct.device.0*, %struct.TYPE_4__*, i32, i32)*, i32 (%struct.device.0*, %struct.TYPE_4__*, i32, i32)** %91, align 8
  %93 = getelementptr inbounds %struct.talitos_request, %struct.talitos_request* %11, i32 0, i32 2
  store i32 (%struct.device.0*, %struct.TYPE_4__*, i32, i32)* %92, i32 (%struct.device.0*, %struct.TYPE_4__*, i32, i32)** %93, align 8
  %94 = load %struct.talitos_request*, %struct.talitos_request** %10, align 8
  %95 = getelementptr inbounds %struct.talitos_request, %struct.talitos_request* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = getelementptr inbounds %struct.talitos_request, %struct.talitos_request* %11, i32 0, i32 0
  store i32 %96, i32* %97, align 8
  %98 = call i32 (...) @smp_wmb()
  %99 = load %struct.talitos_request*, %struct.talitos_request** %10, align 8
  %100 = getelementptr inbounds %struct.talitos_request, %struct.talitos_request* %99, i32 0, i32 1
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %100, align 8
  %101 = load i32, i32* %13, align 4
  %102 = add nsw i32 %101, 1
  %103 = load %struct.talitos_private*, %struct.talitos_private** %9, align 8
  %104 = getelementptr inbounds %struct.talitos_private, %struct.talitos_private* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = sub nsw i32 %105, 1
  %107 = and i32 %102, %106
  %108 = load %struct.talitos_private*, %struct.talitos_private** %9, align 8
  %109 = getelementptr inbounds %struct.talitos_private, %struct.talitos_private* %108, i32 0, i32 1
  %110 = load %struct.TYPE_3__*, %struct.TYPE_3__** %109, align 8
  %111 = load i32, i32* %6, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %110, i64 %112
  %114 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %113, i32 0, i32 0
  store i32 %107, i32* %114, align 8
  %115 = load %struct.talitos_private*, %struct.talitos_private** %9, align 8
  %116 = getelementptr inbounds %struct.talitos_private, %struct.talitos_private* %115, i32 0, i32 1
  %117 = load %struct.TYPE_3__*, %struct.TYPE_3__** %116, align 8
  %118 = load i32, i32* %6, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %117, i64 %119
  %121 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %120, i32 0, i32 1
  %122 = load i64, i64* %12, align 8
  %123 = call i32 @spin_unlock_irqrestore(i32* %121, i64 %122)
  %124 = load %struct.talitos_private*, %struct.talitos_private** %9, align 8
  %125 = getelementptr inbounds %struct.talitos_private, %struct.talitos_private* %124, i32 0, i32 1
  %126 = load %struct.TYPE_3__*, %struct.TYPE_3__** %125, align 8
  %127 = load i32, i32* %6, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %126, i64 %128
  %130 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %129, i32 0, i32 2
  %131 = call i32 @atomic_dec(i32* %130)
  %132 = getelementptr inbounds %struct.talitos_request, %struct.talitos_request* %11, i32 0, i32 2
  %133 = load i32 (%struct.device.0*, %struct.TYPE_4__*, i32, i32)*, i32 (%struct.device.0*, %struct.TYPE_4__*, i32, i32)** %132, align 8
  %134 = load %struct.device*, %struct.device** %5, align 8
  %135 = bitcast %struct.device* %134 to %struct.device.0*
  %136 = getelementptr inbounds %struct.talitos_request, %struct.talitos_request* %11, i32 0, i32 1
  %137 = load %struct.TYPE_4__*, %struct.TYPE_4__** %136, align 8
  %138 = getelementptr inbounds %struct.talitos_request, %struct.talitos_request* %11, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = load i32, i32* %14, align 4
  %141 = call i32 %133(%struct.device.0* %135, %struct.TYPE_4__* %137, i32 %139, i32 %140)
  %142 = load i32, i32* %7, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %152

144:                                              ; preds = %79
  %145 = load i32, i32* %8, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %152, label %147

147:                                              ; preds = %144
  %148 = load i32, i32* %14, align 4
  %149 = load i32, i32* %7, align 4
  %150 = icmp eq i32 %148, %149
  br i1 %150, label %151, label %152

151:                                              ; preds = %147
  br label %180

152:                                              ; preds = %147, %144, %79
  %153 = load %struct.talitos_private*, %struct.talitos_private** %9, align 8
  %154 = getelementptr inbounds %struct.talitos_private, %struct.talitos_private* %153, i32 0, i32 1
  %155 = load %struct.TYPE_3__*, %struct.TYPE_3__** %154, align 8
  %156 = load i32, i32* %6, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %155, i64 %157
  %159 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %158, i32 0, i32 1
  %160 = load i64, i64* %12, align 8
  %161 = call i32 @spin_lock_irqsave(i32* %159, i64 %160)
  %162 = load %struct.talitos_private*, %struct.talitos_private** %9, align 8
  %163 = getelementptr inbounds %struct.talitos_private, %struct.talitos_private* %162, i32 0, i32 1
  %164 = load %struct.TYPE_3__*, %struct.TYPE_3__** %163, align 8
  %165 = load i32, i32* %6, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %164, i64 %166
  %168 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 8
  store i32 %169, i32* %13, align 4
  br label %34

170:                                              ; preds = %75, %34
  %171 = load %struct.talitos_private*, %struct.talitos_private** %9, align 8
  %172 = getelementptr inbounds %struct.talitos_private, %struct.talitos_private* %171, i32 0, i32 1
  %173 = load %struct.TYPE_3__*, %struct.TYPE_3__** %172, align 8
  %174 = load i32, i32* %6, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %173, i64 %175
  %177 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %176, i32 0, i32 1
  %178 = load i64, i64* %12, align 8
  %179 = call i32 @spin_unlock_irqrestore(i32* %177, i64 %178)
  br label %180

180:                                              ; preds = %170, %151
  ret void
}

declare dso_local %struct.talitos_private* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @rmb(...) #1

declare dso_local i32 @dma_unmap_single(%struct.device*, i32, i32, i32) #1

declare dso_local i32 @smp_wmb(...) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @atomic_dec(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
