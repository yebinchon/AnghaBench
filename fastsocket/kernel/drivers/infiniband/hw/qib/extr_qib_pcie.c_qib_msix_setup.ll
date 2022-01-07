; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_pcie.c_qib_msix_setup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_pcie.c_qib_msix_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qib_devdata = type { i32 }
%struct.qib_msix_entry = type { %struct.msix_entry }
%struct.msix_entry = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@PCI_MSIX_FLAGS = common dso_local global i64 0, align 8
@PCI_MSIX_FLAGS_QSIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [61 x i8] c"pci_enable_msix %d vectors failed: %d, falling back to INTx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qib_devdata*, i32, i32*, %struct.qib_msix_entry*)* @qib_msix_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qib_msix_setup(%struct.qib_devdata* %0, i32 %1, i32* %2, %struct.qib_msix_entry* %3) #0 {
  %5 = alloca %struct.qib_devdata*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.qib_msix_entry*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.msix_entry*, align 8
  %13 = alloca i32, align 4
  store %struct.qib_devdata* %0, %struct.qib_devdata** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store %struct.qib_msix_entry* %3, %struct.qib_msix_entry** %8, align 8
  store i32 0, i32* %10, align 4
  %14 = load i32*, i32** %7, align 8
  %15 = load i32, i32* %14, align 4
  %16 = sext i32 %15 to i64
  %17 = mul i64 %16, 4
  %18 = trunc i64 %17 to i32
  %19 = load i32, i32* @GFP_KERNEL, align 4
  %20 = call %struct.msix_entry* @kmalloc(i32 %18, i32 %19)
  store %struct.msix_entry* %20, %struct.msix_entry** %12, align 8
  %21 = load %struct.msix_entry*, %struct.msix_entry** %12, align 8
  %22 = icmp ne %struct.msix_entry* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %4
  %24 = load i32, i32* @ENOMEM, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %9, align 4
  br label %85

26:                                               ; preds = %4
  store i32 0, i32* %13, align 4
  br label %27

27:                                               ; preds = %44, %26
  %28 = load i32, i32* %13, align 4
  %29 = load i32*, i32** %7, align 8
  %30 = load i32, i32* %29, align 4
  %31 = icmp slt i32 %28, %30
  br i1 %31, label %32, label %47

32:                                               ; preds = %27
  %33 = load %struct.msix_entry*, %struct.msix_entry** %12, align 8
  %34 = load i32, i32* %13, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.msix_entry, %struct.msix_entry* %33, i64 %35
  %37 = load %struct.qib_msix_entry*, %struct.qib_msix_entry** %8, align 8
  %38 = load i32, i32* %13, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.qib_msix_entry, %struct.qib_msix_entry* %37, i64 %39
  %41 = getelementptr inbounds %struct.qib_msix_entry, %struct.qib_msix_entry* %40, i32 0, i32 0
  %42 = bitcast %struct.msix_entry* %36 to i8*
  %43 = bitcast %struct.msix_entry* %41 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %42, i8* align 4 %43, i64 4, i1 false)
  br label %44

44:                                               ; preds = %32
  %45 = load i32, i32* %13, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %13, align 4
  br label %27

47:                                               ; preds = %27
  %48 = load %struct.qib_devdata*, %struct.qib_devdata** %5, align 8
  %49 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* %6, align 4
  %52 = sext i32 %51 to i64
  %53 = load i64, i64* @PCI_MSIX_FLAGS, align 8
  %54 = add nsw i64 %52, %53
  %55 = call i32 @pci_read_config_word(i32 %50, i64 %54, i32* %11)
  %56 = load i32, i32* %11, align 4
  %57 = load i32, i32* @PCI_MSIX_FLAGS_QSIZE, align 4
  %58 = and i32 %56, %57
  %59 = add nsw i32 1, %58
  store i32 %59, i32* %10, align 4
  %60 = load i32, i32* %10, align 4
  %61 = load i32*, i32** %7, align 8
  %62 = load i32, i32* %61, align 4
  %63 = icmp sgt i32 %60, %62
  br i1 %63, label %64, label %67

