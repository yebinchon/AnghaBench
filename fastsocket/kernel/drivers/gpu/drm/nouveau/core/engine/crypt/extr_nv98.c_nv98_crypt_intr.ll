; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/crypt/extr_nv98.c_nv98_crypt_intr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/crypt/extr_nv98.c_nv98_crypt_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_subdev = type { i32 }
%struct.nouveau_fifo = type { i32 (%struct.nouveau_fifo*, %struct.nouveau_object*)* }
%struct.nouveau_object = type { i32 }
%struct.nouveau_engine = type { i32 }
%struct.nv98_crypt_priv = type { i32 }

@.str = private unnamed_addr constant [17 x i8] c"DISPATCH_ERROR [\00", align 1
@nv98_crypt_isr_error_name = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [56 x i8] c"] ch %d [0x%010llx %s] subc %d mthd 0x%04x data 0x%08x\0A\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"unhandled intr 0x%08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nouveau_subdev*)* @nv98_crypt_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nv98_crypt_intr(%struct.nouveau_subdev* %0) #0 {
  %2 = alloca %struct.nouveau_subdev*, align 8
  %3 = alloca %struct.nouveau_fifo*, align 8
  %4 = alloca %struct.nouveau_engine*, align 8
  %5 = alloca %struct.nouveau_object*, align 8
  %6 = alloca %struct.nv98_crypt_priv*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.nouveau_subdev* %0, %struct.nouveau_subdev** %2, align 8
  %16 = load %struct.nouveau_subdev*, %struct.nouveau_subdev** %2, align 8
  %17 = call %struct.nouveau_fifo* @nouveau_fifo(%struct.nouveau_subdev* %16)
  store %struct.nouveau_fifo* %17, %struct.nouveau_fifo** %3, align 8
  %18 = load %struct.nouveau_subdev*, %struct.nouveau_subdev** %2, align 8
  %19 = call %struct.nouveau_engine* @nv_engine(%struct.nouveau_subdev* %18)
  store %struct.nouveau_engine* %19, %struct.nouveau_engine** %4, align 8
  %20 = load %struct.nouveau_subdev*, %struct.nouveau_subdev** %2, align 8
  %21 = bitcast %struct.nouveau_subdev* %20 to i8*
  %22 = bitcast i8* %21 to %struct.nv98_crypt_priv*
  store %struct.nv98_crypt_priv* %22, %struct.nv98_crypt_priv** %6, align 8
  %23 = load %struct.nv98_crypt_priv*, %struct.nv98_crypt_priv** %6, align 8
  %24 = call i32 @nv_rd32(%struct.nv98_crypt_priv* %23, i32 552988)
  store i32 %24, i32* %7, align 4
  %25 = load %struct.nv98_crypt_priv*, %struct.nv98_crypt_priv** %6, align 8
  %26 = call i32 @nv_rd32(%struct.nv98_crypt_priv* %25, i32 552968)
  %27 = load i32, i32* %7, align 4
  %28 = and i32 %26, %27
  %29 = load i32, i32* %7, align 4
  %30 = ashr i32 %29, 16
  %31 = xor i32 %30, -1
  %32 = and i32 %28, %31
  store i32 %32, i32* %8, align 4
  %33 = load %struct.nv98_crypt_priv*, %struct.nv98_crypt_priv** %6, align 8
  %34 = call i32 @nv_rd32(%struct.nv98_crypt_priv* %33, i32 553040)
  %35 = and i32 %34, 1073741823
  store i32 %35, i32* %9, align 4
  %36 = load %struct.nv98_crypt_priv*, %struct.nv98_crypt_priv** %6, align 8
  %37 = call i32 @nv_rd32(%struct.nv98_crypt_priv* %36, i32 553024)
  %38 = and i32 %37, 65535
  store i32 %38, i32* %10, align 4
  %39 = load %struct.nv98_crypt_priv*, %struct.nv98_crypt_priv** %6, align 8
  %40 = call i32 @nv_rd32(%struct.nv98_crypt_priv* %39, i32 553024)
  %41 = ashr i32 %40, 16
  store i32 %41, i32* %11, align 4
  %42 = load i32, i32* %11, align 4
  %43 = and i32 %42, 2047
  %44 = shl i32 %43, 2
  store i32 %44, i32* %12, align 4
  %45 = load i32, i32* %11, align 4
  %46 = and i32 %45, 14336
  %47 = ashr i32 %46, 11
  store i32 %47, i32* %13, align 4
  %48 = load %struct.nv98_crypt_priv*, %struct.nv98_crypt_priv** %6, align 8
  %49 = call i32 @nv_rd32(%struct.nv98_crypt_priv* %48, i32 553028)
  store i32 %49, i32* %14, align 4
  %50 = load %struct.nouveau_engine*, %struct.nouveau_engine** %4, align 8
  %51 = load i32, i32* %9, align 4
  %52 = call %struct.nouveau_object* @nouveau_engctx_get(%struct.nouveau_engine* %50, i32 %51)
  store %struct.nouveau_object* %52, %struct.nouveau_object** %5, align 8
  %53 = load %struct.nouveau_fifo*, %struct.nouveau_fifo** %3, align 8
  %54 = getelementptr inbounds %struct.nouveau_fifo, %struct.nouveau_fifo* %53, i32 0, i32 0
  %55 = load i32 (%struct.nouveau_fifo*, %struct.nouveau_object*)*, i32 (%struct.nouveau_fifo*, %struct.nouveau_object*)** %54, align 8
  %56 = load %struct.nouveau_fifo*, %struct.nouveau_fifo** %3, align 8
  %57 = load %struct.nouveau_object*, %struct.nouveau_object** %5, align 8
  %58 = call i32 %55(%struct.nouveau_fifo* %56, %struct.nouveau_object* %57)
  store i32 %58, i32* %15, align 4
  %59 = load i32, i32* %8, align 4
  %60 = and i32 %59, 64
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %81

