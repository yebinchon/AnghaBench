; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/fifo/extr_nvc0.c_nvc0_fifo_isr_vm_fault.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/fifo/extr_nvc0.c_nvc0_fifo_isr_vm_fault.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvc0_fifo_priv = type { i32 }
%struct.nouveau_enum = type { i64 }
%struct.nouveau_engine = type { i32 }
%struct.nouveau_object = type { i32 }

@.str = private unnamed_addr constant [24 x i8] c"%s fault at 0x%010llx [\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"write\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"read\00", align 1
@nvc0_fifo_fault_reason = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [8 x i8] c"] from \00", align 1
@nvc0_fifo_fault_unit = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@nvc0_fifo_fault_hubclient = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [8 x i8] c"/GPC%d/\00", align 1
@nvc0_fifo_fault_gpcclient = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [28 x i8] c" on channel 0x%010llx [%s]\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nvc0_fifo_priv*, i32)* @nvc0_fifo_isr_vm_fault to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nvc0_fifo_isr_vm_fault(%struct.nvc0_fifo_priv* %0, i32 %1) #0 {
  %3 = alloca %struct.nvc0_fifo_priv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.nouveau_enum*, align 8
  %11 = alloca %struct.nouveau_engine*, align 8
  %12 = alloca %struct.nouveau_object*, align 8
  store %struct.nvc0_fifo_priv* %0, %struct.nvc0_fifo_priv** %3, align 8
  store i32 %1, i32* %4, align 4
  %13 = load %struct.nvc0_fifo_priv*, %struct.nvc0_fifo_priv** %3, align 8
  %14 = load i32, i32* %4, align 4
  %15 = mul nsw i32 %14, 16
  %16 = add nsw i32 10240, %15
  %17 = call i32 @nv_rd32(%struct.nvc0_fifo_priv* %13, i32 %16)
  store i32 %17, i32* %5, align 4
  %18 = load %struct.nvc0_fifo_priv*, %struct.nvc0_fifo_priv** %3, align 8
  %19 = load i32, i32* %4, align 4
  %20 = mul nsw i32 %19, 16
  %21 = add nsw i32 10244, %20
  %22 = call i32 @nv_rd32(%struct.nvc0_fifo_priv* %18, i32 %21)
  store i32 %22, i32* %6, align 4
  %23 = load %struct.nvc0_fifo_priv*, %struct.nvc0_fifo_priv** %3, align 8
  %24 = load i32, i32* %4, align 4
  %25 = mul nsw i32 %24, 16
  %26 = add nsw i32 10248, %25
  %27 = call i32 @nv_rd32(%struct.nvc0_fifo_priv* %23, i32 %26)
  store i32 %27, i32* %7, align 4
  %28 = load %struct.nvc0_fifo_priv*, %struct.nvc0_fifo_priv** %3, align 8
  %29 = load i32, i32* %4, align 4
  %30 = mul nsw i32 %29, 16
  %31 = add nsw i32 10252, %30
  %32 = call i32 @nv_rd32(%struct.nvc0_fifo_priv* %28, i32 %31)
  store i32 %32, i32* %8, align 4
  %33 = load i32, i32* %8, align 4
  %34 = and i32 %33, 7936
  %35 = ashr i32 %34, 8
  store i32 %35, i32* %9, align 4
  store %struct.nouveau_object* null, %struct.nouveau_object** %12, align 8
  %36 = load i32, i32* %4, align 4
  switch i32 %36, label %46 [
    i32 3, label %37
    i32 4, label %40
    i32 5, label %43
  ]

37:                                               ; preds = %2
  %38 = load %struct.nvc0_fifo_priv*, %struct.nvc0_fifo_priv** %3, align 8
  %39 = call i32 @nv_mask(%struct.nvc0_fifo_priv* %38, i32 5912, i32 0, i32 0)
  br label %47

40:                                               ; preds = %2
  %41 = load %struct.nvc0_fifo_priv*, %struct.nvc0_fifo_priv** %3, align 8
  %42 = call i32 @nv_mask(%struct.nvc0_fifo_priv* %41, i32 5892, i32 0, i32 0)
  br label %47

43:                                               ; preds = %2
  %44 = load %struct.nvc0_fifo_priv*, %struct.nvc0_fifo_priv** %3, align 8
  %45 = call i32 @nv_mask(%struct.nvc0_fifo_priv* %44, i32 5908, i32 0, i32 0)
  br label %47

46:                                               ; preds = %2
  br label %47

