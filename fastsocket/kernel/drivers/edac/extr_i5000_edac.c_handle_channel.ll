; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/edac/extr_i5000_edac.c_handle_channel.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/edac/extr_i5000_edac.c_handle_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i5000_pvt = type { i32 }
%struct.i5000_dimm_info = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.i5000_pvt*, i32, i32, %struct.i5000_dimm_info*)* @handle_channel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_channel(%struct.i5000_pvt* %0, i32 %1, i32 %2, %struct.i5000_dimm_info* %3) #0 {
  %5 = alloca %struct.i5000_pvt*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.i5000_dimm_info*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.i5000_pvt* %0, %struct.i5000_pvt** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store %struct.i5000_dimm_info* %3, %struct.i5000_dimm_info** %8, align 8
  %12 = load %struct.i5000_pvt*, %struct.i5000_pvt** %5, align 8
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* %7, align 4
  %15 = call i32 @determine_mtr(%struct.i5000_pvt* %12, i32 %13, i32 %14)
  store i32 %15, i32* %9, align 4
  %16 = load i32, i32* %9, align 4
  %17 = call i64 @MTR_DIMMS_PRESENT(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %69

19:                                               ; preds = %4
  %20 = load %struct.i5000_pvt*, %struct.i5000_pvt** %5, align 8
  %21 = load i32, i32* %7, align 4
  %22 = call i32 @determine_amb_present_reg(%struct.i5000_pvt* %20, i32 %21)
  store i32 %22, i32* %10, align 4
  %23 = load i32, i32* %10, align 4
  %24 = load i32, i32* %6, align 4
  %25 = ashr i32 %24, 1
  %26 = shl i32 1, %25
  %27 = and i32 %23, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %68

29:                                               ; preds = %19
  %30 = load i32, i32* %9, align 4
  %31 = call i32 @MTR_DIMM_RANK(i32 %30)
  %32 = load %struct.i5000_dimm_info*, %struct.i5000_dimm_info** %8, align 8
  %33 = getelementptr inbounds %struct.i5000_dimm_info, %struct.i5000_dimm_info* %32, i32 0, i32 1
  store i32 %31, i32* %33, align 4
  %34 = load %struct.i5000_dimm_info*, %struct.i5000_dimm_info** %8, align 8
  %35 = getelementptr inbounds %struct.i5000_dimm_info, %struct.i5000_dimm_info* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %29
  %39 = load i32, i32* %6, align 4
  %40 = and i32 %39, 1
  %41 = icmp eq i32 %40, 1
  br i1 %41, label %67, label %42

42:                                               ; preds = %38, %29
  %43 = load i32, i32* %9, align 4
  %44 = call i32 @MTR_DRAM_BANKS_ADDR_BITS(i32 %43)
  store i32 %44, i32* %11, align 4
  %45 = load i32, i32* %9, align 4
  %46 = call i64 @MTR_DIMM_ROWS_ADDR_BITS(i32 %45)
  %47 = load i32, i32* %11, align 4
  %48 = sext i32 %47 to i64
  %49 = add nsw i64 %48, %46
  %50 = trunc i64 %49 to i32
  store i32 %50, i32* %11, align 4
  %51 = load i32, i32* %9, align 4
  %52 = call i64 @MTR_DIMM_COLS_ADDR_BITS(i32 %51)
  %53 = load i32, i32* %11, align 4
  %54 = sext i32 %53 to i64
  %55 = add nsw i64 %54, %52
  %56 = trunc i64 %55 to i32
  store i32 %56, i32* %11, align 4
  %57 = load i32, i32* %11, align 4
  %58 = add nsw i32 %57, 6
  store i32 %58, i32* %11, align 4
  %59 = load i32, i32* %11, align 4
  %60 = sub nsw i32 %59, 20
  store i32 %60, i32* %11, align 4
  %61 = load i32, i32* %11, align 4
  %62 = sub nsw i32 %61, 3
  store i32 %62, i32* %11, align 4
  %63 = load i32, i32* %11, align 4
  %64 = shl i32 1, %63
  %65 = load %struct.i5000_dimm_info*, %struct.i5000_dimm_info** %8, align 8
  %66 = getelementptr inbounds %struct.i5000_dimm_info, %struct.i5000_dimm_info* %65, i32 0, i32 0
  store i32 %64, i32* %66, align 4
  br label %67

67:                                               ; preds = %42, %38
  br label %68

68:                                               ; preds = %67, %19
  br label %69

69:                                               ; preds = %68, %4
  ret void
}

declare dso_local i32 @determine_mtr(%struct.i5000_pvt*, i32, i32) #1

declare dso_local i64 @MTR_DIMMS_PRESENT(i32) #1

declare dso_local i32 @determine_amb_present_reg(%struct.i5000_pvt*, i32) #1

declare dso_local i32 @MTR_DIMM_RANK(i32) #1

declare dso_local i32 @MTR_DRAM_BANKS_ADDR_BITS(i32) #1

declare dso_local i64 @MTR_DIMM_ROWS_ADDR_BITS(i32) #1

declare dso_local i64 @MTR_DIMM_COLS_ADDR_BITS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
