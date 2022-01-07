; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/kernel/extr_pci_common.c_pci_determine_mem_io_space.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/kernel/extr_pci_common.c_pci_determine_mem_io_space.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_pbm_info = type { i64, %struct.TYPE_6__, %struct.TYPE_6__, i32, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i64, i64, i32, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.linux_prom_pci_ranges = type { i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [7 x i8] c"ranges\00", align 1
@.str.1 = private unnamed_addr constant [55 x i8] c"PCI: Fatal error, missing PBM ranges property  for %s\0A\00", align 1
@tlb_type = common dso_local global i64 0, align 8
@hypervisor = common dso_local global i64 0, align 8
@IORESOURCE_IO = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [40 x i8] c"%s: Fatal error, missing %s PBM range.\0A\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"IO\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"MEM\00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"%s: PCI IO[%llx] MEM[%llx]\0A\00", align 1
@ioport_resource = common dso_local global i32 0, align 4
@iomem_resource = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pci_determine_mem_io_space(%struct.pci_pbm_info* %0) #0 {
  %2 = alloca %struct.pci_pbm_info*, align 8
  %3 = alloca %struct.linux_prom_pci_ranges*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.linux_prom_pci_ranges*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.pci_pbm_info* %0, %struct.pci_pbm_info** %2, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %5, align 4
  %16 = load %struct.pci_pbm_info*, %struct.pci_pbm_info** %2, align 8
  %17 = getelementptr inbounds %struct.pci_pbm_info, %struct.pci_pbm_info* %16, i32 0, i32 4
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call %struct.linux_prom_pci_ranges* @of_get_property(i32 %20, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32* %4)
  store %struct.linux_prom_pci_ranges* %21, %struct.linux_prom_pci_ranges** %3, align 8
  %22 = load %struct.linux_prom_pci_ranges*, %struct.linux_prom_pci_ranges** %3, align 8
  %23 = icmp ne %struct.linux_prom_pci_ranges* %22, null
  br i1 %23, label %30, label %24

24:                                               ; preds = %1
  %25 = load %struct.pci_pbm_info*, %struct.pci_pbm_info** %2, align 8
  %26 = getelementptr inbounds %struct.pci_pbm_info, %struct.pci_pbm_info* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 8
  %28 = call i32 (i8*, i32, ...) @prom_printf(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i64 0, i64 0), i32 %27)
  %29 = call i32 (...) @prom_halt()
  br label %30

30:                                               ; preds = %24, %1
  %31 = load i32, i32* %4, align 4
  %32 = sext i32 %31 to i64
  %33 = udiv i64 %32, 20
  %34 = trunc i64 %33 to i32
  store i32 %34, i32* %7, align 4
  store i32 0, i32* %4, align 4
  br label %35

35:                                               ; preds = %122, %30
  %36 = load i32, i32* %4, align 4
  %37 = load i32, i32* %7, align 4
  %38 = icmp slt i32 %36, %37
  br i1 %38, label %39, label %125

39:                                               ; preds = %35
  %40 = load %struct.linux_prom_pci_ranges*, %struct.linux_prom_pci_ranges** %3, align 8
  %41 = load i32, i32* %4, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.linux_prom_pci_ranges, %struct.linux_prom_pci_ranges* %40, i64 %42
  store %struct.linux_prom_pci_ranges* %43, %struct.linux_prom_pci_ranges** %8, align 8
  %44 = load %struct.linux_prom_pci_ranges*, %struct.linux_prom_pci_ranges** %8, align 8
  %45 = getelementptr inbounds %struct.linux_prom_pci_ranges, %struct.linux_prom_pci_ranges* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  store i32 %46, i32* %11, align 4
  %47 = load %struct.linux_prom_pci_ranges*, %struct.linux_prom_pci_ranges** %8, align 8
  %48 = getelementptr inbounds %struct.linux_prom_pci_ranges, %struct.linux_prom_pci_ranges* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  store i32 %49, i32* %12, align 4
  %50 = load i64, i64* @tlb_type, align 8
  %51 = load i64, i64* @hypervisor, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %56

53:                                               ; preds = %39
  %54 = load i32, i32* %11, align 4
  %55 = and i32 %54, 268435455
  store i32 %55, i32* %11, align 4
  br label %56

56:                                               ; preds = %53, %39
  %57 = load %struct.linux_prom_pci_ranges*, %struct.linux_prom_pci_ranges** %8, align 8
  %58 = getelementptr inbounds %struct.linux_prom_pci_ranges, %struct.linux_prom_pci_ranges* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  store i32 %59, i32* %13, align 4
  %60 = load %struct.linux_prom_pci_ranges*, %struct.linux_prom_pci_ranges** %8, align 8
  %61 = getelementptr inbounds %struct.linux_prom_pci_ranges, %struct.linux_prom_pci_ranges* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 4
  store i32 %62, i32* %14, align 4
  %63 = load %struct.linux_prom_pci_ranges*, %struct.linux_prom_pci_ranges** %8, align 8
  %64 = getelementptr inbounds %struct.linux_prom_pci_ranges, %struct.linux_prom_pci_ranges* %63, i32 0, i32 4
  %65 = load i32, i32* %64, align 4
  %66 = ashr i32 %65, 24
  %67 = and i32 %66, 3
  store i32 %67, i32* %15, align 4
  %68 = load i32, i32* %11, align 4
  %69 = sext i32 %68 to i64
  %70 = shl i64 %69, 32
  %71 = load i32, i32* %12, align 4
  %72 = sext i32 %71 to i64
  %73 = shl i64 %72, 0
  %74 = or i64 %70, %73
  store i64 %74, i64* %9, align 8
  %75 = load i32, i32* %13, align 4
  %76 = sext i32 %75 to i64
  %77 = shl i64 %76, 32
  %78 = load i32, i32* %14, align 4
  %79 = sext i32 %78 to i64
  %80 = shl i64 %79, 0
  %81 = or i64 %77, %80
  store i64 %81, i64* %10, align 8
  %82 = load i32, i32* %15, align 4
  switch i32 %82, label %120 [
    i32 0, label %83
    i32 1, label %87
    i32 2, label %103
    i32 3, label %119
  ]

83:                                               ; preds = %56
  %84 = load i64, i64* %9, align 8
  %85 = load %struct.pci_pbm_info*, %struct.pci_pbm_info** %2, align 8
  %86 = getelementptr inbounds %struct.pci_pbm_info, %struct.pci_pbm_info* %85, i32 0, i32 0
  store i64 %84, i64* %86, align 8
  br label %121

87:                                               ; preds = %56
  %88 = load i64, i64* %9, align 8
  %89 = load %struct.pci_pbm_info*, %struct.pci_pbm_info** %2, align 8
  %90 = getelementptr inbounds %struct.pci_pbm_info, %struct.pci_pbm_info* %89, i32 0, i32 2
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 0
  store i64 %88, i64* %91, align 8
  %92 = load i64, i64* %9, align 8
  %93 = load i64, i64* %10, align 8
  %94 = add i64 %92, %93
  %95 = sub i64 %94, 1
  %96 = load %struct.pci_pbm_info*, %struct.pci_pbm_info** %2, align 8
  %97 = getelementptr inbounds %struct.pci_pbm_info, %struct.pci_pbm_info* %96, i32 0, i32 2
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 1
  store i64 %95, i64* %98, align 8
  %99 = load i32, i32* @IORESOURCE_IO, align 4
  %100 = load %struct.pci_pbm_info*, %struct.pci_pbm_info** %2, align 8
  %101 = getelementptr inbounds %struct.pci_pbm_info, %struct.pci_pbm_info* %100, i32 0, i32 2
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 3
  store i32 %99, i32* %102, align 4
  store i32 1, i32* %6, align 4
  br label %121

103:                                              ; preds = %56
  %104 = load i64, i64* %9, align 8
  %105 = load %struct.pci_pbm_info*, %struct.pci_pbm_info** %2, align 8
  %106 = getelementptr inbounds %struct.pci_pbm_info, %struct.pci_pbm_info* %105, i32 0, i32 1
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i32 0, i32 0
  store i64 %104, i64* %107, align 8
  %108 = load i64, i64* %9, align 8
  %109 = load i64, i64* %10, align 8
  %110 = add i64 %108, %109
  %111 = sub i64 %110, 1
  %112 = load %struct.pci_pbm_info*, %struct.pci_pbm_info** %2, align 8
  %113 = getelementptr inbounds %struct.pci_pbm_info, %struct.pci_pbm_info* %112, i32 0, i32 1
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i32 0, i32 1
  store i64 %111, i64* %114, align 8
  %115 = load i32, i32* @IORESOURCE_MEM, align 4
  %116 = load %struct.pci_pbm_info*, %struct.pci_pbm_info** %2, align 8
  %117 = getelementptr inbounds %struct.pci_pbm_info, %struct.pci_pbm_info* %116, i32 0, i32 1
  %118 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %117, i32 0, i32 3
  store i32 %115, i32* %118, align 4
  store i32 1, i32* %5, align 4
  br label %121

119:                                              ; preds = %56
  br label %120

120:                                              ; preds = %56, %119
  br label %121

121:                                              ; preds = %120, %103, %87, %83
  br label %122

122:                                              ; preds = %121
  %123 = load i32, i32* %4, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %4, align 4
  br label %35

125:                                              ; preds = %35
  %126 = load i32, i32* %6, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %131

128:                                              ; preds = %125
  %129 = load i32, i32* %5, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %142, label %131

131:                                              ; preds = %128, %125
  %132 = load %struct.pci_pbm_info*, %struct.pci_pbm_info** %2, align 8
  %133 = getelementptr inbounds %struct.pci_pbm_info, %struct.pci_pbm_info* %132, i32 0, i32 3
  %134 = load i32, i32* %133, align 8
  %135 = load i32, i32* %6, align 4
  %136 = icmp ne i32 %135, 0
  %137 = xor i1 %136, true
  %138 = zext i1 %137 to i64
  %139 = select i1 %137, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0)
  %140 = call i32 (i8*, i32, ...) @prom_printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), i32 %134, i8* %139)
  %141 = call i32 (...) @prom_halt()
  br label %142

