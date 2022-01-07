; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/mips/pci/extr_pcie-octeon.c___cvmx_pcie_rc_initialize_config_space.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/mips/pci/extr_pcie-octeon.c___cvmx_pcie_rc_initialize_config_space.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.cvmx_pciercx_cfg030 = type { %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i32, i32, i32, i32, i32, i32, i64, i64 }
%union.cvmx_npei_ctl_status2 = type { %struct.TYPE_19__ }
%struct.TYPE_19__ = type { i64, i64 }
%union.cvmx_pciercx_cfg070 = type { i8* }
%union.cvmx_pciercx_cfg001 = type { i8*, [8 x i8] }
%union.cvmx_pciercx_cfg032 = type { i8* }
%union.cvmx_pciercx_cfg006 = type { i8*, [8 x i8] }
%union.cvmx_pciercx_cfg008 = type { %struct.TYPE_24__ }
%struct.TYPE_24__ = type { i32, i64 }
%union.cvmx_pciercx_cfg009 = type { %struct.TYPE_25__ }
%struct.TYPE_25__ = type { i32, i64 }
%union.cvmx_pciercx_cfg010 = type { i8* }
%union.cvmx_pciercx_cfg011 = type { i8* }
%union.cvmx_pciercx_cfg035 = type { i8*, [8 x i8] }
%union.cvmx_pciercx_cfg075 = type { i8*, [8 x i8] }
%union.cvmx_pciercx_cfg034 = type { i8*, [8 x i8] }
%struct.TYPE_20__ = type { i32, i32 }
%struct.TYPE_21__ = type { i32, i32, i32, i32 }
%struct.TYPE_22__ = type { i64 }
%struct.TYPE_23__ = type { i32, i32, i32 }
%struct.TYPE_26__ = type { i32 }
%struct.TYPE_14__ = type { i64 }
%struct.TYPE_15__ = type { i32, i32, i32, i32 }
%struct.TYPE_16__ = type { i32, i32, i32 }
%struct.TYPE_17__ = type { i32, i32, i32 }

