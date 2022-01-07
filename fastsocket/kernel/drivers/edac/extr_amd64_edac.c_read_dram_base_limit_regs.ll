; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/edac/extr_amd64_edac.c_read_dram_base_limit_regs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/edac/extr_amd64_edac.c_read_dram_base_limit_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpuinfo_x86 = type { i32 }
%struct.amd64_pvt = type { %struct.TYPE_6__*, %struct.pci_dev* }
%struct.TYPE_6__ = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.pci_dev = type { i32 }

@boot_cpu_data = common dso_local global %struct.cpuinfo_x86 zeroinitializer, align 4
@DRAM_BASE_LO = common dso_local global i64 0, align 8
@DRAM_LIMIT_LO = common dso_local global i64 0, align 8
@DRAM_BASE_HI = common dso_local global i64 0, align 8
@DRAM_LIMIT_HI = common dso_local global i64 0, align 8
@DRAM_LOCAL_NODE_LIM = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amd64_pvt*, i32)* @read_dram_base_limit_regs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @read_dram_base_limit_regs(%struct.amd64_pvt* %0, i32 %1) #0 {
  %3 = alloca %struct.amd64_pvt*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.cpuinfo_x86*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.pci_dev*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.amd64_pvt* %0, %struct.amd64_pvt** %3, align 8
  store i32 %1, i32* %4, align 4
  store %struct.cpuinfo_x86* @boot_cpu_data, %struct.cpuinfo_x86** %5, align 8
  %10 = load i32, i32* %4, align 4
  %11 = shl i32 %10, 3
  store i32 %11, i32* %6, align 4
  %12 = load %struct.amd64_pvt*, %struct.amd64_pvt** %3, align 8
  %13 = getelementptr inbounds %struct.amd64_pvt, %struct.amd64_pvt* %12, i32 0, i32 1
  %14 = load %struct.pci_dev*, %struct.pci_dev** %13, align 8
  %15 = load i64, i64* @DRAM_BASE_LO, align 8
  %16 = load i32, i32* %6, align 4
  %17 = sext i32 %16 to i64
  %18 = add nsw i64 %15, %17
  %19 = load %struct.amd64_pvt*, %struct.amd64_pvt** %3, align 8
  %20 = getelementptr inbounds %struct.amd64_pvt, %struct.amd64_pvt* %19, i32 0, i32 0
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %22 = load i32, i32* %4, align 4
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = call i32 @amd64_read_pci_cfg(%struct.pci_dev* %14, i64 %18, i32* %26)
  %28 = load %struct.amd64_pvt*, %struct.amd64_pvt** %3, align 8
  %29 = getelementptr inbounds %struct.amd64_pvt, %struct.amd64_pvt* %28, i32 0, i32 1
  %30 = load %struct.pci_dev*, %struct.pci_dev** %29, align 8
  %31 = load i64, i64* @DRAM_LIMIT_LO, align 8
  %32 = load i32, i32* %6, align 4
  %33 = sext i32 %32 to i64
  %34 = add nsw i64 %31, %33
  %35 = load %struct.amd64_pvt*, %struct.amd64_pvt** %3, align 8
  %36 = getelementptr inbounds %struct.amd64_pvt, %struct.amd64_pvt* %35, i32 0, i32 0
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %36, align 8
  %38 = load i32, i32* %4, align 4
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  %43 = call i32 @amd64_read_pci_cfg(%struct.pci_dev* %30, i64 %34, i32* %42)
  %44 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %5, align 8
  %45 = getelementptr inbounds %struct.cpuinfo_x86, %struct.cpuinfo_x86* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = icmp eq i32 %46, 15
  br i1 %47, label %48, label %49

48:                                               ; preds = %2
  br label %162

