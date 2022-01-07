; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/netxen/extr_netxen_nic_main.c_netxen_setup_intr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/netxen/extr_netxen_nic_main.c_netxen_setup_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netxen_legacy_intr_set = type { i32, i32, i32, i32 }
%struct.netxen_adapter = type { i32, i32, %struct.TYPE_4__*, %struct.TYPE_3__, i8*, i64, i64, i8*, i8*, i8*, i8*, i32, %struct.pci_dev* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i64, i64 }
%struct.pci_dev = type { i32, i32 }

@MSIX_ENTRIES_PER_ADAPTER = common dso_local global i64 0, align 8
@NETXEN_NIC_MSI_ENABLED = common dso_local global i32 0, align 4
@NETXEN_NIC_MSIX_ENABLED = common dso_local global i32 0, align 4
@NX_P3_B0 = common dso_local global i64 0, align 8
@legacy_intr = common dso_local global %struct.netxen_legacy_intr_set* null, align 8
@ISR_INT_VECTOR = common dso_local global i32 0, align 4
@NX_P3_B1 = common dso_local global i64 0, align 8
@ISR_INT_STATE_REG = common dso_local global i32 0, align 4
@CRB_INT_VECTOR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"using msi-x interrupts\0A\00", align 1
@use_msi = common dso_local global i64 0, align 8
@msi_tgt_status = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [22 x i8] c"using msi interrupts\0A\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"using legacy interrupts\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.netxen_adapter*)* @netxen_setup_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @netxen_setup_intr(%struct.netxen_adapter* %0) #0 {
  %2 = alloca %struct.netxen_adapter*, align 8
  %3 = alloca %struct.netxen_legacy_intr_set*, align 8
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.netxen_adapter* %0, %struct.netxen_adapter** %2, align 8
  %7 = load %struct.netxen_adapter*, %struct.netxen_adapter** %2, align 8
  %8 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %7, i32 0, i32 12
  %9 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  store %struct.pci_dev* %9, %struct.pci_dev** %4, align 8
  %10 = load %struct.netxen_adapter*, %struct.netxen_adapter** %2, align 8
  %11 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %10, i32 0, i32 5
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %24

14:                                               ; preds = %1
  %15 = call i64 (...) @num_online_cpus()
  %16 = load i64, i64* @MSIX_ENTRIES_PER_ADAPTER, align 8
  %17 = icmp sge i64 %15, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %14
  %19 = load i64, i64* @MSIX_ENTRIES_PER_ADAPTER, align 8
  br label %21

20:                                               ; preds = %14
  br label %21

21:                                               ; preds = %20, %18
  %22 = phi i64 [ %19, %18 ], [ 2, %20 ]
  %23 = trunc i64 %22 to i32
  store i32 %23, i32* %6, align 4
  br label %25

24:                                               ; preds = %1
  store i32 1, i32* %6, align 4
  br label %25

25:                                               ; preds = %24, %21
  %26 = load %struct.netxen_adapter*, %struct.netxen_adapter** %2, align 8
  %27 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %26, i32 0, i32 0
  store i32 1, i32* %27, align 8
  %28 = load i32, i32* @NETXEN_NIC_MSI_ENABLED, align 4
  %29 = load i32, i32* @NETXEN_NIC_MSIX_ENABLED, align 4
  %30 = or i32 %28, %29
  %31 = xor i32 %30, -1
  %32 = load %struct.netxen_adapter*, %struct.netxen_adapter** %2, align 8
  %33 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = and i32 %34, %31
  store i32 %35, i32* %33, align 4
  %36 = load %struct.netxen_adapter*, %struct.netxen_adapter** %2, align 8
  %37 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %36, i32 0, i32 3
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @NX_P3_B0, align 8
  %41 = icmp sge i64 %39, %40
  br i1 %41, label %42, label %49

42:                                               ; preds = %25
  %43 = load %struct.netxen_legacy_intr_set*, %struct.netxen_legacy_intr_set** @legacy_intr, align 8
  %44 = load %struct.netxen_adapter*, %struct.netxen_adapter** %2, align 8
  %45 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %44, i32 0, i32 3
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = getelementptr inbounds %struct.netxen_legacy_intr_set, %struct.netxen_legacy_intr_set* %43, i64 %47
  store %struct.netxen_legacy_intr_set* %48, %struct.netxen_legacy_intr_set** %3, align 8
  br label %52

49:                                               ; preds = %25
  %50 = load %struct.netxen_legacy_intr_set*, %struct.netxen_legacy_intr_set** @legacy_intr, align 8
  %51 = getelementptr inbounds %struct.netxen_legacy_intr_set, %struct.netxen_legacy_intr_set* %50, i64 0
  store %struct.netxen_legacy_intr_set* %51, %struct.netxen_legacy_intr_set** %3, align 8
  br label %52

