; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/edac/extr_i5000_edac.c_i5000_init_csrows.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/edac/extr_i5000_edac.c_i5000_init_csrows.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mem_ctl_info = type { %struct.csrow_info*, %struct.i5000_pvt* }
%struct.csrow_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i64 }
%struct.i5000_pvt = type { i32, i32, i32*, i32*, %struct.TYPE_2__** }
%struct.TYPE_2__ = type { i64 }

@MEM_FB_DDR2 = common dso_local global i32 0, align 4
@DEV_X8 = common dso_local global i32 0, align 4
@DEV_X4 = common dso_local global i32 0, align 4
@EDAC_S8ECD8ED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mem_ctl_info*)* @i5000_init_csrows to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i5000_init_csrows(%struct.mem_ctl_info* %0) #0 {
  %2 = alloca %struct.mem_ctl_info*, align 8
  %3 = alloca %struct.i5000_pvt*, align 8
  %4 = alloca %struct.csrow_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.mem_ctl_info* %0, %struct.mem_ctl_info** %2, align 8
  %13 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %2, align 8
  %14 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %13, i32 0, i32 1
  %15 = load %struct.i5000_pvt*, %struct.i5000_pvt** %14, align 8
  store %struct.i5000_pvt* %15, %struct.i5000_pvt** %3, align 8
  %16 = load %struct.i5000_pvt*, %struct.i5000_pvt** %3, align 8
  %17 = getelementptr inbounds %struct.i5000_pvt, %struct.i5000_pvt* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* %6, align 4
  %19 = load %struct.i5000_pvt*, %struct.i5000_pvt** %3, align 8
  %20 = getelementptr inbounds %struct.i5000_pvt, %struct.i5000_pvt* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = mul nsw i32 %21, 2
  store i32 %22, i32* %7, align 4
  store i32 1, i32* %5, align 4
  store i32 0, i32* %12, align 4
  br label %23

23:                                               ; preds = %126, %1
  %24 = load i32, i32* %12, align 4
  %25 = load i32, i32* %7, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %129

