; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/fifo/extr_nve0.c_nve0_fifo_isr_vm_fault.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/fifo/extr_nve0.c_nve0_fifo_isr_vm_fault.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nve0_fifo_priv = type { i32 }
%struct.nouveau_enum = type { i64 }
%struct.nouveau_engine = type { i32 }
%struct.nouveau_object = type { i32 }

@.str = private unnamed_addr constant [31 x i8] c"PFIFO: %s fault at 0x%010llx [\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"write\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"read\00", align 1
@nve0_fifo_fault_reason = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [8 x i8] c"] from \00", align 1
@nve0_fifo_fault_unit = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@nve0_fifo_fault_hubclient = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [8 x i8] c"/GPC%d/\00", align 1
@nve0_fifo_fault_gpcclient = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [28 x i8] c" on channel 0x%010llx [%s]\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nve0_fifo_priv*, i32)* @nve0_fifo_isr_vm_fault to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nve0_fifo_isr_vm_fault(%struct.nve0_fifo_priv* %0, i32 %1) #0 {
  %3 = alloca %struct.nve0_fifo_priv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.nouveau_enum*, align 8
  %11 = alloca %struct.nouveau_engine*, align 8
  %12 = alloca %struct.nouveau_object*, align 8
  store %struct.nve0_fifo_priv* %0, %struct.nve0_fifo_priv** %3, align 8
  store i32 %1, i32* %4, align 4
  %13 = load %struct.nve0_fifo_priv*, %struct.nve0_fifo_priv** %3, align 8
  %14 = load i32, i32* %4, align 4
  %15 = mul nsw i32 %14, 16
  %16 = add nsw i32 10240, %15
  %17 = call i32 @nv_rd32(%struct.nve0_fifo_priv* %13, i32 %16)
  store i32 %17, i32* %5, align 4
  %18 = load %struct.nve0_fifo_priv*, %struct.nve0_fifo_priv** %3, align 8
  %19 = load i32, i32* %4, align 4
  %20 = mul nsw i32 %19, 16
  %21 = add nsw i32 10244, %20
  %22 = call i32 @nv_rd32(%struct.nve0_fifo_priv* %18, i32 %21)
  store i32 %22, i32* %6, align 4
  %23 = load %struct.nve0_fifo_priv*, %struct.nve0_fifo_priv** %3, align 8
  %24 = load i32, i32* %4, align 4
  %25 = mul nsw i32 %24, 16
  %26 = add nsw i32 10248, %25
  %27 = call i32 @nv_rd32(%struct.nve0_fifo_priv* %23, i32 %26)
  store i32 %27, i32* %7, align 4
  %28 = load %struct.nve0_fifo_priv*, %struct.nve0_fifo_priv** %3, align 8
  %29 = load i32, i32* %4, align 4
  %30 = mul nsw i32 %29, 16
  %31 = add nsw i32 10252, %30
  %32 = call i32 @nv_rd32(%struct.nve0_fifo_priv* %28, i32 %31)
  store i32 %32, i32* %8, align 4
  %33 = load i32, i32* %8, align 4
  %34 = and i32 %33, 7936
  %35 = ashr i32 %34, 8
  store i32 %35, i32* %9, align 4
  store %struct.nouveau_object* null, %struct.nouveau_object** %12, align 8
  %36 = load %struct.nve0_fifo_priv*, %struct.nve0_fifo_priv** %3, align 8
  %37 = load i32, i32* %8, align 4
  %38 = and i32 %37, 128
  %39 = icmp ne i32 %38, 0
  %40 = zext i1 %39 to i64
  %41 = select i1 %39, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)
  %42 = load i32, i32* %7, align 4
  %43 = shl i32 %42, 32
  %44 = load i32, i32* %6, align 4
  %45 = or i32 %43, %44
  %46 = call i32 @nv_error(%struct.nve0_fifo_priv* %36, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i8* %41, i32 %45)
  %47 = load i32, i32* @nve0_fifo_fault_reason, align 4
  %48 = load i32, i32* %8, align 4
  %49 = and i32 %48, 15
  %50 = call %struct.nouveau_enum* @nouveau_enum_print(i32 %47, i32 %49)
  %51 = call i32 (i8*, ...) @pr_cont(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  %52 = load i32, i32* @nve0_fifo_fault_unit, align 4
  %53 = load i32, i32* %4, align 4
  %54 = call %struct.nouveau_enum* @nouveau_enum_print(i32 %52, i32 %53)
  store %struct.nouveau_enum* %54, %struct.nouveau_enum** %10, align 8
  %55 = load i32, i32* %8, align 4
  %56 = and i32 %55, 64
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %63

58:                                               ; preds = %2
  %59 = call i32 (i8*, ...) @pr_cont(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %60 = load i32, i32* @nve0_fifo_fault_hubclient, align 4
  %61 = load i32, i32* %9, align 4
  %62 = call %struct.nouveau_enum* @nouveau_enum_print(i32 %60, i32 %61)
  br label %71

63:                                               ; preds = %2
  %64 = load i32, i32* %8, align 4
  %65 = and i32 %64, 520093696
  %66 = ashr i32 %65, 24
  %67 = call i32 (i8*, ...) @pr_cont(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i32 %66)
  %68 = load i32, i32* @nve0_fifo_fault_gpcclient, align 4
  %69 = load i32, i32* %9, align 4
  %70 = call %struct.nouveau_enum* @nouveau_enum_print(i32 %68, i32 %69)
  br label %71

71:                                               ; preds = %63, %58
  %72 = load %struct.nouveau_enum*, %struct.nouveau_enum** %10, align 8
  %73 = icmp ne %struct.nouveau_enum* %72, null
  br i1 %73, label %74, label %92

74:                                               ; preds = %71
  %75 = load %struct.nouveau_enum*, %struct.nouveau_enum** %10, align 8
  %76 = getelementptr inbounds %struct.nouveau_enum, %struct.nouveau_enum* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %92

79:                                               ; preds = %74
  %80 = load %struct.nve0_fifo_priv*, %struct.nve0_fifo_priv** %3, align 8
  %81 = load %struct.nouveau_enum*, %struct.nouveau_enum** %10, align 8
  %82 = getelementptr inbounds %struct.nouveau_enum, %struct.nouveau_enum* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = call %struct.nouveau_engine* @nouveau_engine(%struct.nve0_fifo_priv* %80, i64 %83)
  store %struct.nouveau_engine* %84, %struct.nouveau_engine** %11, align 8
  %85 = load %struct.nouveau_engine*, %struct.nouveau_engine** %11, align 8
  %86 = icmp ne %struct.nouveau_engine* %85, null
  br i1 %86, label %87, label %91

87:                                               ; preds = %79
  %88 = load %struct.nouveau_engine*, %struct.nouveau_engine** %11, align 8
  %89 = load i32, i32* %5, align 4
  %90 = call %struct.nouveau_object* @nouveau_engctx_get(%struct.nouveau_engine* %88, i32 %89)
  store %struct.nouveau_object* %90, %struct.nouveau_object** %12, align 8
  br label %91

91:                                               ; preds = %87, %79
  br label %92

92:                                               ; preds = %91, %74, %71
  %93 = load i32, i32* %5, align 4
  %94 = shl i32 %93, 12
  %95 = load %struct.nouveau_object*, %struct.nouveau_object** %12, align 8
  %96 = call i32 @nouveau_client_name(%struct.nouveau_object* %95)
  %97 = call i32 (i8*, ...) @pr_cont(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i64 0, i64 0), i32 %94, i32 %96)
  %98 = load %struct.nouveau_object*, %struct.nouveau_object** %12, align 8
  %99 = call i32 @nouveau_engctx_put(%struct.nouveau_object* %98)
  ret void
}

declare dso_local i32 @nv_rd32(%struct.nve0_fifo_priv*, i32) #1

declare dso_local i32 @nv_error(%struct.nve0_fifo_priv*, i8*, i8*, i32) #1

declare dso_local %struct.nouveau_enum* @nouveau_enum_print(i32, i32) #1

declare dso_local i32 @pr_cont(i8*, ...) #1

declare dso_local %struct.nouveau_engine* @nouveau_engine(%struct.nve0_fifo_priv*, i64) #1

declare dso_local %struct.nouveau_object* @nouveau_engctx_get(%struct.nouveau_engine*, i32) #1

declare dso_local i32 @nouveau_client_name(%struct.nouveau_object*) #1

declare dso_local i32 @nouveau_engctx_put(%struct.nouveau_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
