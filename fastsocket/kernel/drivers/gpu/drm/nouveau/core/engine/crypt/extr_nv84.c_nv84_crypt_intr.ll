; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/crypt/extr_nv84.c_nv84_crypt_intr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/crypt/extr_nv84.c_nv84_crypt_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_subdev = type { i32 }
%struct.nouveau_fifo = type { i32 (%struct.nouveau_fifo*, %struct.nouveau_object*)* }
%struct.nouveau_object = type { i32 }
%struct.nouveau_engine = type { i32 }
%struct.nv84_crypt_priv = type { i32 }

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@nv84_crypt_intr_mask = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [47 x i8] c" ch %d [0x%010llx %s] mthd 0x%04x data 0x%08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nouveau_subdev*)* @nv84_crypt_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nv84_crypt_intr(%struct.nouveau_subdev* %0) #0 {
  %2 = alloca %struct.nouveau_subdev*, align 8
  %3 = alloca %struct.nouveau_fifo*, align 8
  %4 = alloca %struct.nouveau_engine*, align 8
  %5 = alloca %struct.nouveau_object*, align 8
  %6 = alloca %struct.nv84_crypt_priv*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.nouveau_subdev* %0, %struct.nouveau_subdev** %2, align 8
  %12 = load %struct.nouveau_subdev*, %struct.nouveau_subdev** %2, align 8
  %13 = call %struct.nouveau_fifo* @nouveau_fifo(%struct.nouveau_subdev* %12)
  store %struct.nouveau_fifo* %13, %struct.nouveau_fifo** %3, align 8
  %14 = load %struct.nouveau_subdev*, %struct.nouveau_subdev** %2, align 8
  %15 = call %struct.nouveau_engine* @nv_engine(%struct.nouveau_subdev* %14)
  store %struct.nouveau_engine* %15, %struct.nouveau_engine** %4, align 8
  %16 = load %struct.nouveau_subdev*, %struct.nouveau_subdev** %2, align 8
  %17 = bitcast %struct.nouveau_subdev* %16 to i8*
  %18 = bitcast i8* %17 to %struct.nv84_crypt_priv*
  store %struct.nv84_crypt_priv* %18, %struct.nv84_crypt_priv** %6, align 8
  %19 = load %struct.nv84_crypt_priv*, %struct.nv84_crypt_priv** %6, align 8
  %20 = call i32 @nv_rd32(%struct.nv84_crypt_priv* %19, i32 1057072)
  store i32 %20, i32* %7, align 4
  %21 = load %struct.nv84_crypt_priv*, %struct.nv84_crypt_priv** %6, align 8
  %22 = call i32 @nv_rd32(%struct.nv84_crypt_priv* %21, i32 1057168)
  store i32 %22, i32* %8, align 4
  %23 = load %struct.nv84_crypt_priv*, %struct.nv84_crypt_priv** %6, align 8
  %24 = call i32 @nv_rd32(%struct.nv84_crypt_priv* %23, i32 1057172)
  store i32 %24, i32* %9, align 4
  %25 = load %struct.nv84_crypt_priv*, %struct.nv84_crypt_priv** %6, align 8
  %26 = call i32 @nv_rd32(%struct.nv84_crypt_priv* %25, i32 1057160)
  %27 = and i32 %26, 2147483647
  store i32 %27, i32* %10, align 4
  %28 = load %struct.nouveau_engine*, %struct.nouveau_engine** %4, align 8
  %29 = load i32, i32* %10, align 4
  %30 = call %struct.nouveau_object* @nouveau_engctx_get(%struct.nouveau_engine* %28, i32 %29)
  store %struct.nouveau_object* %30, %struct.nouveau_object** %5, align 8
  %31 = load %struct.nouveau_fifo*, %struct.nouveau_fifo** %3, align 8
  %32 = getelementptr inbounds %struct.nouveau_fifo, %struct.nouveau_fifo* %31, i32 0, i32 0
  %33 = load i32 (%struct.nouveau_fifo*, %struct.nouveau_object*)*, i32 (%struct.nouveau_fifo*, %struct.nouveau_object*)** %32, align 8
  %34 = load %struct.nouveau_fifo*, %struct.nouveau_fifo** %3, align 8
  %35 = load %struct.nouveau_object*, %struct.nouveau_object** %5, align 8
  %36 = call i32 %33(%struct.nouveau_fifo* %34, %struct.nouveau_object* %35)
  store i32 %36, i32* %11, align 4
  %37 = load i32, i32* %7, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %53

39:                                               ; preds = %1
  %40 = load %struct.nv84_crypt_priv*, %struct.nv84_crypt_priv** %6, align 8
  %41 = call i32 @nv_error(%struct.nv84_crypt_priv* %40, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %42 = load i32, i32* @nv84_crypt_intr_mask, align 4
  %43 = load i32, i32* %7, align 4
  %44 = call i32 @nouveau_bitfield_print(i32 %42, i32 %43)
  %45 = load i32, i32* %11, align 4
  %46 = load i32, i32* %10, align 4
  %47 = shl i32 %46, 12
  %48 = load %struct.nouveau_object*, %struct.nouveau_object** %5, align 8
  %49 = call i32 @nouveau_client_name(%struct.nouveau_object* %48)
  %50 = load i32, i32* %8, align 4
  %51 = load i32, i32* %9, align 4
  %52 = call i32 @pr_cont(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0), i32 %45, i32 %47, i32 %49, i32 %50, i32 %51)
  br label %53

53:                                               ; preds = %39, %1
  %54 = load %struct.nv84_crypt_priv*, %struct.nv84_crypt_priv** %6, align 8
  %55 = load i32, i32* %7, align 4
  %56 = call i32 @nv_wr32(%struct.nv84_crypt_priv* %54, i32 1057072, i32 %55)
  %57 = load %struct.nv84_crypt_priv*, %struct.nv84_crypt_priv** %6, align 8
  %58 = call i32 @nv_wr32(%struct.nv84_crypt_priv* %57, i32 1056780, i32 16)
  %59 = load %struct.nouveau_object*, %struct.nouveau_object** %5, align 8
  %60 = call i32 @nouveau_engctx_put(%struct.nouveau_object* %59)
  ret void
}

declare dso_local %struct.nouveau_fifo* @nouveau_fifo(%struct.nouveau_subdev*) #1

declare dso_local %struct.nouveau_engine* @nv_engine(%struct.nouveau_subdev*) #1

declare dso_local i32 @nv_rd32(%struct.nv84_crypt_priv*, i32) #1

declare dso_local %struct.nouveau_object* @nouveau_engctx_get(%struct.nouveau_engine*, i32) #1

declare dso_local i32 @nv_error(%struct.nv84_crypt_priv*, i8*, i8*) #1

declare dso_local i32 @nouveau_bitfield_print(i32, i32) #1

declare dso_local i32 @pr_cont(i8*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @nouveau_client_name(%struct.nouveau_object*) #1

declare dso_local i32 @nv_wr32(%struct.nv84_crypt_priv*, i32, i32) #1

declare dso_local i32 @nouveau_engctx_put(%struct.nouveau_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
