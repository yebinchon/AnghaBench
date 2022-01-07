; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/nes/extr_nes_verbs.c_nes_alloc_fast_reg_mr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/nes/extr_nes_verbs.c_nes_alloc_fast_reg_mr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_mr = type { i32, i32 }
%struct.ib_pd = type { i32 }
%struct.nes_pd = type { i32 }
%struct.nes_vnic = type { %struct.nes_device* }
%struct.nes_device = type { %struct.nes_adapter* }
%struct.nes_adapter = type { i32, i32 }
%struct.nes_mr = type { %struct.ib_mr, i32 }

@NES_4K_PBL_CHUNK_SIZE = common dso_local global i32 0, align 4
@E2BIG = common dso_local global i32 0, align 4
@NES_RESOURCE_FAST_MR = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@NES_DBG_MR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"Allocating STag 0x%08X index = 0x%08X\0A\00", align 1
@IWNES_MEMREG_TYPE_FMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ib_mr* (%struct.ib_pd*, i32)* @nes_alloc_fast_reg_mr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ib_mr* @nes_alloc_fast_reg_mr(%struct.ib_pd* %0, i32 %1) #0 {
  %3 = alloca %struct.ib_mr*, align 8
  %4 = alloca %struct.ib_pd*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.nes_pd*, align 8
  %7 = alloca %struct.nes_vnic*, align 8
  %8 = alloca %struct.nes_device*, align 8
  %9 = alloca %struct.nes_adapter*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.nes_mr*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.ib_mr*, align 8
  store %struct.ib_pd* %0, %struct.ib_pd** %4, align 8
  store i32 %1, i32* %5, align 4
  %19 = load %struct.ib_pd*, %struct.ib_pd** %4, align 8
  %20 = call %struct.nes_pd* @to_nespd(%struct.ib_pd* %19)
  store %struct.nes_pd* %20, %struct.nes_pd** %6, align 8
  %21 = load %struct.ib_pd*, %struct.ib_pd** %4, align 8
  %22 = getelementptr inbounds %struct.ib_pd, %struct.ib_pd* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call %struct.nes_vnic* @to_nesvnic(i32 %23)
  store %struct.nes_vnic* %24, %struct.nes_vnic** %7, align 8
  %25 = load %struct.nes_vnic*, %struct.nes_vnic** %7, align 8
  %26 = getelementptr inbounds %struct.nes_vnic, %struct.nes_vnic* %25, i32 0, i32 0
  %27 = load %struct.nes_device*, %struct.nes_device** %26, align 8
  store %struct.nes_device* %27, %struct.nes_device** %8, align 8
  %28 = load %struct.nes_device*, %struct.nes_device** %8, align 8
  %29 = getelementptr inbounds %struct.nes_device, %struct.nes_device* %28, i32 0, i32 0
  %30 = load %struct.nes_adapter*, %struct.nes_adapter** %29, align 8
  store %struct.nes_adapter* %30, %struct.nes_adapter** %9, align 8
  store i64 0, i64* %11, align 8
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %31 = load i32, i32* %5, align 4
  %32 = sext i32 %31 to i64
  %33 = load i32, i32* @NES_4K_PBL_CHUNK_SIZE, align 4
  %34 = sext i32 %33 to i64
  %35 = udiv i64 %34, 4
  %36 = icmp ugt i64 %32, %35
  br i1 %36, label %37, label %41

37:                                               ; preds = %2
  %38 = load i32, i32* @E2BIG, align 4
  %39 = sub nsw i32 0, %38
  %40 = call %struct.ib_mr* @ERR_PTR(i32 %39)
  store %struct.ib_mr* %40, %struct.ib_mr** %3, align 8
  br label %130

41:                                               ; preds = %2
  %42 = call i32 @get_random_bytes(i32* %10, i32 4)
  %43 = load i32, i32* %10, align 4
  %44 = sext i32 %43 to i64
  store i64 %44, i64* %11, align 8
  %45 = load i32, i32* %10, align 4
  %46 = ashr i32 %45, 8
  store i32 %46, i32* %10, align 4
  %47 = load %struct.nes_adapter*, %struct.nes_adapter** %9, align 8
  %48 = getelementptr inbounds %struct.nes_adapter, %struct.nes_adapter* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* %10, align 4
  %51 = srem i32 %50, %49
  store i32 %51, i32* %10, align 4
  %52 = load %struct.nes_adapter*, %struct.nes_adapter** %9, align 8
  %53 = load %struct.nes_adapter*, %struct.nes_adapter** %9, align 8
  %54 = getelementptr inbounds %struct.nes_adapter, %struct.nes_adapter* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.nes_adapter*, %struct.nes_adapter** %9, align 8
  %57 = getelementptr inbounds %struct.nes_adapter, %struct.nes_adapter* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @NES_RESOURCE_FAST_MR, align 4
  %60 = call i32 @nes_alloc_resource(%struct.nes_adapter* %52, i32 %55, i32 %58, i32* %14, i32* %10, i32 %59)
  store i32 %60, i32* %13, align 4
  %61 = load i32, i32* %13, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %41
  %64 = load i32, i32* %13, align 4
  %65 = call %struct.ib_mr* @ERR_PTR(i32 %64)
  store %struct.ib_mr* %65, %struct.ib_mr** %3, align 8
  br label %130

66:                                               ; preds = %41
  %67 = load i32, i32* @GFP_KERNEL, align 4
  %68 = call %struct.nes_mr* @kzalloc(i32 12, i32 %67)
  store %struct.nes_mr* %68, %struct.nes_mr** %15, align 8
  %69 = load %struct.nes_mr*, %struct.nes_mr** %15, align 8
  %70 = icmp ne %struct.nes_mr* %69, null
  br i1 %70, label %81, label %71

