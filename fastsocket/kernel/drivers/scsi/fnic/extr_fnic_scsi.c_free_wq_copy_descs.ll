; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/fnic/extr_fnic_scsi.c_free_wq_copy_descs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/fnic/extr_fnic_scsi.c_free_wq_copy_descs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fnic = type { i32*, i64* }
%struct.vnic_wq_copy = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fnic*, %struct.vnic_wq_copy*)* @free_wq_copy_descs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @free_wq_copy_descs(%struct.fnic* %0, %struct.vnic_wq_copy* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fnic*, align 8
  %5 = alloca %struct.vnic_wq_copy*, align 8
  store %struct.fnic* %0, %struct.fnic** %4, align 8
  store %struct.vnic_wq_copy* %1, %struct.vnic_wq_copy** %5, align 8
  %6 = load %struct.fnic*, %struct.fnic** %4, align 8
  %7 = getelementptr inbounds %struct.fnic, %struct.fnic* %6, i32 0, i32 1
  %8 = load i64*, i64** %7, align 8
  %9 = getelementptr inbounds i64, i64* %8, i64 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %78

13:                                               ; preds = %2
  %14 = load %struct.vnic_wq_copy*, %struct.vnic_wq_copy** %5, align 8
  %15 = getelementptr inbounds %struct.vnic_wq_copy, %struct.vnic_wq_copy* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.fnic*, %struct.fnic** %4, align 8
  %18 = getelementptr inbounds %struct.fnic, %struct.fnic* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp sle i32 %16, %21
  br i1 %22, label %23, label %39

23:                                               ; preds = %13
  %24 = load %struct.fnic*, %struct.fnic** %4, align 8
  %25 = getelementptr inbounds %struct.fnic, %struct.fnic* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.vnic_wq_copy*, %struct.vnic_wq_copy** %5, align 8
  %30 = getelementptr inbounds %struct.vnic_wq_copy, %struct.vnic_wq_copy* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = sub nsw i32 %28, %31
  %33 = add nsw i32 %32, 1
  %34 = load %struct.vnic_wq_copy*, %struct.vnic_wq_copy** %5, align 8
  %35 = getelementptr inbounds %struct.vnic_wq_copy, %struct.vnic_wq_copy* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = add nsw i32 %37, %33
  store i32 %38, i32* %36, align 4
  br label %60

39:                                               ; preds = %13
  %40 = load %struct.vnic_wq_copy*, %struct.vnic_wq_copy** %5, align 8
  %41 = getelementptr inbounds %struct.vnic_wq_copy, %struct.vnic_wq_copy* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.vnic_wq_copy*, %struct.vnic_wq_copy** %5, align 8
  %45 = getelementptr inbounds %struct.vnic_wq_copy, %struct.vnic_wq_copy* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = sub nsw i32 %43, %46
  %48 = load %struct.fnic*, %struct.fnic** %4, align 8
  %49 = getelementptr inbounds %struct.fnic, %struct.fnic* %48, i32 0, i32 0
  %50 = load i32*, i32** %49, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 0
  %52 = load i32, i32* %51, align 4
  %53 = add nsw i32 %47, %52
  %54 = add nsw i32 %53, 1
  %55 = load %struct.vnic_wq_copy*, %struct.vnic_wq_copy** %5, align 8
  %56 = getelementptr inbounds %struct.vnic_wq_copy, %struct.vnic_wq_copy* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = add nsw i32 %58, %54
  store i32 %59, i32* %57, align 4
  br label %60

60:                                               ; preds = %39, %23
  %61 = load %struct.fnic*, %struct.fnic** %4, align 8
  %62 = getelementptr inbounds %struct.fnic, %struct.fnic* %61, i32 0, i32 0
  %63 = load i32*, i32** %62, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 0
  %65 = load i32, i32* %64, align 4
  %66 = add nsw i32 %65, 1
  %67 = load %struct.vnic_wq_copy*, %struct.vnic_wq_copy** %5, align 8
  %68 = getelementptr inbounds %struct.vnic_wq_copy, %struct.vnic_wq_copy* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = srem i32 %66, %70
  %72 = load %struct.vnic_wq_copy*, %struct.vnic_wq_copy** %5, align 8
  %73 = getelementptr inbounds %struct.vnic_wq_copy, %struct.vnic_wq_copy* %72, i32 0, i32 0
  store i32 %71, i32* %73, align 4
  %74 = load %struct.fnic*, %struct.fnic** %4, align 8
  %75 = getelementptr inbounds %struct.fnic, %struct.fnic* %74, i32 0, i32 1
  %76 = load i64*, i64** %75, align 8
  %77 = getelementptr inbounds i64, i64* %76, i64 0
  store i64 0, i64* %77, align 8
  store i32 0, i32* %3, align 4
  br label %78

78:                                               ; preds = %60, %12
  %79 = load i32, i32* %3, align 4
  ret i32 %79
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