52:                                               ; preds = %49, %42
  %53 = load %struct.netxen_legacy_intr_set*, %struct.netxen_legacy_intr_set** %3, align 8
  %54 = getelementptr inbounds %struct.netxen_legacy_intr_set, %struct.netxen_legacy_intr_set* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.netxen_adapter*, %struct.netxen_adapter** %2, align 8
  %57 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %56, i32 0, i32 11
  store i32 %55, i32* %57, align 8
  %58 = load %struct.netxen_adapter*, %struct.netxen_adapter** %2, align 8
  %59 = load %struct.netxen_legacy_intr_set*, %struct.netxen_legacy_intr_set** %3, align 8
  %60 = getelementptr inbounds %struct.netxen_legacy_intr_set, %struct.netxen_legacy_intr_set* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = call i8* @netxen_get_ioaddr(%struct.netxen_adapter* %58, i32 %61)
  %63 = load %struct.netxen_adapter*, %struct.netxen_adapter** %2, align 8
  %64 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %63, i32 0, i32 4
  store i8* %62, i8** %64, align 8
  %65 = load %struct.netxen_adapter*, %struct.netxen_adapter** %2, align 8
  %66 = load %struct.netxen_legacy_intr_set*, %struct.netxen_legacy_intr_set** %3, align 8
  %67 = getelementptr inbounds %struct.netxen_legacy_intr_set, %struct.netxen_legacy_intr_set* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = call i8* @netxen_get_ioaddr(%struct.netxen_adapter* %65, i32 %68)
  %70 = load %struct.netxen_adapter*, %struct.netxen_adapter** %2, align 8
  %71 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %70, i32 0, i32 10
  store i8* %69, i8** %71, align 8
  %72 = load %struct.netxen_adapter*, %struct.netxen_adapter** %2, align 8
  %73 = load %struct.netxen_legacy_intr_set*, %struct.netxen_legacy_intr_set** %3, align 8
  %74 = getelementptr inbounds %struct.netxen_legacy_intr_set, %struct.netxen_legacy_intr_set* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i8* @netxen_get_ioaddr(%struct.netxen_adapter* %72, i32 %75)
  %77 = load %struct.netxen_adapter*, %struct.netxen_adapter** %2, align 8
  %78 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %77, i32 0, i32 9
  store i8* %76, i8** %78, align 8
  %79 = load %struct.netxen_adapter*, %struct.netxen_adapter** %2, align 8
  %80 = load i32, i32* @ISR_INT_VECTOR, align 4
  %81 = call i8* @netxen_get_ioaddr(%struct.netxen_adapter* %79, i32 %80)
  %82 = load %struct.netxen_adapter*, %struct.netxen_adapter** %2, align 8
  %83 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %82, i32 0, i32 8
  store i8* %81, i8** %83, align 8
  %84 = load %struct.netxen_adapter*, %struct.netxen_adapter** %2, align 8
  %85 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %84, i32 0, i32 3
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* @NX_P3_B1, align 8
  %89 = icmp sge i64 %87, %88
  br i1 %89, label %90, label %96

90:                                               ; preds = %52
  %91 = load %struct.netxen_adapter*, %struct.netxen_adapter** %2, align 8
  %92 = load i32, i32* @ISR_INT_STATE_REG, align 4
  %93 = call i8* @netxen_get_ioaddr(%struct.netxen_adapter* %91, i32 %92)
  %94 = load %struct.netxen_adapter*, %struct.netxen_adapter** %2, align 8
  %95 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %94, i32 0, i32 7
  store i8* %93, i8** %95, align 8
  br label %102

96:                                               ; preds = %52
  %97 = load %struct.netxen_adapter*, %struct.netxen_adapter** %2, align 8
  %98 = load i32, i32* @CRB_INT_VECTOR, align 4
  %99 = call i8* @netxen_get_ioaddr(%struct.netxen_adapter* %97, i32 %98)
  %100 = load %struct.netxen_adapter*, %struct.netxen_adapter** %2, align 8
  %101 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %100, i32 0, i32 7
  store i8* %99, i8** %101, align 8
  br label %102

102:                                              ; preds = %96, %90
  %103 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %104 = call i32 @netxen_set_msix_bit(%struct.pci_dev* %103, i32 0)
  %105 = load %struct.netxen_adapter*, %struct.netxen_adapter** %2, align 8
  %106 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %105, i32 0, i32 6
  %107 = load i64, i64* %106, align 8
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %148

109:                                              ; preds = %102
  %110 = load %struct.netxen_adapter*, %struct.netxen_adapter** %2, align 8
  %111 = load i32, i32* %6, align 4
  %112 = call i32 @netxen_init_msix_entries(%struct.netxen_adapter* %110, i32 %111)
  %113 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %114 = load %struct.netxen_adapter*, %struct.netxen_adapter** %2, align 8
  %115 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %114, i32 0, i32 2
  %116 = load %struct.TYPE_4__*, %struct.TYPE_4__** %115, align 8
  %117 = load i32, i32* %6, align 4
  %118 = call i32 @pci_enable_msix(%struct.pci_dev* %113, %struct.TYPE_4__* %116, i32 %117)
  store i32 %118, i32* %5, align 4
  %119 = load i32, i32* %5, align 4
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %121, label %141

