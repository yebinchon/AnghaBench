; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_scsi_debug.c_unmap_region.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_scsi_debug.c_unmap_region.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@scsi_debug_unmap_granularity = common dso_local global i32 0, align 4
@scsi_debug_unmap_alignment = common dso_local global i32 0, align 4
@map_size = common dso_local global i64 0, align 8
@map_storep = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i32)* @unmap_region to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @unmap_region(i64 %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load i64, i64* %3, align 8
  %11 = load i32, i32* %4, align 4
  %12 = zext i32 %11 to i64
  %13 = add nsw i64 %10, %12
  store i64 %13, i64* %7, align 8
  %14 = load i32, i32* @scsi_debug_unmap_granularity, align 4
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* @scsi_debug_unmap_alignment, align 4
  %17 = sub i32 %15, %16
  store i32 %17, i32* %6, align 4
  br label %18

18:                                               ; preds = %47, %2
  %19 = load i64, i64* %3, align 8
  %20 = load i64, i64* %7, align 8
  %21 = icmp slt i64 %19, %20
  br i1 %21, label %22, label %54

22:                                               ; preds = %18
  %23 = load i64, i64* %3, align 8
  %24 = load i32, i32* %6, align 4
  %25 = zext i32 %24 to i64
  %26 = add nsw i64 %23, %25
  store i64 %26, i64* %8, align 8
  %27 = load i64, i64* %8, align 8
  %28 = load i32, i32* %5, align 4
  %29 = call i64 @do_div(i64 %27, i32 %28)
  store i64 %29, i64* %9, align 8
  %30 = load i64, i64* %9, align 8
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %32, label %47

32:                                               ; preds = %22
  %33 = load i64, i64* %3, align 8
  %34 = load i32, i32* %5, align 4
  %35 = zext i32 %34 to i64
  %36 = add nsw i64 %33, %35
  %37 = load i64, i64* %7, align 8
  %38 = icmp slt i64 %36, %37
  br i1 %38, label %39, label %47

39:                                               ; preds = %32
  %40 = load i64, i64* %8, align 8
  %41 = load i64, i64* @map_size, align 8
  %42 = icmp slt i64 %40, %41
  br i1 %42, label %43, label %47

43:                                               ; preds = %39
  %44 = load i64, i64* %8, align 8
  %45 = load i32, i32* @map_storep, align 4
  %46 = call i32 @clear_bit(i64 %44, i32 %45)
  br label %47

47:                                               ; preds = %43, %39, %32, %22
  %48 = load i32, i32* %5, align 4
  %49 = zext i32 %48 to i64
  %50 = load i64, i64* %9, align 8
  %51 = sub nsw i64 %49, %50
  %52 = load i64, i64* %3, align 8
  %53 = add nsw i64 %52, %51
  store i64 %53, i64* %3, align 8
  br label %18

54:                                               ; preds = %18
  ret void
}

declare dso_local i64 @do_div(i64, i32) #1

declare dso_local i32 @clear_bit(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
