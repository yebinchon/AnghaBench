; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/stmmac/extr_stmmac_main.c_display_ring.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/stmmac/extr_stmmac_main.c_display_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_desc = type { i32 }
%struct.tmp_s = type { i32, i32, i32 }

@.str = private unnamed_addr constant [52 x i8] c"\09%d [0x%x]: DES0=0x%x DES1=0x%x BUF1=0x%x BUF2=0x%x\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dma_desc*, i32)* @display_ring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @display_ring(%struct.dma_desc* %0, i32 %1) #0 {
  %3 = alloca %struct.dma_desc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.tmp_s*, align 8
  store %struct.dma_desc* %0, %struct.dma_desc** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %7

7:                                                ; preds = %39, %2
  %8 = load i32, i32* %5, align 4
  %9 = load i32, i32* %4, align 4
  %10 = icmp slt i32 %8, %9
  br i1 %10, label %11, label %42

11:                                               ; preds = %7
  %12 = load %struct.dma_desc*, %struct.dma_desc** %3, align 8
  %13 = load i32, i32* %5, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.dma_desc, %struct.dma_desc* %12, i64 %14
  %16 = bitcast %struct.dma_desc* %15 to %struct.tmp_s*
  store %struct.tmp_s* %16, %struct.tmp_s** %6, align 8
  %17 = load i32, i32* %5, align 4
  %18 = load %struct.dma_desc*, %struct.dma_desc** %3, align 8
  %19 = load i32, i32* %5, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.dma_desc, %struct.dma_desc* %18, i64 %20
  %22 = call i64 @virt_to_phys(%struct.dma_desc* %21)
  %23 = trunc i64 %22 to i32
  %24 = load %struct.tmp_s*, %struct.tmp_s** %6, align 8
  %25 = getelementptr inbounds %struct.tmp_s, %struct.tmp_s* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.tmp_s*, %struct.tmp_s** %6, align 8
  %28 = getelementptr inbounds %struct.tmp_s, %struct.tmp_s* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = ashr i32 %29, 32
  %31 = load %struct.tmp_s*, %struct.tmp_s** %6, align 8
  %32 = getelementptr inbounds %struct.tmp_s, %struct.tmp_s* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.tmp_s*, %struct.tmp_s** %6, align 8
  %35 = getelementptr inbounds %struct.tmp_s, %struct.tmp_s* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i32 %17, i32 %23, i32 %26, i32 %30, i32 %33, i32 %36)
  %38 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %39

39:                                               ; preds = %11
  %40 = load i32, i32* %5, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %5, align 4
  br label %7

42:                                               ; preds = %7
  ret void
}

declare dso_local i32 @pr_info(i8*, ...) #1

declare dso_local i64 @virt_to_phys(%struct.dma_desc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
