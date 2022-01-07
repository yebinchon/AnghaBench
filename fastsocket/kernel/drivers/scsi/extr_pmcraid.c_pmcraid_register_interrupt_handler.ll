; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_pmcraid.c_pmcraid_register_interrupt_handler.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_pmcraid.c_pmcraid_register_interrupt_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pmcraid_instance = type { i32, i32, %struct.TYPE_5__*, %struct.TYPE_4__, %struct.pci_dev* }
%struct.TYPE_5__ = type { i32, i32, %struct.pmcraid_instance* }
%struct.TYPE_4__ = type { i32 }
%struct.pci_dev = type { i32 }
%struct.msix_entry = type { i32, i32 }

@pmcraid_enable_msix = common dso_local global i64 0, align 8
@PCI_CAP_ID_MSIX = common dso_local global i32 0, align 4
@PMCRAID_NUM_MSIX_VECTORS = common dso_local global i32 0, align 4
@pmcraid_isr_msix = common dso_local global i32 0, align 4
@PMCRAID_DRIVER_NAME = common dso_local global i32 0, align 4
@DOORBELL_INTR_MODE_MSIX = common dso_local global i32 0, align 4
@pmcraid_isr = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pmcraid_instance*)* @pmcraid_register_interrupt_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pmcraid_register_interrupt_handler(%struct.pmcraid_instance* %0) #0 {
  %2 = alloca %struct.pmcraid_instance*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.pmcraid_instance* %0, %struct.pmcraid_instance** %2, align 8
  %11 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %2, align 8
  %12 = getelementptr inbounds %struct.pmcraid_instance, %struct.pmcraid_instance* %11, i32 0, i32 4
  %13 = load %struct.pci_dev*, %struct.pci_dev** %12, align 8
  store %struct.pci_dev* %13, %struct.pci_dev** %4, align 8
  %14 = load i64, i64* @pmcraid_enable_msix, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %159

