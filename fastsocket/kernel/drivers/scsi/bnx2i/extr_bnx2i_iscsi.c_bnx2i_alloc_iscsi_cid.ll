; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bnx2i/extr_bnx2i_iscsi.c_bnx2i_alloc_iscsi_cid.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bnx2i/extr_bnx2i_iscsi.c_bnx2i_alloc_iscsi_cid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2i_hba = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bnx2i_hba*)* @bnx2i_alloc_iscsi_cid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnx2i_alloc_iscsi_cid(%struct.bnx2i_hba* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bnx2i_hba*, align 8
  %4 = alloca i32, align 4
  store %struct.bnx2i_hba* %0, %struct.bnx2i_hba** %3, align 8
  %5 = load %struct.bnx2i_hba*, %struct.bnx2i_hba** %3, align 8
  %6 = getelementptr inbounds %struct.bnx2i_hba, %struct.bnx2i_hba* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 3
  %8 = load i32, i32* %7, align 8
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %48

11:                                               ; preds = %1
  %12 = load %struct.bnx2i_hba*, %struct.bnx2i_hba** %3, align 8
  %13 = getelementptr inbounds %struct.bnx2i_hba, %struct.bnx2i_hba* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  store i32 %15, i32* %4, align 4
  %16 = load %struct.bnx2i_hba*, %struct.bnx2i_hba** %3, align 8
  %17 = getelementptr inbounds %struct.bnx2i_hba, %struct.bnx2i_hba* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %18, align 8
  %21 = load %struct.bnx2i_hba*, %struct.bnx2i_hba** %3, align 8
  %22 = getelementptr inbounds %struct.bnx2i_hba, %struct.bnx2i_hba* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.bnx2i_hba*, %struct.bnx2i_hba** %3, align 8
  %26 = getelementptr inbounds %struct.bnx2i_hba, %struct.bnx2i_hba* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = icmp eq i32 %24, %28
  br i1 %29, label %30, label %34

30:                                               ; preds = %11
  %31 = load %struct.bnx2i_hba*, %struct.bnx2i_hba** %3, align 8
  %32 = getelementptr inbounds %struct.bnx2i_hba, %struct.bnx2i_hba* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  store i32 0, i32* %33, align 8
  br label %34

34:                                               ; preds = %30, %11
  %35 = load %struct.bnx2i_hba*, %struct.bnx2i_hba** %3, align 8
  %36 = getelementptr inbounds %struct.bnx2i_hba, %struct.bnx2i_hba* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 8
  %39 = add nsw i32 %38, -1
  store i32 %39, i32* %37, align 8
  %40 = load %struct.bnx2i_hba*, %struct.bnx2i_hba** %3, align 8
  %41 = getelementptr inbounds %struct.bnx2i_hba, %struct.bnx2i_hba* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 2
  %43 = load i32*, i32** %42, align 8
  %44 = load i32, i32* %4, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  %47 = load i32, i32* %46, align 4
  store i32 %47, i32* %2, align 4
  br label %48

48:                                               ; preds = %34, %10
  %49 = load i32, i32* %2, align 4
  ret i32 %49
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
