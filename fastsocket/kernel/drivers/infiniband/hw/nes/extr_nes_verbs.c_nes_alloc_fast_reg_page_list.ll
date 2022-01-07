; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/nes/extr_nes_verbs.c_nes_alloc_fast_reg_page_list.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/nes/extr_nes_verbs.c_nes_alloc_fast_reg_page_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_fast_reg_page_list = type { i32, i32* }
%struct.ib_device = type { i32 }
%struct.nes_vnic = type { %struct.nes_device* }
%struct.nes_device = type { i32 }
%struct.nes_ib_fast_reg_page_list = type { %struct.TYPE_2__, %struct.ib_fast_reg_page_list, i32 }
%struct.TYPE_2__ = type { i64, i32 }

@NES_4K_PBL_CHUNK_SIZE = common dso_local global i32 0, align 4
@E2BIG = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@NES_DBG_MR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [107 x i8] c"nes_alloc_fast_reg_pbl: nes_frpl = %p, ibfrpl = %p, ibfrpl.page_list = %p, pbl.kva = %p, pbl.paddr = %llx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ib_fast_reg_page_list* (%struct.ib_device*, i32)* @nes_alloc_fast_reg_page_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ib_fast_reg_page_list* @nes_alloc_fast_reg_page_list(%struct.ib_device* %0, i32 %1) #0 {
  %3 = alloca %struct.ib_fast_reg_page_list*, align 8
  %4 = alloca %struct.ib_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.nes_vnic*, align 8
  %7 = alloca %struct.nes_device*, align 8
  %8 = alloca %struct.ib_fast_reg_page_list*, align 8
  %9 = alloca %struct.nes_ib_fast_reg_page_list*, align 8
  store %struct.ib_device* %0, %struct.ib_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.ib_device*, %struct.ib_device** %4, align 8
  %11 = call %struct.nes_vnic* @to_nesvnic(%struct.ib_device* %10)
  store %struct.nes_vnic* %11, %struct.nes_vnic** %6, align 8
  %12 = load %struct.nes_vnic*, %struct.nes_vnic** %6, align 8
  %13 = getelementptr inbounds %struct.nes_vnic, %struct.nes_vnic* %12, i32 0, i32 0
  %14 = load %struct.nes_device*, %struct.nes_device** %13, align 8
  store %struct.nes_device* %14, %struct.nes_device** %7, align 8
  %15 = load i32, i32* %5, align 4
  %16 = sext i32 %15 to i64
  %17 = load i32, i32* @NES_4K_PBL_CHUNK_SIZE, align 4
  %18 = sext i32 %17 to i64
  %19 = udiv i64 %18, 4
  %20 = icmp ugt i64 %16, %19
  br i1 %20, label %21, label %25

21:                                               ; preds = %2
  %22 = load i32, i32* @E2BIG, align 4
  %23 = sub nsw i32 0, %22
  %24 = call %struct.ib_fast_reg_page_list* @ERR_PTR(i32 %23)
  store %struct.ib_fast_reg_page_list* %24, %struct.ib_fast_reg_page_list** %3, align 8
  br label %93

25:                                               ; preds = %2
  %26 = load i32, i32* %5, align 4
  %27 = sext i32 %26 to i64
  %28 = mul i64 %27, 4
  %29 = add i64 40, %28
  %30 = trunc i64 %29 to i32
  %31 = load i32, i32* @GFP_KERNEL, align 4
  %32 = call %struct.nes_ib_fast_reg_page_list* @kmalloc(i32 %30, i32 %31)
  store %struct.nes_ib_fast_reg_page_list* %32, %struct.nes_ib_fast_reg_page_list** %9, align 8
  %33 = load %struct.nes_ib_fast_reg_page_list*, %struct.nes_ib_fast_reg_page_list** %9, align 8
  %34 = icmp ne %struct.nes_ib_fast_reg_page_list* %33, null
  br i1 %34, label %39, label %35

35:                                               ; preds = %25
  %36 = load i32, i32* @ENOMEM, align 4
  %37 = sub nsw i32 0, %36
  %38 = call %struct.ib_fast_reg_page_list* @ERR_PTR(i32 %37)
  store %struct.ib_fast_reg_page_list* %38, %struct.ib_fast_reg_page_list** %3, align 8
  br label %93

