; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/mlx4/extr_resource_tracker.c_alloc_srq_tr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/mlx4/extr_resource_tracker.c_alloc_srq_tr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.res_common = type { i32, i32 }
%struct.res_srq = type { %struct.res_common, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@RES_SRQ_ALLOCATED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.res_common* (i32)* @alloc_srq_tr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.res_common* @alloc_srq_tr(i32 %0) #0 {
  %2 = alloca %struct.res_common*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.res_srq*, align 8
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* @GFP_KERNEL, align 4
  %6 = call %struct.res_srq* @kzalloc(i32 12, i32 %5)
  store %struct.res_srq* %6, %struct.res_srq** %4, align 8
  %7 = load %struct.res_srq*, %struct.res_srq** %4, align 8
  %8 = icmp ne %struct.res_srq* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  store %struct.res_common* null, %struct.res_common** %2, align 8
  br label %24

10:                                               ; preds = %1
  %11 = load i32, i32* %3, align 4
  %12 = load %struct.res_srq*, %struct.res_srq** %4, align 8
  %13 = getelementptr inbounds %struct.res_srq, %struct.res_srq* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.res_common, %struct.res_common* %13, i32 0, i32 0
  store i32 %11, i32* %14, align 4
  %15 = load i32, i32* @RES_SRQ_ALLOCATED, align 4
  %16 = load %struct.res_srq*, %struct.res_srq** %4, align 8
  %17 = getelementptr inbounds %struct.res_srq, %struct.res_srq* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.res_common, %struct.res_common* %17, i32 0, i32 1
  store i32 %15, i32* %18, align 4
  %19 = load %struct.res_srq*, %struct.res_srq** %4, align 8
  %20 = getelementptr inbounds %struct.res_srq, %struct.res_srq* %19, i32 0, i32 1
  %21 = call i32 @atomic_set(i32* %20, i32 0)
  %22 = load %struct.res_srq*, %struct.res_srq** %4, align 8
  %23 = getelementptr inbounds %struct.res_srq, %struct.res_srq* %22, i32 0, i32 0
  store %struct.res_common* %23, %struct.res_common** %2, align 8
  br label %24

24:                                               ; preds = %10, %9
  %25 = load %struct.res_common*, %struct.res_common** %2, align 8
  ret %struct.res_common* %25
}

declare dso_local %struct.res_srq* @kzalloc(i32, i32) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
