; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_pcie.c_qib_tune_pcie_caps.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_pcie.c_qib_tune_pcie_caps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qib_devdata = type { %struct.pci_dev* }
%struct.pci_dev = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, %struct.pci_dev* }

@.str = private unnamed_addr constant [17 x i8] c"Parent not root\0A\00", align 1
@PCI_EXP_DEVCAP = common dso_local global i32 0, align 4
@PCI_EXP_DEVCTL = common dso_local global i32 0, align 4
@PCI_EXP_DEVCAP_PAYLOAD = common dso_local global i32 0, align 4
@PCI_EXP_DEVCTL_PAYLOAD = common dso_local global i32 0, align 4
@qib_pcie_caps = common dso_local global i32 0, align 4
@PCI_EXP_DEVCTL_READRQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qib_devdata*)* @qib_tune_pcie_caps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qib_tune_pcie_caps(%struct.qib_devdata* %0) #0 {
  %2 = alloca %struct.qib_devdata*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.qib_devdata* %0, %struct.qib_devdata** %2, align 8
  store i32 1, i32* %3, align 4
  %13 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %14 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %13, i32 0, i32 0
  %15 = load %struct.pci_dev*, %struct.pci_dev** %14, align 8
  %16 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 1
  %19 = load %struct.pci_dev*, %struct.pci_dev** %18, align 8
  store %struct.pci_dev* %19, %struct.pci_dev** %4, align 8
  %20 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %21 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %1
  %27 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %28 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %27, i32 0, i32 0
  %29 = load %struct.pci_dev*, %struct.pci_dev** %28, align 8
  %30 = call i32 @qib_devinfo(%struct.pci_dev* %29, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  br label %177

31:                                               ; preds = %1
  %32 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %33 = call i32 @pci_is_pcie(%struct.pci_dev* %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %31
  %36 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %37 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %36, i32 0, i32 0
  %38 = load %struct.pci_dev*, %struct.pci_dev** %37, align 8
  %39 = call i32 @pci_is_pcie(%struct.pci_dev* %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %35, %31
  br label %177

42:                                               ; preds = %35
  %43 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %44 = load i32, i32* @PCI_EXP_DEVCAP, align 4
  %45 = call i32 @pcie_capability_read_word(%struct.pci_dev* %43, i32 %44, i32* %5)
  %46 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %47 = load i32, i32* @PCI_EXP_DEVCTL, align 4
  %48 = call i32 @pcie_capability_read_word(%struct.pci_dev* %46, i32 %47, i32* %6)
  %49 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %50 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %49, i32 0, i32 0
  %51 = load %struct.pci_dev*, %struct.pci_dev** %50, align 8
  %52 = load i32, i32* @PCI_EXP_DEVCAP, align 4
  %53 = call i32 @pcie_capability_read_word(%struct.pci_dev* %51, i32 %52, i32* %7)
  %54 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %55 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %54, i32 0, i32 0
  %56 = load %struct.pci_dev*, %struct.pci_dev** %55, align 8
  %57 = load i32, i32* @PCI_EXP_DEVCTL, align 4
  %58 = call i32 @pcie_capability_read_word(%struct.pci_dev* %56, i32 %57, i32* %8)
  store i32 0, i32* %3, align 4
  %59 = load i32, i32* %5, align 4
  %60 = load i32, i32* @PCI_EXP_DEVCAP_PAYLOAD, align 4
  %61 = call i32 @fld2val(i32 %59, i32 %60)
  store i32 %61, i32* %9, align 4
  %62 = load i32, i32* %7, align 4
  %63 = load i32, i32* @PCI_EXP_DEVCAP_PAYLOAD, align 4
  %64 = call i32 @fld2val(i32 %62, i32 %63)
  store i32 %64, i32* %10, align 4
  %65 = load i32, i32* %9, align 4
  %66 = load i32, i32* %10, align 4
  %67 = icmp sgt i32 %65, %66
  br i1 %67, label %68, label %70

68:                                               ; preds = %42
  %69 = load i32, i32* %10, align 4
  store i32 %69, i32* %9, align 4
  br label %70

70:                                               ; preds = %68, %42
  %71 = load i32, i32* %6, align 4
  %72 = load i32, i32* @PCI_EXP_DEVCTL_PAYLOAD, align 4
  %73 = call i32 @fld2val(i32 %71, i32 %72)
  store i32 %73, i32* %11, align 4
  %74 = load i32, i32* %8, align 4
  %75 = load i32, i32* @PCI_EXP_DEVCTL_PAYLOAD, align 4
  %76 = call i32 @fld2val(i32 %74, i32 %75)
  store i32 %76, i32* %12, align 4
  %77 = load i32, i32* %9, align 4
  %78 = load i32, i32* @qib_pcie_caps, align 4
  %79 = and i32 %78, 7
  %80 = icmp sgt i32 %77, %79
  br i1 %80, label %81, label %84

81:                                               ; preds = %70
  %82 = load i32, i32* @qib_pcie_caps, align 4
  %83 = and i32 %82, 7
  store i32 %83, i32* %9, align 4
  br label %84

84:                                               ; preds = %81, %70
  %85 = load i32, i32* %9, align 4
  %86 = load i32, i32* %11, align 4
  %87 = icmp sgt i32 %85, %86
  br i1 %87, label %88, label %102

88:                                               ; preds = %84
  %89 = load i32, i32* %9, align 4
  store i32 %89, i32* %11, align 4
  %90 = load i32, i32* %6, align 4
  %91 = load i32, i32* @PCI_EXP_DEVCTL_PAYLOAD, align 4
  %92 = xor i32 %91, -1
  %93 = and i32 %90, %92
  %94 = load i32, i32* %11, align 4
  %95 = load i32, i32* @PCI_EXP_DEVCTL_PAYLOAD, align 4
  %96 = call i32 @val2fld(i32 %94, i32 %95)
  %97 = or i32 %93, %96
  store i32 %97, i32* %6, align 4
  %98 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %99 = load i32, i32* @PCI_EXP_DEVCTL, align 4
  %100 = load i32, i32* %6, align 4
  %101 = call i32 @pcie_capability_write_word(%struct.pci_dev* %98, i32 %99, i32 %100)
  br label %102

102:                                              ; preds = %88, %84
  %103 = load i32, i32* %9, align 4
  %104 = load i32, i32* %12, align 4
  %105 = icmp sgt i32 %103, %104
  br i1 %105, label %106, label %122

106:                                              ; preds = %102
  %107 = load i32, i32* %9, align 4
  store i32 %107, i32* %12, align 4
  %108 = load i32, i32* %8, align 4
  %109 = load i32, i32* @PCI_EXP_DEVCTL_PAYLOAD, align 4
  %110 = xor i32 %109, -1
  %111 = and i32 %108, %110
  %112 = load i32, i32* %12, align 4
  %113 = load i32, i32* @PCI_EXP_DEVCTL_PAYLOAD, align 4
  %114 = call i32 @val2fld(i32 %112, i32 %113)
  %115 = or i32 %111, %114
  store i32 %115, i32* %8, align 4
  %116 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %117 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %116, i32 0, i32 0
  %118 = load %struct.pci_dev*, %struct.pci_dev** %117, align 8
  %119 = load i32, i32* @PCI_EXP_DEVCTL, align 4
  %120 = load i32, i32* %8, align 4
  %121 = call i32 @pcie_capability_write_word(%struct.pci_dev* %118, i32 %119, i32 %120)
  br label %122

122:                                              ; preds = %106, %102
  store i32 5, i32* %9, align 4
  %123 = load i32, i32* %9, align 4
  %124 = load i32, i32* @qib_pcie_caps, align 4
  %125 = ashr i32 %124, 4
  %126 = and i32 %125, 7
  %127 = icmp sgt i32 %123, %126
  br i1 %127, label %128, label %132

128:                                              ; preds = %122
  %129 = load i32, i32* @qib_pcie_caps, align 4
  %130 = ashr i32 %129, 4
  %131 = and i32 %130, 7
  store i32 %131, i32* %9, align 4
  br label %132

132:                                              ; preds = %128, %122
  %133 = load i32, i32* %6, align 4
  %134 = load i32, i32* @PCI_EXP_DEVCTL_READRQ, align 4
  %135 = call i32 @fld2val(i32 %133, i32 %134)
  store i32 %135, i32* %11, align 4
  %136 = load i32, i32* %8, align 4
  %137 = load i32, i32* @PCI_EXP_DEVCTL_READRQ, align 4
  %138 = call i32 @fld2val(i32 %136, i32 %137)
  store i32 %138, i32* %12, align 4
  %139 = load i32, i32* %9, align 4
  %140 = load i32, i32* %11, align 4
  %141 = icmp sgt i32 %139, %140
  br i1 %141, label %142, label %156

142:                                              ; preds = %132
  %143 = load i32, i32* %9, align 4
  store i32 %143, i32* %11, align 4
  %144 = load i32, i32* %6, align 4
  %145 = load i32, i32* @PCI_EXP_DEVCTL_READRQ, align 4
  %146 = xor i32 %145, -1
  %147 = and i32 %144, %146
  %148 = load i32, i32* %11, align 4
  %149 = load i32, i32* @PCI_EXP_DEVCTL_READRQ, align 4
  %150 = call i32 @val2fld(i32 %148, i32 %149)
  %151 = or i32 %147, %150
  store i32 %151, i32* %6, align 4
  %152 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %153 = load i32, i32* @PCI_EXP_DEVCTL, align 4
  %154 = load i32, i32* %6, align 4
  %155 = call i32 @pcie_capability_write_word(%struct.pci_dev* %152, i32 %153, i32 %154)
  br label %156

156:                                              ; preds = %142, %132
  %157 = load i32, i32* %9, align 4
  %158 = load i32, i32* %12, align 4
  %159 = icmp sgt i32 %157, %158
  br i1 %159, label %160, label %176

160:                                              ; preds = %156
  %161 = load i32, i32* %9, align 4
  store i32 %161, i32* %12, align 4
  %162 = load i32, i32* %8, align 4
  %163 = load i32, i32* @PCI_EXP_DEVCTL_READRQ, align 4
  %164 = xor i32 %163, -1
  %165 = and i32 %162, %164
  %166 = load i32, i32* %12, align 4
  %167 = load i32, i32* @PCI_EXP_DEVCTL_READRQ, align 4
  %168 = call i32 @val2fld(i32 %166, i32 %167)
  %169 = or i32 %165, %168
  store i32 %169, i32* %8, align 4
  %170 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %171 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %170, i32 0, i32 0
  %172 = load %struct.pci_dev*, %struct.pci_dev** %171, align 8
  %173 = load i32, i32* @PCI_EXP_DEVCTL, align 4
  %174 = load i32, i32* %8, align 4
  %175 = call i32 @pcie_capability_write_word(%struct.pci_dev* %172, i32 %173, i32 %174)
  br label %176

176:                                              ; preds = %160, %156
  br label %177

177:                                              ; preds = %176, %41, %26
  %178 = load i32, i32* %3, align 4
  ret i32 %178
}

declare dso_local i32 @qib_devinfo(%struct.pci_dev*, i8*) #1

declare dso_local i32 @pci_is_pcie(%struct.pci_dev*) #1

declare dso_local i32 @pcie_capability_read_word(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @fld2val(i32, i32) #1

declare dso_local i32 @val2fld(i32, i32) #1

declare dso_local i32 @pcie_capability_write_word(%struct.pci_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
