; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/vm/extr_nv50.c_nv50_vm_map.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/vm/extr_nv50.c_nv50_vm_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_vma = type { %struct.TYPE_9__*, %struct.TYPE_7__* }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.nouveau_gpuobj = type { i32 }
%struct.nouveau_mem = type { i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_10__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nouveau_vma*, %struct.nouveau_gpuobj*, %struct.nouveau_mem*, i32, i32, i32, i32)* @nv50_vm_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nv50_vm_map(%struct.nouveau_vma* %0, %struct.nouveau_gpuobj* %1, %struct.nouveau_mem* %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca %struct.nouveau_vma*, align 8
  %9 = alloca %struct.nouveau_gpuobj*, align 8
  %10 = alloca %struct.nouveau_mem*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.nouveau_vma* %0, %struct.nouveau_vma** %8, align 8
  store %struct.nouveau_gpuobj* %1, %struct.nouveau_gpuobj** %9, align 8
  store %struct.nouveau_mem* %2, %struct.nouveau_mem** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %22 = load %struct.nouveau_mem*, %struct.nouveau_mem** %10, align 8
  %23 = getelementptr inbounds %struct.nouveau_mem, %struct.nouveau_mem* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = and i32 %24, 384
  %26 = ashr i32 %25, 7
  store i32 %26, i32* %15, align 4
  store i32 0, i32* %17, align 4
  %27 = load %struct.nouveau_vma*, %struct.nouveau_vma** %8, align 8
  %28 = getelementptr inbounds %struct.nouveau_vma, %struct.nouveau_vma* %27, i32 0, i32 1
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call %struct.TYPE_10__* @nouveau_fb(i32 %31)
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %51

37:                                               ; preds = %7
  %38 = load %struct.nouveau_vma*, %struct.nouveau_vma** %8, align 8
  %39 = getelementptr inbounds %struct.nouveau_vma, %struct.nouveau_vma* %38, i32 0, i32 1
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call %struct.TYPE_10__* @nouveau_fb(i32 %42)
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i32, i32* %13, align 4
  %48 = sext i32 %47 to i64
  %49 = add nsw i64 %48, %46
  %50 = trunc i64 %49 to i32
  store i32 %50, i32* %13, align 4
  store i32 3, i32* %17, align 4
  br label %51

51:                                               ; preds = %37, %7
  %52 = load %struct.nouveau_vma*, %struct.nouveau_vma** %8, align 8
  %53 = load i32, i32* %13, align 4
  %54 = load %struct.nouveau_mem*, %struct.nouveau_mem** %10, align 8
  %55 = getelementptr inbounds %struct.nouveau_mem, %struct.nouveau_mem* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* %17, align 4
  %58 = call i32 @vm_addr(%struct.nouveau_vma* %52, i32 %53, i32 %56, i32 %57)
  store i32 %58, i32* %13, align 4
  %59 = load i32, i32* %11, align 4
  %60 = shl i32 %59, 3
  store i32 %60, i32* %11, align 4
  %61 = load i32, i32* %12, align 4
  %62 = shl i32 %61, 3
  store i32 %62, i32* %12, align 4
  br label %63

63:                                               ; preds = %156, %51
  %64 = load i32, i32* %12, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %157

66:                                               ; preds = %63
  %67 = load i32, i32* %13, align 4
  %68 = call i32 @upper_32_bits(i32 %67)
  store i32 %68, i32* %19, align 4
  %69 = load i32, i32* %13, align 4
  %70 = call i32 @lower_32_bits(i32 %69)
  store i32 %70, i32* %20, align 4
  store i32 7, i32* %18, align 4
  br label %71

71:                                               ; preds = %89, %66
  %72 = load i32, i32* %18, align 4
  %73 = icmp sge i32 %72, 0
  br i1 %73, label %74, label %92

74:                                               ; preds = %71
  %75 = load i32, i32* %18, align 4
  %76 = add nsw i32 %75, 3
  %77 = shl i32 1, %76
  store i32 %77, i32* %16, align 4
  %78 = load i32, i32* %12, align 4
  %79 = load i32, i32* %16, align 4
  %80 = icmp sge i32 %78, %79
  br i1 %80, label %81, label %88

81:                                               ; preds = %74
  %82 = load i32, i32* %11, align 4
  %83 = load i32, i32* %16, align 4
  %84 = sub nsw i32 %83, 1
  %85 = and i32 %82, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %88, label %87

87:                                               ; preds = %81
  br label %92

88:                                               ; preds = %81, %74
  br label %89

89:                                               ; preds = %88
  %90 = load i32, i32* %18, align 4
  %91 = add nsw i32 %90, -1
  store i32 %91, i32* %18, align 4
  br label %71

92:                                               ; preds = %87, %71
  %93 = load i32, i32* %18, align 4
  %94 = shl i32 %93, 7
  %95 = load i32, i32* %20, align 4
  %96 = or i32 %95, %94
  store i32 %96, i32* %20, align 4
  %97 = load i32, i32* %16, align 4
  %98 = load %struct.nouveau_vma*, %struct.nouveau_vma** %8, align 8
  %99 = getelementptr inbounds %struct.nouveau_vma, %struct.nouveau_vma* %98, i32 0, i32 0
  %100 = load %struct.TYPE_9__*, %struct.TYPE_9__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = sub nsw i32 %102, 3
  %104 = shl i32 %97, %103
  %105 = load i32, i32* %13, align 4
  %106 = add nsw i32 %105, %104
  store i32 %106, i32* %13, align 4
  %107 = load i32, i32* %16, align 4
  %108 = load i32, i32* %12, align 4
  %109 = sub nsw i32 %108, %107
  store i32 %109, i32* %12, align 4
  %110 = load i32, i32* %15, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %137

112:                                              ; preds = %92
  %113 = load %struct.nouveau_mem*, %struct.nouveau_mem** %10, align 8
  %114 = getelementptr inbounds %struct.nouveau_mem, %struct.nouveau_mem* %113, i32 0, i32 1
  %115 = load %struct.TYPE_8__*, %struct.TYPE_8__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = load i32, i32* %14, align 4
  %119 = ashr i32 %118, 16
  %120 = load i32, i32* %15, align 4
  %121 = mul nsw i32 %119, %120
  %122 = add nsw i32 %117, %121
  store i32 %122, i32* %21, align 4
  %123 = load i32, i32* %21, align 4
  %124 = shl i32 %123, 17
  %125 = load i32, i32* %19, align 4
  %126 = or i32 %125, %124
  store i32 %126, i32* %19, align 4
  %127 = load i32, i32* %16, align 4
  %128 = load %struct.nouveau_vma*, %struct.nouveau_vma** %8, align 8
  %129 = getelementptr inbounds %struct.nouveau_vma, %struct.nouveau_vma* %128, i32 0, i32 0
  %130 = load %struct.TYPE_9__*, %struct.TYPE_9__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = sub nsw i32 %132, 3
  %134 = shl i32 %127, %133
  %135 = load i32, i32* %14, align 4
  %136 = add nsw i32 %135, %134
  store i32 %136, i32* %14, align 4
  br label %137

137:                                              ; preds = %112, %92
  br label %138

138:                                              ; preds = %141, %137
  %139 = load i32, i32* %16, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %156

141:                                              ; preds = %138
  %142 = load %struct.nouveau_gpuobj*, %struct.nouveau_gpuobj** %9, align 8
  %143 = load i32, i32* %11, align 4
  %144 = add nsw i32 %143, 0
  %145 = load i32, i32* %20, align 4
  %146 = call i32 @nv_wo32(%struct.nouveau_gpuobj* %142, i32 %144, i32 %145)
  %147 = load %struct.nouveau_gpuobj*, %struct.nouveau_gpuobj** %9, align 8
  %148 = load i32, i32* %11, align 4
  %149 = add nsw i32 %148, 4
  %150 = load i32, i32* %19, align 4
  %151 = call i32 @nv_wo32(%struct.nouveau_gpuobj* %147, i32 %149, i32 %150)
  %152 = load i32, i32* %11, align 4
  %153 = add nsw i32 %152, 8
  store i32 %153, i32* %11, align 4
  %154 = load i32, i32* %16, align 4
  %155 = sub nsw i32 %154, 8
  store i32 %155, i32* %16, align 4
  br label %138

156:                                              ; preds = %138
  br label %63

157:                                              ; preds = %63
  ret void
}

declare dso_local %struct.TYPE_10__* @nouveau_fb(i32) #1

declare dso_local i32 @vm_addr(%struct.nouveau_vma*, i32, i32, i32) #1

declare dso_local i32 @upper_32_bits(i32) #1

declare dso_local i32 @lower_32_bits(i32) #1

declare dso_local i32 @nv_wo32(%struct.nouveau_gpuobj*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
