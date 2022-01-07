; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_init.c_lpfc_sli4_create_rpi_hdr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_init.c_lpfc_sli4_create_rpi_hdr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_rpi_hdr = type { i32, i32, i32, i32, %struct.lpfc_dmabuf* }
%struct.lpfc_dmabuf = type { i32, i32 }
%struct.lpfc_hba = type { %struct.TYPE_6__*, i32, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32, i32, %struct.TYPE_4__, i64, i32 }
%struct.TYPE_4__ = type { i32, i32 }

@LPFC_RPI_HDR_COUNT = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@LPFC_HDR_TEMPLATE_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.lpfc_rpi_hdr* @lpfc_sli4_create_rpi_hdr(%struct.lpfc_hba* %0) #0 {
  %2 = alloca %struct.lpfc_rpi_hdr*, align 8
  %3 = alloca %struct.lpfc_hba*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.lpfc_dmabuf*, align 8
  %7 = alloca %struct.lpfc_rpi_hdr*, align 8
  %8 = alloca i32, align 4
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %3, align 8
  %9 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %10 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %9, i32 0, i32 2
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 4
  %12 = load i32, i32* %11, align 8
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %1
  store %struct.lpfc_rpi_hdr* null, %struct.lpfc_rpi_hdr** %2, align 8
  br label %152

15:                                               ; preds = %1
  %16 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %17 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %16, i32 0, i32 2
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 3
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %15
  store %struct.lpfc_rpi_hdr* null, %struct.lpfc_rpi_hdr** %2, align 8
  br label %152

22:                                               ; preds = %15
  %23 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %24 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %23, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %29 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %28, i32 0, i32 2
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 2
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = add nsw i32 %27, %32
  %34 = sub nsw i32 %33, 1
  store i32 %34, i32* %4, align 4
  %35 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %36 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %35, i32 0, i32 1
  %37 = call i32 @spin_lock_irq(i32* %36)
  %38 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %39 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %38, i32 0, i32 2
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  store i32 %41, i32* %5, align 4
  %42 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %43 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %42, i32 0, i32 1
  %44 = call i32 @spin_unlock_irq(i32* %43)
  %45 = load i32, i32* %5, align 4
  %46 = load i32, i32* @LPFC_RPI_HDR_COUNT, align 4
  %47 = sub nsw i32 %46, 1
  %48 = add nsw i32 %45, %47
  %49 = load i32, i32* %4, align 4
  %50 = icmp sgt i32 %48, %49
  br i1 %50, label %51, label %55

51:                                               ; preds = %22
  %52 = load i32, i32* %4, align 4
  %53 = load i32, i32* %5, align 4
  %54 = sub nsw i32 %52, %53
  store i32 %54, i32* %8, align 4
  br label %57

55:                                               ; preds = %22
  %56 = load i32, i32* @LPFC_RPI_HDR_COUNT, align 4
  store i32 %56, i32* %8, align 4
  br label %57

57:                                               ; preds = %55, %51
  %58 = load i32, i32* %8, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %61, label %60

60:                                               ; preds = %57
  store %struct.lpfc_rpi_hdr* null, %struct.lpfc_rpi_hdr** %2, align 8
  br label %152

61:                                               ; preds = %57
  %62 = load i32, i32* @GFP_KERNEL, align 4
  %63 = call i8* @kzalloc(i32 8, i32 %62)
  %64 = bitcast i8* %63 to %struct.lpfc_dmabuf*
  store %struct.lpfc_dmabuf* %64, %struct.lpfc_dmabuf** %6, align 8
  %65 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %6, align 8
  %66 = icmp ne %struct.lpfc_dmabuf* %65, null
  br i1 %66, label %68, label %67

67:                                               ; preds = %61
  store %struct.lpfc_rpi_hdr* null, %struct.lpfc_rpi_hdr** %2, align 8
  br label %152

68:                                               ; preds = %61
  %69 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %70 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %69, i32 0, i32 0
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 0
  %73 = load i32, i32* @LPFC_HDR_TEMPLATE_SIZE, align 4
  %74 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %6, align 8
  %75 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %74, i32 0, i32 0
  %76 = load i32, i32* @GFP_KERNEL, align 4
  %77 = call i32 @dma_alloc_coherent(i32* %72, i32 %73, i32* %75, i32 %76)
  %78 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %6, align 8
  %79 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %78, i32 0, i32 1
  store i32 %77, i32* %79, align 4
  %80 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %6, align 8
  %81 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %85, label %84

84:                                               ; preds = %68
  store %struct.lpfc_rpi_hdr* null, %struct.lpfc_rpi_hdr** %7, align 8
  br label %149

85:                                               ; preds = %68
  %86 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %6, align 8
  %87 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* @LPFC_HDR_TEMPLATE_SIZE, align 4
  %90 = call i32 @memset(i32 %88, i32 0, i32 %89)
  %91 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %6, align 8
  %92 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* @LPFC_HDR_TEMPLATE_SIZE, align 4
  %95 = call i32 @IS_ALIGNED(i32 %93, i32 %94)
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %98, label %97