62:                                               ; preds = %1
  %63 = load %struct.nv98_crypt_priv*, %struct.nv98_crypt_priv** %6, align 8
  %64 = call i32 (%struct.nv98_crypt_priv*, i8*, ...) @nv_error(%struct.nv98_crypt_priv* %63, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %65 = load i32, i32* @nv98_crypt_isr_error_name, align 4
  %66 = load i32, i32* %10, align 4
  %67 = call i32 @nouveau_enum_print(i32 %65, i32 %66)
  %68 = load i32, i32* %15, align 4
  %69 = load i32, i32* %9, align 4
  %70 = shl i32 %69, 12
  %71 = load %struct.nouveau_object*, %struct.nouveau_object** %5, align 8
  %72 = call i32 @nouveau_client_name(%struct.nouveau_object* %71)
  %73 = load i32, i32* %13, align 4
  %74 = load i32, i32* %12, align 4
  %75 = load i32, i32* %14, align 4
  %76 = call i32 @pr_cont(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.1, i64 0, i64 0), i32 %68, i32 %70, i32 %72, i32 %73, i32 %74, i32 %75)
  %77 = load %struct.nv98_crypt_priv*, %struct.nv98_crypt_priv** %6, align 8
  %78 = call i32 @nv_wr32(%struct.nv98_crypt_priv* %77, i32 552964, i32 64)
  %79 = load i32, i32* %8, align 4
  %80 = and i32 %79, -65
  store i32 %80, i32* %8, align 4
  br label %81

81:                                               ; preds = %62, %1
  %82 = load i32, i32* %8, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %91

84:                                               ; preds = %81
  %85 = load %struct.nv98_crypt_priv*, %struct.nv98_crypt_priv** %6, align 8
  %86 = load i32, i32* %8, align 4
  %87 = call i32 (%struct.nv98_crypt_priv*, i8*, ...) @nv_error(%struct.nv98_crypt_priv* %85, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 %86)
  %88 = load %struct.nv98_crypt_priv*, %struct.nv98_crypt_priv** %6, align 8
  %89 = load i32, i32* %8, align 4
  %90 = call i32 @nv_wr32(%struct.nv98_crypt_priv* %88, i32 552964, i32 %89)
  br label %91

91:                                               ; preds = %84, %81
  %92 = load %struct.nouveau_object*, %struct.nouveau_object** %5, align 8
  %93 = call i32 @nouveau_engctx_put(%struct.nouveau_object* %92)
  ret void
}

declare dso_local %struct.nouveau_fifo* @nouveau_fifo(%struct.nouveau_subdev*) #1

declare dso_local %struct.nouveau_engine* @nv_engine(%struct.nouveau_subdev*) #1

declare dso_local i32 @nv_rd32(%struct.nv98_crypt_priv*, i32) #1

declare dso_local %struct.nouveau_object* @nouveau_engctx_get(%struct.nouveau_engine*, i32) #1

declare dso_local i32 @nv_error(%struct.nv98_crypt_priv*, i8*, ...) #1

declare dso_local i32 @nouveau_enum_print(i32, i32) #1

declare dso_local i32 @pr_cont(i8*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @nouveau_client_name(%struct.nouveau_object*) #1

declare dso_local i32 @nv_wr32(%struct.nv98_crypt_priv*, i32, i32) #1

declare dso_local i32 @nouveau_engctx_put(%struct.nouveau_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
