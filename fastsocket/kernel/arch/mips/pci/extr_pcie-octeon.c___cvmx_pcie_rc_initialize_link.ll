; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/mips/pci/extr_pcie-octeon.c___cvmx_pcie_rc_initialize_link.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/mips/pci/extr_pcie-octeon.c___cvmx_pcie_rc_initialize_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.cvmx_pescx_ctl_status = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64, i32, i32 }
%union.cvmx_pciercx_cfg452 = type { i8* }
%union.cvmx_pciercx_cfg032 = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i64, i32 }
%union.cvmx_pciercx_cfg448 = type { i8* }
%union.cvmx_pciercx_cfg455 = type { i8* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { i32 }

@OCTEON_CN52XX_PASS1_X = common dso_local global i32 0, align 4
@OCTEON_CN52XX = common dso_local global i32 0, align 4
@OCTEON_CN52XX_PASS1_0 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"PCIe: Waiting for port %d link\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"PCIe: Port %d link timeout\0A\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"PCIe: Port %d link active, %d lanes\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @__cvmx_pcie_rc_initialize_link to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__cvmx_pcie_rc_initialize_link(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %union.cvmx_pescx_ctl_status, align 8
  %6 = alloca %union.cvmx_pciercx_cfg452, align 8
  %7 = alloca %union.cvmx_pciercx_cfg032, align 8
  %8 = alloca %union.cvmx_pciercx_cfg448, align 8
  %9 = alloca %union.cvmx_pciercx_cfg455, align 8
  store i32 %0, i32* %3, align 4
  %10 = load i32, i32* %3, align 4
  %11 = load i32, i32* %3, align 4
  %12 = call i32 @CVMX_PCIERCX_CFG452(i32 %11)
  %13 = call i8* @cvmx_pcie_cfgx_read(i32 %10, i32 %12)
  %14 = bitcast %union.cvmx_pciercx_cfg452* %6 to i8**
  store i8* %13, i8** %14, align 8
  %15 = load i32, i32* %3, align 4
  %16 = call i32 @CVMX_PESCX_CTL_STATUS(i32 %15)
  %17 = call i8* @cvmx_read_csr(i32 %16)
  %18 = bitcast %union.cvmx_pescx_ctl_status* %5 to i8**
  store i8* %17, i8** %18, align 8
  %19 = bitcast %union.cvmx_pescx_ctl_status* %5 to %struct.TYPE_9__*
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %1
  %24 = bitcast %union.cvmx_pciercx_cfg452* %6 to %struct.TYPE_7__*
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 0
  store i32 15, i32* %25, align 8
  br label %29

26:                                               ; preds = %1
  %27 = bitcast %union.cvmx_pciercx_cfg452* %6 to %struct.TYPE_7__*
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  store i32 7, i32* %28, align 8
  br label %29

29:                                               ; preds = %26, %23
  %30 = load i32, i32* %3, align 4
  %31 = load i32, i32* %3, align 4
  %32 = call i32 @CVMX_PCIERCX_CFG452(i32 %31)
  %33 = bitcast %union.cvmx_pciercx_cfg452* %6 to i8**
  %34 = load i8*, i8** %33, align 8
  %35 = call i32 @cvmx_pcie_cfgx_write(i32 %30, i32 %32, i8* %34)
  %36 = load i32, i32* @OCTEON_CN52XX_PASS1_X, align 4
  %37 = call i64 @OCTEON_IS_MODEL(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %53

39:                                               ; preds = %29
  %40 = load i32, i32* %3, align 4
  %41 = load i32, i32* %3, align 4
  %42 = call i32 @CVMX_PCIERCX_CFG455(i32 %41)
  %43 = call i8* @cvmx_pcie_cfgx_read(i32 %40, i32 %42)
  %44 = bitcast %union.cvmx_pciercx_cfg455* %9 to i8**
  store i8* %43, i8** %44, align 8
  %45 = bitcast %union.cvmx_pciercx_cfg455* %9 to %struct.TYPE_8__*
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 0
  store i32 1, i32* %46, align 8
  %47 = load i32, i32* %3, align 4
  %48 = load i32, i32* %3, align 4
  %49 = call i32 @CVMX_PCIERCX_CFG455(i32 %48)
  %50 = bitcast %union.cvmx_pciercx_cfg455* %9 to i8**
  %51 = load i8*, i8** %50, align 8
  %52 = call i32 @cvmx_pcie_cfgx_write(i32 %47, i32 %49, i8* %51)
  br label %53

53:                                               ; preds = %39, %29
  %54 = load i32, i32* @OCTEON_CN52XX, align 4
  %55 = call i64 @OCTEON_IS_MODEL(i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %68

57:                                               ; preds = %53
  %58 = load i32, i32* %3, align 4
  %59 = icmp eq i32 %58, 1
  br i1 %59, label %60, label %68

60:                                               ; preds = %57
  %61 = bitcast %union.cvmx_pescx_ctl_status* %5 to %struct.TYPE_9__*
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 1
  store i32 1, i32* %62, align 8
  %63 = load i32, i32* %3, align 4
  %64 = call i32 @CVMX_PESCX_CTL_STATUS(i32 %63)
  %65 = bitcast %union.cvmx_pescx_ctl_status* %5 to i8**
  %66 = load i8*, i8** %65, align 8
  %67 = call i32 @cvmx_write_csr(i32 %64, i8* %66)
  br label %68

68:                                               ; preds = %60, %57, %53
  %69 = load i32, i32* %3, align 4
  %70 = call i32 @CVMX_PESCX_CTL_STATUS(i32 %69)
  %71 = call i8* @cvmx_read_csr(i32 %70)
  %72 = bitcast %union.cvmx_pescx_ctl_status* %5 to i8**
  store i8* %71, i8** %72, align 8
  %73 = bitcast %union.cvmx_pescx_ctl_status* %5 to %struct.TYPE_9__*
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %73, i32 0, i32 2
  store i32 1, i32* %74, align 4
  %75 = load i32, i32* %3, align 4
  %76 = call i32 @CVMX_PESCX_CTL_STATUS(i32 %75)
  %77 = bitcast %union.cvmx_pescx_ctl_status* %5 to i8**
  %78 = load i8*, i8** %77, align 8
  %79 = call i32 @cvmx_write_csr(i32 %76, i8* %78)
  %80 = load i32, i32* @OCTEON_CN52XX_PASS1_0, align 4
  %81 = call i64 @OCTEON_IS_MODEL(i32 %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %68
  %84 = call i32 @__cvmx_helper_errata_qlm_disable_2nd_order_cdr(i32 0)
  br label %85

85:                                               ; preds = %83, %68
  %86 = load i32, i32* %3, align 4
  %87 = call i32 (i8*, i32, ...) @cvmx_dprintf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %86)
  %88 = call i32 (...) @cvmx_get_cycle()
  store i32 %88, i32* %4, align 4
  br label %89

89:                                               ; preds = %108, %85
  %90 = call i32 (...) @cvmx_get_cycle()
  %91 = load i32, i32* %4, align 4
  %92 = sub nsw i32 %90, %91
  %93 = call %struct.TYPE_12__* (...) @cvmx_sysinfo_get()
  %94 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = mul nsw i32 2, %95
  %97 = icmp sgt i32 %92, %96
  br i1 %97, label %98, label %101

98:                                               ; preds = %89
  %99 = load i32, i32* %3, align 4
  %100 = call i32 (i8*, i32, ...) @cvmx_dprintf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %99)
  store i32 -1, i32* %2, align 4
  br label %146

101:                                              ; preds = %89
  %102 = call i32 @cvmx_wait(i32 10000)
  %103 = load i32, i32* %3, align 4
  %104 = load i32, i32* %3, align 4
  %105 = call i32 @CVMX_PCIERCX_CFG032(i32 %104)
  %106 = call i8* @cvmx_pcie_cfgx_read(i32 %103, i32 %105)
  %107 = bitcast %union.cvmx_pciercx_cfg032* %7 to i8**
  store i8* %106, i8** %107, align 8
  br label %108

108:                                              ; preds = %101
  %109 = bitcast %union.cvmx_pciercx_cfg032* %7 to %struct.TYPE_10__*
  %110 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = icmp eq i64 %111, 0
  br i1 %112, label %89, label %113

113:                                              ; preds = %108
  %114 = load i32, i32* %3, align 4
  %115 = bitcast %union.cvmx_pciercx_cfg032* %7 to %struct.TYPE_10__*
  %116 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 8
  %118 = call i32 (i8*, i32, ...) @cvmx_dprintf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i32 %114, i32 %117)
  %119 = load i32, i32* %3, align 4
  %120 = load i32, i32* %3, align 4
  %121 = call i32 @CVMX_PCIERCX_CFG448(i32 %120)
  %122 = call i8* @cvmx_pcie_cfgx_read(i32 %119, i32 %121)
  %123 = bitcast %union.cvmx_pciercx_cfg448* %8 to i8**
  store i8* %122, i8** %123, align 8
  %124 = bitcast %union.cvmx_pciercx_cfg032* %7 to %struct.TYPE_10__*
  %125 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 8
  switch i32 %126, label %139 [
    i32 1, label %127
    i32 2, label %130
    i32 4, label %133
    i32 8, label %136
  ]

127:                                              ; preds = %113
  %128 = bitcast %union.cvmx_pciercx_cfg448* %8 to %struct.TYPE_11__*
  %129 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %128, i32 0, i32 0
  store i32 1677, i32* %129, align 8
  br label %139

130:                                              ; preds = %113
  %131 = bitcast %union.cvmx_pciercx_cfg448* %8 to %struct.TYPE_11__*
  %132 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %131, i32 0, i32 0
  store i32 867, i32* %132, align 8
  br label %139

133:                                              ; preds = %113
  %134 = bitcast %union.cvmx_pciercx_cfg448* %8 to %struct.TYPE_11__*
  %135 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %134, i32 0, i32 0
  store i32 462, i32* %135, align 8
  br label %139

136:                                              ; preds = %113
  %137 = bitcast %union.cvmx_pciercx_cfg448* %8 to %struct.TYPE_11__*
  %138 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %137, i32 0, i32 0
  store i32 258, i32* %138, align 8
  br label %139

139:                                              ; preds = %113, %136, %133, %130, %127
  %140 = load i32, i32* %3, align 4
  %141 = load i32, i32* %3, align 4
  %142 = call i32 @CVMX_PCIERCX_CFG448(i32 %141)
  %143 = bitcast %union.cvmx_pciercx_cfg448* %8 to i8**
  %144 = load i8*, i8** %143, align 8
  %145 = call i32 @cvmx_pcie_cfgx_write(i32 %140, i32 %142, i8* %144)
  store i32 0, i32* %2, align 4
  br label %146

146:                                              ; preds = %139, %98
  %147 = load i32, i32* %2, align 4
  ret i32 %147
}

declare dso_local i8* @cvmx_pcie_cfgx_read(i32, i32) #1

declare dso_local i32 @CVMX_PCIERCX_CFG452(i32) #1

declare dso_local i8* @cvmx_read_csr(i32) #1

declare dso_local i32 @CVMX_PESCX_CTL_STATUS(i32) #1

declare dso_local i32 @cvmx_pcie_cfgx_write(i32, i32, i8*) #1

declare dso_local i64 @OCTEON_IS_MODEL(i32) #1

declare dso_local i32 @CVMX_PCIERCX_CFG455(i32) #1

declare dso_local i32 @cvmx_write_csr(i32, i8*) #1

declare dso_local i32 @__cvmx_helper_errata_qlm_disable_2nd_order_cdr(i32) #1

declare dso_local i32 @cvmx_dprintf(i8*, i32, ...) #1

declare dso_local i32 @cvmx_get_cycle(...) #1

declare dso_local %struct.TYPE_12__* @cvmx_sysinfo_get(...) #1

declare dso_local i32 @cvmx_wait(i32) #1

declare dso_local i32 @CVMX_PCIERCX_CFG032(i32) #1

declare dso_local i32 @CVMX_PCIERCX_CFG448(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
