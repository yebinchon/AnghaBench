; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_nvme-core.c_nvme_irq_check.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_nvme-core.c_nvme_irq_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvme_queue = type { i64, i32, %struct.nvme_completion* }
%struct.nvme_completion = type { i32 }

@IRQ_NONE = common dso_local global i32 0, align 4
@IRQ_WAKE_THREAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @nvme_irq_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvme_irq_check(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.nvme_queue*, align 8
  %7 = alloca %struct.nvme_completion, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = bitcast i8* %8 to %struct.nvme_queue*
  store %struct.nvme_queue* %9, %struct.nvme_queue** %6, align 8
  %10 = load %struct.nvme_queue*, %struct.nvme_queue** %6, align 8
  %11 = getelementptr inbounds %struct.nvme_queue, %struct.nvme_queue* %10, i32 0, i32 2
  %12 = load %struct.nvme_completion*, %struct.nvme_completion** %11, align 8
  %13 = load %struct.nvme_queue*, %struct.nvme_queue** %6, align 8
  %14 = getelementptr inbounds %struct.nvme_queue, %struct.nvme_queue* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = getelementptr inbounds %struct.nvme_completion, %struct.nvme_completion* %12, i64 %15
  %17 = bitcast %struct.nvme_completion* %7 to i8*
  %18 = bitcast %struct.nvme_completion* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %17, i8* align 4 %18, i64 4, i1 false)
  %19 = getelementptr inbounds %struct.nvme_completion, %struct.nvme_completion* %7, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @le16_to_cpu(i32 %20)
  %22 = and i32 %21, 1
  %23 = load %struct.nvme_queue*, %struct.nvme_queue** %6, align 8
  %24 = getelementptr inbounds %struct.nvme_queue, %struct.nvme_queue* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = icmp ne i32 %22, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %2
  %28 = load i32, i32* @IRQ_NONE, align 4
  store i32 %28, i32* %3, align 4
  br label %31

29:                                               ; preds = %2
  %30 = load i32, i32* @IRQ_WAKE_THREAD, align 4
  store i32 %30, i32* %3, align 4
  br label %31

31:                                               ; preds = %29, %27
  %32 = load i32, i32* %3, align 4
  ret i32 %32
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @le16_to_cpu(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