@CVMX_PEXP_NPEI_CTL_STATUS2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @__cvmx_pcie_rc_initialize_config_space to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__cvmx_pcie_rc_initialize_config_space(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %union.cvmx_pciercx_cfg030, align 8
  %4 = alloca %union.cvmx_npei_ctl_status2, align 8
  %5 = alloca %union.cvmx_pciercx_cfg070, align 8
  %6 = alloca %union.cvmx_pciercx_cfg001, align 8
  %7 = alloca %union.cvmx_pciercx_cfg032, align 8
  %8 = alloca %union.cvmx_pciercx_cfg006, align 8
  %9 = alloca %union.cvmx_pciercx_cfg008, align 8
  %10 = alloca %union.cvmx_pciercx_cfg009, align 8
  %11 = alloca %union.cvmx_pciercx_cfg010, align 8
  %12 = alloca %union.cvmx_pciercx_cfg011, align 8
  %13 = alloca %union.cvmx_pciercx_cfg035, align 8
  %14 = alloca %union.cvmx_pciercx_cfg075, align 8
  %15 = alloca %union.cvmx_pciercx_cfg034, align 8
  store i32 %0, i32* %2, align 4
  %16 = load i32, i32* %2, align 4
  %17 = load i32, i32* %2, align 4
  %18 = call i32 @CVMX_PCIERCX_CFG030(i32 %17)
  %19 = call i8* @cvmx_pcie_cfgx_read(i32 %16, i32 %18)
  %20 = bitcast %union.cvmx_pciercx_cfg030* %3 to i8**
  store i8* %19, i8** %20, align 8
  %21 = bitcast %union.cvmx_pciercx_cfg030* %3 to %struct.TYPE_18__*
  %22 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %21, i32 0, i32 7
  store i64 0, i64* %22, align 8
  %23 = bitcast %union.cvmx_pciercx_cfg030* %3 to %struct.TYPE_18__*
  %24 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %23, i32 0, i32 6
  store i64 0, i64* %24, align 8
  %25 = bitcast %union.cvmx_pciercx_cfg030* %3 to %struct.TYPE_18__*
  %26 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %25, i32 0, i32 0
  store i32 1, i32* %26, align 8
  %27 = bitcast %union.cvmx_pciercx_cfg030* %3 to %struct.TYPE_18__*
  %28 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %27, i32 0, i32 1
  store i32 1, i32* %28, align 4
  %29 = bitcast %union.cvmx_pciercx_cfg030* %3 to %struct.TYPE_18__*
  %30 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %29, i32 0, i32 2
  store i32 1, i32* %30, align 8
  %31 = bitcast %union.cvmx_pciercx_cfg030* %3 to %struct.TYPE_18__*
  %32 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %31, i32 0, i32 3
  store i32 1, i32* %32, align 4
  %33 = bitcast %union.cvmx_pciercx_cfg030* %3 to %struct.TYPE_18__*
  %34 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %33, i32 0, i32 4
  store i32 1, i32* %34, align 8
  %35 = bitcast %union.cvmx_pciercx_cfg030* %3 to %struct.TYPE_18__*
  %36 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %35, i32 0, i32 5
  store i32 1, i32* %36, align 4
  %37 = load i32, i32* %2, align 4
  %38 = load i32, i32* %2, align 4
  %39 = call i32 @CVMX_PCIERCX_CFG030(i32 %38)
  %40 = bitcast %union.cvmx_pciercx_cfg030* %3 to i8**
  %41 = load i8*, i8** %40, align 8
  %42 = call i32 @cvmx_pcie_cfgx_write(i32 %37, i32 %39, i8* %41)
  %43 = load i32, i32* @CVMX_PEXP_NPEI_CTL_STATUS2, align 4
  %44 = call i32 @cvmx_read_csr(i32 %43)
  %45 = bitcast %union.cvmx_npei_ctl_status2* %4 to i32*
  store i32 %44, i32* %45, align 8
  %46 = bitcast %union.cvmx_npei_ctl_status2* %4 to %struct.TYPE_19__*
  %47 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %46, i32 0, i32 1
  store i64 0, i64* %47, align 8
  %48 = bitcast %union.cvmx_npei_ctl_status2* %4 to %struct.TYPE_19__*
  %49 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %48, i32 0, i32 0
  store i64 0, i64* %49, align 8
  %50 = load i32, i32* @CVMX_PEXP_NPEI_CTL_STATUS2, align 4
  %51 = bitcast %union.cvmx_npei_ctl_status2* %4 to i32*
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @cvmx_write_csr(i32 %50, i32 %52)
  %54 = load i32, i32* %2, align 4
  %55 = load i32, i32* %2, align 4
  %56 = call i32 @CVMX_PCIERCX_CFG070(i32 %55)
  %57 = call i8* @cvmx_pcie_cfgx_read(i32 %54, i32 %56)
  %58 = bitcast %union.cvmx_pciercx_cfg070* %5 to i8**
  store i8* %57, i8** %58, align 8
  %59 = bitcast %union.cvmx_pciercx_cfg070* %5 to %struct.TYPE_20__*
  %60 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %59, i32 0, i32 0
  store i32 1, i32* %60, align 8
  %61 = bitcast %union.cvmx_pciercx_cfg070* %5 to %struct.TYPE_20__*
  %62 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %61, i32 0, i32 1
  store i32 1, i32* %62, align 4
  %63 = load i32, i32* %2, align 4
  %64 = load i32, i32* %2, align 4
  %65 = call i32 @CVMX_PCIERCX_CFG070(i32 %64)
  %66 = bitcast %union.cvmx_pciercx_cfg070* %5 to i8**
  %67 = load i8*, i8** %66, align 8
  %68 = call i32 @cvmx_pcie_cfgx_write(i32 %63, i32 %65, i8* %67)
  %69 = load i32, i32* %2, align 4
  %70 = load i32, i32* %2, align 4
  %71 = call i32 @CVMX_PCIERCX_CFG001(i32 %70)
  %72 = call i8* @cvmx_pcie_cfgx_read(i32 %69, i32 %71)
  %73 = bitcast %union.cvmx_pciercx_cfg001* %6 to i8**
  store i8* %72, i8** %73, align 8
  %74 = bitcast %union.cvmx_pciercx_cfg001* %6 to %struct.TYPE_21__*
  %75 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %74, i32 0, i32 0
  store i32 1, i32* %75, align 8
  %76 = bitcast %union.cvmx_pciercx_cfg001* %6 to %struct.TYPE_21__*
  %77 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %76, i32 0, i32 1
  store i32 1, i32* %77, align 4
  %78 = bitcast %union.cvmx_pciercx_cfg001* %6 to %struct.TYPE_21__*
  %79 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %78, i32 0, i32 2
  store i32 1, i32* %79, align 8
  %80 = bitcast %union.cvmx_pciercx_cfg001* %6 to %struct.TYPE_21__*
  %81 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %80, i32 0, i32 3
  store i32 1, i32* %81, align 4
  %82 = load i32, i32* %2, align 4
  %83 = load i32, i32* %2, align 4
  %84 = call i32 @CVMX_PCIERCX_CFG001(i32 %83)
  %85 = bitcast %union.cvmx_pciercx_cfg001* %6 to i8**
  %86 = load i8*, i8** %85, align 8
  %87 = call i32 @cvmx_pcie_cfgx_write(i32 %82, i32 %84, i8* %86)
  %88 = load i32, i32* %2, align 4
  %89 = load i32, i32* %2, align 4
  %90 = call i32 @CVMX_PCIERCX_CFG066(i32 %89)
  %91 = call i32 @cvmx_pcie_cfgx_write(i32 %88, i32 %90, i8* null)
  %92 = load i32, i32* %2, align 4
  %93 = load i32, i32* %2, align 4
  %94 = call i32 @CVMX_PCIERCX_CFG069(i32 %93)
  %95 = call i32 @cvmx_pcie_cfgx_write(i32 %92, i32 %94, i8* null)
  %96 = load i32, i32* %2, align 4
  %97 = load i32, i32* %2, align 4
  %98 = call i32 @CVMX_PCIERCX_CFG032(i32 %97)
  %99 = call i8* @cvmx_pcie_cfgx_read(i32 %96, i32 %98)
  %100 = bitcast %union.cvmx_pciercx_cfg032* %7 to i8**
  store i8* %99, i8** %100, align 8
  %101 = bitcast %union.cvmx_pciercx_cfg032* %7 to %struct.TYPE_22__*
  %102 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %101, i32 0, i32 0
  store i64 0, i64* %102, align 8
  %103 = load i32, i32* %2, align 4
  %104 = load i32, i32* %2, align 4
  %105 = call i32 @CVMX_PCIERCX_CFG032(i32 %104)
  %106 = bitcast %union.cvmx_pciercx_cfg032* %7 to i8**
  %107 = load i8*, i8** %106, align 8
  %108 = call i32 @cvmx_pcie_cfgx_write(i32 %103, i32 %105, i8* %107)
  %109 = bitcast %union.cvmx_pciercx_cfg006* %8 to i8**
  store i8* null, i8** %109, align 8
  %110 = bitcast %union.cvmx_pciercx_cfg006* %8 to %struct.TYPE_23__*
  %111 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %110, i32 0, i32 0
  store i32 1, i32* %111, align 8
  %112 = bitcast %union.cvmx_pciercx_cfg006* %8 to %struct.TYPE_23__*
  %113 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %112, i32 0, i32 1
  store i32 1, i32* %113, align 4
  %114 = bitcast %union.cvmx_pciercx_cfg006* %8 to %struct.TYPE_23__*
  %115 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %114, i32 0, i32 2
  store i32 1, i32* %115, align 8
  %116 = load i32, i32* %2, align 4
  %117 = load i32, i32* %2, align 4
  %118 = call i32 @CVMX_PCIERCX_CFG006(i32 %117)
  %119 = bitcast %union.cvmx_pciercx_cfg006* %8 to i8**
  %120 = load i8*, i8** %119, align 8
  %121 = call i32 @cvmx_pcie_cfgx_write(i32 %116, i32 %118, i8* %120)
  %122 = bitcast %union.cvmx_pciercx_cfg008* %9 to i8**
  store i8* null, i8** %122, align 8
  %123 = bitcast %union.cvmx_pciercx_cfg008* %9 to %struct.TYPE_24__*
  %124 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %123, i32 0, i32 0
  store i32 256, i32* %124, align 8
  %125 = bitcast %union.cvmx_pciercx_cfg008* %9 to %struct.TYPE_24__*
  %126 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %125, i32 0, i32 1
  store i64 0, i64* %126, align 8
  %127 = load i32, i32* %2, align 4
  %128 = load i32, i32* %2, align 4
  %129 = call i32 @CVMX_PCIERCX_CFG008(i32 %128)
  %130 = bitcast %union.cvmx_pciercx_cfg008* %9 to i8**
  %131 = load i8*, i8** %130, align 8
  %132 = call i32 @cvmx_pcie_cfgx_write(i32 %127, i32 %129, i8* %131)
  %133 = load i32, i32* %2, align 4
  %134 = load i32, i32* %2, align 4
  %135 = call i32 @CVMX_PCIERCX_CFG009(i32 %134)
  %136 = call i8* @cvmx_pcie_cfgx_read(i32 %133, i32 %135)
  %137 = bitcast %union.cvmx_pciercx_cfg009* %10 to i8**
  store i8* %136, i8** %137, align 8
  %138 = load i32, i32* %2, align 4
  %139 = load i32, i32* %2, align 4
  %140 = call i32 @CVMX_PCIERCX_CFG010(i32 %139)
  %141 = call i8* @cvmx_pcie_cfgx_read(i32 %138, i32 %140)
  %142 = bitcast %union.cvmx_pciercx_cfg010* %11 to i8**
  store i8* %141, i8** %142, align 8
  %143 = load i32, i32* %2, align 4
  %144 = load i32, i32* %2, align 4
  %145 = call i32 @CVMX_PCIERCX_CFG011(i32 %144)
  %146 = call i8* @cvmx_pcie_cfgx_read(i32 %143, i32 %145)
  %147 = bitcast %union.cvmx_pciercx_cfg011* %12 to i8**
  store i8* %146, i8** %147, align 8
  %148 = bitcast %union.cvmx_pciercx_cfg009* %10 to %struct.TYPE_25__*
  %149 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %148, i32 0, i32 0
  store i32 256, i32* %149, align 8
  %150 = bitcast %union.cvmx_pciercx_cfg009* %10 to %struct.TYPE_25__*
  %151 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %150, i32 0, i32 1
  store i64 0, i64* %151, align 8
  %152 = bitcast %union.cvmx_pciercx_cfg010* %11 to %struct.TYPE_26__*
  %153 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %152, i32 0, i32 0
  store i32 256, i32* %153, align 8
  %154 = bitcast %union.cvmx_pciercx_cfg011* %12 to %struct.TYPE_14__*
  %155 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %154, i32 0, i32 0
  store i64 0, i64* %155, align 8
  %156 = load i32, i32* %2, align 4
  %157 = load i32, i32* %2, align 4
  %158 = call i32 @CVMX_PCIERCX_CFG009(i32 %157)
  %159 = bitcast %union.cvmx_pciercx_cfg009* %10 to i8**
  %160 = load i8*, i8** %159, align 8
  %161 = call i32 @cvmx_pcie_cfgx_write(i32 %156, i32 %158, i8* %160)
  %162 = load i32, i32* %2, align 4
  %163 = load i32, i32* %2, align 4
  %164 = call i32 @CVMX_PCIERCX_CFG010(i32 %163)
  %165 = bitcast %union.cvmx_pciercx_cfg010* %11 to i8**
  %166 = load i8*, i8** %165, align 8
  %167 = call i32 @cvmx_pcie_cfgx_write(i32 %162, i32 %164, i8* %166)
  %168 = load i32, i32* %2, align 4
  %169 = load i32, i32* %2, align 4
  %170 = call i32 @CVMX_PCIERCX_CFG011(i32 %169)
  %171 = bitcast %union.cvmx_pciercx_cfg011* %12 to i8**
  %172 = load i8*, i8** %171, align 8
  %173 = call i32 @cvmx_pcie_cfgx_write(i32 %168, i32 %170, i8* %172)
  %174 = load i32, i32* %2, align 4
  %175 = load i32, i32* %2, align 4
  %176 = call i32 @CVMX_PCIERCX_CFG035(i32 %175)
  %177 = call i8* @cvmx_pcie_cfgx_read(i32 %174, i32 %176)
  %178 = bitcast %union.cvmx_pciercx_cfg035* %13 to i8**
  store i8* %177, i8** %178, align 8
  %179 = bitcast %union.cvmx_pciercx_cfg035* %13 to %struct.TYPE_15__*
  %180 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %179, i32 0, i32 0
  store i32 1, i32* %180, align 8
  %181 = bitcast %union.cvmx_pciercx_cfg035* %13 to %struct.TYPE_15__*
  %182 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %181, i32 0, i32 1
  store i32 1, i32* %182, align 4
  %183 = bitcast %union.cvmx_pciercx_cfg035* %13 to %struct.TYPE_15__*
  %184 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %183, i32 0, i32 2
  store i32 1, i32* %184, align 8
  %185 = bitcast %union.cvmx_pciercx_cfg035* %13 to %struct.TYPE_15__*
  %186 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %185, i32 0, i32 3
  store i32 1, i32* %186, align 4
  %187 = load i32, i32* %2, align 4
  %188 = load i32, i32* %2, align 4
  %189 = call i32 @CVMX_PCIERCX_CFG035(i32 %188)
  %190 = bitcast %union.cvmx_pciercx_cfg035* %13 to i8**
  %191 = load i8*, i8** %190, align 8
  %192 = call i32 @cvmx_pcie_cfgx_write(i32 %187, i32 %189, i8* %191)
  %193 = load i32, i32* %2, align 4
  %194 = load i32, i32* %2, align 4
  %195 = call i32 @CVMX_PCIERCX_CFG075(i32 %194)
  %196 = call i8* @cvmx_pcie_cfgx_read(i32 %193, i32 %195)
  %197 = bitcast %union.cvmx_pciercx_cfg075* %14 to i8**
  store i8* %196, i8** %197, align 8
  %198 = bitcast %union.cvmx_pciercx_cfg075* %14 to %struct.TYPE_16__*
  %199 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %198, i32 0, i32 0
  store i32 1, i32* %199, align 8
  %200 = bitcast %union.cvmx_pciercx_cfg075* %14 to %struct.TYPE_16__*
  %201 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %200, i32 0, i32 1
  store i32 1, i32* %201, align 4
  %202 = bitcast %union.cvmx_pciercx_cfg075* %14 to %struct.TYPE_16__*
  %203 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %202, i32 0, i32 2
  store i32 1, i32* %203, align 8
  %204 = load i32, i32* %2, align 4
  %205 = load i32, i32* %2, align 4
  %206 = call i32 @CVMX_PCIERCX_CFG075(i32 %205)
  %207 = bitcast %union.cvmx_pciercx_cfg075* %14 to i8**
  %208 = load i8*, i8** %207, align 8
  %209 = call i32 @cvmx_pcie_cfgx_write(i32 %204, i32 %206, i8* %208)
  %210 = load i32, i32* %2, align 4
  %211 = load i32, i32* %2, align 4
  %212 = call i32 @CVMX_PCIERCX_CFG034(i32 %211)
  %213 = call i8* @cvmx_pcie_cfgx_read(i32 %210, i32 %212)
  %214 = bitcast %union.cvmx_pciercx_cfg034* %15 to i8**
  store i8* %213, i8** %214, align 8
  %215 = bitcast %union.cvmx_pciercx_cfg034* %15 to %struct.TYPE_17__*
  %216 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %215, i32 0, i32 0
  store i32 1, i32* %216, align 8
  %217 = bitcast %union.cvmx_pciercx_cfg034* %15 to %struct.TYPE_17__*
  %218 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %217, i32 0, i32 1
  store i32 1, i32* %218, align 4
  %219 = bitcast %union.cvmx_pciercx_cfg034* %15 to %struct.TYPE_17__*
  %220 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %219, i32 0, i32 2
  store i32 1, i32* %220, align 8
  %221 = load i32, i32* %2, align 4
  %222 = load i32, i32* %2, align 4
  %223 = call i32 @CVMX_PCIERCX_CFG034(i32 %222)
  %224 = bitcast %union.cvmx_pciercx_cfg034* %15 to i8**
  %225 = load i8*, i8** %224, align 8
  %226 = call i32 @cvmx_pcie_cfgx_write(i32 %221, i32 %223, i8* %225)
  ret void
}

