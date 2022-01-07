; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/extr_drm_prime.c_drm_prime_add_buf_handle.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/extr_drm_prime.c_drm_prime_add_buf_handle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_prime_file_private = type { i32 }
%struct.dma_buf = type { i32 }
%struct.drm_prime_member = type { i32, i32, %struct.dma_buf* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_prime_file_private*, %struct.dma_buf*, i32)* @drm_prime_add_buf_handle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @drm_prime_add_buf_handle(%struct.drm_prime_file_private* %0, %struct.dma_buf* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_prime_file_private*, align 8
  %6 = alloca %struct.dma_buf*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.drm_prime_member*, align 8
  store %struct.drm_prime_file_private* %0, %struct.drm_prime_file_private** %5, align 8
  store %struct.dma_buf* %1, %struct.dma_buf** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.drm_prime_member* @kmalloc(i32 16, i32 %9)
  store %struct.drm_prime_member* %10, %struct.drm_prime_member** %8, align 8
  %11 = load %struct.drm_prime_member*, %struct.drm_prime_member** %8, align 8
  %12 = icmp ne %struct.drm_prime_member* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %3
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %4, align 4
  br label %30

16:                                               ; preds = %3
  %17 = load %struct.dma_buf*, %struct.dma_buf** %6, align 8
  %18 = call i32 @get_dma_buf(%struct.dma_buf* %17)
  %19 = load %struct.dma_buf*, %struct.dma_buf** %6, align 8
  %20 = load %struct.drm_prime_member*, %struct.drm_prime_member** %8, align 8
  %21 = getelementptr inbounds %struct.drm_prime_member, %struct.drm_prime_member* %20, i32 0, i32 2
  store %struct.dma_buf* %19, %struct.dma_buf** %21, align 8
  %22 = load i32, i32* %7, align 4
  %23 = load %struct.drm_prime_member*, %struct.drm_prime_member** %8, align 8
  %24 = getelementptr inbounds %struct.drm_prime_member, %struct.drm_prime_member* %23, i32 0, i32 1
  store i32 %22, i32* %24, align 4
  %25 = load %struct.drm_prime_member*, %struct.drm_prime_member** %8, align 8
  %26 = getelementptr inbounds %struct.drm_prime_member, %struct.drm_prime_member* %25, i32 0, i32 0
  %27 = load %struct.drm_prime_file_private*, %struct.drm_prime_file_private** %5, align 8
  %28 = getelementptr inbounds %struct.drm_prime_file_private, %struct.drm_prime_file_private* %27, i32 0, i32 0
  %29 = call i32 @list_add(i32* %26, i32* %28)
  store i32 0, i32* %4, align 4
  br label %30

30:                                               ; preds = %16, %13
  %31 = load i32, i32* %4, align 4
  ret i32 %31
}

declare dso_local %struct.drm_prime_member* @kmalloc(i32, i32) #1

declare dso_local i32 @get_dma_buf(%struct.dma_buf*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
