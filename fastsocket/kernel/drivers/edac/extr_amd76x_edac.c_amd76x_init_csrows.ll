; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/edac/extr_amd76x_edac.c_amd76x_init_csrows.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/edac/extr_amd76x_edac.c_amd76x_init_csrows.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mem_ctl_info = type { i32, %struct.csrow_info* }
%struct.csrow_info = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.pci_dev = type { i32 }

@AMD76X_MEM_BASE_ADDR = common dso_local global i64 0, align 8
@AMD76X_DRAM_MODE_STATUS = common dso_local global i64 0, align 8
@PAGE_SHIFT = common dso_local global i32 0, align 4
@MEM_RDDR = common dso_local global i32 0, align 4
@DEV_X4 = common dso_local global i32 0, align 4
@DEV_UNKNOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mem_ctl_info*, %struct.pci_dev*, i32)* @amd76x_init_csrows to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @amd76x_init_csrows(%struct.mem_ctl_info* %0, %struct.pci_dev* %1, i32 %2) #0 {
  %4 = alloca %struct.mem_ctl_info*, align 8
  %5 = alloca %struct.pci_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.csrow_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.mem_ctl_info* %0, %struct.mem_ctl_info** %4, align 8
  store %struct.pci_dev* %1, %struct.pci_dev** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %12, align 4
  br label %13

13:                                               ; preds = %104, %3
  %14 = load i32, i32* %12, align 4
  %15 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %4, align 8
  %16 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp slt i32 %14, %17
  br i1 %18, label %19, label %107

19:                                               ; preds = %13
  %20 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %4, align 8
  %21 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %20, i32 0, i32 1
  %22 = load %struct.csrow_info*, %struct.csrow_info** %21, align 8
  %23 = load i32, i32* %12, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.csrow_info, %struct.csrow_info* %22, i64 %24
  store %struct.csrow_info* %25, %struct.csrow_info** %7, align 8
  %26 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %27 = load i64, i64* @AMD76X_MEM_BASE_ADDR, align 8
  %28 = load i32, i32* %12, align 4
  %29 = mul nsw i32 %28, 4
  %30 = sext i32 %29 to i64
  %31 = add nsw i64 %27, %30
  %32 = call i32 @pci_read_config_dword(%struct.pci_dev* %26, i64 %31, i32* %8)
  %33 = load i32, i32* %8, align 4
  %34 = call i32 @BIT(i32 0)
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %19
  br label %104

38:                                               ; preds = %19
  %39 = load i32, i32* %8, align 4
  %40 = sext i32 %39 to i64
  %41 = and i64 %40, 4286578688
  %42 = trunc i64 %41 to i32
  store i32 %42, i32* %9, align 4
  %43 = load i32, i32* %8, align 4
  %44 = and i32 %43, 65408
  %45 = shl i32 %44, 16
  %46 = sext i32 %45 to i64
  %47 = or i64 %46, 8388607
  %48 = trunc i64 %47 to i32
  store i32 %48, i32* %10, align 4
  %49 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %50 = load i64, i64* @AMD76X_DRAM_MODE_STATUS, align 8
  %51 = call i32 @pci_read_config_dword(%struct.pci_dev* %49, i64 %50, i32* %11)
  %52 = load i32, i32* %9, align 4
  %53 = load i32, i32* @PAGE_SHIFT, align 4
  %54 = ashr i32 %52, %53
  %55 = load %struct.csrow_info*, %struct.csrow_info** %7, align 8
  %56 = getelementptr inbounds %struct.csrow_info, %struct.csrow_info* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 4
  %57 = load i32, i32* %10, align 4
  %58 = add nsw i32 %57, 1
  %59 = load i32, i32* @PAGE_SHIFT, align 4
  %60 = ashr i32 %58, %59
  %61 = load %struct.csrow_info*, %struct.csrow_info** %7, align 8
  %62 = getelementptr inbounds %struct.csrow_info, %struct.csrow_info* %61, i32 0, i32 1
  store i32 %60, i32* %62, align 4
  %63 = load %struct.csrow_info*, %struct.csrow_info** %7, align 8
  %64 = getelementptr inbounds %struct.csrow_info, %struct.csrow_info* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.csrow_info*, %struct.csrow_info** %7, align 8
  %67 = getelementptr inbounds %struct.csrow_info, %struct.csrow_info* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = add nsw i32 %65, %68
  %70 = sub nsw i32 %69, 1
  %71 = load %struct.csrow_info*, %struct.csrow_info** %7, align 8
  %72 = getelementptr inbounds %struct.csrow_info, %struct.csrow_info* %71, i32 0, i32 2
  store i32 %70, i32* %72, align 4
  %73 = load i32, i32* %10, align 4
  %74 = load i32, i32* @PAGE_SHIFT, align 4
  %75 = ashr i32 %73, %74
  %76 = load %struct.csrow_info*, %struct.csrow_info** %7, align 8
  %77 = getelementptr inbounds %struct.csrow_info, %struct.csrow_info* %76, i32 0, i32 3
  store i32 %75, i32* %77, align 4
  %78 = load %struct.csrow_info*, %struct.csrow_info** %7, align 8
  %79 = getelementptr inbounds %struct.csrow_info, %struct.csrow_info* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* @PAGE_SHIFT, align 4
  %82 = shl i32 %80, %81
  %83 = load %struct.csrow_info*, %struct.csrow_info** %7, align 8
  %84 = getelementptr inbounds %struct.csrow_info, %struct.csrow_info* %83, i32 0, i32 4
  store i32 %82, i32* %84, align 4
  %85 = load i32, i32* @MEM_RDDR, align 4
  %86 = load %struct.csrow_info*, %struct.csrow_info** %7, align 8
  %87 = getelementptr inbounds %struct.csrow_info, %struct.csrow_info* %86, i32 0, i32 7
  store i32 %85, i32* %87, align 4
  %88 = load i32, i32* %11, align 4
  %89 = load i32, i32* %12, align 4
  %90 = ashr i32 %88, %89
  %91 = and i32 %90, 1
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %95

93:                                               ; preds = %38
  %94 = load i32, i32* @DEV_X4, align 4
  br label %97

95:                                               ; preds = %38
  %96 = load i32, i32* @DEV_UNKNOWN, align 4
  br label %97

97:                                               ; preds = %95, %93
  %98 = phi i32 [ %94, %93 ], [ %96, %95 ]
  %99 = load %struct.csrow_info*, %struct.csrow_info** %7, align 8
  %100 = getelementptr inbounds %struct.csrow_info, %struct.csrow_info* %99, i32 0, i32 6
  store i32 %98, i32* %100, align 4
  %101 = load i32, i32* %6, align 4
  %102 = load %struct.csrow_info*, %struct.csrow_info** %7, align 8
  %103 = getelementptr inbounds %struct.csrow_info, %struct.csrow_info* %102, i32 0, i32 5
  store i32 %101, i32* %103, align 4
  br label %104

104:                                              ; preds = %97, %37
  %105 = load i32, i32* %12, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %12, align 4
  br label %13

107:                                              ; preds = %13
  ret void
}

declare dso_local i32 @pci_read_config_dword(%struct.pci_dev*, i64, i32*) #1

declare dso_local i32 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
