; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/dma/extr_shdma.c_dmae_set_reg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/dma/extr_shdma.c_dmae_set_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sh_dmae_chan = type { i32 }
%struct.sh_dmae_regs = type { i32, i32, i32 }

@SAR = common dso_local global i32 0, align 4
@DAR = common dso_local global i32 0, align 4
@TCR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sh_dmae_chan*, i64, i32)* @dmae_set_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dmae_set_reg(%struct.sh_dmae_chan* %0, i64 %1, i32 %2) #0 {
  %4 = alloca %struct.sh_dmae_regs, align 4
  %5 = alloca { i64, i32 }, align 4
  %6 = alloca %struct.sh_dmae_chan*, align 8
  %7 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %5, i32 0, i32 0
  store i64 %1, i64* %7, align 4
  %8 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %5, i32 0, i32 1
  store i32 %2, i32* %8, align 4
  %9 = bitcast %struct.sh_dmae_regs* %4 to i8*
  %10 = bitcast { i64, i32 }* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %9, i8* align 4 %10, i64 12, i1 false)
  store %struct.sh_dmae_chan* %0, %struct.sh_dmae_chan** %6, align 8
  %11 = load %struct.sh_dmae_chan*, %struct.sh_dmae_chan** %6, align 8
  %12 = getelementptr inbounds %struct.sh_dmae_regs, %struct.sh_dmae_regs* %4, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @SAR, align 4
  %15 = call i32 @sh_dmae_writel(%struct.sh_dmae_chan* %11, i32 %13, i32 %14)
  %16 = load %struct.sh_dmae_chan*, %struct.sh_dmae_chan** %6, align 8
  %17 = getelementptr inbounds %struct.sh_dmae_regs, %struct.sh_dmae_regs* %4, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @DAR, align 4
  %20 = call i32 @sh_dmae_writel(%struct.sh_dmae_chan* %16, i32 %18, i32 %19)
  %21 = load %struct.sh_dmae_chan*, %struct.sh_dmae_chan** %6, align 8
  %22 = getelementptr inbounds %struct.sh_dmae_regs, %struct.sh_dmae_regs* %4, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.sh_dmae_chan*, %struct.sh_dmae_chan** %6, align 8
  %25 = call i32 @calc_xmit_shift(%struct.sh_dmae_chan* %24)
  %26 = ashr i32 %23, %25
  %27 = load i32, i32* @TCR, align 4
  %28 = call i32 @sh_dmae_writel(%struct.sh_dmae_chan* %21, i32 %26, i32 %27)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @sh_dmae_writel(%struct.sh_dmae_chan*, i32, i32) #2

declare dso_local i32 @calc_xmit_shift(%struct.sh_dmae_chan*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