71:                                               ; preds = %66
  %72 = load %struct.nes_adapter*, %struct.nes_adapter** %9, align 8
  %73 = load %struct.nes_adapter*, %struct.nes_adapter** %9, align 8
  %74 = getelementptr inbounds %struct.nes_adapter, %struct.nes_adapter* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* %14, align 4
  %77 = call i32 @nes_free_resource(%struct.nes_adapter* %72, i32 %75, i32 %76)
  %78 = load i32, i32* @ENOMEM, align 4
  %79 = sub nsw i32 0, %78
  %80 = call %struct.ib_mr* @ERR_PTR(i32 %79)
  store %struct.ib_mr* %80, %struct.ib_mr** %3, align 8
  br label %130

81:                                               ; preds = %66
  %82 = load i32, i32* %14, align 4
  %83 = shl i32 %82, 8
  store i32 %83, i32* %16, align 4
  %84 = load i32, i32* %12, align 4
  %85 = load i32, i32* %16, align 4
  %86 = or i32 %85, %84
  store i32 %86, i32* %16, align 4
  %87 = load i64, i64* %11, align 8
  %88 = trunc i64 %87 to i32
  %89 = load i32, i32* %16, align 4
  %90 = add nsw i32 %89, %88
  store i32 %90, i32* %16, align 4
  %91 = load i32, i32* @NES_DBG_MR, align 4
  %92 = load i32, i32* %16, align 4
  %93 = load i32, i32* %14, align 4
  %94 = call i32 @nes_debug(i32 %91, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %92, i32 %93)
  %95 = load %struct.nes_device*, %struct.nes_device** %8, align 8
  %96 = load %struct.nes_pd*, %struct.nes_pd** %6, align 8
  %97 = load i32, i32* %16, align 4
  %98 = load i32, i32* %5, align 4
  %99 = call i32 @alloc_fast_reg_mr(%struct.nes_device* %95, %struct.nes_pd* %96, i32 %97, i32 %98)
  store i32 %99, i32* %17, align 4
  %100 = load i32, i32* %17, align 4
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %102, label %116

102:                                              ; preds = %81
  %103 = load i32, i32* %16, align 4
  %104 = load %struct.nes_mr*, %struct.nes_mr** %15, align 8
  %105 = getelementptr inbounds %struct.nes_mr, %struct.nes_mr* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.ib_mr, %struct.ib_mr* %105, i32 0, i32 0
  store i32 %103, i32* %106, align 4
  %107 = load i32, i32* %16, align 4
  %108 = load %struct.nes_mr*, %struct.nes_mr** %15, align 8
  %109 = getelementptr inbounds %struct.nes_mr, %struct.nes_mr* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.ib_mr, %struct.ib_mr* %109, i32 0, i32 1
  store i32 %107, i32* %110, align 4
  %111 = load i32, i32* @IWNES_MEMREG_TYPE_FMEM, align 4
  %112 = load %struct.nes_mr*, %struct.nes_mr** %15, align 8
  %113 = getelementptr inbounds %struct.nes_mr, %struct.nes_mr* %112, i32 0, i32 1
  store i32 %111, i32* %113, align 4
  %114 = load %struct.nes_mr*, %struct.nes_mr** %15, align 8
  %115 = getelementptr inbounds %struct.nes_mr, %struct.nes_mr* %114, i32 0, i32 0
  store %struct.ib_mr* %115, %struct.ib_mr** %18, align 8
  br label %128

116:                                              ; preds = %81
  %117 = load %struct.nes_mr*, %struct.nes_mr** %15, align 8
  %118 = call i32 @kfree(%struct.nes_mr* %117)
  %119 = load %struct.nes_adapter*, %struct.nes_adapter** %9, align 8
  %120 = load %struct.nes_adapter*, %struct.nes_adapter** %9, align 8
  %121 = getelementptr inbounds %struct.nes_adapter, %struct.nes_adapter* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = load i32, i32* %14, align 4
  %124 = call i32 @nes_free_resource(%struct.nes_adapter* %119, i32 %122, i32 %123)
  %125 = load i32, i32* @ENOMEM, align 4
  %126 = sub nsw i32 0, %125
  %127 = call %struct.ib_mr* @ERR_PTR(i32 %126)
  store %struct.ib_mr* %127, %struct.ib_mr** %18, align 8
  br label %128

128:                                              ; preds = %116, %102
  %129 = load %struct.ib_mr*, %struct.ib_mr** %18, align 8
  store %struct.ib_mr* %129, %struct.ib_mr** %3, align 8
  br label %130

130:                                              ; preds = %128, %71, %63, %37
  %131 = load %struct.ib_mr*, %struct.ib_mr** %3, align 8
  ret %struct.ib_mr* %131
}

declare dso_local %struct.nes_pd* @to_nespd(%struct.ib_pd*) #1

declare dso_local %struct.nes_vnic* @to_nesvnic(i32) #1

declare dso_local %struct.ib_mr* @ERR_PTR(i32) #1

declare dso_local i32 @get_random_bytes(i32*, i32) #1

declare dso_local i32 @nes_alloc_resource(%struct.nes_adapter*, i32, i32, i32*, i32*, i32) #1

declare dso_local %struct.nes_mr* @kzalloc(i32, i32) #1

declare dso_local i32 @nes_free_resource(%struct.nes_adapter*, i32, i32) #1

declare dso_local i32 @nes_debug(i32, i8*, i32, i32) #1

declare dso_local i32 @alloc_fast_reg_mr(%struct.nes_device*, %struct.nes_pd*, i32, i32) #1

declare dso_local i32 @kfree(%struct.nes_mr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
