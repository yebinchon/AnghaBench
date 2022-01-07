; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ocrdma/extr_ocrdma_verbs.c_ocrdma_alloc_ucontext.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ocrdma/extr_ocrdma_verbs.c_ocrdma_alloc_ucontext.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_ucontext = type { i32 }
%struct.ib_device = type { i32 }
%struct.ib_udata = type { i32 }
%struct.ocrdma_ucontext = type { %struct.TYPE_6__, %struct.ib_ucontext, i32, i32, %struct.ocrdma_dev* }
%struct.TYPE_6__ = type { i32, i32, %struct.ocrdma_alloc_ucontext_resp* }
%struct.ocrdma_alloc_ucontext_resp = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ocrdma_dev = type { %struct.TYPE_5__, i32, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32, i32, i32, i32 }
%struct.TYPE_4__ = type { %struct.pci_dev* }
%struct.pci_dev = type { i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ib_ucontext* @ocrdma_alloc_ucontext(%struct.ib_device* %0, %struct.ib_udata* %1) #0 {
  %3 = alloca %struct.ib_ucontext*, align 8
  %4 = alloca %struct.ib_device*, align 8
  %5 = alloca %struct.ib_udata*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ocrdma_ucontext*, align 8
  %8 = alloca %struct.ocrdma_alloc_ucontext_resp, align 4
  %9 = alloca %struct.ocrdma_dev*, align 8
  %10 = alloca %struct.pci_dev*, align 8
  %11 = alloca i32, align 4
  store %struct.ib_device* %0, %struct.ib_device** %4, align 8
  store %struct.ib_udata* %1, %struct.ib_udata** %5, align 8
  %12 = load %struct.ib_device*, %struct.ib_device** %4, align 8
  %13 = call %struct.ocrdma_dev* @get_ocrdma_dev(%struct.ib_device* %12)
  store %struct.ocrdma_dev* %13, %struct.ocrdma_dev** %9, align 8
  %14 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %9, align 8
  %15 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %14, i32 0, i32 2
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load %struct.pci_dev*, %struct.pci_dev** %16, align 8
  store %struct.pci_dev* %17, %struct.pci_dev** %10, align 8
  %18 = load i32, i32* @PAGE_SIZE, align 4
  %19 = call i32 @roundup(i32 8192, i32 %18)
  store i32 %19, i32* %11, align 4
  %20 = load %struct.ib_udata*, %struct.ib_udata** %5, align 8
  %21 = icmp ne %struct.ib_udata* %20, null
  br i1 %21, label %26, label %22

22:                                               ; preds = %2
  %23 = load i32, i32* @EFAULT, align 4
  %24 = sub nsw i32 0, %23
  %25 = call %struct.ib_ucontext* @ERR_PTR(i32 %24)
  store %struct.ib_ucontext* %25, %struct.ib_ucontext** %3, align 8
  br label %169

26:                                               ; preds = %2
  %27 = load i32, i32* @GFP_KERNEL, align 4
  %28 = call %struct.ocrdma_ucontext* @kzalloc(i32 40, i32 %27)
  store %struct.ocrdma_ucontext* %28, %struct.ocrdma_ucontext** %7, align 8
  %29 = load %struct.ocrdma_ucontext*, %struct.ocrdma_ucontext** %7, align 8
  %30 = icmp ne %struct.ocrdma_ucontext* %29, null
  br i1 %30, label %35, label %31

31:                                               ; preds = %26
  %32 = load i32, i32* @ENOMEM, align 4
  %33 = sub nsw i32 0, %32
  %34 = call %struct.ib_ucontext* @ERR_PTR(i32 %33)
  store %struct.ib_ucontext* %34, %struct.ib_ucontext** %3, align 8
  br label %169

35:                                               ; preds = %26
  %36 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %9, align 8
  %37 = load %struct.ocrdma_ucontext*, %struct.ocrdma_ucontext** %7, align 8
  %38 = getelementptr inbounds %struct.ocrdma_ucontext, %struct.ocrdma_ucontext* %37, i32 0, i32 4
  store %struct.ocrdma_dev* %36, %struct.ocrdma_dev** %38, align 8
  %39 = load %struct.ocrdma_ucontext*, %struct.ocrdma_ucontext** %7, align 8
  %40 = getelementptr inbounds %struct.ocrdma_ucontext, %struct.ocrdma_ucontext* %39, i32 0, i32 3
  %41 = call i32 @INIT_LIST_HEAD(i32* %40)
  %42 = load %struct.ocrdma_ucontext*, %struct.ocrdma_ucontext** %7, align 8
  %43 = getelementptr inbounds %struct.ocrdma_ucontext, %struct.ocrdma_ucontext* %42, i32 0, i32 2
  %44 = call i32 @mutex_init(i32* %43)
  %45 = load %struct.pci_dev*, %struct.pci_dev** %10, align 8
  %46 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %45, i32 0, i32 0
  %47 = load i32, i32* %11, align 4
  %48 = load %struct.ocrdma_ucontext*, %struct.ocrdma_ucontext** %7, align 8
  %49 = getelementptr inbounds %struct.ocrdma_ucontext, %struct.ocrdma_ucontext* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 1
  %51 = load i32, i32* @GFP_KERNEL, align 4
  %52 = call %struct.ocrdma_alloc_ucontext_resp* @dma_alloc_coherent(i32* %46, i32 %47, i32* %50, i32 %51)
  %53 = load %struct.ocrdma_ucontext*, %struct.ocrdma_ucontext** %7, align 8
  %54 = getelementptr inbounds %struct.ocrdma_ucontext, %struct.ocrdma_ucontext* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 2
  store %struct.ocrdma_alloc_ucontext_resp* %52, %struct.ocrdma_alloc_ucontext_resp** %55, align 8
  %56 = load %struct.ocrdma_ucontext*, %struct.ocrdma_ucontext** %7, align 8
  %57 = getelementptr inbounds %struct.ocrdma_ucontext, %struct.ocrdma_ucontext* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 2
  %59 = load %struct.ocrdma_alloc_ucontext_resp*, %struct.ocrdma_alloc_ucontext_resp** %58, align 8
  %60 = icmp ne %struct.ocrdma_alloc_ucontext_resp* %59, null
  br i1 %60, label %67, label %61

61:                                               ; preds = %35
  %62 = load %struct.ocrdma_ucontext*, %struct.ocrdma_ucontext** %7, align 8
  %63 = call i32 @kfree(%struct.ocrdma_ucontext* %62)
  %64 = load i32, i32* @ENOMEM, align 4
  %65 = sub nsw i32 0, %64
  %66 = call %struct.ib_ucontext* @ERR_PTR(i32 %65)
  store %struct.ib_ucontext* %66, %struct.ib_ucontext** %3, align 8
  br label %169

67:                                               ; preds = %35
  %68 = load %struct.ocrdma_ucontext*, %struct.ocrdma_ucontext** %7, align 8
  %69 = getelementptr inbounds %struct.ocrdma_ucontext, %struct.ocrdma_ucontext* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 2
  %71 = load %struct.ocrdma_alloc_ucontext_resp*, %struct.ocrdma_alloc_ucontext_resp** %70, align 8
  %72 = load i32, i32* %11, align 4
  %73 = call i32 @memset(%struct.ocrdma_alloc_ucontext_resp* %71, i32 0, i32 %72)
  %74 = load i32, i32* %11, align 4
  %75 = load %struct.ocrdma_ucontext*, %struct.ocrdma_ucontext** %7, align 8
  %76 = getelementptr inbounds %struct.ocrdma_ucontext, %struct.ocrdma_ucontext* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 0
  store i32 %74, i32* %77, align 8
  %78 = call i32 @memset(%struct.ocrdma_alloc_ucontext_resp* %8, i32 0, i32 32)
  %79 = load %struct.ocrdma_ucontext*, %struct.ocrdma_ucontext** %7, align 8
  %80 = getelementptr inbounds %struct.ocrdma_ucontext, %struct.ocrdma_ucontext* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = getelementptr inbounds %struct.ocrdma_alloc_ucontext_resp, %struct.ocrdma_alloc_ucontext_resp* %8, i32 0, i32 0
  store i32 %82, i32* %83, align 4
  %84 = load %struct.ocrdma_ucontext*, %struct.ocrdma_ucontext** %7, align 8
  %85 = getelementptr inbounds %struct.ocrdma_ucontext, %struct.ocrdma_ucontext* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = getelementptr inbounds %struct.ocrdma_alloc_ucontext_resp, %struct.ocrdma_alloc_ucontext_resp* %8, i32 0, i32 7
  store i32 %87, i32* %88, align 4
  %89 = load %struct.ocrdma_ucontext*, %struct.ocrdma_ucontext** %7, align 8
  %90 = getelementptr inbounds %struct.ocrdma_alloc_ucontext_resp, %struct.ocrdma_alloc_ucontext_resp* %8, i32 0, i32 7
  %91 = load i32, i32* %90, align 4
  %92 = getelementptr inbounds %struct.ocrdma_alloc_ucontext_resp, %struct.ocrdma_alloc_ucontext_resp* %8, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @ocrdma_add_mmap(%struct.ocrdma_ucontext* %89, i32 %91, i32 %93)
  store i32 %94, i32* %6, align 4
  %95 = load i32, i32* %6, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %67
  br label %149

98:                                               ; preds = %67
  %99 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %9, align 8
  %100 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 8
  %102 = getelementptr inbounds %struct.ocrdma_alloc_ucontext_resp, %struct.ocrdma_alloc_ucontext_resp* %8, i32 0, i32 6
  store i32 %101, i32* %102, align 4
  %103 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %9, align 8
  %104 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i32 0, i32 3
  %106 = load i32, i32* %105, align 4
  %107 = getelementptr inbounds %struct.ocrdma_alloc_ucontext_resp, %struct.ocrdma_alloc_ucontext_resp* %8, i32 0, i32 5
  store i32 %106, i32* %107, align 4
  %108 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %9, align 8
  %109 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = getelementptr inbounds %struct.ocrdma_alloc_ucontext_resp, %struct.ocrdma_alloc_ucontext_resp* %8, i32 0, i32 4
  store i32 %111, i32* %112, align 4
  %113 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %9, align 8
  %114 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 8
  %117 = getelementptr inbounds %struct.ocrdma_alloc_ucontext_resp, %struct.ocrdma_alloc_ucontext_resp* %8, i32 0, i32 3
  store i32 %116, i32* %117, align 4
  %118 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %9, align 8
  %119 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = getelementptr inbounds %struct.ocrdma_alloc_ucontext_resp, %struct.ocrdma_alloc_ucontext_resp* %8, i32 0, i32 2
  store i32 %121, i32* %122, align 4
  %123 = getelementptr inbounds %struct.ocrdma_alloc_ucontext_resp, %struct.ocrdma_alloc_ucontext_resp* %8, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %9, align 8
  %126 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = call i32 @memcpy(i32 %124, i32 %128, i32 4)
  %130 = load %struct.ib_udata*, %struct.ib_udata** %5, align 8
  %131 = call i32 @ib_copy_to_udata(%struct.ib_udata* %130, %struct.ocrdma_alloc_ucontext_resp* %8, i32 32)
  store i32 %131, i32* %6, align 4
  %132 = load i32, i32* %6, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %135

134:                                              ; preds = %98
  br label %138

135:                                              ; preds = %98
  %136 = load %struct.ocrdma_ucontext*, %struct.ocrdma_ucontext** %7, align 8
  %137 = getelementptr inbounds %struct.ocrdma_ucontext, %struct.ocrdma_ucontext* %136, i32 0, i32 1
  store %struct.ib_ucontext* %137, %struct.ib_ucontext** %3, align 8
  br label %169

138:                                              ; preds = %134
  %139 = load %struct.ocrdma_ucontext*, %struct.ocrdma_ucontext** %7, align 8
  %140 = load %struct.ocrdma_ucontext*, %struct.ocrdma_ucontext** %7, align 8
  %141 = getelementptr inbounds %struct.ocrdma_ucontext, %struct.ocrdma_ucontext* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 4
  %144 = load %struct.ocrdma_ucontext*, %struct.ocrdma_ucontext** %7, align 8
  %145 = getelementptr inbounds %struct.ocrdma_ucontext, %struct.ocrdma_ucontext* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = call i32 @ocrdma_del_mmap(%struct.ocrdma_ucontext* %139, i32 %143, i32 %147)
  br label %149

149:                                              ; preds = %138, %97
  %150 = load %struct.pci_dev*, %struct.pci_dev** %10, align 8
  %151 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %150, i32 0, i32 0
  %152 = load %struct.ocrdma_ucontext*, %struct.ocrdma_ucontext** %7, align 8
  %153 = getelementptr inbounds %struct.ocrdma_ucontext, %struct.ocrdma_ucontext* %152, i32 0, i32 0
  %154 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 8
  %156 = load %struct.ocrdma_ucontext*, %struct.ocrdma_ucontext** %7, align 8
  %157 = getelementptr inbounds %struct.ocrdma_ucontext, %struct.ocrdma_ucontext* %156, i32 0, i32 0
  %158 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %157, i32 0, i32 2
  %159 = load %struct.ocrdma_alloc_ucontext_resp*, %struct.ocrdma_alloc_ucontext_resp** %158, align 8
  %160 = load %struct.ocrdma_ucontext*, %struct.ocrdma_ucontext** %7, align 8
  %161 = getelementptr inbounds %struct.ocrdma_ucontext, %struct.ocrdma_ucontext* %160, i32 0, i32 0
  %162 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %161, i32 0, i32 1
  %163 = load i32, i32* %162, align 4
  %164 = call i32 @dma_free_coherent(i32* %151, i32 %155, %struct.ocrdma_alloc_ucontext_resp* %159, i32 %163)
  %165 = load %struct.ocrdma_ucontext*, %struct.ocrdma_ucontext** %7, align 8
  %166 = call i32 @kfree(%struct.ocrdma_ucontext* %165)
  %167 = load i32, i32* %6, align 4
  %168 = call %struct.ib_ucontext* @ERR_PTR(i32 %167)
  store %struct.ib_ucontext* %168, %struct.ib_ucontext** %3, align 8
  br label %169

169:                                              ; preds = %149, %135, %61, %31, %22
  %170 = load %struct.ib_ucontext*, %struct.ib_ucontext** %3, align 8
  ret %struct.ib_ucontext* %170
}

declare dso_local %struct.ocrdma_dev* @get_ocrdma_dev(%struct.ib_device*) #1

declare dso_local i32 @roundup(i32, i32) #1

declare dso_local %struct.ib_ucontext* @ERR_PTR(i32) #1

declare dso_local %struct.ocrdma_ucontext* @kzalloc(i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local %struct.ocrdma_alloc_ucontext_resp* @dma_alloc_coherent(i32*, i32, i32*, i32) #1

declare dso_local i32 @kfree(%struct.ocrdma_ucontext*) #1

declare dso_local i32 @memset(%struct.ocrdma_alloc_ucontext_resp*, i32, i32) #1

declare dso_local i32 @ocrdma_add_mmap(%struct.ocrdma_ucontext*, i32, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @ib_copy_to_udata(%struct.ib_udata*, %struct.ocrdma_alloc_ucontext_resp*, i32) #1

declare dso_local i32 @ocrdma_del_mmap(%struct.ocrdma_ucontext*, i32, i32) #1

declare dso_local i32 @dma_free_coherent(i32*, i32, %struct.ocrdma_alloc_ucontext_resp*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
