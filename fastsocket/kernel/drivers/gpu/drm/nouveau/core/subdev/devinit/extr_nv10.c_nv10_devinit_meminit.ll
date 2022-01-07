; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/devinit/extr_nv10.c_nv10_devinit_meminit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/devinit/extr_nv10.c_nv10_devinit_meminit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_devinit = type { i32 }
%struct.nv10_devinit_priv = type { i32 }
%struct.io_mapping = type { i32 }
%struct.TYPE_2__ = type { i32, i32 }

@__const.nv10_devinit_meminit.mem_width = private unnamed_addr constant [3 x i32] [i32 16, i32 0, i32 32], align 4
@.str = private unnamed_addr constant [18 x i8] c"failed to map fb\0A\00", align 1
@NV10_PFB_REFCTRL = common dso_local global i32 0, align 4
@NV10_PFB_REFCTRL_VALID_1 = common dso_local global i32 0, align 4
@NV04_PFB_CFG0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nouveau_devinit*)* @nv10_devinit_meminit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nv10_devinit_meminit(%struct.nouveau_devinit* %0) #0 {
  %2 = alloca %struct.nouveau_devinit*, align 8
  %3 = alloca %struct.nv10_devinit_priv*, align 8
  %4 = alloca [3 x i32], align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.io_mapping*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.nouveau_devinit* %0, %struct.nouveau_devinit** %2, align 8
  %12 = load %struct.nouveau_devinit*, %struct.nouveau_devinit** %2, align 8
  %13 = bitcast %struct.nouveau_devinit* %12 to i8*
  %14 = bitcast i8* %13 to %struct.nv10_devinit_priv*
  store %struct.nv10_devinit_priv* %14, %struct.nv10_devinit_priv** %3, align 8
  %15 = bitcast [3 x i32]* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %15, i8* align 4 bitcast ([3 x i32]* @__const.nv10_devinit_meminit.mem_width to i8*), i64 12, i1 false)
  %16 = load %struct.nv10_devinit_priv*, %struct.nv10_devinit_priv** %3, align 8
  %17 = call %struct.TYPE_2__* @nv_device(%struct.nv10_devinit_priv* %16)
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp sge i32 %19, 23
  %21 = zext i1 %20 to i64
  %22 = select i1 %20, i32 3, i32 2
  store i32 %22, i32* %5, align 4
  store i32 -559038737, i32* %6, align 4
  %23 = load %struct.nv10_devinit_priv*, %struct.nv10_devinit_priv** %3, align 8
  %24 = call %struct.TYPE_2__* @nv_device(%struct.nv10_devinit_priv* %23)
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call %struct.io_mapping* @fbmem_init(i32 %26)
  store %struct.io_mapping* %27, %struct.io_mapping** %7, align 8
  %28 = load %struct.io_mapping*, %struct.io_mapping** %7, align 8
  %29 = icmp ne %struct.io_mapping* %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %1
  %31 = load %struct.nv10_devinit_priv*, %struct.nv10_devinit_priv** %3, align 8
  %32 = call i32 @nv_error(%struct.nv10_devinit_priv* %31, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  br label %124

33:                                               ; preds = %1
  %34 = load %struct.nv10_devinit_priv*, %struct.nv10_devinit_priv** %3, align 8
  %35 = load i32, i32* @NV10_PFB_REFCTRL, align 4
  %36 = load i32, i32* @NV10_PFB_REFCTRL_VALID_1, align 4
  %37 = call i32 @nv_wr32(%struct.nv10_devinit_priv* %34, i32 %35, i32 %36)
  store i32 0, i32* %8, align 4
  br label %38

38:                                               ; preds = %79, %33
  %39 = load i32, i32* %8, align 4
  %40 = load i32, i32* %5, align 4
  %41 = icmp slt i32 %39, %40
  br i1 %41, label %42, label %82

42:                                               ; preds = %38
  %43 = load %struct.nv10_devinit_priv*, %struct.nv10_devinit_priv** %3, align 8
  %44 = load i32, i32* @NV04_PFB_CFG0, align 4
  %45 = load i32, i32* %8, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds [3 x i32], [3 x i32]* %4, i64 0, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @nv_mask(%struct.nv10_devinit_priv* %43, i32 %44, i32 48, i32 %48)
  store i32 0, i32* %9, align 4
  br label %50

50:                                               ; preds = %75, %42
  %51 = load i32, i32* %9, align 4
  %52 = icmp slt i32 %51, 4
  br i1 %52, label %53, label %78

53:                                               ; preds = %50
  store i32 0, i32* %10, align 4
  br label %54

54:                                               ; preds = %60, %53
  %55 = load i32, i32* %10, align 4
  %56 = icmp slt i32 %55, 4
  br i1 %56, label %57, label %63

57:                                               ; preds = %54
  %58 = load %struct.io_mapping*, %struct.io_mapping** %7, align 8
  %59 = call i32 @fbmem_poke(%struct.io_mapping* %58, i32 28, i32 0)
  br label %60

60:                                               ; preds = %57
  %61 = load i32, i32* %10, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %10, align 4
  br label %54

63:                                               ; preds = %54
  %64 = load %struct.io_mapping*, %struct.io_mapping** %7, align 8
  %65 = load i32, i32* %6, align 4
  %66 = call i32 @fbmem_poke(%struct.io_mapping* %64, i32 28, i32 %65)
  %67 = load %struct.io_mapping*, %struct.io_mapping** %7, align 8
  %68 = call i32 @fbmem_poke(%struct.io_mapping* %67, i32 60, i32 0)
  %69 = load %struct.io_mapping*, %struct.io_mapping** %7, align 8
  %70 = call i32 @fbmem_peek(%struct.io_mapping* %69, i32 28)
  %71 = load i32, i32* %6, align 4
  %72 = icmp eq i32 %70, %71
  br i1 %72, label %73, label %74

73:                                               ; preds = %63
  br label %83

74:                                               ; preds = %63
  br label %75

75:                                               ; preds = %74
  %76 = load i32, i32* %9, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %9, align 4
  br label %50

78:                                               ; preds = %50
  br label %79

79:                                               ; preds = %78
  %80 = load i32, i32* %8, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %8, align 4
  br label %38

82:                                               ; preds = %38
  br label %83

83:                                               ; preds = %82, %73
  %84 = load i32, i32* %6, align 4
  %85 = shl i32 %84, 1
  store i32 %85, i32* %6, align 4
  store i32 0, i32* %8, align 4
  br label %86

86:                                               ; preds = %114, %83
  %87 = load i32, i32* %8, align 4
  %88 = icmp slt i32 %87, 4
  br i1 %88, label %89, label %117

89:                                               ; preds = %86
  %90 = load %struct.nv10_devinit_priv*, %struct.nv10_devinit_priv** %3, align 8
  %91 = call i32 @nv_rd32(%struct.nv10_devinit_priv* %90, i32 1049100)
  %92 = sub nsw i32 %91, 1048576
  store i32 %92, i32* %11, align 4
  %93 = load %struct.io_mapping*, %struct.io_mapping** %7, align 8
  %94 = load i32, i32* %11, align 4
  %95 = load i32, i32* %6, align 4
  %96 = call i32 @fbmem_poke(%struct.io_mapping* %93, i32 %94, i32 %95)
  %97 = load %struct.io_mapping*, %struct.io_mapping** %7, align 8
  %98 = call i32 @fbmem_poke(%struct.io_mapping* %97, i32 0, i32 0)
  %99 = load %struct.io_mapping*, %struct.io_mapping** %7, align 8
  %100 = call i32 @fbmem_peek(%struct.io_mapping* %99, i32 0)
  %101 = load %struct.io_mapping*, %struct.io_mapping** %7, align 8
  %102 = call i32 @fbmem_peek(%struct.io_mapping* %101, i32 0)
  %103 = load %struct.io_mapping*, %struct.io_mapping** %7, align 8
  %104 = call i32 @fbmem_peek(%struct.io_mapping* %103, i32 0)
  %105 = load %struct.io_mapping*, %struct.io_mapping** %7, align 8
  %106 = call i32 @fbmem_peek(%struct.io_mapping* %105, i32 0)
  %107 = load %struct.io_mapping*, %struct.io_mapping** %7, align 8
  %108 = load i32, i32* %11, align 4
  %109 = call i32 @fbmem_peek(%struct.io_mapping* %107, i32 %108)
  %110 = load i32, i32* %6, align 4
  %111 = icmp eq i32 %109, %110
  br i1 %111, label %112, label %113

112:                                              ; preds = %89
  br label %121

113:                                              ; preds = %89
  br label %114

114:                                              ; preds = %113
  %115 = load i32, i32* %8, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %8, align 4
  br label %86

117:                                              ; preds = %86
  %118 = load %struct.nv10_devinit_priv*, %struct.nv10_devinit_priv** %3, align 8
  %119 = load i32, i32* @NV04_PFB_CFG0, align 4
  %120 = call i32 @nv_mask(%struct.nv10_devinit_priv* %118, i32 %119, i32 4096, i32 0)
  br label %121

121:                                              ; preds = %117, %112
  %122 = load %struct.io_mapping*, %struct.io_mapping** %7, align 8
  %123 = call i32 @fbmem_fini(%struct.io_mapping* %122)
  br label %124

124:                                              ; preds = %121, %30
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local %struct.TYPE_2__* @nv_device(%struct.nv10_devinit_priv*) #2

declare dso_local %struct.io_mapping* @fbmem_init(i32) #2

declare dso_local i32 @nv_error(%struct.nv10_devinit_priv*, i8*) #2

declare dso_local i32 @nv_wr32(%struct.nv10_devinit_priv*, i32, i32) #2

declare dso_local i32 @nv_mask(%struct.nv10_devinit_priv*, i32, i32, i32) #2

declare dso_local i32 @fbmem_poke(%struct.io_mapping*, i32, i32) #2

declare dso_local i32 @fbmem_peek(%struct.io_mapping*, i32) #2

declare dso_local i32 @nv_rd32(%struct.nv10_devinit_priv*, i32) #2

declare dso_local i32 @fbmem_fini(%struct.io_mapping*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
