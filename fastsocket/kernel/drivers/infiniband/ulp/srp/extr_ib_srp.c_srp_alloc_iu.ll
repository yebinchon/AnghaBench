; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/ulp/srp/extr_ib_srp.c_srp_alloc_iu.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/ulp/srp/extr_ib_srp.c_srp_alloc_iu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.srp_iu = type { i64, i32, %struct.srp_iu*, i32 }
%struct.srp_host = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.srp_iu* (%struct.srp_host*, i64, i32, i32)* @srp_alloc_iu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.srp_iu* @srp_alloc_iu(%struct.srp_host* %0, i64 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.srp_iu*, align 8
  %6 = alloca %struct.srp_host*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.srp_iu*, align 8
  store %struct.srp_host* %0, %struct.srp_host** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %11 = load i32, i32* %8, align 4
  %12 = call %struct.srp_iu* @kmalloc(i32 32, i32 %11)
  store %struct.srp_iu* %12, %struct.srp_iu** %10, align 8
  %13 = load %struct.srp_iu*, %struct.srp_iu** %10, align 8
  %14 = icmp ne %struct.srp_iu* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %4
  br label %68

16:                                               ; preds = %4
  %17 = load i64, i64* %7, align 8
  %18 = load i32, i32* %8, align 4
  %19 = call %struct.srp_iu* @kzalloc(i64 %17, i32 %18)
  %20 = load %struct.srp_iu*, %struct.srp_iu** %10, align 8
  %21 = getelementptr inbounds %struct.srp_iu, %struct.srp_iu* %20, i32 0, i32 2
  store %struct.srp_iu* %19, %struct.srp_iu** %21, align 8
  %22 = load %struct.srp_iu*, %struct.srp_iu** %10, align 8
  %23 = getelementptr inbounds %struct.srp_iu, %struct.srp_iu* %22, i32 0, i32 2
  %24 = load %struct.srp_iu*, %struct.srp_iu** %23, align 8
  %25 = icmp ne %struct.srp_iu* %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %16
  br label %65

27:                                               ; preds = %16
  %28 = load %struct.srp_host*, %struct.srp_host** %6, align 8
  %29 = getelementptr inbounds %struct.srp_host, %struct.srp_host* %28, i32 0, i32 0
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.srp_iu*, %struct.srp_iu** %10, align 8
  %34 = getelementptr inbounds %struct.srp_iu, %struct.srp_iu* %33, i32 0, i32 2
  %35 = load %struct.srp_iu*, %struct.srp_iu** %34, align 8
  %36 = load i64, i64* %7, align 8
  %37 = load i32, i32* %9, align 4
  %38 = call i32 @ib_dma_map_single(i32 %32, %struct.srp_iu* %35, i64 %36, i32 %37)
  %39 = load %struct.srp_iu*, %struct.srp_iu** %10, align 8
  %40 = getelementptr inbounds %struct.srp_iu, %struct.srp_iu* %39, i32 0, i32 3
  store i32 %38, i32* %40, align 8
  %41 = load %struct.srp_host*, %struct.srp_host** %6, align 8
  %42 = getelementptr inbounds %struct.srp_host, %struct.srp_host* %41, i32 0, i32 0
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.srp_iu*, %struct.srp_iu** %10, align 8
  %47 = getelementptr inbounds %struct.srp_iu, %struct.srp_iu* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 8
  %49 = call i64 @ib_dma_mapping_error(i32 %45, i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %27
  br label %60

52:                                               ; preds = %27
  %53 = load i64, i64* %7, align 8
  %54 = load %struct.srp_iu*, %struct.srp_iu** %10, align 8
  %55 = getelementptr inbounds %struct.srp_iu, %struct.srp_iu* %54, i32 0, i32 0
  store i64 %53, i64* %55, align 8
  %56 = load i32, i32* %9, align 4
  %57 = load %struct.srp_iu*, %struct.srp_iu** %10, align 8
  %58 = getelementptr inbounds %struct.srp_iu, %struct.srp_iu* %57, i32 0, i32 1
  store i32 %56, i32* %58, align 8
  %59 = load %struct.srp_iu*, %struct.srp_iu** %10, align 8
  store %struct.srp_iu* %59, %struct.srp_iu** %5, align 8
  br label %69

60:                                               ; preds = %51
  %61 = load %struct.srp_iu*, %struct.srp_iu** %10, align 8
  %62 = getelementptr inbounds %struct.srp_iu, %struct.srp_iu* %61, i32 0, i32 2
  %63 = load %struct.srp_iu*, %struct.srp_iu** %62, align 8
  %64 = call i32 @kfree(%struct.srp_iu* %63)
  br label %65

65:                                               ; preds = %60, %26
  %66 = load %struct.srp_iu*, %struct.srp_iu** %10, align 8
  %67 = call i32 @kfree(%struct.srp_iu* %66)
  br label %68

68:                                               ; preds = %65, %15
  store %struct.srp_iu* null, %struct.srp_iu** %5, align 8
  br label %69

69:                                               ; preds = %68, %52
  %70 = load %struct.srp_iu*, %struct.srp_iu** %5, align 8
  ret %struct.srp_iu* %70
}

declare dso_local %struct.srp_iu* @kmalloc(i32, i32) #1

declare dso_local %struct.srp_iu* @kzalloc(i64, i32) #1

declare dso_local i32 @ib_dma_map_single(i32, %struct.srp_iu*, i64, i32) #1

declare dso_local i64 @ib_dma_mapping_error(i32, i32) #1

declare dso_local i32 @kfree(%struct.srp_iu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
