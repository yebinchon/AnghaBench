; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_niu.c_niu_rbr_add_page.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_niu.c_niu_rbr_add_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.niu = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (i32, %struct.page*, i32, i32, i32)* }
%struct.page = type { i32 }
%struct.rx_ring_info = type { i32, i64, i32* }
%struct.TYPE_4__ = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@RBR_DESCR_ADDR_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.niu*, %struct.rx_ring_info*, i32, i32)* @niu_rbr_add_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @niu_rbr_add_page(%struct.niu* %0, %struct.rx_ring_info* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.niu*, align 8
  %7 = alloca %struct.rx_ring_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.page*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  store %struct.niu* %0, %struct.niu** %6, align 8
  store %struct.rx_ring_info* %1, %struct.rx_ring_info** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %14 = load i32, i32* %8, align 4
  %15 = call %struct.page* @alloc_page(i32 %14)
  store %struct.page* %15, %struct.page** %10, align 8
  %16 = load %struct.page*, %struct.page** %10, align 8
  %17 = icmp ne %struct.page* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %4
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %5, align 4
  br label %83

21:                                               ; preds = %4
  %22 = load %struct.niu*, %struct.niu** %6, align 8
  %23 = getelementptr inbounds %struct.niu, %struct.niu* %22, i32 0, i32 1
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i32 (i32, %struct.page*, i32, i32, i32)*, i32 (i32, %struct.page*, i32, i32, i32)** %25, align 8
  %27 = load %struct.niu*, %struct.niu** %6, align 8
  %28 = getelementptr inbounds %struct.niu, %struct.niu* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.page*, %struct.page** %10, align 8
  %31 = load i32, i32* @PAGE_SIZE, align 4
  %32 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %33 = call i32 %26(i32 %29, %struct.page* %30, i32 0, i32 %31, i32 %32)
  store i32 %33, i32* %11, align 4
  %34 = load %struct.rx_ring_info*, %struct.rx_ring_info** %7, align 8
  %35 = load %struct.page*, %struct.page** %10, align 8
  %36 = load i32, i32* %11, align 4
  %37 = call i32 @niu_hash_page(%struct.rx_ring_info* %34, %struct.page* %35, i32 %36)
  %38 = load %struct.rx_ring_info*, %struct.rx_ring_info** %7, align 8
  %39 = getelementptr inbounds %struct.rx_ring_info, %struct.rx_ring_info* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = icmp sgt i32 %40, 1
  br i1 %41, label %42, label %51

42:                                               ; preds = %21
  %43 = load %struct.rx_ring_info*, %struct.rx_ring_info** %7, align 8
  %44 = getelementptr inbounds %struct.rx_ring_info, %struct.rx_ring_info* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = sub nsw i32 %45, 1
  %47 = load %struct.page*, %struct.page** %10, align 8
  %48 = call %struct.TYPE_4__* @compound_head(%struct.page* %47)
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = call i32 @atomic_add(i32 %46, i32* %49)
  br label %51

51:                                               ; preds = %42, %21
  store i32 0, i32* %12, align 4
  br label %52

52:                                               ; preds = %79, %51
  %53 = load i32, i32* %12, align 4
  %54 = load %struct.rx_ring_info*, %struct.rx_ring_info** %7, align 8
  %55 = getelementptr inbounds %struct.rx_ring_info, %struct.rx_ring_info* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = icmp slt i32 %53, %56
  br i1 %57, label %58, label %82

58:                                               ; preds = %52
  %59 = load %struct.rx_ring_info*, %struct.rx_ring_info** %7, align 8
  %60 = getelementptr inbounds %struct.rx_ring_info, %struct.rx_ring_info* %59, i32 0, i32 2
  %61 = load i32*, i32** %60, align 8
  %62 = load i32, i32* %9, align 4
  %63 = load i32, i32* %12, align 4
  %64 = add nsw i32 %62, %63
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %61, i64 %65
  store i32* %66, i32** %13, align 8
  %67 = load i32, i32* %11, align 4
  %68 = load i32, i32* @RBR_DESCR_ADDR_SHIFT, align 4
  %69 = ashr i32 %67, %68
  %70 = call i32 @cpu_to_le32(i32 %69)
  %71 = load i32*, i32** %13, align 8
  store i32 %70, i32* %71, align 4
  %72 = load %struct.rx_ring_info*, %struct.rx_ring_info** %7, align 8
  %73 = getelementptr inbounds %struct.rx_ring_info, %struct.rx_ring_info* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = load i32, i32* %11, align 4
  %76 = sext i32 %75 to i64
  %77 = add nsw i64 %76, %74
  %78 = trunc i64 %77 to i32
  store i32 %78, i32* %11, align 4
  br label %79

79:                                               ; preds = %58
  %80 = load i32, i32* %12, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %12, align 4
  br label %52

82:                                               ; preds = %52
  store i32 0, i32* %5, align 4
  br label %83

83:                                               ; preds = %82, %18
  %84 = load i32, i32* %5, align 4
  ret i32 %84
}

declare dso_local %struct.page* @alloc_page(i32) #1

declare dso_local i32 @niu_hash_page(%struct.rx_ring_info*, %struct.page*, i32) #1

declare dso_local i32 @atomic_add(i32, i32*) #1

declare dso_local %struct.TYPE_4__* @compound_head(%struct.page*) #1

declare dso_local i32 @cpu_to_le32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
