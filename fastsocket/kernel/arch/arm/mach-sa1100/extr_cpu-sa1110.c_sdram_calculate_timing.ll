; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-sa1100/extr_cpu-sa1110.c_sdram_calculate_timing.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-sa1100/extr_cpu-sa1110.c_sdram_calculate_timing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdram_info = type { i32, i32, i32* }
%struct.sdram_params = type { i32, i32, i32, i32, i32 }

@CPU_REVISION = common dso_local global i64 0, align 8
@CPU_SA1110_B2 = common dso_local global i64 0, align 8
@MDCNFG = common dso_local global i32 0, align 4
@MDREFR = common dso_local global i32 0, align 4
@MDREFR_K1DB2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sdram_info*, i32, %struct.sdram_params*)* @sdram_calculate_timing to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sdram_calculate_timing(%struct.sdram_info* %0, i32 %1, %struct.sdram_params* %2) #0 {
  %4 = alloca %struct.sdram_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.sdram_params*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.sdram_info* %0, %struct.sdram_info** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.sdram_params* %2, %struct.sdram_params** %6, align 8
  %11 = load i32, i32* %5, align 4
  %12 = sdiv i32 %11, 2
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* %7, align 4
  store i32 %13, i32* %8, align 4
  %14 = load %struct.sdram_params*, %struct.sdram_params** %6, align 8
  %15 = getelementptr inbounds %struct.sdram_params, %struct.sdram_params* %14, i32 0, i32 4
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* %8, align 4
  %18 = call i32 @ns_to_cycles(i32 %16, i32 %17)
  %19 = icmp sgt i32 %18, 1
  br i1 %19, label %27, label %20

20:                                               ; preds = %3
  %21 = load i64, i64* @CPU_REVISION, align 8
  %22 = load i64, i64* @CPU_SA1110_B2, align 8
  %23 = icmp slt i64 %21, %22
  br i1 %23, label %24, label %30

24:                                               ; preds = %20
  %25 = load i32, i32* %8, align 4
  %26 = icmp slt i32 %25, 62000
  br i1 %26, label %27, label %30

27:                                               ; preds = %24, %3
  %28 = load i32, i32* %8, align 4
  %29 = sdiv i32 %28, 2
  store i32 %29, i32* %8, align 4
  br label %30

30:                                               ; preds = %27, %24, %20
  %31 = load i32, i32* @MDCNFG, align 4
  %32 = and i32 %31, 8323199
  %33 = load %struct.sdram_info*, %struct.sdram_info** %4, align 8
  %34 = getelementptr inbounds %struct.sdram_info, %struct.sdram_info* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 8
  %35 = load %struct.sdram_params*, %struct.sdram_params** %6, align 8
  %36 = getelementptr inbounds %struct.sdram_params, %struct.sdram_params* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %7, align 4
  %39 = call i32 @ns_to_cycles(i32 %37, i32 %38)
  store i32 %39, i32* %10, align 4
  %40 = load %struct.sdram_params*, %struct.sdram_params** %6, align 8
  %41 = getelementptr inbounds %struct.sdram_params, %struct.sdram_params* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* %7, align 4
  %44 = call i32 @ns_to_cycles(i32 %42, i32 %43)
  %45 = sub nsw i32 %44, 1
  store i32 %45, i32* %9, align 4
  %46 = load i32, i32* %9, align 4
  %47 = icmp slt i32 %46, 1
  br i1 %47, label %48, label %49

48:                                               ; preds = %30
  store i32 1, i32* %9, align 4
  br label %49