142:                                              ; preds = %131, %128
  %143 = load %struct.pci_pbm_info*, %struct.pci_pbm_info** %2, align 8
  %144 = getelementptr inbounds %struct.pci_pbm_info, %struct.pci_pbm_info* %143, i32 0, i32 3
  %145 = load i32, i32* %144, align 8
  %146 = load %struct.pci_pbm_info*, %struct.pci_pbm_info** %2, align 8
  %147 = getelementptr inbounds %struct.pci_pbm_info, %struct.pci_pbm_info* %146, i32 0, i32 2
  %148 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %147, i32 0, i32 0
  %149 = load i64, i64* %148, align 8
  %150 = load %struct.pci_pbm_info*, %struct.pci_pbm_info** %2, align 8
  %151 = getelementptr inbounds %struct.pci_pbm_info, %struct.pci_pbm_info* %150, i32 0, i32 1
  %152 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %151, i32 0, i32 0
  %153 = load i64, i64* %152, align 8
  %154 = call i32 @printk(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0), i32 %145, i64 %149, i64 %153)
  %155 = load %struct.pci_pbm_info*, %struct.pci_pbm_info** %2, align 8
  %156 = getelementptr inbounds %struct.pci_pbm_info, %struct.pci_pbm_info* %155, i32 0, i32 3
  %157 = load i32, i32* %156, align 8
  %158 = load %struct.pci_pbm_info*, %struct.pci_pbm_info** %2, align 8
  %159 = getelementptr inbounds %struct.pci_pbm_info, %struct.pci_pbm_info* %158, i32 0, i32 1
  %160 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %159, i32 0, i32 2
  store i32 %157, i32* %160, align 8
  %161 = load %struct.pci_pbm_info*, %struct.pci_pbm_info** %2, align 8
  %162 = getelementptr inbounds %struct.pci_pbm_info, %struct.pci_pbm_info* %161, i32 0, i32 2
  %163 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %162, i32 0, i32 2
  store i32 %157, i32* %163, align 8
  %164 = load %struct.pci_pbm_info*, %struct.pci_pbm_info** %2, align 8
  %165 = getelementptr inbounds %struct.pci_pbm_info, %struct.pci_pbm_info* %164, i32 0, i32 2
  %166 = call i32 @request_resource(i32* @ioport_resource, %struct.TYPE_6__* %165)
  %167 = load %struct.pci_pbm_info*, %struct.pci_pbm_info** %2, align 8
  %168 = getelementptr inbounds %struct.pci_pbm_info, %struct.pci_pbm_info* %167, i32 0, i32 1
  %169 = call i32 @request_resource(i32* @iomem_resource, %struct.TYPE_6__* %168)
  %170 = load %struct.pci_pbm_info*, %struct.pci_pbm_info** %2, align 8
  %171 = getelementptr inbounds %struct.pci_pbm_info, %struct.pci_pbm_info* %170, i32 0, i32 2
  %172 = load %struct.pci_pbm_info*, %struct.pci_pbm_info** %2, align 8
  %173 = getelementptr inbounds %struct.pci_pbm_info, %struct.pci_pbm_info* %172, i32 0, i32 1
  %174 = call i32 @pci_register_legacy_regions(%struct.TYPE_6__* %171, %struct.TYPE_6__* %173)
  %175 = load %struct.pci_pbm_info*, %struct.pci_pbm_info** %2, align 8
  %176 = call i32 @pci_register_iommu_region(%struct.pci_pbm_info* %175)
  ret void
}

declare dso_local %struct.linux_prom_pci_ranges* @of_get_property(i32, i8*, i32*) #1

declare dso_local i32 @prom_printf(i8*, i32, ...) #1

declare dso_local i32 @prom_halt(...) #1

declare dso_local i32 @printk(i8*, i32, i64, i64) #1

declare dso_local i32 @request_resource(i32*, %struct.TYPE_6__*) #1

declare dso_local i32 @pci_register_legacy_regions(%struct.TYPE_6__*, %struct.TYPE_6__*) #1

declare dso_local i32 @pci_register_iommu_region(%struct.pci_pbm_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
