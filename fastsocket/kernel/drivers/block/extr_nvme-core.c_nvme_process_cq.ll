; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_nvme-core.c_nvme_process_cq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_nvme-core.c_nvme_process_cq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvme_queue = type { i64, i64, i32, i64, i32, %struct.TYPE_3__*, i64, %struct.nvme_completion* }
%struct.TYPE_3__ = type { i32 }
%struct.nvme_completion = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvme_queue*)* @nvme_process_cq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvme_process_cq(%struct.nvme_queue* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nvme_queue*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32 (%struct.TYPE_3__*, i8*, %struct.nvme_completion*)*, align 8
  %8 = alloca %struct.nvme_completion, align 4
  store %struct.nvme_queue* %0, %struct.nvme_queue** %3, align 8
  %9 = load %struct.nvme_queue*, %struct.nvme_queue** %3, align 8
  %10 = getelementptr inbounds %struct.nvme_queue, %struct.nvme_queue* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  store i64 %11, i64* %4, align 8
  %12 = load %struct.nvme_queue*, %struct.nvme_queue** %3, align 8
  %13 = getelementptr inbounds %struct.nvme_queue, %struct.nvme_queue* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  store i64 %14, i64* %5, align 8
  br label %15

15:                                               ; preds = %49, %1
  %16 = load %struct.nvme_queue*, %struct.nvme_queue** %3, align 8
  %17 = getelementptr inbounds %struct.nvme_queue, %struct.nvme_queue* %16, i32 0, i32 7
  %18 = load %struct.nvme_completion*, %struct.nvme_completion** %17, align 8
  %19 = load i64, i64* %4, align 8
  %20 = getelementptr inbounds %struct.nvme_completion, %struct.nvme_completion* %18, i64 %19
  %21 = bitcast %struct.nvme_completion* %8 to i8*
  %22 = bitcast %struct.nvme_completion* %20 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %21, i8* align 4 %22, i64 12, i1 false)
  %23 = getelementptr inbounds %struct.nvme_completion, %struct.nvme_completion* %8, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @le16_to_cpu(i32 %24)
  %26 = and i32 %25, 1
  %27 = sext i32 %26 to i64
  %28 = load i64, i64* %5, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %15
  br label %61

31:                                               ; preds = %15
  %32 = getelementptr inbounds %struct.nvme_completion, %struct.nvme_completion* %8, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @le16_to_cpu(i32 %33)
  %35 = load %struct.nvme_queue*, %struct.nvme_queue** %3, align 8
  %36 = getelementptr inbounds %struct.nvme_queue, %struct.nvme_queue* %35, i32 0, i32 2
  store i32 %34, i32* %36, align 8
  %37 = load i64, i64* %4, align 8
  %38 = add i64 %37, 1
  store i64 %38, i64* %4, align 8
  %39 = load %struct.nvme_queue*, %struct.nvme_queue** %3, align 8
  %40 = getelementptr inbounds %struct.nvme_queue, %struct.nvme_queue* %39, i32 0, i32 3
  %41 = load i64, i64* %40, align 8
  %42 = icmp eq i64 %38, %41
  br i1 %42, label %43, label %49

43:                                               ; preds = %31
  store i64 0, i64* %4, align 8
  %44 = load i64, i64* %5, align 8
  %45 = icmp ne i64 %44, 0
  %46 = xor i1 %45, true
  %47 = zext i1 %46 to i32
  %48 = sext i32 %47 to i64
  store i64 %48, i64* %5, align 8
  br label %49

49:                                               ; preds = %43, %31
  %50 = load %struct.nvme_queue*, %struct.nvme_queue** %3, align 8
  %51 = getelementptr inbounds %struct.nvme_completion, %struct.nvme_completion* %8, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = bitcast i32 (%struct.TYPE_3__*, i8*, %struct.nvme_completion*)** %7 to i32 (%struct.TYPE_3__*, i8*, %struct.nvme_completion*)*
  %54 = call i8* @free_cmdid(%struct.nvme_queue* %50, i32 %52, i32 (%struct.TYPE_3__*, i8*, %struct.nvme_completion*)* %53)
  store i8* %54, i8** %6, align 8
  %55 = load i32 (%struct.TYPE_3__*, i8*, %struct.nvme_completion*)*, i32 (%struct.TYPE_3__*, i8*, %struct.nvme_completion*)** %7, align 8
  %56 = load %struct.nvme_queue*, %struct.nvme_queue** %3, align 8
  %57 = getelementptr inbounds %struct.nvme_queue, %struct.nvme_queue* %56, i32 0, i32 5
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %57, align 8
  %59 = load i8*, i8** %6, align 8
  %60 = call i32 %55(%struct.TYPE_3__* %58, i8* %59, %struct.nvme_completion* %8)
  br label %15

61:                                               ; preds = %30
  %62 = load i64, i64* %4, align 8
  %63 = load %struct.nvme_queue*, %struct.nvme_queue** %3, align 8
  %64 = getelementptr inbounds %struct.nvme_queue, %struct.nvme_queue* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = icmp eq i64 %62, %65
  br i1 %66, label %67, label %74

67:                                               ; preds = %61
  %68 = load i64, i64* %5, align 8
  %69 = load %struct.nvme_queue*, %struct.nvme_queue** %3, align 8
  %70 = getelementptr inbounds %struct.nvme_queue, %struct.nvme_queue* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = icmp eq i64 %68, %71
  br i1 %72, label %73, label %74

73:                                               ; preds = %67
  store i32 0, i32* %2, align 4
  br label %96

74:                                               ; preds = %67, %61
  %75 = load i64, i64* %4, align 8
  %76 = load %struct.nvme_queue*, %struct.nvme_queue** %3, align 8
  %77 = getelementptr inbounds %struct.nvme_queue, %struct.nvme_queue* %76, i32 0, i32 6
  %78 = load i64, i64* %77, align 8
  %79 = load %struct.nvme_queue*, %struct.nvme_queue** %3, align 8
  %80 = getelementptr inbounds %struct.nvme_queue, %struct.nvme_queue* %79, i32 0, i32 5
  %81 = load %struct.TYPE_3__*, %struct.TYPE_3__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = shl i32 1, %83
  %85 = sext i32 %84 to i64
  %86 = add nsw i64 %78, %85
  %87 = call i32 @writel(i64 %75, i64 %86)
  %88 = load i64, i64* %4, align 8
  %89 = load %struct.nvme_queue*, %struct.nvme_queue** %3, align 8
  %90 = getelementptr inbounds %struct.nvme_queue, %struct.nvme_queue* %89, i32 0, i32 0
  store i64 %88, i64* %90, align 8
  %91 = load i64, i64* %5, align 8
  %92 = load %struct.nvme_queue*, %struct.nvme_queue** %3, align 8
  %93 = getelementptr inbounds %struct.nvme_queue, %struct.nvme_queue* %92, i32 0, i32 1
  store i64 %91, i64* %93, align 8
  %94 = load %struct.nvme_queue*, %struct.nvme_queue** %3, align 8
  %95 = getelementptr inbounds %struct.nvme_queue, %struct.nvme_queue* %94, i32 0, i32 4
  store i32 1, i32* %95, align 8
  store i32 1, i32* %2, align 4
  br label %96

96:                                               ; preds = %74, %73
  %97 = load i32, i32* %2, align 4
  ret i32 %97
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @le16_to_cpu(i32) #2

declare dso_local i8* @free_cmdid(%struct.nvme_queue*, i32, i32 (%struct.TYPE_3__*, i8*, %struct.nvme_completion*)*) #2

declare dso_local i32 @writel(i64, i64) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
