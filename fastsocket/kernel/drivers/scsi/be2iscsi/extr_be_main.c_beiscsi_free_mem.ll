; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/be2iscsi/extr_be_main.c_beiscsi_free_mem.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/be2iscsi/extr_be_main.c_beiscsi_free_mem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.beiscsi_hba = type { %struct.be_mem_descriptor*, %struct.be_mem_descriptor*, i32 }
%struct.be_mem_descriptor = type { i32, %struct.be_mem_descriptor*, %struct.be_mem_descriptor*, %struct.TYPE_6__, i32, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }

@SE_MEM_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.beiscsi_hba*)* @beiscsi_free_mem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @beiscsi_free_mem(%struct.beiscsi_hba* %0) #0 {
  %2 = alloca %struct.beiscsi_hba*, align 8
  %3 = alloca %struct.be_mem_descriptor*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.beiscsi_hba* %0, %struct.beiscsi_hba** %2, align 8
  %6 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %2, align 8
  %7 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %6, i32 0, i32 1
  %8 = load %struct.be_mem_descriptor*, %struct.be_mem_descriptor** %7, align 8
  store %struct.be_mem_descriptor* %8, %struct.be_mem_descriptor** %3, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %4, align 4
  br label %9

9:                                                ; preds = %65, %1
  %10 = load i32, i32* %4, align 4
  %11 = load i32, i32* @SE_MEM_MAX, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %68

13:                                               ; preds = %9
  %14 = load %struct.be_mem_descriptor*, %struct.be_mem_descriptor** %3, align 8
  %15 = getelementptr inbounds %struct.be_mem_descriptor, %struct.be_mem_descriptor* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %5, align 4
  br label %17

17:                                               ; preds = %55, %13
  %18 = load i32, i32* %5, align 4
  %19 = icmp sgt i32 %18, 0
  br i1 %19, label %20, label %58

20:                                               ; preds = %17
  %21 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %2, align 8
  %22 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.be_mem_descriptor*, %struct.be_mem_descriptor** %3, align 8
  %25 = getelementptr inbounds %struct.be_mem_descriptor, %struct.be_mem_descriptor* %24, i32 0, i32 2
  %26 = load %struct.be_mem_descriptor*, %struct.be_mem_descriptor** %25, align 8
  %27 = load i32, i32* %5, align 4
  %28 = sub nsw i32 %27, 1
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.be_mem_descriptor, %struct.be_mem_descriptor* %26, i64 %29
  %31 = getelementptr inbounds %struct.be_mem_descriptor, %struct.be_mem_descriptor* %30, i32 0, i32 5
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.be_mem_descriptor*, %struct.be_mem_descriptor** %3, align 8
  %34 = getelementptr inbounds %struct.be_mem_descriptor, %struct.be_mem_descriptor* %33, i32 0, i32 2
  %35 = load %struct.be_mem_descriptor*, %struct.be_mem_descriptor** %34, align 8
  %36 = load i32, i32* %5, align 4
  %37 = sub nsw i32 %36, 1
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.be_mem_descriptor, %struct.be_mem_descriptor* %35, i64 %38
  %40 = getelementptr inbounds %struct.be_mem_descriptor, %struct.be_mem_descriptor* %39, i32 0, i32 4
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.be_mem_descriptor*, %struct.be_mem_descriptor** %3, align 8
  %43 = getelementptr inbounds %struct.be_mem_descriptor, %struct.be_mem_descriptor* %42, i32 0, i32 2
  %44 = load %struct.be_mem_descriptor*, %struct.be_mem_descriptor** %43, align 8
  %45 = load i32, i32* %5, align 4
  %46 = sub nsw i32 %45, 1
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.be_mem_descriptor, %struct.be_mem_descriptor* %44, i64 %47
  %49 = getelementptr inbounds %struct.be_mem_descriptor, %struct.be_mem_descriptor* %48, i32 0, i32 3
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = call i32 @pci_free_consistent(i32 %23, i32 %32, i32 %41, i64 %53)
  br label %55

55:                                               ; preds = %20
  %56 = load i32, i32* %5, align 4
  %57 = add nsw i32 %56, -1
  store i32 %57, i32* %5, align 4
  br label %17

58:                                               ; preds = %17
  %59 = load %struct.be_mem_descriptor*, %struct.be_mem_descriptor** %3, align 8
  %60 = getelementptr inbounds %struct.be_mem_descriptor, %struct.be_mem_descriptor* %59, i32 0, i32 2
  %61 = load %struct.be_mem_descriptor*, %struct.be_mem_descriptor** %60, align 8
  %62 = call i32 @kfree(%struct.be_mem_descriptor* %61)
  %63 = load %struct.be_mem_descriptor*, %struct.be_mem_descriptor** %3, align 8
  %64 = getelementptr inbounds %struct.be_mem_descriptor, %struct.be_mem_descriptor* %63, i32 1
  store %struct.be_mem_descriptor* %64, %struct.be_mem_descriptor** %3, align 8
  br label %65

65:                                               ; preds = %58
  %66 = load i32, i32* %4, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %4, align 4
  br label %9

68:                                               ; preds = %9
  %69 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %2, align 8
  %70 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %69, i32 0, i32 1
  %71 = load %struct.be_mem_descriptor*, %struct.be_mem_descriptor** %70, align 8
  %72 = call i32 @kfree(%struct.be_mem_descriptor* %71)
  %73 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %2, align 8
  %74 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %73, i32 0, i32 0
  %75 = load %struct.be_mem_descriptor*, %struct.be_mem_descriptor** %74, align 8
  %76 = getelementptr inbounds %struct.be_mem_descriptor, %struct.be_mem_descriptor* %75, i32 0, i32 1
  %77 = load %struct.be_mem_descriptor*, %struct.be_mem_descriptor** %76, align 8
  %78 = call i32 @kfree(%struct.be_mem_descriptor* %77)
  %79 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %2, align 8
  %80 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %79, i32 0, i32 0
  %81 = load %struct.be_mem_descriptor*, %struct.be_mem_descriptor** %80, align 8
  %82 = call i32 @kfree(%struct.be_mem_descriptor* %81)
  ret void
}

declare dso_local i32 @pci_free_consistent(i32, i32, i32, i64) #1

declare dso_local i32 @kfree(%struct.be_mem_descriptor*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