49:                                               ; preds = %48, %30
  %50 = load i32, i32* %9, align 4
  %51 = shl i32 %50, 8
  %52 = load %struct.sdram_info*, %struct.sdram_info** %4, align 8
  %53 = getelementptr inbounds %struct.sdram_info, %struct.sdram_info* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = or i32 %54, %51
  store i32 %55, i32* %53, align 8
  %56 = load i32, i32* %9, align 4
  %57 = shl i32 %56, 24
  %58 = load %struct.sdram_info*, %struct.sdram_info** %4, align 8
  %59 = getelementptr inbounds %struct.sdram_info, %struct.sdram_info* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = or i32 %60, %57
  store i32 %61, i32* %59, align 8
  %62 = load %struct.sdram_params*, %struct.sdram_params** %6, align 8
  %63 = getelementptr inbounds %struct.sdram_params, %struct.sdram_params* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = shl i32 %64, 12
  %66 = load %struct.sdram_info*, %struct.sdram_info** %4, align 8
  %67 = getelementptr inbounds %struct.sdram_info, %struct.sdram_info* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = or i32 %68, %65
  store i32 %69, i32* %67, align 8
  %70 = load %struct.sdram_params*, %struct.sdram_params** %6, align 8
  %71 = getelementptr inbounds %struct.sdram_params, %struct.sdram_params* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = shl i32 %72, 28
  %74 = load %struct.sdram_info*, %struct.sdram_info** %4, align 8
  %75 = getelementptr inbounds %struct.sdram_info, %struct.sdram_info* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = or i32 %76, %73
  store i32 %77, i32* %75, align 8
  %78 = load i32, i32* %10, align 4
  %79 = shl i32 %78, 14
  %80 = load %struct.sdram_info*, %struct.sdram_info** %4, align 8
  %81 = getelementptr inbounds %struct.sdram_info, %struct.sdram_info* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = or i32 %82, %79
  store i32 %83, i32* %81, align 8
  %84 = load i32, i32* %10, align 4
  %85 = shl i32 %84, 30
  %86 = load %struct.sdram_info*, %struct.sdram_info** %4, align 8
  %87 = getelementptr inbounds %struct.sdram_info, %struct.sdram_info* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = or i32 %88, %85
  store i32 %89, i32* %87, align 8
  %90 = load i32, i32* @MDREFR, align 4
  %91 = and i32 %90, -4194320
  %92 = load %struct.sdram_info*, %struct.sdram_info** %4, align 8
  %93 = getelementptr inbounds %struct.sdram_info, %struct.sdram_info* %92, i32 0, i32 1
  store i32 %91, i32* %93, align 4
  %94 = load %struct.sdram_info*, %struct.sdram_info** %4, align 8
  %95 = getelementptr inbounds %struct.sdram_info, %struct.sdram_info* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = or i32 %96, 7
  store i32 %97, i32* %95, align 4
  %98 = load i32, i32* %8, align 4
  %99 = load i32, i32* %7, align 4
  %100 = icmp ne i32 %98, %99
  br i1 %100, label %101, label %107

101:                                              ; preds = %49
  %102 = load i32, i32* @MDREFR_K1DB2, align 4
  %103 = load %struct.sdram_info*, %struct.sdram_info** %4, align 8
  %104 = getelementptr inbounds %struct.sdram_info, %struct.sdram_info* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = or i32 %105, %102
  store i32 %106, i32* %104, align 4
  br label %107

107:                                              ; preds = %101, %49
  %108 = load %struct.sdram_info*, %struct.sdram_info** %4, align 8
  %109 = getelementptr inbounds %struct.sdram_info, %struct.sdram_info* %108, i32 0, i32 2
  %110 = load i32*, i32** %109, align 8
  %111 = load i32, i32* %8, align 4
  %112 = icmp sge i32 %111, 62000
  %113 = zext i1 %112 to i32
  %114 = load %struct.sdram_params*, %struct.sdram_params** %6, align 8
  %115 = getelementptr inbounds %struct.sdram_params, %struct.sdram_params* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = load i32, i32* %7, align 4
  %118 = call i32 @ns_to_cycles(i32 %116, i32 %117)
  %119 = call i32 @set_mdcas(i32* %110, i32 %113, i32 %118)
  ret void
}

declare dso_local i32 @ns_to_cycles(i32, i32) #1

declare dso_local i32 @set_mdcas(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