64:                                               ; preds = %47
  %65 = load i32*, i32** %7, align 8
  %66 = load i32, i32* %65, align 4
  store i32 %66, i32* %10, align 4
  br label %67

67:                                               ; preds = %64, %47
  %68 = load %struct.qib_devdata*, %struct.qib_devdata** %5, align 8
  %69 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.msix_entry*, %struct.msix_entry** %12, align 8
  %72 = load i32, i32* %10, align 4
  %73 = call i32 @pci_enable_msix(i32 %70, %struct.msix_entry* %71, i32 %72)
  store i32 %73, i32* %9, align 4
  %74 = load i32, i32* %9, align 4
  %75 = icmp sgt i32 %74, 0
  br i1 %75, label %76, label %84

76:                                               ; preds = %67
  %77 = load i32, i32* %9, align 4
  store i32 %77, i32* %10, align 4
  %78 = load %struct.qib_devdata*, %struct.qib_devdata** %5, align 8
  %79 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.msix_entry*, %struct.msix_entry** %12, align 8
  %82 = load i32, i32* %10, align 4
  %83 = call i32 @pci_enable_msix(i32 %80, %struct.msix_entry* %81, i32 %82)
  store i32 %83, i32* %9, align 4
  br label %84

84:                                               ; preds = %76, %67
  br label %85

85:                                               ; preds = %84, %23
  %86 = load i32, i32* %9, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %93

88:                                               ; preds = %85
  %89 = load %struct.qib_devdata*, %struct.qib_devdata** %5, align 8
  %90 = load i32, i32* %10, align 4
  %91 = load i32, i32* %9, align 4
  %92 = call i32 @qib_dev_err(%struct.qib_devdata* %89, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0), i32 %90, i32 %91)
  store i32 0, i32* %10, align 4
  br label %93

93:                                               ; preds = %88, %85
  store i32 0, i32* %13, align 4
  br label %94

94:                                               ; preds = %110, %93
  %95 = load i32, i32* %13, align 4
  %96 = load i32, i32* %10, align 4
  %97 = icmp slt i32 %95, %96
  br i1 %97, label %98, label %113

98:                                               ; preds = %94
  %99 = load %struct.qib_msix_entry*, %struct.qib_msix_entry** %8, align 8
  %100 = load i32, i32* %13, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds %struct.qib_msix_entry, %struct.qib_msix_entry* %99, i64 %101
  %103 = getelementptr inbounds %struct.qib_msix_entry, %struct.qib_msix_entry* %102, i32 0, i32 0
  %104 = load %struct.msix_entry*, %struct.msix_entry** %12, align 8
  %105 = load i32, i32* %13, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds %struct.msix_entry, %struct.msix_entry* %104, i64 %106
  %108 = bitcast %struct.msix_entry* %103 to i8*
  %109 = bitcast %struct.msix_entry* %107 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %108, i8* align 4 %109, i64 4, i1 false)
  br label %110

110:                                              ; preds = %98
  %111 = load i32, i32* %13, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %13, align 4
  br label %94

113:                                              ; preds = %94
  %114 = load %struct.msix_entry*, %struct.msix_entry** %12, align 8
  %115 = call i32 @kfree(%struct.msix_entry* %114)
  %116 = load i32, i32* %10, align 4
  %117 = load i32*, i32** %7, align 8
  store i32 %116, i32* %117, align 4
  %118 = load i32, i32* %9, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %125

120:                                              ; preds = %113
  %121 = load %struct.qib_devdata*, %struct.qib_devdata** %5, align 8
  %122 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = call i32 @qib_enable_intx(i32 %123)
  br label %125

125:                                              ; preds = %120, %113
  ret void
}

declare dso_local %struct.msix_entry* @kmalloc(i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @pci_read_config_word(i32, i64, i32*) #1

declare dso_local i32 @pci_enable_msix(i32, %struct.msix_entry*, i32) #1

declare dso_local i32 @qib_dev_err(%struct.qib_devdata*, i8*, i32, i32) #1

declare dso_local i32 @kfree(%struct.msix_entry*) #1

declare dso_local i32 @qib_enable_intx(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
