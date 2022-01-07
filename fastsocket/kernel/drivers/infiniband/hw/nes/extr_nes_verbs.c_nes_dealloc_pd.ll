; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/nes/extr_nes_verbs.c_nes_dealloc_pd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/nes/extr_nes_verbs.c_nes_dealloc_pd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_pd = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i64 }
%struct.nes_ucontext = type { i64, i64*, i32 }
%struct.nes_pd = type { i64, i32 }
%struct.nes_vnic = type { %struct.nes_device* }
%struct.nes_device = type { %struct.nes_adapter* }
%struct.nes_adapter = type { i32, i32 }

@NES_DBG_PD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"Clearing bit %u from allocated doorbells\0A\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"Deallocating PD%u structure located @%p.\0A\00", align 1
@PAGE_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_pd*)* @nes_dealloc_pd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nes_dealloc_pd(%struct.ib_pd* %0) #0 {
  %2 = alloca %struct.ib_pd*, align 8
  %3 = alloca %struct.nes_ucontext*, align 8
  %4 = alloca %struct.nes_pd*, align 8
  %5 = alloca %struct.nes_vnic*, align 8
  %6 = alloca %struct.nes_device*, align 8
  %7 = alloca %struct.nes_adapter*, align 8
  store %struct.ib_pd* %0, %struct.ib_pd** %2, align 8
  %8 = load %struct.ib_pd*, %struct.ib_pd** %2, align 8
  %9 = call %struct.nes_pd* @to_nespd(%struct.ib_pd* %8)
  store %struct.nes_pd* %9, %struct.nes_pd** %4, align 8
  %10 = load %struct.ib_pd*, %struct.ib_pd** %2, align 8
  %11 = getelementptr inbounds %struct.ib_pd, %struct.ib_pd* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = call %struct.nes_vnic* @to_nesvnic(i32 %12)
  store %struct.nes_vnic* %13, %struct.nes_vnic** %5, align 8
  %14 = load %struct.nes_vnic*, %struct.nes_vnic** %5, align 8
  %15 = getelementptr inbounds %struct.nes_vnic, %struct.nes_vnic* %14, i32 0, i32 0
  %16 = load %struct.nes_device*, %struct.nes_device** %15, align 8
  store %struct.nes_device* %16, %struct.nes_device** %6, align 8
  %17 = load %struct.nes_device*, %struct.nes_device** %6, align 8
  %18 = getelementptr inbounds %struct.nes_device, %struct.nes_device* %17, i32 0, i32 0
  %19 = load %struct.nes_adapter*, %struct.nes_adapter** %18, align 8
  store %struct.nes_adapter* %19, %struct.nes_adapter** %7, align 8
  %20 = load %struct.ib_pd*, %struct.ib_pd** %2, align 8
  %21 = getelementptr inbounds %struct.ib_pd, %struct.ib_pd* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = icmp ne %struct.TYPE_2__* %22, null
  br i1 %23, label %24, label %72

24:                                               ; preds = %1
  %25 = load %struct.ib_pd*, %struct.ib_pd** %2, align 8
  %26 = getelementptr inbounds %struct.ib_pd, %struct.ib_pd* %25, i32 0, i32 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %72