27:                                               ; preds = %23
  %28 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %2, align 8
  %29 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %28, i32 0, i32 0
  %30 = load %struct.csrow_info*, %struct.csrow_info** %29, align 8
  %31 = load i32, i32* %12, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.csrow_info, %struct.csrow_info* %30, i64 %32
  store %struct.csrow_info* %33, %struct.csrow_info** %4, align 8
  %34 = load i32, i32* %12, align 4
  %35 = load %struct.csrow_info*, %struct.csrow_info** %4, align 8
  %36 = getelementptr inbounds %struct.csrow_info, %struct.csrow_info* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 8
  %37 = load %struct.i5000_pvt*, %struct.i5000_pvt** %3, align 8
  %38 = getelementptr inbounds %struct.i5000_pvt, %struct.i5000_pvt* %37, i32 0, i32 2
  %39 = load i32*, i32** %38, align 8
  %40 = load i32, i32* %12, align 4
  %41 = ashr i32 %40, 1
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %39, i64 %42
  %44 = load i32, i32* %43, align 4
  store i32 %44, i32* %8, align 4
  %45 = load %struct.i5000_pvt*, %struct.i5000_pvt** %3, align 8
  %46 = getelementptr inbounds %struct.i5000_pvt, %struct.i5000_pvt* %45, i32 0, i32 3
  %47 = load i32*, i32** %46, align 8
  %48 = load i32, i32* %12, align 4
  %49 = ashr i32 %48, 1
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %47, i64 %50
  %52 = load i32, i32* %51, align 4
  store i32 %52, i32* %9, align 4
  %53 = load i32, i32* %8, align 4
  %54 = call i32 @MTR_DIMMS_PRESENT(i32 %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %61, label %56

56:                                               ; preds = %27
  %57 = load i32, i32* %9, align 4
  %58 = call i32 @MTR_DIMMS_PRESENT(i32 %57)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %61, label %60

60:                                               ; preds = %56
  br label %126

61:                                               ; preds = %56, %27
  %62 = load i32, i32* %12, align 4
  %63 = mul nsw i32 %62, 20
  %64 = add nsw i32 0, %63
  %65 = sext i32 %64 to i64
  %66 = load %struct.csrow_info*, %struct.csrow_info** %4, align 8
  %67 = getelementptr inbounds %struct.csrow_info, %struct.csrow_info* %66, i32 0, i32 8
  store i64 %65, i64* %67, align 8
  %68 = load i32, i32* %12, align 4
  %69 = mul nsw i32 %68, 20
  %70 = add nsw i32 9, %69
  %71 = load %struct.csrow_info*, %struct.csrow_info** %4, align 8
  %72 = getelementptr inbounds %struct.csrow_info, %struct.csrow_info* %71, i32 0, i32 1
  store i32 %70, i32* %72, align 4
  %73 = load %struct.csrow_info*, %struct.csrow_info** %4, align 8
  %74 = getelementptr inbounds %struct.csrow_info, %struct.csrow_info* %73, i32 0, i32 2
  store i32 4095, i32* %74, align 8
  %75 = load %struct.csrow_info*, %struct.csrow_info** %4, align 8
  %76 = getelementptr inbounds %struct.csrow_info, %struct.csrow_info* %75, i32 0, i32 3
  store i32 8, i32* %76, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  br label %77

77:                                               ; preds = %100, %61
  %78 = load i32, i32* %11, align 4
  %79 = load %struct.i5000_pvt*, %struct.i5000_pvt** %3, align 8
  %80 = getelementptr inbounds %struct.i5000_pvt, %struct.i5000_pvt* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = icmp slt i32 %78, %81
  br i1 %82, label %83, label %103

83:                                               ; preds = %77
  %84 = load %struct.i5000_pvt*, %struct.i5000_pvt** %3, align 8
  %85 = getelementptr inbounds %struct.i5000_pvt, %struct.i5000_pvt* %84, i32 0, i32 4
  %86 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %85, align 8
  %87 = load i32, i32* %12, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %86, i64 %88
  %90 = load %struct.TYPE_2__*, %struct.TYPE_2__** %89, align 8
  %91 = load i32, i32* %11, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i64 %92
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = load i32, i32* %10, align 4
  %97 = sext i32 %96 to i64
  %98 = add nsw i64 %97, %95
  %99 = trunc i64 %98 to i32
  store i32 %99, i32* %10, align 4
  br label %100

100:                                              ; preds = %83
  %101 = load i32, i32* %11, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %11, align 4
  br label %77

103:                                              ; preds = %77
  %104 = load i32, i32* %10, align 4
  %105 = shl i32 %104, 8
  %106 = load %struct.csrow_info*, %struct.csrow_info** %4, align 8
  %107 = getelementptr inbounds %struct.csrow_info, %struct.csrow_info* %106, i32 0, i32 4
  store i32 %105, i32* %107, align 8
  %108 = load i32, i32* @MEM_FB_DDR2, align 4
  %109 = load %struct.csrow_info*, %struct.csrow_info** %4, align 8
  %110 = getelementptr inbounds %struct.csrow_info, %struct.csrow_info* %109, i32 0, i32 7
  store i32 %108, i32* %110, align 4
  %111 = load i32, i32* %8, align 4
  %112 = call i64 @MTR_DRAM_WIDTH(i32 %111)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %118

114:                                              ; preds = %103
  %115 = load i32, i32* @DEV_X8, align 4
  %116 = load %struct.csrow_info*, %struct.csrow_info** %4, align 8
  %117 = getelementptr inbounds %struct.csrow_info, %struct.csrow_info* %116, i32 0, i32 6
  store i32 %115, i32* %117, align 8
  br label %122

118:                                              ; preds = %103
  %119 = load i32, i32* @DEV_X4, align 4
  %120 = load %struct.csrow_info*, %struct.csrow_info** %4, align 8
  %121 = getelementptr inbounds %struct.csrow_info, %struct.csrow_info* %120, i32 0, i32 6
  store i32 %119, i32* %121, align 8
  br label %122

122:                                              ; preds = %118, %114
  %123 = load i32, i32* @EDAC_S8ECD8ED, align 4
  %124 = load %struct.csrow_info*, %struct.csrow_info** %4, align 8
  %125 = getelementptr inbounds %struct.csrow_info, %struct.csrow_info* %124, i32 0, i32 5
  store i32 %123, i32* %125, align 4
  store i32 0, i32* %5, align 4
  br label %126

126:                                              ; preds = %122, %60
  %127 = load i32, i32* %12, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %12, align 4
  br label %23

129:                                              ; preds = %23
  %130 = load i32, i32* %5, align 4
  ret i32 %130
}

declare dso_local i32 @MTR_DIMMS_PRESENT(i32) #1

declare dso_local i64 @MTR_DRAM_WIDTH(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
