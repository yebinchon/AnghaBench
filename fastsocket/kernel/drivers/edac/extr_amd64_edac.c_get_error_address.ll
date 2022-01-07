; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/edac/extr_amd64_edac.c_get_error_address.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/edac/extr_amd64_edac.c_get_error_address.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpuinfo_x86 = type { i32 }
%struct.TYPE_2__ = type { %struct.amd64_pvt* }
%struct.amd64_pvt = type { i32 }
%struct.mce = type { i32, i32 }

@boot_cpu_data = common dso_local global %struct.cpuinfo_x86 zeroinitializer, align 4
@mcis = common dso_local global %struct.TYPE_2__** null, align 8
@DRAM_LOCAL_NODE_LIM = common dso_local global i32 0, align 4
@DRAM_LOCAL_NODE_BASE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mce*)* @get_error_address to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_error_address(%struct.mce* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mce*, align 8
  %4 = alloca %struct.cpuinfo_x86*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.amd64_pvt*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store %struct.mce* %0, %struct.mce** %3, align 8
  store %struct.cpuinfo_x86* @boot_cpu_data, %struct.cpuinfo_x86** %4, align 8
  store i64 1, i64* %6, align 8
  store i64 47, i64* %7, align 8
  %14 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %4, align 8
  %15 = getelementptr inbounds %struct.cpuinfo_x86, %struct.cpuinfo_x86* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp eq i32 %16, 15
  br i1 %17, label %18, label %19

18:                                               ; preds = %1
  store i64 3, i64* %6, align 8
  store i64 39, i64* %7, align 8
  br label %19

19:                                               ; preds = %18, %1
  %20 = load %struct.mce*, %struct.mce** %3, align 8
  %21 = getelementptr inbounds %struct.mce, %struct.mce* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i64, i64* %6, align 8
  %24 = trunc i64 %23 to i32
  %25 = load i64, i64* %7, align 8
  %26 = trunc i64 %25 to i32
  %27 = call i32 @GENMASK(i32 %24, i32 %26)
  %28 = and i32 %22, %27
  store i32 %28, i32* %5, align 4
  %29 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %4, align 8
  %30 = getelementptr inbounds %struct.cpuinfo_x86, %struct.cpuinfo_x86* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = icmp eq i32 %31, 21
  br i1 %32, label %33, label %108

33:                                               ; preds = %19
  %34 = load i32, i32* %5, align 4
  %35 = call i32 @GENMASK(i32 24, i32 47)
  %36 = and i32 %34, %35
  %37 = ashr i32 %36, 24
  %38 = icmp ne i32 %37, 65015
  br i1 %38, label %39, label %41

39:                                               ; preds = %33
  %40 = load i32, i32* %5, align 4
  store i32 %40, i32* %2, align 4
  br label %110

41:                                               ; preds = %33
  %42 = load %struct.mce*, %struct.mce** %3, align 8
  %43 = getelementptr inbounds %struct.mce, %struct.mce* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = call i64 @amd_get_nb_id(i32 %44)
  store i64 %45, i64* %12, align 8
  %46 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @mcis, align 8
  %47 = load i64, i64* %12, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %46, i64 %47
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load %struct.amd64_pvt*, %struct.amd64_pvt** %50, align 8
  store %struct.amd64_pvt* %51, %struct.amd64_pvt** %8, align 8
  %52 = load %struct.amd64_pvt*, %struct.amd64_pvt** %8, align 8
  %53 = getelementptr inbounds %struct.amd64_pvt, %struct.amd64_pvt* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @DRAM_LOCAL_NODE_LIM, align 4
  %56 = call i32 @amd64_read_pci_cfg(i32 %54, i32 %55, i32* %11)
  %57 = load i32, i32* %11, align 4
  %58 = ashr i32 %57, 21
  %59 = and i32 %58, 7
  %60 = sext i32 %59 to i64
  store i64 %60, i64* %13, align 8
  %61 = load i32, i32* %11, align 4
  %62 = call i32 @GENMASK(i32 0, i32 20)
  %63 = and i32 %61, %62
  %64 = shl i32 %63, 3
  store i32 %64, i32* %9, align 4
  %65 = load i64, i64* %13, align 8
  %66 = xor i64 %65, 7
  %67 = load i32, i32* %9, align 4
  %68 = sext i32 %67 to i64
  %69 = or i64 %68, %66
  %70 = trunc i64 %69 to i32
  store i32 %70, i32* %9, align 4
  %71 = load i32, i32* %9, align 4
  %72 = shl i32 %71, 24
  store i32 %72, i32* %9, align 4
  %73 = load i64, i64* %13, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %81, label %75

75:                                               ; preds = %41
  %76 = load i32, i32* %9, align 4
  %77 = load i32, i32* %5, align 4
  %78 = call i32 @GENMASK(i32 0, i32 23)
  %79 = and i32 %77, %78
  %80 = or i32 %76, %79
  store i32 %80, i32* %2, align 4
  br label %110

81:                                               ; preds = %41
  %82 = load %struct.amd64_pvt*, %struct.amd64_pvt** %8, align 8
  %83 = getelementptr inbounds %struct.amd64_pvt, %struct.amd64_pvt* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* @DRAM_LOCAL_NODE_BASE, align 4
  %86 = call i32 @amd64_read_pci_cfg(i32 %84, i32 %85, i32* %11)
  %87 = load i32, i32* %5, align 4
  %88 = call i32 @GENMASK(i32 12, i32 23)
  %89 = and i32 %87, %88
  %90 = load i64, i64* %13, align 8
  %91 = add i64 %90, 1
  %92 = call i32 @__fls(i64 %91)
  %93 = shl i32 %89, %92
  store i32 %93, i32* %10, align 4
  %94 = load i32, i32* %11, align 4
  %95 = call i32 @GENMASK(i32 21, i32 23)
  %96 = and i32 %94, %95
  %97 = ashr i32 %96, 9
  %98 = load i32, i32* %10, align 4
  %99 = or i32 %98, %97
  store i32 %99, i32* %10, align 4
  %100 = load i32, i32* %5, align 4
  %101 = call i32 @GENMASK(i32 0, i32 11)
  %102 = and i32 %100, %101
  %103 = load i32, i32* %10, align 4
  %104 = or i32 %103, %102
  store i32 %104, i32* %10, align 4
  %105 = load i32, i32* %9, align 4
  %106 = load i32, i32* %10, align 4
  %107 = or i32 %105, %106
  store i32 %107, i32* %2, align 4
  br label %110

108:                                              ; preds = %19
  %109 = load i32, i32* %5, align 4
  store i32 %109, i32* %2, align 4
  br label %110

110:                                              ; preds = %108, %81, %75, %39
  %111 = load i32, i32* %2, align 4
  ret i32 %111
}

declare dso_local i32 @GENMASK(i32, i32) #1

declare dso_local i64 @amd_get_nb_id(i32) #1

declare dso_local i32 @amd64_read_pci_cfg(i32, i32, i32*) #1

declare dso_local i32 @__fls(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
