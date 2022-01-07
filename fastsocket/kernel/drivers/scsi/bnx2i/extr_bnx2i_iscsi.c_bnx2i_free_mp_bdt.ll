; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bnx2i/extr_bnx2i_iscsi.c_bnx2i_free_mp_bdt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bnx2i/extr_bnx2i_iscsi.c_bnx2i_free_mp_bdt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2i_hba = type { i32*, i32, %struct.TYPE_2__*, i32*, i32 }
%struct.TYPE_2__ = type { i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bnx2i_hba*)* @bnx2i_free_mp_bdt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnx2i_free_mp_bdt(%struct.bnx2i_hba* %0) #0 {
  %2 = alloca %struct.bnx2i_hba*, align 8
  store %struct.bnx2i_hba* %0, %struct.bnx2i_hba** %2, align 8
  %3 = load %struct.bnx2i_hba*, %struct.bnx2i_hba** %2, align 8
  %4 = getelementptr inbounds %struct.bnx2i_hba, %struct.bnx2i_hba* %3, i32 0, i32 3
  %5 = load i32*, i32** %4, align 8
  %6 = icmp ne i32* %5, null
  br i1 %6, label %7, label %22

7:                                                ; preds = %1
  %8 = load %struct.bnx2i_hba*, %struct.bnx2i_hba** %2, align 8
  %9 = getelementptr inbounds %struct.bnx2i_hba, %struct.bnx2i_hba* %8, i32 0, i32 2
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* @PAGE_SIZE, align 4
  %13 = load %struct.bnx2i_hba*, %struct.bnx2i_hba** %2, align 8
  %14 = getelementptr inbounds %struct.bnx2i_hba, %struct.bnx2i_hba* %13, i32 0, i32 3
  %15 = load i32*, i32** %14, align 8
  %16 = load %struct.bnx2i_hba*, %struct.bnx2i_hba** %2, align 8
  %17 = getelementptr inbounds %struct.bnx2i_hba, %struct.bnx2i_hba* %16, i32 0, i32 4
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @dma_free_coherent(i32* %11, i32 %12, i32* %15, i32 %18)
  %20 = load %struct.bnx2i_hba*, %struct.bnx2i_hba** %2, align 8
  %21 = getelementptr inbounds %struct.bnx2i_hba, %struct.bnx2i_hba* %20, i32 0, i32 3
  store i32* null, i32** %21, align 8
  br label %22

22:                                               ; preds = %7, %1
  %23 = load %struct.bnx2i_hba*, %struct.bnx2i_hba** %2, align 8
  %24 = getelementptr inbounds %struct.bnx2i_hba, %struct.bnx2i_hba* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %27, label %42

27:                                               ; preds = %22
  %28 = load %struct.bnx2i_hba*, %struct.bnx2i_hba** %2, align 8
  %29 = getelementptr inbounds %struct.bnx2i_hba, %struct.bnx2i_hba* %28, i32 0, i32 2
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* @PAGE_SIZE, align 4
  %33 = load %struct.bnx2i_hba*, %struct.bnx2i_hba** %2, align 8
  %34 = getelementptr inbounds %struct.bnx2i_hba, %struct.bnx2i_hba* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = load %struct.bnx2i_hba*, %struct.bnx2i_hba** %2, align 8
  %37 = getelementptr inbounds %struct.bnx2i_hba, %struct.bnx2i_hba* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @dma_free_coherent(i32* %31, i32 %32, i32* %35, i32 %38)
  %40 = load %struct.bnx2i_hba*, %struct.bnx2i_hba** %2, align 8
  %41 = getelementptr inbounds %struct.bnx2i_hba, %struct.bnx2i_hba* %40, i32 0, i32 0
  store i32* null, i32** %41, align 8
  br label %42

42:                                               ; preds = %27, %22
  ret void
}

declare dso_local i32 @dma_free_coherent(i32*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
