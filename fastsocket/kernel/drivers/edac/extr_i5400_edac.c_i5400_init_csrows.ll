; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/edac/extr_i5400_edac.c_i5400_init_csrows.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/edac/extr_i5400_edac.c_i5400_init_csrows.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mem_ctl_info = type { %struct.csrow_info*, %struct.i5400_pvt* }
%struct.csrow_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i64 }
%struct.i5400_pvt = type { i32, i32, %struct.TYPE_2__** }
%struct.TYPE_2__ = type { i64 }

@MEM_FB_DDR2 = common dso_local global i32 0, align 4
@DEV_X8 = common dso_local global i32 0, align 4
@DEV_X4 = common dso_local global i32 0, align 4
@EDAC_S8ECD8ED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mem_ctl_info*)* @i5400_init_csrows to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i5400_init_csrows(%struct.mem_ctl_info* %0) #0 {
  %2 = alloca %struct.mem_ctl_info*, align 8
  %3 = alloca %struct.i5400_pvt*, align 8
  %4 = alloca %struct.csrow_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.mem_ctl_info* %0, %struct.mem_ctl_info** %2, align 8
  %12 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %2, align 8
  %13 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %12, i32 0, i32 1
  %14 = load %struct.i5400_pvt*, %struct.i5400_pvt** %13, align 8
  store %struct.i5400_pvt* %14, %struct.i5400_pvt** %3, align 8
  %15 = load %struct.i5400_pvt*, %struct.i5400_pvt** %3, align 8
  %16 = getelementptr inbounds %struct.i5400_pvt, %struct.i5400_pvt* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  store i32 %17, i32* %6, align 4
  %18 = load %struct.i5400_pvt*, %struct.i5400_pvt** %3, align 8
  %19 = getelementptr inbounds %struct.i5400_pvt, %struct.i5400_pvt* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %7, align 4
  store i32 1, i32* %5, align 4
  store i32 0, i32* %11, align 4
  br label %21

21:                                               ; preds = %107, %1
  %22 = load i32, i32* %11, align 4
  %23 = load i32, i32* %7, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %110