31:                                               ; preds = %24
  %32 = load %struct.ib_pd*, %struct.ib_pd** %2, align 8
  %33 = getelementptr inbounds %struct.ib_pd, %struct.ib_pd* %32, i32 0, i32 0
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = call %struct.nes_ucontext* @to_nesucontext(i64 %36)
  store %struct.nes_ucontext* %37, %struct.nes_ucontext** %3, align 8
  %38 = load i32, i32* @NES_DBG_PD, align 4
  %39 = load %struct.nes_pd*, %struct.nes_pd** %4, align 8
  %40 = getelementptr inbounds %struct.nes_pd, %struct.nes_pd* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = trunc i64 %41 to i32
  %43 = call i32 (i32, i8*, i32, ...) @nes_debug(i32 %38, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %42)
  %44 = load %struct.nes_pd*, %struct.nes_pd** %4, align 8
  %45 = getelementptr inbounds %struct.nes_pd, %struct.nes_pd* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.nes_ucontext*, %struct.nes_ucontext** %3, align 8
  %48 = getelementptr inbounds %struct.nes_ucontext, %struct.nes_ucontext* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @clear_bit(i64 %46, i32 %49)
  %51 = load %struct.nes_ucontext*, %struct.nes_ucontext** %3, align 8
  %52 = getelementptr inbounds %struct.nes_ucontext, %struct.nes_ucontext* %51, i32 0, i32 1
  %53 = load i64*, i64** %52, align 8
  %54 = load %struct.nes_pd*, %struct.nes_pd** %4, align 8
  %55 = getelementptr inbounds %struct.nes_pd, %struct.nes_pd* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = getelementptr inbounds i64, i64* %53, i64 %56
  store i64 0, i64* %57, align 8
  %58 = load %struct.nes_ucontext*, %struct.nes_ucontext** %3, align 8
  %59 = getelementptr inbounds %struct.nes_ucontext, %struct.nes_ucontext* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load %struct.nes_pd*, %struct.nes_pd** %4, align 8
  %62 = getelementptr inbounds %struct.nes_pd, %struct.nes_pd* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = icmp ugt i64 %60, %63
  br i1 %64, label %65, label %71

65:                                               ; preds = %31
  %66 = load %struct.nes_pd*, %struct.nes_pd** %4, align 8
  %67 = getelementptr inbounds %struct.nes_pd, %struct.nes_pd* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load %struct.nes_ucontext*, %struct.nes_ucontext** %3, align 8
  %70 = getelementptr inbounds %struct.nes_ucontext, %struct.nes_ucontext* %69, i32 0, i32 0
  store i64 %68, i64* %70, align 8
  br label %71

71:                                               ; preds = %65, %31
  br label %72

72:                                               ; preds = %71, %24, %1
  %73 = load i32, i32* @NES_DBG_PD, align 4
  %74 = load %struct.nes_pd*, %struct.nes_pd** %4, align 8
  %75 = getelementptr inbounds %struct.nes_pd, %struct.nes_pd* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = load %struct.nes_pd*, %struct.nes_pd** %4, align 8
  %78 = call i32 (i32, i8*, i32, ...) @nes_debug(i32 %73, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 %76, %struct.nes_pd* %77)
  %79 = load %struct.nes_adapter*, %struct.nes_adapter** %7, align 8
  %80 = load %struct.nes_adapter*, %struct.nes_adapter** %7, align 8
  %81 = getelementptr inbounds %struct.nes_adapter, %struct.nes_adapter* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.nes_pd*, %struct.nes_pd** %4, align 8
  %84 = getelementptr inbounds %struct.nes_pd, %struct.nes_pd* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 8
  %86 = load %struct.nes_adapter*, %struct.nes_adapter** %7, align 8
  %87 = getelementptr inbounds %struct.nes_adapter, %struct.nes_adapter* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = sub nsw i32 %85, %88
  %90 = load i32, i32* @PAGE_SHIFT, align 4
  %91 = sub nsw i32 %90, 12
  %92 = ashr i32 %89, %91
  %93 = call i32 @nes_free_resource(%struct.nes_adapter* %79, i32 %82, i32 %92)
  %94 = load %struct.nes_pd*, %struct.nes_pd** %4, align 8
  %95 = call i32 @kfree(%struct.nes_pd* %94)
  ret i32 0
}

declare dso_local %struct.nes_pd* @to_nespd(%struct.ib_pd*) #1

declare dso_local %struct.nes_vnic* @to_nesvnic(i32) #1

declare dso_local %struct.nes_ucontext* @to_nesucontext(i64) #1

declare dso_local i32 @nes_debug(i32, i8*, i32, ...) #1

declare dso_local i32 @clear_bit(i64, i32) #1

declare dso_local i32 @nes_free_resource(%struct.nes_adapter*, i32, i32) #1

declare dso_local i32 @kfree(%struct.nes_pd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