16:                                               ; preds = %1
  %17 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %18 = load i32, i32* @PCI_CAP_ID_MSIX, align 4
  %19 = call i64 @pci_find_capability(%struct.pci_dev* %17, i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %159

21:                                               ; preds = %16
  %22 = load i32, i32* @PMCRAID_NUM_MSIX_VECTORS, align 4
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* @PMCRAID_NUM_MSIX_VECTORS, align 4
  %24 = zext i32 %23 to i64
  %25 = call i8* @llvm.stacksave()
  store i8* %25, i8** %6, align 8
  %26 = alloca %struct.msix_entry, i64 %24, align 16
  store i64 %24, i64* %7, align 8
  store i32 0, i32* %8, align 4
  br label %27

27:                                               ; preds = %37, %21
  %28 = load i32, i32* %8, align 4
  %29 = load i32, i32* @PMCRAID_NUM_MSIX_VECTORS, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %40

31:                                               ; preds = %27
  %32 = load i32, i32* %8, align 4
  %33 = load i32, i32* %8, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.msix_entry, %struct.msix_entry* %26, i64 %34
  %36 = getelementptr inbounds %struct.msix_entry, %struct.msix_entry* %35, i32 0, i32 0
  store i32 %32, i32* %36, align 8
  br label %37

37:                                               ; preds = %31
  %38 = load i32, i32* %8, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %8, align 4
  br label %27

40:                                               ; preds = %27
  %41 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %42 = load i32, i32* %5, align 4
  %43 = call i32 @pci_enable_msix(%struct.pci_dev* %41, %struct.msix_entry* %26, i32 %42)
  store i32 %43, i32* %3, align 4
  %44 = load i32, i32* %3, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %40
  store i32 5, i32* %10, align 4
  br label %156

47:                                               ; preds = %40
  %48 = load i32, i32* %3, align 4
  %49 = icmp sgt i32 %48, 0
  br i1 %49, label %50, label %58

50:                                               ; preds = %47
  %51 = load i32, i32* %3, align 4
  store i32 %51, i32* %5, align 4
  %52 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %53 = load i32, i32* %5, align 4
  %54 = call i32 @pci_enable_msix(%struct.pci_dev* %52, %struct.msix_entry* %26, i32 %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %50
  store i32 5, i32* %10, align 4
  br label %156

57:                                               ; preds = %50
  br label %58

58:                                               ; preds = %57, %47
  store i32 0, i32* %8, align 4
  br label %59

59:                                               ; preds = %136, %58
  %60 = load i32, i32* %8, align 4
  %61 = load i32, i32* %5, align 4
  %62 = icmp slt i32 %60, %61
  br i1 %62, label %63, label %139

63:                                               ; preds = %59
  %64 = load i32, i32* %8, align 4
  %65 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %2, align 8
  %66 = getelementptr inbounds %struct.pmcraid_instance, %struct.pmcraid_instance* %65, i32 0, i32 2
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %66, align 8
  %68 = load i32, i32* %8, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 0
  store i32 %64, i32* %71, align 8
  %72 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %2, align 8
  %73 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %2, align 8
  %74 = getelementptr inbounds %struct.pmcraid_instance, %struct.pmcraid_instance* %73, i32 0, i32 2
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** %74, align 8
  %76 = load i32, i32* %8, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 2
  store %struct.pmcraid_instance* %72, %struct.pmcraid_instance** %79, align 8
  %80 = load i32, i32* %8, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.msix_entry, %struct.msix_entry* %26, i64 %81
  %83 = getelementptr inbounds %struct.msix_entry, %struct.msix_entry* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %2, align 8
  %86 = getelementptr inbounds %struct.pmcraid_instance, %struct.pmcraid_instance* %85, i32 0, i32 2
  %87 = load %struct.TYPE_5__*, %struct.TYPE_5__** %86, align 8
  %88 = load i32, i32* %8, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i64 %89
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 1
  store i32 %84, i32* %91, align 4
  %92 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %2, align 8
  %93 = getelementptr inbounds %struct.pmcraid_instance, %struct.pmcraid_instance* %92, i32 0, i32 2
  %94 = load %struct.TYPE_5__*, %struct.TYPE_5__** %93, align 8
  %95 = load i32, i32* %8, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i64 %96
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* @pmcraid_isr_msix, align 4
  %101 = load i32, i32* @PMCRAID_DRIVER_NAME, align 4
  %102 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %2, align 8
  %103 = getelementptr inbounds %struct.pmcraid_instance, %struct.pmcraid_instance* %102, i32 0, i32 2
  %104 = load %struct.TYPE_5__*, %struct.TYPE_5__** %103, align 8
  %105 = load i32, i32* %8, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i64 %106
  %108 = call i32 @request_irq(i32 %99, i32 %100, i32 0, i32 %101, %struct.TYPE_5__* %107)
  store i32 %108, i32* %3, align 4
  %109 = load i32, i32* %3, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %135

111:                                              ; preds = %63
  store i32 0, i32* %9, align 4
  br label %112

112:                                              ; preds = %129, %111
  %113 = load i32, i32* %9, align 4
  %114 = load i32, i32* %8, align 4
  %115 = icmp slt i32 %113, %114
  br i1 %115, label %116, label %132

116:                                              ; preds = %112
  %117 = load i32, i32* %9, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds %struct.msix_entry, %struct.msix_entry* %26, i64 %118
  %120 = getelementptr inbounds %struct.msix_entry, %struct.msix_entry* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %2, align 8
  %123 = getelementptr inbounds %struct.pmcraid_instance, %struct.pmcraid_instance* %122, i32 0, i32 2
  %124 = load %struct.TYPE_5__*, %struct.TYPE_5__** %123, align 8
  %125 = load i32, i32* %9, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %124, i64 %126
  %128 = call i32 @free_irq(i32 %121, %struct.TYPE_5__* %127)
  br label %129

129:                                              ; preds = %116
  %130 = load i32, i32* %9, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %9, align 4
  br label %112

132:                                              ; preds = %112
  %133 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %134 = call i32 @pci_disable_msix(%struct.pci_dev* %133)
  store i32 5, i32* %10, align 4
  br label %156

135:                                              ; preds = %63
  br label %136

136:                                              ; preds = %135
  %137 = load i32, i32* %8, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %8, align 4
  br label %59

139:                                              ; preds = %59
  %140 = load i32, i32* %5, align 4
  %141 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %2, align 8
  %142 = getelementptr inbounds %struct.pmcraid_instance, %struct.pmcraid_instance* %141, i32 0, i32 0
  store i32 %140, i32* %142, align 8
  %143 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %2, align 8
  %144 = getelementptr inbounds %struct.pmcraid_instance, %struct.pmcraid_instance* %143, i32 0, i32 1
  store i32 1, i32* %144, align 4
  %145 = load i32, i32* @DOORBELL_INTR_MODE_MSIX, align 4
  %146 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %2, align 8
  %147 = getelementptr inbounds %struct.pmcraid_instance, %struct.pmcraid_instance* %146, i32 0, i32 3
  %148 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 8
  %150 = call i32 @iowrite32(i32 %145, i32 %149)
  %151 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %2, align 8
  %152 = getelementptr inbounds %struct.pmcraid_instance, %struct.pmcraid_instance* %151, i32 0, i32 3
  %153 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 8
  %155 = call i32 @ioread32(i32 %154)
  store i32 12, i32* %10, align 4
  br label %156

156:                                              ; preds = %139, %132, %56, %46
  %157 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %157)
  %158 = load i32, i32* %10, align 4
  switch i32 %158, label %195 [
    i32 5, label %160
    i32 12, label %193
  ]

159:                                              ; preds = %16, %1
  br label %160

160:                                              ; preds = %159, %156
  %161 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %2, align 8
  %162 = getelementptr inbounds %struct.pmcraid_instance, %struct.pmcraid_instance* %161, i32 0, i32 2
  %163 = load %struct.TYPE_5__*, %struct.TYPE_5__** %162, align 8
  %164 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %163, i64 0
  %165 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %164, i32 0, i32 0
  store i32 0, i32* %165, align 8
  %166 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %2, align 8
  %167 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %2, align 8
  %168 = getelementptr inbounds %struct.pmcraid_instance, %struct.pmcraid_instance* %167, i32 0, i32 2
  %169 = load %struct.TYPE_5__*, %struct.TYPE_5__** %168, align 8
  %170 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %169, i64 0
  %171 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %170, i32 0, i32 2
  store %struct.pmcraid_instance* %166, %struct.pmcraid_instance** %171, align 8
  %172 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %173 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 4
  %175 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %2, align 8
  %176 = getelementptr inbounds %struct.pmcraid_instance, %struct.pmcraid_instance* %175, i32 0, i32 2
  %177 = load %struct.TYPE_5__*, %struct.TYPE_5__** %176, align 8
  %178 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %177, i64 0
  %179 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %178, i32 0, i32 1
  store i32 %174, i32* %179, align 4
  %180 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %2, align 8
  %181 = getelementptr inbounds %struct.pmcraid_instance, %struct.pmcraid_instance* %180, i32 0, i32 0
  store i32 1, i32* %181, align 8
  store i32 0, i32* %3, align 4
  %182 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %183 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 4
  %185 = load i32, i32* @pmcraid_isr, align 4
  %186 = load i32, i32* @IRQF_SHARED, align 4
  %187 = load i32, i32* @PMCRAID_DRIVER_NAME, align 4
  %188 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %2, align 8
  %189 = getelementptr inbounds %struct.pmcraid_instance, %struct.pmcraid_instance* %188, i32 0, i32 2
  %190 = load %struct.TYPE_5__*, %struct.TYPE_5__** %189, align 8
  %191 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %190, i64 0
  %192 = call i32 @request_irq(i32 %184, i32 %185, i32 %186, i32 %187, %struct.TYPE_5__* %191)
  store i32 %192, i32* %3, align 4
  br label %193

193:                                              ; preds = %160, %156
  %194 = load i32, i32* %3, align 4
  ret i32 %194

195:                                              ; preds = %156
  unreachable
}

declare dso_local i64 @pci_find_capability(%struct.pci_dev*, i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @pci_enable_msix(%struct.pci_dev*, %struct.msix_entry*, i32) #1

declare dso_local i32 @request_irq(i32, i32, i32, i32, %struct.TYPE_5__*) #1

declare dso_local i32 @free_irq(i32, %struct.TYPE_5__*) #1

declare dso_local i32 @pci_disable_msix(%struct.pci_dev*) #1

declare dso_local i32 @iowrite32(i32, i32) #1

declare dso_local i32 @ioread32(i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