39:                                               ; preds = %25
  %40 = load %struct.nes_ib_fast_reg_page_list*, %struct.nes_ib_fast_reg_page_list** %9, align 8
  %41 = getelementptr inbounds %struct.nes_ib_fast_reg_page_list, %struct.nes_ib_fast_reg_page_list* %40, i32 0, i32 1
  store %struct.ib_fast_reg_page_list* %41, %struct.ib_fast_reg_page_list** %8, align 8
  %42 = load %struct.nes_ib_fast_reg_page_list*, %struct.nes_ib_fast_reg_page_list** %9, align 8
  %43 = getelementptr inbounds %struct.nes_ib_fast_reg_page_list, %struct.nes_ib_fast_reg_page_list* %42, i32 0, i32 2
  %44 = load %struct.ib_fast_reg_page_list*, %struct.ib_fast_reg_page_list** %8, align 8
  %45 = getelementptr inbounds %struct.ib_fast_reg_page_list, %struct.ib_fast_reg_page_list* %44, i32 0, i32 1
  store i32* %43, i32** %45, align 8
  %46 = load i32, i32* %5, align 4
  %47 = load %struct.ib_fast_reg_page_list*, %struct.ib_fast_reg_page_list** %8, align 8
  %48 = getelementptr inbounds %struct.ib_fast_reg_page_list, %struct.ib_fast_reg_page_list* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 8
  %49 = load %struct.nes_device*, %struct.nes_device** %7, align 8
  %50 = getelementptr inbounds %struct.nes_device, %struct.nes_device* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* %5, align 4
  %53 = sext i32 %52 to i64
  %54 = mul i64 %53, 4
  %55 = trunc i64 %54 to i32
  %56 = load %struct.nes_ib_fast_reg_page_list*, %struct.nes_ib_fast_reg_page_list** %9, align 8
  %57 = getelementptr inbounds %struct.nes_ib_fast_reg_page_list, %struct.nes_ib_fast_reg_page_list* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = call i32 @pci_alloc_consistent(i32 %51, i32 %55, i64* %58)
  %60 = load %struct.nes_ib_fast_reg_page_list*, %struct.nes_ib_fast_reg_page_list** %9, align 8
  %61 = getelementptr inbounds %struct.nes_ib_fast_reg_page_list, %struct.nes_ib_fast_reg_page_list* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 1
  store i32 %59, i32* %62, align 8
  %63 = load %struct.nes_ib_fast_reg_page_list*, %struct.nes_ib_fast_reg_page_list** %9, align 8
  %64 = getelementptr inbounds %struct.nes_ib_fast_reg_page_list, %struct.nes_ib_fast_reg_page_list* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %74, label %68

68:                                               ; preds = %39
  %69 = load %struct.nes_ib_fast_reg_page_list*, %struct.nes_ib_fast_reg_page_list** %9, align 8
  %70 = call i32 @kfree(%struct.nes_ib_fast_reg_page_list* %69)
  %71 = load i32, i32* @ENOMEM, align 4
  %72 = sub nsw i32 0, %71
  %73 = call %struct.ib_fast_reg_page_list* @ERR_PTR(i32 %72)
  store %struct.ib_fast_reg_page_list* %73, %struct.ib_fast_reg_page_list** %3, align 8
  br label %93

74:                                               ; preds = %39
  %75 = load i32, i32* @NES_DBG_MR, align 4
  %76 = load %struct.nes_ib_fast_reg_page_list*, %struct.nes_ib_fast_reg_page_list** %9, align 8
  %77 = load %struct.nes_ib_fast_reg_page_list*, %struct.nes_ib_fast_reg_page_list** %9, align 8
  %78 = getelementptr inbounds %struct.nes_ib_fast_reg_page_list, %struct.nes_ib_fast_reg_page_list* %77, i32 0, i32 1
  %79 = load %struct.nes_ib_fast_reg_page_list*, %struct.nes_ib_fast_reg_page_list** %9, align 8
  %80 = getelementptr inbounds %struct.nes_ib_fast_reg_page_list, %struct.nes_ib_fast_reg_page_list* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.ib_fast_reg_page_list, %struct.ib_fast_reg_page_list* %80, i32 0, i32 1
  %82 = load i32*, i32** %81, align 8
  %83 = load %struct.nes_ib_fast_reg_page_list*, %struct.nes_ib_fast_reg_page_list** %9, align 8
  %84 = getelementptr inbounds %struct.nes_ib_fast_reg_page_list, %struct.nes_ib_fast_reg_page_list* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 8
  %87 = load %struct.nes_ib_fast_reg_page_list*, %struct.nes_ib_fast_reg_page_list** %9, align 8
  %88 = getelementptr inbounds %struct.nes_ib_fast_reg_page_list, %struct.nes_ib_fast_reg_page_list* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = call i32 @nes_debug(i32 %75, i8* getelementptr inbounds ([107 x i8], [107 x i8]* @.str, i64 0, i64 0), %struct.nes_ib_fast_reg_page_list* %76, %struct.ib_fast_reg_page_list* %78, i32* %82, i32 %86, i64 %90)
  %92 = load %struct.ib_fast_reg_page_list*, %struct.ib_fast_reg_page_list** %8, align 8
  store %struct.ib_fast_reg_page_list* %92, %struct.ib_fast_reg_page_list** %3, align 8
  br label %93

93:                                               ; preds = %74, %68, %35, %21
  %94 = load %struct.ib_fast_reg_page_list*, %struct.ib_fast_reg_page_list** %3, align 8
  ret %struct.ib_fast_reg_page_list* %94
}

declare dso_local %struct.nes_vnic* @to_nesvnic(%struct.ib_device*) #1

declare dso_local %struct.ib_fast_reg_page_list* @ERR_PTR(i32) #1

declare dso_local %struct.nes_ib_fast_reg_page_list* @kmalloc(i32, i32) #1

declare dso_local i32 @pci_alloc_consistent(i32, i32, i64*) #1

declare dso_local i32 @kfree(%struct.nes_ib_fast_reg_page_list*) #1

declare dso_local i32 @nes_debug(i32, i8*, %struct.nes_ib_fast_reg_page_list*, %struct.ib_fast_reg_page_list*, i32*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
