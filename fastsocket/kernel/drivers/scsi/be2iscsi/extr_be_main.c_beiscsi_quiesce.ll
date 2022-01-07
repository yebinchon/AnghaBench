; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/be2iscsi/extr_be_main.c_beiscsi_quiesce.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/be2iscsi/extr_be_main.c_beiscsi_quiesce.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.beiscsi_hba = type { i32, i32, %struct.TYPE_8__, %struct.TYPE_9__*, i32, i32, i32*, %struct.TYPE_6__*, i64, %struct.hwi_controller* }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32, i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.hwi_controller = type { %struct.hwi_context_memory* }
%struct.hwi_context_memory = type { %struct.beiscsi_hba* }
%struct.be_eq_obj = type { i32, i32, %struct.TYPE_8__, %struct.TYPE_9__*, i32, i32, i32*, %struct.TYPE_6__*, i64, %struct.hwi_controller* }

@blk_iopoll_enabled = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.beiscsi_hba*)* @beiscsi_quiesce to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @beiscsi_quiesce(%struct.beiscsi_hba* %0) #0 {
  %2 = alloca %struct.beiscsi_hba*, align 8
  %3 = alloca %struct.hwi_controller*, align 8
  %4 = alloca %struct.hwi_context_memory*, align 8
  %5 = alloca %struct.be_eq_obj*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.beiscsi_hba* %0, %struct.beiscsi_hba** %2, align 8
  %8 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %2, align 8
  %9 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %8, i32 0, i32 9
  %10 = load %struct.hwi_controller*, %struct.hwi_controller** %9, align 8
  store %struct.hwi_controller* %10, %struct.hwi_controller** %3, align 8
  %11 = load %struct.hwi_controller*, %struct.hwi_controller** %3, align 8
  %12 = getelementptr inbounds %struct.hwi_controller, %struct.hwi_controller* %11, i32 0, i32 0
  %13 = load %struct.hwi_context_memory*, %struct.hwi_context_memory** %12, align 8
  store %struct.hwi_context_memory* %13, %struct.hwi_context_memory** %4, align 8
  %14 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %2, align 8
  %15 = call i32 @hwi_disable_intr(%struct.beiscsi_hba* %14)
  %16 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %2, align 8
  %17 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %16, i32 0, i32 8
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %56

20:                                               ; preds = %1
  store i32 0, i32* %6, align 4
  br label %21

21:                                               ; preds = %52, %20
  %22 = load i32, i32* %6, align 4
  %23 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %2, align 8
  %24 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp ule i32 %22, %25
  br i1 %26, label %27, label %55

27:                                               ; preds = %21
  %28 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %2, align 8
  %29 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %28, i32 0, i32 7
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %29, align 8
  %31 = load i32, i32* %6, align 4
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %7, align 4
  %36 = load i32, i32* %7, align 4
  %37 = load %struct.hwi_context_memory*, %struct.hwi_context_memory** %4, align 8
  %38 = getelementptr inbounds %struct.hwi_context_memory, %struct.hwi_context_memory* %37, i32 0, i32 0
  %39 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %38, align 8
  %40 = load i32, i32* %6, align 4
  %41 = zext i32 %40 to i64
  %42 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %39, i64 %41
  %43 = call i32 @free_irq(i32 %36, %struct.beiscsi_hba* %42)
  %44 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %2, align 8
  %45 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %44, i32 0, i32 6
  %46 = load i32*, i32** %45, align 8
  %47 = load i32, i32* %6, align 4
  %48 = zext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @kfree(i32 %50)
  br label %52

52:                                               ; preds = %27
  %53 = load i32, i32* %6, align 4
  %54 = add i32 %53, 1
  store i32 %54, i32* %6, align 4
  br label %21

55:                                               ; preds = %21
  br label %72

56:                                               ; preds = %1
  %57 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %2, align 8
  %58 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %57, i32 0, i32 3
  %59 = load %struct.TYPE_9__*, %struct.TYPE_9__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %71

63:                                               ; preds = %56
  %64 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %2, align 8
  %65 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %64, i32 0, i32 3
  %66 = load %struct.TYPE_9__*, %struct.TYPE_9__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %2, align 8
  %70 = call i32 @free_irq(i32 %68, %struct.beiscsi_hba* %69)
  br label %71