47:                                               ; preds = %46, %43, %40, %37
  %48 = load %struct.nvc0_fifo_priv*, %struct.nvc0_fifo_priv** %3, align 8
  %49 = load i32, i32* %8, align 4
  %50 = and i32 %49, 128
  %51 = icmp ne i32 %50, 0
  %52 = zext i1 %51 to i64
  %53 = select i1 %51, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)
  %54 = load i32, i32* %7, align 4
  %55 = shl i32 %54, 32
  %56 = load i32, i32* %6, align 4
  %57 = or i32 %55, %56
  %58 = call i32 @nv_error(%struct.nvc0_fifo_priv* %48, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i8* %53, i32 %57)
  %59 = load i32, i32* @nvc0_fifo_fault_reason, align 4
  %60 = load i32, i32* %8, align 4
  %61 = and i32 %60, 15
  %62 = call %struct.nouveau_enum* @nouveau_enum_print(i32 %59, i32 %61)
  %63 = call i32 (i8*, ...) @pr_cont(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  %64 = load i32, i32* @nvc0_fifo_fault_unit, align 4
  %65 = load i32, i32* %4, align 4
  %66 = call %struct.nouveau_enum* @nouveau_enum_print(i32 %64, i32 %65)
  store %struct.nouveau_enum* %66, %struct.nouveau_enum** %10, align 8
  %67 = load i32, i32* %8, align 4
  %68 = and i32 %67, 64
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %75

70:                                               ; preds = %47
  %71 = call i32 (i8*, ...) @pr_cont(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %72 = load i32, i32* @nvc0_fifo_fault_hubclient, align 4
  %73 = load i32, i32* %9, align 4
  %74 = call %struct.nouveau_enum* @nouveau_enum_print(i32 %72, i32 %73)
  br label %83

75:                                               ; preds = %47
  %76 = load i32, i32* %8, align 4
  %77 = and i32 %76, 520093696
  %78 = ashr i32 %77, 24
  %79 = call i32 (i8*, ...) @pr_cont(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i32 %78)
  %80 = load i32, i32* @nvc0_fifo_fault_gpcclient, align 4
  %81 = load i32, i32* %9, align 4
  %82 = call %struct.nouveau_enum* @nouveau_enum_print(i32 %80, i32 %81)
  br label %83

83:                                               ; preds = %75, %70
  %84 = load %struct.nouveau_enum*, %struct.nouveau_enum** %10, align 8
  %85 = icmp ne %struct.nouveau_enum* %84, null
  br i1 %85, label %86, label %104

86:                                               ; preds = %83
  %87 = load %struct.nouveau_enum*, %struct.nouveau_enum** %10, align 8
  %88 = getelementptr inbounds %struct.nouveau_enum, %struct.nouveau_enum* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %104

91:                                               ; preds = %86
  %92 = load %struct.nvc0_fifo_priv*, %struct.nvc0_fifo_priv** %3, align 8
  %93 = load %struct.nouveau_enum*, %struct.nouveau_enum** %10, align 8
  %94 = getelementptr inbounds %struct.nouveau_enum, %struct.nouveau_enum* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = call %struct.nouveau_engine* @nouveau_engine(%struct.nvc0_fifo_priv* %92, i64 %95)
  store %struct.nouveau_engine* %96, %struct.nouveau_engine** %11, align 8
  %97 = load %struct.nouveau_engine*, %struct.nouveau_engine** %11, align 8
  %98 = icmp ne %struct.nouveau_engine* %97, null
  br i1 %98, label %99, label %103

99:                                               ; preds = %91
  %100 = load %struct.nouveau_engine*, %struct.nouveau_engine** %11, align 8
  %101 = load i32, i32* %5, align 4
  %102 = call %struct.nouveau_object* @nouveau_engctx_get(%struct.nouveau_engine* %100, i32 %101)
  store %struct.nouveau_object* %102, %struct.nouveau_object** %12, align 8
  br label %103

103:                                              ; preds = %99, %91
  br label %104

104:                                              ; preds = %103, %86, %83
  %105 = load i32, i32* %5, align 4
  %106 = shl i32 %105, 12
  %107 = load %struct.nouveau_object*, %struct.nouveau_object** %12, align 8
  %108 = call i32 @nouveau_client_name(%struct.nouveau_object* %107)
  %109 = call i32 (i8*, ...) @pr_cont(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i64 0, i64 0), i32 %106, i32 %108)
  %110 = load %struct.nouveau_object*, %struct.nouveau_object** %12, align 8
  %111 = call i32 @nouveau_engctx_put(%struct.nouveau_object* %110)
  ret void
}

declare dso_local i32 @nv_rd32(%struct.nvc0_fifo_priv*, i32) #1

declare dso_local i32 @nv_mask(%struct.nvc0_fifo_priv*, i32, i32, i32) #1

declare dso_local i32 @nv_error(%struct.nvc0_fifo_priv*, i8*, i8*, i32) #1

declare dso_local %struct.nouveau_enum* @nouveau_enum_print(i32, i32) #1

declare dso_local i32 @pr_cont(i8*, ...) #1

declare dso_local %struct.nouveau_engine* @nouveau_engine(%struct.nvc0_fifo_priv*, i64) #1

declare dso_local %struct.nouveau_object* @nouveau_engctx_get(%struct.nouveau_engine*, i32) #1

declare dso_local i32 @nouveau_client_name(%struct.nouveau_object*) #1

declare dso_local i32 @nouveau_engctx_put(%struct.nouveau_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
