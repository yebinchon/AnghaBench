; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nouveau_bios.c_load_nv17_hw_sequencer_ucode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nouveau_bios.c_load_nv17_hw_sequencer_ucode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.nvbios = type { i32, i32 }

@__const.load_nv17_hw_sequencer_ucode.hwsq_signature = private unnamed_addr constant [4 x i8] c"HWSQ", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_device*, %struct.nvbios*)* @load_nv17_hw_sequencer_ucode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @load_nv17_hw_sequencer_ucode(%struct.drm_device* %0, %struct.nvbios* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca %struct.nvbios*, align 8
  %6 = alloca [4 x i8], align 1
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %4, align 8
  store %struct.nvbios* %1, %struct.nvbios** %5, align 8
  %9 = bitcast [4 x i8]* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %9, i8* align 1 getelementptr inbounds ([4 x i8], [4 x i8]* @__const.load_nv17_hw_sequencer_ucode.hwsq_signature, i32 0, i32 0), i64 4, i1 false)
  store i32 4, i32* %7, align 4
  %10 = load %struct.nvbios*, %struct.nvbios** %5, align 8
  %11 = getelementptr inbounds %struct.nvbios, %struct.nvbios* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.nvbios*, %struct.nvbios** %5, align 8
  %14 = getelementptr inbounds %struct.nvbios, %struct.nvbios* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = getelementptr inbounds [4 x i8], [4 x i8]* %6, i64 0, i64 0
  %17 = call i32 @findstr(i32 %12, i32 %15, i8* %16, i32 4)
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* %8, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %27

21:                                               ; preds = %2
  %22 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %23 = load %struct.nvbios*, %struct.nvbios** %5, align 8
  %24 = load i32, i32* %8, align 4
  %25 = add nsw i32 %24, 4
  %26 = call i32 @load_nv17_hwsq_ucode_entry(%struct.drm_device* %22, %struct.nvbios* %23, i32 %25, i32 0)
  store i32 %26, i32* %3, align 4
  br label %27

27:                                               ; preds = %21, %20
  %28 = load i32, i32* %3, align 4
  ret i32 %28
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @findstr(i32, i32, i8*, i32) #2

declare dso_local i32 @load_nv17_hwsq_ucode_entry(%struct.drm_device*, %struct.nvbios*, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