121:                                              ; preds = %109
  %122 = load i32, i32* @NETXEN_NIC_MSIX_ENABLED, align 4
  %123 = load %struct.netxen_adapter*, %struct.netxen_adapter** %2, align 8
  %124 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = or i32 %125, %122
  store i32 %126, i32* %124, align 4
  %127 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %128 = call i32 @netxen_set_msix_bit(%struct.pci_dev* %127, i32 1)
  %129 = load %struct.netxen_adapter*, %struct.netxen_adapter** %2, align 8
  %130 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %129, i32 0, i32 5
  %131 = load i64, i64* %130, align 8
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %137

133:                                              ; preds = %121
  %134 = load i32, i32* %6, align 4
  %135 = load %struct.netxen_adapter*, %struct.netxen_adapter** %2, align 8
  %136 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %135, i32 0, i32 0
  store i32 %134, i32* %136, align 8
  br label %137

137:                                              ; preds = %133, %121
  %138 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %139 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %138, i32 0, i32 1
  %140 = call i32 @dev_info(i32* %139, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  br label %195

141:                                              ; preds = %109
  %142 = load i32, i32* %5, align 4
  %143 = icmp sgt i32 %142, 0
  br i1 %143, label %144, label %147

144:                                              ; preds = %141
  %145 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %146 = call i32 @pci_disable_msix(%struct.pci_dev* %145)
  br label %147

147:                                              ; preds = %144, %141
  br label %148

148:                                              ; preds = %147, %102
  %149 = load i64, i64* @use_msi, align 8
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %183

151:                                              ; preds = %148
  %152 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %153 = call i32 @pci_enable_msi(%struct.pci_dev* %152)
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %183, label %155

155:                                              ; preds = %151
  %156 = load i32, i32* @NETXEN_NIC_MSI_ENABLED, align 4
  %157 = load %struct.netxen_adapter*, %struct.netxen_adapter** %2, align 8
  %158 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 4
  %160 = or i32 %159, %156
  store i32 %160, i32* %158, align 4
  %161 = load %struct.netxen_adapter*, %struct.netxen_adapter** %2, align 8
  %162 = load i32*, i32** @msi_tgt_status, align 8
  %163 = load %struct.netxen_adapter*, %struct.netxen_adapter** %2, align 8
  %164 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %163, i32 0, i32 3
  %165 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %164, i32 0, i32 1
  %166 = load i64, i64* %165, align 8
  %167 = getelementptr inbounds i32, i32* %162, i64 %166
  %168 = load i32, i32* %167, align 4
  %169 = call i8* @netxen_get_ioaddr(%struct.netxen_adapter* %161, i32 %168)
  %170 = load %struct.netxen_adapter*, %struct.netxen_adapter** %2, align 8
  %171 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %170, i32 0, i32 4
  store i8* %169, i8** %171, align 8
  %172 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %173 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %172, i32 0, i32 1
  %174 = call i32 @dev_info(i32* %173, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %175 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %176 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 4
  %178 = load %struct.netxen_adapter*, %struct.netxen_adapter** %2, align 8
  %179 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %178, i32 0, i32 2
  %180 = load %struct.TYPE_4__*, %struct.TYPE_4__** %179, align 8
  %181 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %180, i64 0
  %182 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %181, i32 0, i32 0
  store i32 %177, i32* %182, align 4
  br label %195

183:                                              ; preds = %151, %148
  %184 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %185 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %184, i32 0, i32 1
  %186 = call i32 @dev_info(i32* %185, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  %187 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %188 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 4
  %190 = load %struct.netxen_adapter*, %struct.netxen_adapter** %2, align 8
  %191 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %190, i32 0, i32 2
  %192 = load %struct.TYPE_4__*, %struct.TYPE_4__** %191, align 8
  %193 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %192, i64 0
  %194 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %193, i32 0, i32 0
  store i32 %189, i32* %194, align 4
  br label %195

195:                                              ; preds = %183, %155, %137
  ret void
}

declare dso_local i64 @num_online_cpus(...) #1

declare dso_local i8* @netxen_get_ioaddr(%struct.netxen_adapter*, i32) #1

declare dso_local i32 @netxen_set_msix_bit(%struct.pci_dev*, i32) #1

declare dso_local i32 @netxen_init_msix_entries(%struct.netxen_adapter*, i32) #1

declare dso_local i32 @pci_enable_msix(%struct.pci_dev*, %struct.TYPE_4__*, i32) #1

declare dso_local i32 @dev_info(i32*, i8*) #1

declare dso_local i32 @pci_disable_msix(%struct.pci_dev*) #1

declare dso_local i32 @pci_enable_msi(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
