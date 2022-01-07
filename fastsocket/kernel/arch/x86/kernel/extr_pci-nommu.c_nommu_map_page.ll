; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/extr_pci-nommu.c_nommu_map_page.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/extr_pci-nommu.c_nommu_map_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.page = type { i32 }
%struct.dma_attrs = type { i32 }

@.str = private unnamed_addr constant [11 x i8] c"map_single\00", align 1
@bad_dma_address = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.page*, i64, i64, i32, %struct.dma_attrs*)* @nommu_map_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @nommu_map_page(%struct.device* %0, %struct.page* %1, i64 %2, i64 %3, i32 %4, %struct.dma_attrs* %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca %struct.device*, align 8
  %9 = alloca %struct.page*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.dma_attrs*, align 8
  %14 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %8, align 8
  store %struct.page* %1, %struct.page** %9, align 8
  store i64 %2, i64* %10, align 8
  store i64 %3, i64* %11, align 8
  store i32 %4, i32* %12, align 4
  store %struct.dma_attrs* %5, %struct.dma_attrs** %13, align 8
  %15 = load %struct.page*, %struct.page** %9, align 8
  %16 = call i64 @page_to_phys(%struct.page* %15)
  %17 = load i64, i64* %10, align 8
  %18 = add i64 %16, %17
  store i64 %18, i64* %14, align 8
  %19 = load i64, i64* %11, align 8
  %20 = icmp eq i64 %19, 0
  %21 = zext i1 %20 to i32
  %22 = call i32 @WARN_ON(i32 %21)
  %23 = load %struct.device*, %struct.device** %8, align 8
  %24 = load i64, i64* %14, align 8
  %25 = load i64, i64* %11, align 8
  %26 = call i32 @check_addr(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), %struct.device* %23, i64 %24, i64 %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %30, label %28

28:                                               ; preds = %6
  %29 = load i64, i64* @bad_dma_address, align 8
  store i64 %29, i64* %7, align 8
  br label %33

30:                                               ; preds = %6
  %31 = call i32 (...) @flush_write_buffers()
  %32 = load i64, i64* %14, align 8
  store i64 %32, i64* %7, align 8
  br label %33

33:                                               ; preds = %30, %28
  %34 = load i64, i64* %7, align 8
  ret i64 %34
}

declare dso_local i64 @page_to_phys(%struct.page*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @check_addr(i8*, %struct.device*, i64, i64) #1

declare dso_local i32 @flush_write_buffers(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
