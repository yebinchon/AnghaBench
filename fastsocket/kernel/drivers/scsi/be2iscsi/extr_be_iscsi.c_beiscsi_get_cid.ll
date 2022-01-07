; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/be2iscsi/extr_be_iscsi.c_beiscsi_get_cid.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/be2iscsi/extr_be_iscsi.c_beiscsi_get_cid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.beiscsi_hba = type { i16*, i64, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.beiscsi_hba*)* @beiscsi_get_cid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @beiscsi_get_cid(%struct.beiscsi_hba* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.beiscsi_hba*, align 8
  %4 = alloca i16, align 2
  store %struct.beiscsi_hba* %0, %struct.beiscsi_hba** %3, align 8
  store i16 -1, i16* %4, align 2
  %5 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %6 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %5, i32 0, i32 2
  %7 = load i32, i32* %6, align 8
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %1
  %10 = load i16, i16* %4, align 2
  %11 = zext i16 %10 to i32
  store i32 %11, i32* %2, align 4
  br label %40

12:                                               ; preds = %1
  %13 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %14 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %13, i32 0, i32 0
  %15 = load i16*, i16** %14, align 8
  %16 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %17 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = add nsw i64 %18, 1
  store i64 %19, i64* %17, align 8
  %20 = getelementptr inbounds i16, i16* %15, i64 %18
  %21 = load i16, i16* %20, align 2
  store i16 %21, i16* %4, align 2
  %22 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %23 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %26 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %25, i32 0, i32 3
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp eq i64 %24, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %12
  %31 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %32 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %31, i32 0, i32 1
  store i64 0, i64* %32, align 8
  br label %33

33:                                               ; preds = %30, %12
  %34 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %35 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = add nsw i32 %36, -1
  store i32 %37, i32* %35, align 8
  %38 = load i16, i16* %4, align 2
  %39 = zext i16 %38 to i32
  store i32 %39, i32* %2, align 4
  br label %40

40:                                               ; preds = %33, %9
  %41 = load i32, i32* %2, align 4
  ret i32 %41
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
