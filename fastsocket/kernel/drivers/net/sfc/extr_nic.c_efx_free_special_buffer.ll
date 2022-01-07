; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/sfc/extr_nic.c_efx_free_special_buffer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/sfc/extr_nic.c_efx_free_special_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efx_nic = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.efx_special_buffer = type { i64, i32*, i64, i32, i64 }

@hw = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [67 x i8] c"deallocating special buffers %d-%d at %llx+%x (virt %p phys %llx)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.efx_nic*, %struct.efx_special_buffer*)* @efx_free_special_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @efx_free_special_buffer(%struct.efx_nic* %0, %struct.efx_special_buffer* %1) #0 {
  %3 = alloca %struct.efx_nic*, align 8
  %4 = alloca %struct.efx_special_buffer*, align 8
  store %struct.efx_nic* %0, %struct.efx_nic** %3, align 8
  store %struct.efx_special_buffer* %1, %struct.efx_special_buffer** %4, align 8
  %5 = load %struct.efx_special_buffer*, %struct.efx_special_buffer** %4, align 8
  %6 = getelementptr inbounds %struct.efx_special_buffer, %struct.efx_special_buffer* %5, i32 0, i32 1
  %7 = load i32*, i32** %6, align 8
  %8 = icmp ne i32* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %2
  br label %61

10:                                               ; preds = %2
  %11 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %12 = load i32, i32* @hw, align 4
  %13 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %14 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.efx_special_buffer*, %struct.efx_special_buffer** %4, align 8
  %17 = getelementptr inbounds %struct.efx_special_buffer, %struct.efx_special_buffer* %16, i32 0, i32 4
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.efx_special_buffer*, %struct.efx_special_buffer** %4, align 8
  %20 = getelementptr inbounds %struct.efx_special_buffer, %struct.efx_special_buffer* %19, i32 0, i32 4
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.efx_special_buffer*, %struct.efx_special_buffer** %4, align 8
  %23 = getelementptr inbounds %struct.efx_special_buffer, %struct.efx_special_buffer* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = add nsw i64 %21, %24
  %26 = sub nsw i64 %25, 1
  %27 = load %struct.efx_special_buffer*, %struct.efx_special_buffer** %4, align 8
  %28 = getelementptr inbounds %struct.efx_special_buffer, %struct.efx_special_buffer* %27, i32 0, i32 2
  %29 = load i64, i64* %28, align 8
  %30 = trunc i64 %29 to i32
  %31 = load %struct.efx_special_buffer*, %struct.efx_special_buffer** %4, align 8
  %32 = getelementptr inbounds %struct.efx_special_buffer, %struct.efx_special_buffer* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.efx_special_buffer*, %struct.efx_special_buffer** %4, align 8
  %35 = getelementptr inbounds %struct.efx_special_buffer, %struct.efx_special_buffer* %34, i32 0, i32 1
  %36 = load i32*, i32** %35, align 8
  %37 = load %struct.efx_special_buffer*, %struct.efx_special_buffer** %4, align 8
  %38 = getelementptr inbounds %struct.efx_special_buffer, %struct.efx_special_buffer* %37, i32 0, i32 1
  %39 = load i32*, i32** %38, align 8
  %40 = call i64 @virt_to_phys(i32* %39)
  %41 = trunc i64 %40 to i32
  %42 = call i32 @netif_dbg(%struct.efx_nic* %11, i32 %12, i32 %15, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str, i64 0, i64 0), i64 %18, i64 %26, i32 %30, i32 %33, i32* %36, i32 %41)
  %43 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %44 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %43, i32 0, i32 0
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load %struct.efx_special_buffer*, %struct.efx_special_buffer** %4, align 8
  %48 = getelementptr inbounds %struct.efx_special_buffer, %struct.efx_special_buffer* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.efx_special_buffer*, %struct.efx_special_buffer** %4, align 8
  %51 = getelementptr inbounds %struct.efx_special_buffer, %struct.efx_special_buffer* %50, i32 0, i32 1
  %52 = load i32*, i32** %51, align 8
  %53 = load %struct.efx_special_buffer*, %struct.efx_special_buffer** %4, align 8
  %54 = getelementptr inbounds %struct.efx_special_buffer, %struct.efx_special_buffer* %53, i32 0, i32 2
  %55 = load i64, i64* %54, align 8
  %56 = call i32 @dma_free_coherent(i32* %46, i32 %49, i32* %52, i64 %55)
  %57 = load %struct.efx_special_buffer*, %struct.efx_special_buffer** %4, align 8
  %58 = getelementptr inbounds %struct.efx_special_buffer, %struct.efx_special_buffer* %57, i32 0, i32 1
  store i32* null, i32** %58, align 8
  %59 = load %struct.efx_special_buffer*, %struct.efx_special_buffer** %4, align 8
  %60 = getelementptr inbounds %struct.efx_special_buffer, %struct.efx_special_buffer* %59, i32 0, i32 0
  store i64 0, i64* %60, align 8
  br label %61

61:                                               ; preds = %10, %9
  ret void
}

declare dso_local i32 @netif_dbg(%struct.efx_nic*, i32, i32, i8*, i64, i64, i32, i32, i32*, i32) #1

declare dso_local i64 @virt_to_phys(i32*) #1

declare dso_local i32 @dma_free_coherent(i32*, i32, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
