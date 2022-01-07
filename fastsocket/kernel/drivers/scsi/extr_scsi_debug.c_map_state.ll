; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_scsi_debug.c_map_state.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_scsi_debug.c_map_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@scsi_debug_unmap_granularity = common dso_local global i32 0, align 4
@scsi_debug_unmap_alignment = common dso_local global i32 0, align 4
@map_storep = common dso_local global i32 0, align 4
@map_size = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*)* @map_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @map_state(i32 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32* %1, i32** %4, align 8
  %11 = load i32, i32* @scsi_debug_unmap_granularity, align 4
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* @scsi_debug_unmap_alignment, align 4
  %14 = sub i32 %12, %13
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %3, align 4
  %16 = load i32, i32* %6, align 4
  %17 = add i32 %15, %16
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* %8, align 4
  %19 = load i32, i32* %5, align 4
  %20 = call i32 @do_div(i32 %18, i32 %19)
  %21 = load i32, i32* %8, align 4
  %22 = load i32, i32* @map_storep, align 4
  %23 = call i32 @test_bit(i32 %21, i32 %22)
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* %7, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %2
  %27 = load i32, i32* @map_storep, align 4
  %28 = load i32, i32* @map_size, align 4
  %29 = load i32, i32* %8, align 4
  %30 = call i32 @find_next_zero_bit(i32 %27, i32 %28, i32 %29)
  store i32 %30, i32* %9, align 4
  br label %36

31:                                               ; preds = %2
  %32 = load i32, i32* @map_storep, align 4
  %33 = load i32, i32* @map_size, align 4
  %34 = load i32, i32* %8, align 4
  %35 = call i32 @find_next_bit(i32 %32, i32 %33, i32 %34)
  store i32 %35, i32* %9, align 4
  br label %36

36:                                               ; preds = %31, %26
  %37 = load i32, i32* %9, align 4
  %38 = load i32, i32* %5, align 4
  %39 = mul i32 %37, %38
  %40 = load i32, i32* @scsi_debug_unmap_alignment, align 4
  %41 = sub i32 %39, %40
  store i32 %41, i32* %10, align 4
  %42 = load i32, i32* %10, align 4
  %43 = load i32, i32* %3, align 4
  %44 = sub i32 %42, %43
  %45 = load i32*, i32** %4, align 8
  store i32 %44, i32* %45, align 4
  %46 = load i32, i32* %7, align 4
  ret i32 %46
}

declare dso_local i32 @do_div(i32, i32) #1

declare dso_local i32 @test_bit(i32, i32) #1

declare dso_local i32 @find_next_zero_bit(i32, i32, i32) #1

declare dso_local i32 @find_next_bit(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
