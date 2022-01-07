; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/skfp/extr_hwmtm.c_init_descr_ring.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/skfp/extr_hwmtm.c_init_descr_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s_smc = type { i32 }
%union.s_fp_descr = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8*, %struct.TYPE_2__*, i8* }

@.str = private unnamed_addr constant [27 x i8] c"descr ring starts at = %x \00", align 1
@BMU_CHECK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"descr ring ends at = %x \00", align 1
@DDI_DMA_SYNC_FORDEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.s_smc*, %union.s_fp_descr*, i32)* @init_descr_ring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_descr_ring(%struct.s_smc* %0, %union.s_fp_descr* %1, i32 %2) #0 {
  %4 = alloca %struct.s_smc*, align 8
  %5 = alloca %union.s_fp_descr*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %union.s_fp_descr*, align 8
  %9 = alloca %union.s_fp_descr*, align 8
  %10 = alloca i32, align 4
  store %struct.s_smc* %0, %struct.s_smc** %4, align 8
  store %union.s_fp_descr* %1, %union.s_fp_descr** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load %union.s_fp_descr*, %union.s_fp_descr** %5, align 8
  %12 = bitcast %union.s_fp_descr* %11 to i8*
  %13 = call i32 @DB_GEN(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i8* %12, i32 0, i32 3)
  %14 = load i32, i32* %6, align 4
  %15 = sub nsw i32 %14, 1
  store i32 %15, i32* %7, align 4
  %16 = load %union.s_fp_descr*, %union.s_fp_descr** %5, align 8
  store %union.s_fp_descr* %16, %union.s_fp_descr** %8, align 8
  br label %17

17:                                               ; preds = %43, %3
  %18 = load i32, i32* %7, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %46

20:                                               ; preds = %17
  %21 = load %union.s_fp_descr*, %union.s_fp_descr** %8, align 8
  store %union.s_fp_descr* %21, %union.s_fp_descr** %9, align 8
  %22 = load %union.s_fp_descr*, %union.s_fp_descr** %8, align 8
  %23 = getelementptr inbounds %union.s_fp_descr, %union.s_fp_descr* %22, i32 1
  store %union.s_fp_descr* %23, %union.s_fp_descr** %8, align 8
  %24 = load i32, i32* @BMU_CHECK, align 4
  %25 = call i8* @cpu_to_le32(i32 %24)
  %26 = load %union.s_fp_descr*, %union.s_fp_descr** %9, align 8
  %27 = bitcast %union.s_fp_descr* %26 to %struct.TYPE_2__*
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 2
  store volatile i8* %25, i8** %28, align 8
  %29 = load %union.s_fp_descr*, %union.s_fp_descr** %8, align 8
  %30 = bitcast %union.s_fp_descr* %29 to %struct.TYPE_2__*
  %31 = load %union.s_fp_descr*, %union.s_fp_descr** %9, align 8
  %32 = bitcast %union.s_fp_descr* %31 to %struct.TYPE_2__*
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 1
  store volatile %struct.TYPE_2__* %30, %struct.TYPE_2__** %33, align 8
  %34 = load %struct.s_smc*, %struct.s_smc** %4, align 8
  %35 = load %union.s_fp_descr*, %union.s_fp_descr** %8, align 8
  %36 = bitcast %union.s_fp_descr* %35 to i8*
  %37 = call i32 @mac_drv_virt2phys(%struct.s_smc* %34, i8* %36)
  store i32 %37, i32* %10, align 4
  %38 = load i32, i32* %10, align 4
  %39 = call i8* @cpu_to_le32(i32 %38)
  %40 = load %union.s_fp_descr*, %union.s_fp_descr** %9, align 8
  %41 = bitcast %union.s_fp_descr* %40 to %struct.TYPE_2__*
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  store volatile i8* %39, i8** %42, align 8
  br label %43

43:                                               ; preds = %20
  %44 = load i32, i32* %7, align 4
  %45 = add nsw i32 %44, -1
  store i32 %45, i32* %7, align 4
  br label %17

46:                                               ; preds = %17
  %47 = load %union.s_fp_descr*, %union.s_fp_descr** %8, align 8
  %48 = bitcast %union.s_fp_descr* %47 to i8*
  %49 = call i32 @DB_GEN(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i8* %48, i32 0, i32 3)
  %50 = load i32, i32* @BMU_CHECK, align 4
  %51 = call i8* @cpu_to_le32(i32 %50)
  %52 = load %union.s_fp_descr*, %union.s_fp_descr** %8, align 8
  %53 = bitcast %union.s_fp_descr* %52 to %struct.TYPE_2__*
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 2
  store volatile i8* %51, i8** %54, align 8
  %55 = load %union.s_fp_descr*, %union.s_fp_descr** %5, align 8
  %56 = bitcast %union.s_fp_descr* %55 to %struct.TYPE_2__*
  %57 = load %union.s_fp_descr*, %union.s_fp_descr** %8, align 8
  %58 = bitcast %union.s_fp_descr* %57 to %struct.TYPE_2__*
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 1
  store volatile %struct.TYPE_2__* %56, %struct.TYPE_2__** %59, align 8
  %60 = load %struct.s_smc*, %struct.s_smc** %4, align 8
  %61 = load %union.s_fp_descr*, %union.s_fp_descr** %5, align 8
  %62 = bitcast %union.s_fp_descr* %61 to i8*
  %63 = call i32 @mac_drv_virt2phys(%struct.s_smc* %60, i8* %62)
  store i32 %63, i32* %10, align 4
  %64 = load i32, i32* %10, align 4
  %65 = call i8* @cpu_to_le32(i32 %64)
  %66 = load %union.s_fp_descr*, %union.s_fp_descr** %8, align 8
  %67 = bitcast %union.s_fp_descr* %66 to %struct.TYPE_2__*
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  store volatile i8* %65, i8** %68, align 8
  %69 = load i32, i32* %6, align 4
  store i32 %69, i32* %7, align 4
  %70 = load %union.s_fp_descr*, %union.s_fp_descr** %5, align 8
  store %union.s_fp_descr* %70, %union.s_fp_descr** %8, align 8
  br label %71

71:                                               ; preds = %81, %46
  %72 = load i32, i32* %7, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %84

74:                                               ; preds = %71
  %75 = load %union.s_fp_descr*, %union.s_fp_descr** %8, align 8
  %76 = bitcast %union.s_fp_descr* %75 to %struct.TYPE_2__*
  %77 = load i32, i32* @DDI_DMA_SYNC_FORDEV, align 4
  %78 = call i32 @DRV_BUF_FLUSH(%struct.TYPE_2__* %76, i32 %77)
  %79 = load %union.s_fp_descr*, %union.s_fp_descr** %8, align 8
  %80 = getelementptr inbounds %union.s_fp_descr, %union.s_fp_descr* %79, i32 1
  store %union.s_fp_descr* %80, %union.s_fp_descr** %8, align 8
  br label %81

81:                                               ; preds = %74
  %82 = load i32, i32* %7, align 4
  %83 = add nsw i32 %82, -1
  store i32 %83, i32* %7, align 4
  br label %71

84:                                               ; preds = %71
  %85 = load i32, i32* %10, align 4
  ret i32 %85
}

declare dso_local i32 @DB_GEN(i8*, i8*, i32, i32) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @mac_drv_virt2phys(%struct.s_smc*, i8*) #1

declare dso_local i32 @DRV_BUF_FLUSH(%struct.TYPE_2__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
