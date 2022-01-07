; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/host/extr_wbsd.c_wbsd_dma_to_sg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/host/extr_wbsd.c_wbsd_dma_to_sg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wbsd_host = type { i8* }
%struct.mmc_data = type { i32, %struct.scatterlist* }
%struct.scatterlist = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wbsd_host*, %struct.mmc_data*)* @wbsd_dma_to_sg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wbsd_dma_to_sg(%struct.wbsd_host* %0, %struct.mmc_data* %1) #0 {
  %3 = alloca %struct.wbsd_host*, align 8
  %4 = alloca %struct.mmc_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.scatterlist*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store %struct.wbsd_host* %0, %struct.wbsd_host** %3, align 8
  store %struct.mmc_data* %1, %struct.mmc_data** %4, align 8
  %10 = load %struct.wbsd_host*, %struct.wbsd_host** %3, align 8
  %11 = getelementptr inbounds %struct.wbsd_host, %struct.wbsd_host* %10, i32 0, i32 0
  %12 = load i8*, i8** %11, align 8
  store i8* %12, i8** %8, align 8
  %13 = load %struct.mmc_data*, %struct.mmc_data** %4, align 8
  %14 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %13, i32 0, i32 1
  %15 = load %struct.scatterlist*, %struct.scatterlist** %14, align 8
  store %struct.scatterlist* %15, %struct.scatterlist** %7, align 8
  %16 = load %struct.mmc_data*, %struct.mmc_data** %4, align 8
  %17 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %19

19:                                               ; preds = %47, %2
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* %5, align 4
  %22 = icmp ult i32 %20, %21
  br i1 %22, label %23, label %50

23:                                               ; preds = %19
  %24 = load %struct.scatterlist*, %struct.scatterlist** %7, align 8
  %25 = load i32, i32* %6, align 4
  %26 = zext i32 %25 to i64
  %27 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %24, i64 %26
  %28 = call i8* @sg_virt(%struct.scatterlist* %27)
  store i8* %28, i8** %9, align 8
  %29 = load i8*, i8** %9, align 8
  %30 = load i8*, i8** %8, align 8
  %31 = load %struct.scatterlist*, %struct.scatterlist** %7, align 8
  %32 = load i32, i32* %6, align 4
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %31, i64 %33
  %35 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @memcpy(i8* %29, i8* %30, i32 %36)
  %38 = load %struct.scatterlist*, %struct.scatterlist** %7, align 8
  %39 = load i32, i32* %6, align 4
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %38, i64 %40
  %42 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i8*, i8** %8, align 8
  %45 = sext i32 %43 to i64
  %46 = getelementptr inbounds i8, i8* %44, i64 %45
  store i8* %46, i8** %8, align 8
  br label %47

47:                                               ; preds = %23
  %48 = load i32, i32* %6, align 4
  %49 = add i32 %48, 1
  store i32 %49, i32* %6, align 4
  br label %19

50:                                               ; preds = %19
  ret void
}

declare dso_local i8* @sg_virt(%struct.scatterlist*) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
