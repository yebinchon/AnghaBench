; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/edac/extr_i5400_edac.c_handle_channel.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/edac/extr_i5400_edac.c_handle_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i5400_pvt = type { i32 }
%struct.i5400_dimm_info = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.i5400_pvt*, i32, i32, %struct.i5400_dimm_info*)* @handle_channel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_channel(%struct.i5400_pvt* %0, i32 %1, i32 %2, %struct.i5400_dimm_info* %3) #0 {
  %5 = alloca %struct.i5400_pvt*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.i5400_dimm_info*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.i5400_pvt* %0, %struct.i5400_pvt** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store %struct.i5400_dimm_info* %3, %struct.i5400_dimm_info** %8, align 8
  %12 = load %struct.i5400_pvt*, %struct.i5400_pvt** %5, align 8
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* %7, align 4
  %15 = call i32 @determine_mtr(%struct.i5400_pvt* %12, i32 %13, i32 %14)
  store i32 %15, i32* %9, align 4
  %16 = load i32, i32* %9, align 4
  %17 = call i64 @MTR_DIMMS_PRESENT(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %60

19:                                               ; preds = %4
  %20 = load %struct.i5400_pvt*, %struct.i5400_pvt** %5, align 8
  %21 = load i32, i32* %7, align 4
  %22 = call i32 @determine_amb_present_reg(%struct.i5400_pvt* %20, i32 %21)
  store i32 %22, i32* %10, align 4
  %23 = load i32, i32* %10, align 4
  %24 = load i32, i32* %6, align 4
  %25 = shl i32 1, %24
  %26 = and i32 %23, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %59

28:                                               ; preds = %19
  %29 = load i32, i32* %9, align 4
  %30 = call i32 @MTR_DRAM_BANKS_ADDR_BITS(i32 %29)
  store i32 %30, i32* %11, align 4
  %31 = load i32, i32* %9, align 4
  %32 = call i64 @MTR_DIMM_ROWS_ADDR_BITS(i32 %31)
  %33 = load i32, i32* %11, align 4
  %34 = sext i32 %33 to i64
  %35 = add nsw i64 %34, %32
  %36 = trunc i64 %35 to i32
  store i32 %36, i32* %11, align 4
  %37 = load i32, i32* %9, align 4
  %38 = call i64 @MTR_DIMM_COLS_ADDR_BITS(i32 %37)
  %39 = load i32, i32* %11, align 4
  %40 = sext i32 %39 to i64
  %41 = add nsw i64 %40, %38
  %42 = trunc i64 %41 to i32
  store i32 %42, i32* %11, align 4
  %43 = load i32, i32* %9, align 4
  %44 = call i64 @MTR_DIMM_RANK(i32 %43)
  %45 = load i32, i32* %11, align 4
  %46 = sext i32 %45 to i64
  %47 = add nsw i64 %46, %44
  %48 = trunc i64 %47 to i32
  store i32 %48, i32* %11, align 4
  %49 = load i32, i32* %11, align 4
  %50 = add nsw i32 %49, 6
  store i32 %50, i32* %11, align 4
  %51 = load i32, i32* %11, align 4
  %52 = sub nsw i32 %51, 20
  store i32 %52, i32* %11, align 4
  %53 = load i32, i32* %11, align 4
  %54 = sub nsw i32 %53, 3
  store i32 %54, i32* %11, align 4
  %55 = load i32, i32* %11, align 4
  %56 = shl i32 1, %55
  %57 = load %struct.i5400_dimm_info*, %struct.i5400_dimm_info** %8, align 8
  %58 = getelementptr inbounds %struct.i5400_dimm_info, %struct.i5400_dimm_info* %57, i32 0, i32 0
  store i32 %56, i32* %58, align 4
  br label %59

59:                                               ; preds = %28, %19
  br label %60

60:                                               ; preds = %59, %4
  ret void
}

declare dso_local i32 @determine_mtr(%struct.i5400_pvt*, i32, i32) #1

declare dso_local i64 @MTR_DIMMS_PRESENT(i32) #1

declare dso_local i32 @determine_amb_present_reg(%struct.i5400_pvt*, i32) #1

declare dso_local i32 @MTR_DRAM_BANKS_ADDR_BITS(i32) #1

declare dso_local i64 @MTR_DIMM_ROWS_ADDR_BITS(i32) #1

declare dso_local i64 @MTR_DIMM_COLS_ADDR_BITS(i32) #1

declare dso_local i64 @MTR_DIMM_RANK(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