49:                                               ; preds = %2
  %50 = load %struct.amd64_pvt*, %struct.amd64_pvt** %3, align 8
  %51 = load i32, i32* %4, align 4
  %52 = call i32 @dram_rw(%struct.amd64_pvt* %50, i32 %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %55, label %54

54:                                               ; preds = %49
  br label %162

55:                                               ; preds = %49
  %56 = load %struct.amd64_pvt*, %struct.amd64_pvt** %3, align 8
  %57 = getelementptr inbounds %struct.amd64_pvt, %struct.amd64_pvt* %56, i32 0, i32 1
  %58 = load %struct.pci_dev*, %struct.pci_dev** %57, align 8
  %59 = load i64, i64* @DRAM_BASE_HI, align 8
  %60 = load i32, i32* %6, align 4
  %61 = sext i32 %60 to i64
  %62 = add nsw i64 %59, %61
  %63 = load %struct.amd64_pvt*, %struct.amd64_pvt** %3, align 8
  %64 = getelementptr inbounds %struct.amd64_pvt, %struct.amd64_pvt* %63, i32 0, i32 0
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %64, align 8
  %66 = load i32, i32* %4, align 4
  %67 = zext i32 %66 to i64
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 1
  %71 = call i32 @amd64_read_pci_cfg(%struct.pci_dev* %58, i64 %62, i32* %70)
  %72 = load %struct.amd64_pvt*, %struct.amd64_pvt** %3, align 8
  %73 = getelementptr inbounds %struct.amd64_pvt, %struct.amd64_pvt* %72, i32 0, i32 1
  %74 = load %struct.pci_dev*, %struct.pci_dev** %73, align 8
  %75 = load i64, i64* @DRAM_LIMIT_HI, align 8
  %76 = load i32, i32* %6, align 4
  %77 = sext i32 %76 to i64
  %78 = add nsw i64 %75, %77
  %79 = load %struct.amd64_pvt*, %struct.amd64_pvt** %3, align 8
  %80 = getelementptr inbounds %struct.amd64_pvt, %struct.amd64_pvt* %79, i32 0, i32 0
  %81 = load %struct.TYPE_6__*, %struct.TYPE_6__** %80, align 8
  %82 = load i32, i32* %4, align 4
  %83 = zext i32 %82 to i64
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i64 %83
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 1
  %87 = call i32 @amd64_read_pci_cfg(%struct.pci_dev* %74, i64 %78, i32* %86)
  %88 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %5, align 8
  %89 = getelementptr inbounds %struct.cpuinfo_x86, %struct.cpuinfo_x86* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = icmp eq i32 %90, 21
  br i1 %91, label %92, label %162

92:                                               ; preds = %55
  store %struct.pci_dev* null, %struct.pci_dev** %7, align 8
  %93 = load %struct.amd64_pvt*, %struct.amd64_pvt** %3, align 8
  %94 = load i32, i32* %4, align 4
  %95 = call i64 @dram_dst_node(%struct.amd64_pvt* %93, i32 %94)
  store i64 %95, i64* %8, align 8
  %96 = load i64, i64* %8, align 8
  %97 = add nsw i64 24, %96
  %98 = call i32 @PCI_DEVFN(i64 %97, i32 1)
  %99 = call %struct.pci_dev* @pci_get_domain_bus_and_slot(i32 0, i32 0, i32 %98)
  store %struct.pci_dev* %99, %struct.pci_dev** %7, align 8
  %100 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %101 = icmp ne %struct.pci_dev* %100, null
  %102 = xor i1 %101, true
  %103 = zext i1 %102 to i32
  %104 = call i64 @WARN_ON(i32 %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %107

106:                                              ; preds = %92
  br label %162

107:                                              ; preds = %92
  %108 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %109 = load i64, i64* @DRAM_LOCAL_NODE_LIM, align 8
  %110 = call i32 @amd64_read_pci_cfg(%struct.pci_dev* %108, i64 %109, i32* %9)
  %111 = call i32 @GENMASK(i32 0, i32 15)
  %112 = load %struct.amd64_pvt*, %struct.amd64_pvt** %3, align 8
  %113 = getelementptr inbounds %struct.amd64_pvt, %struct.amd64_pvt* %112, i32 0, i32 0
  %114 = load %struct.TYPE_6__*, %struct.TYPE_6__** %113, align 8
  %115 = load i32, i32* %4, align 4
  %116 = zext i32 %115 to i64
  %117 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %114, i64 %116
  %118 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = and i32 %120, %111
  store i32 %121, i32* %119, align 4
  %122 = load i32, i32* %9, align 4
  %123 = and i32 %122, 8191
  %124 = shl i32 %123, 3
  %125 = or i32 %124, 7
  %126 = shl i32 %125, 16
  %127 = load %struct.amd64_pvt*, %struct.amd64_pvt** %3, align 8
  %128 = getelementptr inbounds %struct.amd64_pvt, %struct.amd64_pvt* %127, i32 0, i32 0
  %129 = load %struct.TYPE_6__*, %struct.TYPE_6__** %128, align 8
  %130 = load i32, i32* %4, align 4
  %131 = zext i32 %130 to i64
  %132 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %129, i64 %131
  %133 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = or i32 %135, %126
  store i32 %136, i32* %134, align 4
  %137 = call i32 @GENMASK(i32 0, i32 7)
  %138 = load %struct.amd64_pvt*, %struct.amd64_pvt** %3, align 8
  %139 = getelementptr inbounds %struct.amd64_pvt, %struct.amd64_pvt* %138, i32 0, i32 0
  %140 = load %struct.TYPE_6__*, %struct.TYPE_6__** %139, align 8
  %141 = load i32, i32* %4, align 4
  %142 = zext i32 %141 to i64
  %143 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %140, i64 %142
  %144 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 4
  %147 = and i32 %146, %137
  store i32 %147, i32* %145, align 4
  %148 = load i32, i32* %9, align 4
  %149 = ashr i32 %148, 13
  %150 = load %struct.amd64_pvt*, %struct.amd64_pvt** %3, align 8
  %151 = getelementptr inbounds %struct.amd64_pvt, %struct.amd64_pvt* %150, i32 0, i32 0
  %152 = load %struct.TYPE_6__*, %struct.TYPE_6__** %151, align 8
  %153 = load i32, i32* %4, align 4
  %154 = zext i32 %153 to i64
  %155 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %152, i64 %154
  %156 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %155, i32 0, i32 0
  %157 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 4
  %159 = or i32 %158, %149
  store i32 %159, i32* %157, align 4
  %160 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %161 = call i32 @pci_dev_put(%struct.pci_dev* %160)
  br label %162

162:                                              ; preds = %48, %54, %106, %107, %55
  ret void
}

declare dso_local i32 @amd64_read_pci_cfg(%struct.pci_dev*, i64, i32*) #1

declare dso_local i32 @dram_rw(%struct.amd64_pvt*, i32) #1

declare dso_local i64 @dram_dst_node(%struct.amd64_pvt*, i32) #1

declare dso_local %struct.pci_dev* @pci_get_domain_bus_and_slot(i32, i32, i32) #1

declare dso_local i32 @PCI_DEVFN(i64, i32) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @GENMASK(i32, i32) #1

declare dso_local i32 @pci_dev_put(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