71:                                               ; preds = %63, %56
  br label %72

72:                                               ; preds = %71, %55
  %73 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %2, align 8
  %74 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %73, i32 0, i32 3
  %75 = load %struct.TYPE_9__*, %struct.TYPE_9__** %74, align 8
  %76 = call i32 @pci_disable_msix(%struct.TYPE_9__* %75)
  %77 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %2, align 8
  %78 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %77, i32 0, i32 5
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @destroy_workqueue(i32 %79)
  %81 = load i64, i64* @blk_iopoll_enabled, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %105

83:                                               ; preds = %72
  store i32 0, i32* %6, align 4
  br label %84

84:                                               ; preds = %101, %83
  %85 = load i32, i32* %6, align 4
  %86 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %2, align 8
  %87 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = icmp ult i32 %85, %88
  br i1 %89, label %90, label %104

90:                                               ; preds = %84
  %91 = load %struct.hwi_context_memory*, %struct.hwi_context_memory** %4, align 8
  %92 = getelementptr inbounds %struct.hwi_context_memory, %struct.hwi_context_memory* %91, i32 0, i32 0
  %93 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %92, align 8
  %94 = load i32, i32* %6, align 4
  %95 = zext i32 %94 to i64
  %96 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %93, i64 %95
  %97 = bitcast %struct.beiscsi_hba* %96 to %struct.be_eq_obj*
  store %struct.be_eq_obj* %97, %struct.be_eq_obj** %5, align 8
  %98 = load %struct.be_eq_obj*, %struct.be_eq_obj** %5, align 8
  %99 = getelementptr inbounds %struct.be_eq_obj, %struct.be_eq_obj* %98, i32 0, i32 4
  %100 = call i32 @blk_iopoll_disable(i32* %99)
  br label %101

101:                                              ; preds = %90
  %102 = load i32, i32* %6, align 4
  %103 = add i32 %102, 1
  store i32 %103, i32* %6, align 4
  br label %84

104:                                              ; preds = %84
  br label %105

105:                                              ; preds = %104, %72
  %106 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %2, align 8
  %107 = call i32 @beiscsi_clean_port(%struct.beiscsi_hba* %106)
  %108 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %2, align 8
  %109 = call i32 @beiscsi_free_mem(%struct.beiscsi_hba* %108)
  %110 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %2, align 8
  %111 = call i32 @beiscsi_unmap_pci_function(%struct.beiscsi_hba* %110)
  %112 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %2, align 8
  %113 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %112, i32 0, i32 3
  %114 = load %struct.TYPE_9__*, %struct.TYPE_9__** %113, align 8
  %115 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %2, align 8
  %116 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %115, i32 0, i32 2
  %117 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 8
  %120 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %2, align 8
  %121 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %120, i32 0, i32 2
  %122 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %2, align 8
  %126 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %125, i32 0, i32 2
  %127 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = call i32 @pci_free_consistent(%struct.TYPE_9__* %114, i32 %119, i32 %124, i32 %129)
  %131 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %2, align 8
  %132 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %131, i32 0, i32 1
  %133 = call i32 @cancel_delayed_work_sync(i32* %132)
  ret void
}

declare dso_local i32 @hwi_disable_intr(%struct.beiscsi_hba*) #1

declare dso_local i32 @free_irq(i32, %struct.beiscsi_hba*) #1

declare dso_local i32 @kfree(i32) #1

declare dso_local i32 @pci_disable_msix(%struct.TYPE_9__*) #1

declare dso_local i32 @destroy_workqueue(i32) #1

declare dso_local i32 @blk_iopoll_disable(i32*) #1

declare dso_local i32 @beiscsi_clean_port(%struct.beiscsi_hba*) #1

declare dso_local i32 @beiscsi_free_mem(%struct.beiscsi_hba*) #1

declare dso_local i32 @beiscsi_unmap_pci_function(%struct.beiscsi_hba*) #1

declare dso_local i32 @pci_free_consistent(%struct.TYPE_9__*, i32, i32, i32) #1

declare dso_local i32 @cancel_delayed_work_sync(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
