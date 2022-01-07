; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/firewire/extr_core-iso.c_fw_iso_buffer_map.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/firewire/extr_core-iso.c_fw_iso_buffer_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fw_iso_buffer = type { i32, i32* }
%struct.vm_area_struct = type { i64 }

@PAGE_SIZE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fw_iso_buffer_map(%struct.fw_iso_buffer* %0, %struct.vm_area_struct* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fw_iso_buffer*, align 8
  %5 = alloca %struct.vm_area_struct*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.fw_iso_buffer* %0, %struct.fw_iso_buffer** %4, align 8
  store %struct.vm_area_struct* %1, %struct.vm_area_struct** %5, align 8
  %9 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %10 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  store i64 %11, i64* %6, align 8
  store i32 0, i32* %7, align 4
  br label %12

12:                                               ; preds = %37, %2
  %13 = load i32, i32* %7, align 4
  %14 = load %struct.fw_iso_buffer*, %struct.fw_iso_buffer** %4, align 8
  %15 = getelementptr inbounds %struct.fw_iso_buffer, %struct.fw_iso_buffer* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp slt i32 %13, %16
  br i1 %17, label %18, label %40

18:                                               ; preds = %12
  %19 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %20 = load i64, i64* %6, align 8
  %21 = load %struct.fw_iso_buffer*, %struct.fw_iso_buffer** %4, align 8
  %22 = getelementptr inbounds %struct.fw_iso_buffer, %struct.fw_iso_buffer* %21, i32 0, i32 1
  %23 = load i32*, i32** %22, align 8
  %24 = load i32, i32* %7, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %23, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @vm_insert_page(%struct.vm_area_struct* %19, i64 %20, i32 %27)
  store i32 %28, i32* %8, align 4
  %29 = load i32, i32* %8, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %18
  %32 = load i32, i32* %8, align 4
  store i32 %32, i32* %3, align 4
  br label %41

33:                                               ; preds = %18
  %34 = load i64, i64* @PAGE_SIZE, align 8
  %35 = load i64, i64* %6, align 8
  %36 = add i64 %35, %34
  store i64 %36, i64* %6, align 8
  br label %37

37:                                               ; preds = %33
  %38 = load i32, i32* %7, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %7, align 4
  br label %12

40:                                               ; preds = %12
  store i32 0, i32* %3, align 4
  br label %41

41:                                               ; preds = %40, %31
  %42 = load i32, i32* %3, align 4
  ret i32 %42
}

declare dso_local i32 @vm_insert_page(%struct.vm_area_struct*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
