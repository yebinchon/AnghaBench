; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/mlx4/extr_resource_tracker.c_alloc_mpt_tr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/mlx4/extr_resource_tracker.c_alloc_mpt_tr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.res_common = type { i32, i32 }
%struct.res_mpt = type { i32, %struct.res_common }

@GFP_KERNEL = common dso_local global i32 0, align 4
@RES_MPT_RESERVED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.res_common* (i32, i32)* @alloc_mpt_tr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.res_common* @alloc_mpt_tr(i32 %0, i32 %1) #0 {
  %3 = alloca %struct.res_common*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.res_mpt*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* @GFP_KERNEL, align 4
  %8 = call %struct.res_mpt* @kzalloc(i32 12, i32 %7)
  store %struct.res_mpt* %8, %struct.res_mpt** %6, align 8
  %9 = load %struct.res_mpt*, %struct.res_mpt** %6, align 8
  %10 = icmp ne %struct.res_mpt* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  store %struct.res_common* null, %struct.res_common** %3, align 8
  br label %26

12:                                               ; preds = %2
  %13 = load i32, i32* %4, align 4
  %14 = load %struct.res_mpt*, %struct.res_mpt** %6, align 8
  %15 = getelementptr inbounds %struct.res_mpt, %struct.res_mpt* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.res_common, %struct.res_common* %15, i32 0, i32 0
  store i32 %13, i32* %16, align 4
  %17 = load i32, i32* @RES_MPT_RESERVED, align 4
  %18 = load %struct.res_mpt*, %struct.res_mpt** %6, align 8
  %19 = getelementptr inbounds %struct.res_mpt, %struct.res_mpt* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.res_common, %struct.res_common* %19, i32 0, i32 1
  store i32 %17, i32* %20, align 4
  %21 = load i32, i32* %5, align 4
  %22 = load %struct.res_mpt*, %struct.res_mpt** %6, align 8
  %23 = getelementptr inbounds %struct.res_mpt, %struct.res_mpt* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 4
  %24 = load %struct.res_mpt*, %struct.res_mpt** %6, align 8
  %25 = getelementptr inbounds %struct.res_mpt, %struct.res_mpt* %24, i32 0, i32 1
  store %struct.res_common* %25, %struct.res_common** %3, align 8
  br label %26

26:                                               ; preds = %12, %11
  %27 = load %struct.res_common*, %struct.res_common** %3, align 8
  ret %struct.res_common* %27
}

declare dso_local %struct.res_mpt* @kzalloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
