; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_scsi_tgt_if.c_uspace_ring_map.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_scsi_tgt_if.c_uspace_ring_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_area_struct = type { i32 }
%struct.tgt_ring = type { i32* }
%struct.page = type { i32 }

@TGT_RING_PAGES = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vm_area_struct*, i64, %struct.tgt_ring*)* @uspace_ring_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uspace_ring_map(%struct.vm_area_struct* %0, i64 %1, %struct.tgt_ring* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.vm_area_struct*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.tgt_ring*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.page*, align 8
  store %struct.vm_area_struct* %0, %struct.vm_area_struct** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.tgt_ring* %2, %struct.tgt_ring** %7, align 8
  store i32 0, i32* %8, align 4
  br label %11

11:                                               ; preds = %36, %3
  %12 = load i32, i32* %8, align 4
  %13 = load i32, i32* @TGT_RING_PAGES, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %39

15:                                               ; preds = %11
  %16 = load %struct.tgt_ring*, %struct.tgt_ring** %7, align 8
  %17 = getelementptr inbounds %struct.tgt_ring, %struct.tgt_ring* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = load i32, i32* %8, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i32, i32* %18, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = call %struct.page* @virt_to_page(i32 %22)
  store %struct.page* %23, %struct.page** %10, align 8
  %24 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %25 = load i64, i64* %6, align 8
  %26 = load %struct.page*, %struct.page** %10, align 8
  %27 = call i32 @vm_insert_page(%struct.vm_area_struct* %24, i64 %25, %struct.page* %26)
  store i32 %27, i32* %9, align 4
  %28 = load i32, i32* %9, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %15
  %31 = load i32, i32* %9, align 4
  store i32 %31, i32* %4, align 4
  br label %40

32:                                               ; preds = %15
  %33 = load i64, i64* @PAGE_SIZE, align 8
  %34 = load i64, i64* %6, align 8
  %35 = add i64 %34, %33
  store i64 %35, i64* %6, align 8
  br label %36

36:                                               ; preds = %32
  %37 = load i32, i32* %8, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %8, align 4
  br label %11

39:                                               ; preds = %11
  store i32 0, i32* %4, align 4
  br label %40

40:                                               ; preds = %39, %30
  %41 = load i32, i32* %4, align 4
  ret i32 %41
}

declare dso_local %struct.page* @virt_to_page(i32) #1

declare dso_local i32 @vm_insert_page(%struct.vm_area_struct*, i64, %struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