25:                                               ; preds = %21
  %26 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %2, align 8
  %27 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %26, i32 0, i32 0
  %28 = load %struct.csrow_info*, %struct.csrow_info** %27, align 8
  %29 = load i32, i32* %11, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.csrow_info, %struct.csrow_info* %28, i64 %30
  store %struct.csrow_info* %31, %struct.csrow_info** %4, align 8
  %32 = load i32, i32* %11, align 4
  %33 = load %struct.csrow_info*, %struct.csrow_info** %4, align 8
  %34 = getelementptr inbounds %struct.csrow_info, %struct.csrow_info* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 8
  %35 = load %struct.i5400_pvt*, %struct.i5400_pvt** %3, align 8
  %36 = load i32, i32* %11, align 4
  %37 = call i32 @determine_mtr(%struct.i5400_pvt* %35, i32 %36, i32 0)
  store i32 %37, i32* %8, align 4
  %38 = load i32, i32* %8, align 4
  %39 = call i32 @MTR_DIMMS_PRESENT(i32 %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %25
  br label %107

42:                                               ; preds = %25
  %43 = load i32, i32* %11, align 4
  %44 = mul nsw i32 %43, 20
  %45 = add nsw i32 0, %44
  %46 = sext i32 %45 to i64
  %47 = load %struct.csrow_info*, %struct.csrow_info** %4, align 8
  %48 = getelementptr inbounds %struct.csrow_info, %struct.csrow_info* %47, i32 0, i32 8
  store i64 %46, i64* %48, align 8
  %49 = load i32, i32* %11, align 4
  %50 = mul nsw i32 %49, 20
  %51 = add nsw i32 9, %50
  %52 = load %struct.csrow_info*, %struct.csrow_info** %4, align 8
  %53 = getelementptr inbounds %struct.csrow_info, %struct.csrow_info* %52, i32 0, i32 1
  store i32 %51, i32* %53, align 4
  %54 = load %struct.csrow_info*, %struct.csrow_info** %4, align 8
  %55 = getelementptr inbounds %struct.csrow_info, %struct.csrow_info* %54, i32 0, i32 2
  store i32 4095, i32* %55, align 8
  %56 = load %struct.csrow_info*, %struct.csrow_info** %4, align 8
  %57 = getelementptr inbounds %struct.csrow_info, %struct.csrow_info* %56, i32 0, i32 3
  store i32 8, i32* %57, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %58

58:                                               ; preds = %81, %42
  %59 = load i32, i32* %10, align 4
  %60 = load %struct.i5400_pvt*, %struct.i5400_pvt** %3, align 8
  %61 = getelementptr inbounds %struct.i5400_pvt, %struct.i5400_pvt* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = icmp slt i32 %59, %62
  br i1 %63, label %64, label %84

64:                                               ; preds = %58
  %65 = load %struct.i5400_pvt*, %struct.i5400_pvt** %3, align 8
  %66 = getelementptr inbounds %struct.i5400_pvt, %struct.i5400_pvt* %65, i32 0, i32 2
  %67 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %66, align 8
  %68 = load i32, i32* %11, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %67, i64 %69
  %71 = load %struct.TYPE_2__*, %struct.TYPE_2__** %70, align 8
  %72 = load i32, i32* %10, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load i32, i32* %9, align 4
  %78 = sext i32 %77 to i64
  %79 = add nsw i64 %78, %76
  %80 = trunc i64 %79 to i32
  store i32 %80, i32* %9, align 4
  br label %81

81:                                               ; preds = %64
  %82 = load i32, i32* %10, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %10, align 4
  br label %58

84:                                               ; preds = %58
  %85 = load i32, i32* %9, align 4
  %86 = shl i32 %85, 8
  %87 = load %struct.csrow_info*, %struct.csrow_info** %4, align 8
  %88 = getelementptr inbounds %struct.csrow_info, %struct.csrow_info* %87, i32 0, i32 4
  store i32 %86, i32* %88, align 8
  %89 = load i32, i32* @MEM_FB_DDR2, align 4
  %90 = load %struct.csrow_info*, %struct.csrow_info** %4, align 8
  %91 = getelementptr inbounds %struct.csrow_info, %struct.csrow_info* %90, i32 0, i32 7
  store i32 %89, i32* %91, align 4
  %92 = load i32, i32* %8, align 4
  %93 = call i64 @MTR_DRAM_WIDTH(i32 %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %99

95:                                               ; preds = %84
  %96 = load i32, i32* @DEV_X8, align 4
  %97 = load %struct.csrow_info*, %struct.csrow_info** %4, align 8
  %98 = getelementptr inbounds %struct.csrow_info, %struct.csrow_info* %97, i32 0, i32 6
  store i32 %96, i32* %98, align 8
  br label %103

99:                                               ; preds = %84
  %100 = load i32, i32* @DEV_X4, align 4
  %101 = load %struct.csrow_info*, %struct.csrow_info** %4, align 8
  %102 = getelementptr inbounds %struct.csrow_info, %struct.csrow_info* %101, i32 0, i32 6
  store i32 %100, i32* %102, align 8
  br label %103

103:                                              ; preds = %99, %95
  %104 = load i32, i32* @EDAC_S8ECD8ED, align 4
  %105 = load %struct.csrow_info*, %struct.csrow_info** %4, align 8
  %106 = getelementptr inbounds %struct.csrow_info, %struct.csrow_info* %105, i32 0, i32 5
  store i32 %104, i32* %106, align 4
  store i32 0, i32* %5, align 4
  br label %107

107:                                              ; preds = %103, %41
  %108 = load i32, i32* %11, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %11, align 4
  br label %21

110:                                              ; preds = %21
  %111 = load i32, i32* %5, align 4
  ret i32 %111
}

declare dso_local i32 @determine_mtr(%struct.i5400_pvt*, i32, i32) #1

declare dso_local i32 @MTR_DIMMS_PRESENT(i32) #1

declare dso_local i64 @MTR_DRAM_WIDTH(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
