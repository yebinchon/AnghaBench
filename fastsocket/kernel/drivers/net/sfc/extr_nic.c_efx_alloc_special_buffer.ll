; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/sfc/extr_nic.c_efx_alloc_special_buffer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/sfc/extr_nic.c_efx_alloc_special_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efx_nic = type { i64, i64, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.efx_special_buffer = type { i32, i32, i32, i64, i32 }

@EFX_BUF_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@probe = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [65 x i8] c"allocating special buffers %d-%d at %llx+%x (virt %p phys %llx)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.efx_nic*, %struct.efx_special_buffer*, i32)* @efx_alloc_special_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @efx_alloc_special_buffer(%struct.efx_nic* %0, %struct.efx_special_buffer* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.efx_nic*, align 8
  %6 = alloca %struct.efx_special_buffer*, align 8
  %7 = alloca i32, align 4
  store %struct.efx_nic* %0, %struct.efx_nic** %5, align 8
  store %struct.efx_special_buffer* %1, %struct.efx_special_buffer** %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @EFX_BUF_SIZE, align 4
  %10 = call i32 @ALIGN(i32 %8, i32 %9)
  store i32 %10, i32* %7, align 4
  %11 = load %struct.efx_nic*, %struct.efx_nic** %5, align 8
  %12 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %11, i32 0, i32 3
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %7, align 4
  %16 = load %struct.efx_special_buffer*, %struct.efx_special_buffer** %6, align 8
  %17 = getelementptr inbounds %struct.efx_special_buffer, %struct.efx_special_buffer* %16, i32 0, i32 0
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = call i32 @dma_alloc_coherent(i32* %14, i32 %15, i32* %17, i32 %18)
  %20 = load %struct.efx_special_buffer*, %struct.efx_special_buffer** %6, align 8
  %21 = getelementptr inbounds %struct.efx_special_buffer, %struct.efx_special_buffer* %20, i32 0, i32 4
  store i32 %19, i32* %21, align 8
  %22 = load %struct.efx_special_buffer*, %struct.efx_special_buffer** %6, align 8
  %23 = getelementptr inbounds %struct.efx_special_buffer, %struct.efx_special_buffer* %22, i32 0, i32 4
  %24 = load i32, i32* %23, align 8
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %3
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %4, align 4
  br label %88

29:                                               ; preds = %3
  %30 = load i32, i32* %7, align 4
  %31 = load %struct.efx_special_buffer*, %struct.efx_special_buffer** %6, align 8
  %32 = getelementptr inbounds %struct.efx_special_buffer, %struct.efx_special_buffer* %31, i32 0, i32 1
  store i32 %30, i32* %32, align 4
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* @EFX_BUF_SIZE, align 4
  %35 = udiv i32 %33, %34
  %36 = load %struct.efx_special_buffer*, %struct.efx_special_buffer** %6, align 8
  %37 = getelementptr inbounds %struct.efx_special_buffer, %struct.efx_special_buffer* %36, i32 0, i32 2
  store i32 %35, i32* %37, align 8
  %38 = load %struct.efx_special_buffer*, %struct.efx_special_buffer** %6, align 8
  %39 = getelementptr inbounds %struct.efx_special_buffer, %struct.efx_special_buffer* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @EFX_BUF_SIZE, align 4
  %42 = sub i32 %41, 1
  %43 = and i32 %40, %42
  %44 = call i32 @BUG_ON(i32 %43)
  %45 = load %struct.efx_nic*, %struct.efx_nic** %5, align 8
  %46 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.efx_special_buffer*, %struct.efx_special_buffer** %6, align 8
  %49 = getelementptr inbounds %struct.efx_special_buffer, %struct.efx_special_buffer* %48, i32 0, i32 3
  store i64 %47, i64* %49, align 8
  %50 = load %struct.efx_special_buffer*, %struct.efx_special_buffer** %6, align 8
  %51 = getelementptr inbounds %struct.efx_special_buffer, %struct.efx_special_buffer* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = zext i32 %52 to i64
  %54 = load %struct.efx_nic*, %struct.efx_nic** %5, align 8
  %55 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = add nsw i64 %56, %53
  store i64 %57, i64* %55, align 8
  %58 = load %struct.efx_nic*, %struct.efx_nic** %5, align 8
  %59 = load i32, i32* @probe, align 4
  %60 = load %struct.efx_nic*, %struct.efx_nic** %5, align 8
  %61 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.efx_special_buffer*, %struct.efx_special_buffer** %6, align 8
  %64 = getelementptr inbounds %struct.efx_special_buffer, %struct.efx_special_buffer* %63, i32 0, i32 3
  %65 = load i64, i64* %64, align 8
  %66 = load %struct.efx_special_buffer*, %struct.efx_special_buffer** %6, align 8
  %67 = getelementptr inbounds %struct.efx_special_buffer, %struct.efx_special_buffer* %66, i32 0, i32 3
  %68 = load i64, i64* %67, align 8
  %69 = load %struct.efx_special_buffer*, %struct.efx_special_buffer** %6, align 8
  %70 = getelementptr inbounds %struct.efx_special_buffer, %struct.efx_special_buffer* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 8
  %72 = zext i32 %71 to i64
  %73 = add nsw i64 %68, %72
  %74 = sub nsw i64 %73, 1
  %75 = load %struct.efx_special_buffer*, %struct.efx_special_buffer** %6, align 8
  %76 = getelementptr inbounds %struct.efx_special_buffer, %struct.efx_special_buffer* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* %7, align 4
  %79 = load %struct.efx_special_buffer*, %struct.efx_special_buffer** %6, align 8
  %80 = getelementptr inbounds %struct.efx_special_buffer, %struct.efx_special_buffer* %79, i32 0, i32 4
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.efx_special_buffer*, %struct.efx_special_buffer** %6, align 8
  %83 = getelementptr inbounds %struct.efx_special_buffer, %struct.efx_special_buffer* %82, i32 0, i32 4
  %84 = load i32, i32* %83, align 8
  %85 = call i64 @virt_to_phys(i32 %84)
  %86 = trunc i64 %85 to i32
  %87 = call i32 @netif_dbg(%struct.efx_nic* %58, i32 %59, i32 %62, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str, i64 0, i64 0), i64 %65, i64 %74, i32 %77, i32 %78, i32 %81, i32 %86)
  store i32 0, i32* %4, align 4
  br label %88

88:                                               ; preds = %29, %26
  %89 = load i32, i32* %4, align 4
  ret i32 %89
}

declare dso_local i32 @ALIGN(i32, i32) #1

declare dso_local i32 @dma_alloc_coherent(i32*, i32, i32*, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @netif_dbg(%struct.efx_nic*, i32, i32, i8*, i64, i64, i32, i32, i32, i32) #1

declare dso_local i64 @virt_to_phys(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