97:                                               ; preds = %85
  store %struct.lpfc_rpi_hdr* null, %struct.lpfc_rpi_hdr** %7, align 8
  br label %136

98:                                               ; preds = %85
  %99 = load i32, i32* @GFP_KERNEL, align 4
  %100 = call i8* @kzalloc(i32 24, i32 %99)
  %101 = bitcast i8* %100 to %struct.lpfc_rpi_hdr*
  store %struct.lpfc_rpi_hdr* %101, %struct.lpfc_rpi_hdr** %7, align 8
  %102 = load %struct.lpfc_rpi_hdr*, %struct.lpfc_rpi_hdr** %7, align 8
  %103 = icmp ne %struct.lpfc_rpi_hdr* %102, null
  br i1 %103, label %105, label %104

104:                                              ; preds = %98
  br label %136

105:                                              ; preds = %98
  %106 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %6, align 8
  %107 = load %struct.lpfc_rpi_hdr*, %struct.lpfc_rpi_hdr** %7, align 8
  %108 = getelementptr inbounds %struct.lpfc_rpi_hdr, %struct.lpfc_rpi_hdr* %107, i32 0, i32 4
  store %struct.lpfc_dmabuf* %106, %struct.lpfc_dmabuf** %108, align 8
  %109 = load i32, i32* @LPFC_HDR_TEMPLATE_SIZE, align 4
  %110 = load %struct.lpfc_rpi_hdr*, %struct.lpfc_rpi_hdr** %7, align 8
  %111 = getelementptr inbounds %struct.lpfc_rpi_hdr, %struct.lpfc_rpi_hdr* %110, i32 0, i32 3
  store i32 %109, i32* %111, align 4
  %112 = load %struct.lpfc_rpi_hdr*, %struct.lpfc_rpi_hdr** %7, align 8
  %113 = getelementptr inbounds %struct.lpfc_rpi_hdr, %struct.lpfc_rpi_hdr* %112, i32 0, i32 0
  store i32 1, i32* %113, align 8
  %114 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %115 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %114, i32 0, i32 1
  %116 = call i32 @spin_lock_irq(i32* %115)
  %117 = load i32, i32* %5, align 4
  %118 = load %struct.lpfc_rpi_hdr*, %struct.lpfc_rpi_hdr** %7, align 8
  %119 = getelementptr inbounds %struct.lpfc_rpi_hdr, %struct.lpfc_rpi_hdr* %118, i32 0, i32 1
  store i32 %117, i32* %119, align 4
  %120 = load %struct.lpfc_rpi_hdr*, %struct.lpfc_rpi_hdr** %7, align 8
  %121 = getelementptr inbounds %struct.lpfc_rpi_hdr, %struct.lpfc_rpi_hdr* %120, i32 0, i32 2
  %122 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %123 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %122, i32 0, i32 2
  %124 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %123, i32 0, i32 1
  %125 = call i32 @list_add_tail(i32* %121, i32* %124)
  %126 = load i32, i32* %8, align 4
  %127 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %128 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %127, i32 0, i32 2
  %129 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = add nsw i32 %130, %126
  store i32 %131, i32* %129, align 8
  %132 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %133 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %132, i32 0, i32 1
  %134 = call i32 @spin_unlock_irq(i32* %133)
  %135 = load %struct.lpfc_rpi_hdr*, %struct.lpfc_rpi_hdr** %7, align 8
  store %struct.lpfc_rpi_hdr* %135, %struct.lpfc_rpi_hdr** %2, align 8
  br label %152

136:                                              ; preds = %104, %97
  %137 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %138 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %137, i32 0, i32 0
  %139 = load %struct.TYPE_6__*, %struct.TYPE_6__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %139, i32 0, i32 0
  %141 = load i32, i32* @LPFC_HDR_TEMPLATE_SIZE, align 4
  %142 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %6, align 8
  %143 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  %145 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %6, align 8
  %146 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  %148 = call i32 @dma_free_coherent(i32* %140, i32 %141, i32 %144, i32 %147)
  br label %149

149:                                              ; preds = %136, %84
  %150 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %6, align 8
  %151 = call i32 @kfree(%struct.lpfc_dmabuf* %150)
  store %struct.lpfc_rpi_hdr* null, %struct.lpfc_rpi_hdr** %2, align 8
  br label %152

152:                                              ; preds = %149, %105, %67, %60, %21, %14
  %153 = load %struct.lpfc_rpi_hdr*, %struct.lpfc_rpi_hdr** %2, align 8
  ret %struct.lpfc_rpi_hdr* %153
}

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @dma_alloc_coherent(i32*, i32, i32*, i32) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @IS_ALIGNED(i32, i32) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @dma_free_coherent(i32*, i32, i32, i32) #1

declare dso_local i32 @kfree(%struct.lpfc_dmabuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