declare dso_local i8* @cvmx_pcie_cfgx_read(i32, i32) #1

declare dso_local i32 @CVMX_PCIERCX_CFG030(i32) #1

declare dso_local i32 @cvmx_pcie_cfgx_write(i32, i32, i8*) #1

declare dso_local i32 @cvmx_read_csr(i32) #1

declare dso_local i32 @cvmx_write_csr(i32, i32) #1

declare dso_local i32 @CVMX_PCIERCX_CFG070(i32) #1

declare dso_local i32 @CVMX_PCIERCX_CFG001(i32) #1

declare dso_local i32 @CVMX_PCIERCX_CFG066(i32) #1

declare dso_local i32 @CVMX_PCIERCX_CFG069(i32) #1

declare dso_local i32 @CVMX_PCIERCX_CFG032(i32) #1

declare dso_local i32 @CVMX_PCIERCX_CFG006(i32) #1

declare dso_local i32 @CVMX_PCIERCX_CFG008(i32) #1

declare dso_local i32 @CVMX_PCIERCX_CFG009(i32) #1

declare dso_local i32 @CVMX_PCIERCX_CFG010(i32) #1

declare dso_local i32 @CVMX_PCIERCX_CFG011(i32) #1

declare dso_local i32 @CVMX_PCIERCX_CFG035(i32) #1

declare dso_local i32 @CVMX_PCIERCX_CFG075(i32) #1

declare dso_local i32 @CVMX_PCIERCX_CFG034(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
