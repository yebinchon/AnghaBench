; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/skfp/extr_fplustm.c_build_claim_beacon.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/skfp/extr_fplustm.c_build_claim_beacon.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s_smc = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__, %struct.fddi_mac_sf }
%struct.TYPE_4__ = type { i64, i64 }
%struct.fddi_mac_sf = type { i64, i8*, i8*, i8* }
%struct.fddi_mac = type { i32 }

@TX_DESCRIPTOR = common dso_local global i32 0, align 4
@FC_CLAIM = common dso_local global i8* null, align 8
@MA = common dso_local global i8* null, align 8
@CLAIM_FRAME_OFF = common dso_local global i64 0, align 8
@FM_SACL = common dso_local global i32 0, align 4
@FC_BEACON = common dso_local global i8* null, align 8
@null_addr = common dso_local global i8* null, align 8
@BEACON_INFO = common dso_local global i64 0, align 8
@BEACON_FRAME_OFF = common dso_local global i64 0, align 8
@FM_SABC = common dso_local global i32 0, align 4
@dbeacon_multi = common dso_local global i8* null, align 8
@DBEACON_INFO = common dso_local global i64 0, align 8
@DBEACON_FRAME_OFF = common dso_local global i64 0, align 8
@FM_EACB = common dso_local global i32 0, align 4
@FM_WPXSF = common dso_local global i32 0, align 4
@FM_RPXSF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.s_smc*, i64)* @build_claim_beacon to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @build_claim_beacon(%struct.s_smc* %0, i64 %1) #0 {
  %3 = alloca %struct.s_smc*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.fddi_mac_sf*, align 8
  store %struct.s_smc* %0, %struct.s_smc** %3, align 8
  store i64 %1, i64* %4, align 8
  store i32 17, i32* %6, align 4
  %8 = load i32, i32* @TX_DESCRIPTOR, align 4
  %9 = load i32, i32* %6, align 4
  %10 = sub nsw i32 %9, 1
  %11 = and i32 %10, 3
  %12 = shl i32 %11, 27
  %13 = or i32 %8, %12
  store i32 %13, i32* %5, align 4
  %14 = load %struct.s_smc*, %struct.s_smc** %3, align 8
  %15 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 1
  store %struct.fddi_mac_sf* %17, %struct.fddi_mac_sf** %7, align 8
  %18 = load i8*, i8** @FC_CLAIM, align 8
  %19 = load %struct.fddi_mac_sf*, %struct.fddi_mac_sf** %7, align 8
  %20 = getelementptr inbounds %struct.fddi_mac_sf, %struct.fddi_mac_sf* %19, i32 0, i32 3
  store i8* %18, i8** %20, align 8
  %21 = load i8*, i8** @MA, align 8
  %22 = load %struct.fddi_mac_sf*, %struct.fddi_mac_sf** %7, align 8
  %23 = getelementptr inbounds %struct.fddi_mac_sf, %struct.fddi_mac_sf* %22, i32 0, i32 1
  store i8* %21, i8** %23, align 8
  %24 = load %struct.fddi_mac_sf*, %struct.fddi_mac_sf** %7, align 8
  %25 = getelementptr inbounds %struct.fddi_mac_sf, %struct.fddi_mac_sf* %24, i32 0, i32 2
  store i8* %21, i8** %25, align 8
  %26 = load %struct.fddi_mac_sf*, %struct.fddi_mac_sf** %7, align 8
  %27 = getelementptr inbounds %struct.fddi_mac_sf, %struct.fddi_mac_sf* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = inttoptr i64 %28 to i8*
  %30 = load i64, i64* %4, align 8
  %31 = trunc i64 %30 to i32
  %32 = call i32 @set_int(i8* %29, i32 %31)
  %33 = load %struct.s_smc*, %struct.s_smc** %3, align 8
  %34 = load i32, i32* %5, align 4
  %35 = load %struct.fddi_mac_sf*, %struct.fddi_mac_sf** %7, align 8
  %36 = bitcast %struct.fddi_mac_sf* %35 to %struct.fddi_mac*
  %37 = load %struct.s_smc*, %struct.s_smc** %3, align 8
  %38 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @CLAIM_FRAME_OFF, align 8
  %44 = add nsw i64 %42, %43
  %45 = load i32, i32* %6, align 4
  %46 = call i32 @copy_tx_mac(%struct.s_smc* %33, i32 %34, %struct.fddi_mac* %36, i64 %44, i32 %45)
  %47 = load i32, i32* @FM_SACL, align 4
  %48 = call i32 @FM_A(i32 %47)
  %49 = load %struct.s_smc*, %struct.s_smc** %3, align 8
  %50 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @CLAIM_FRAME_OFF, align 8
  %56 = add nsw i64 %54, %55
  %57 = call i32 @outpw(i32 %48, i64 %56)
  store i32 17, i32* %6, align 4
  %58 = load i32, i32* @TX_DESCRIPTOR, align 4
  %59 = load i32, i32* %6, align 4
  %60 = sub nsw i32 %59, 1
  %61 = and i32 %60, 3
  %62 = shl i32 %61, 27
  %63 = or i32 %58, %62
  store i32 %63, i32* %5, align 4
  %64 = load i8*, i8** @FC_BEACON, align 8
  %65 = load %struct.fddi_mac_sf*, %struct.fddi_mac_sf** %7, align 8
  %66 = getelementptr inbounds %struct.fddi_mac_sf, %struct.fddi_mac_sf* %65, i32 0, i32 3
  store i8* %64, i8** %66, align 8
  %67 = load i8*, i8** @MA, align 8
  %68 = load %struct.fddi_mac_sf*, %struct.fddi_mac_sf** %7, align 8
  %69 = getelementptr inbounds %struct.fddi_mac_sf, %struct.fddi_mac_sf* %68, i32 0, i32 2
  store i8* %67, i8** %69, align 8
  %70 = load i8*, i8** @null_addr, align 8
  %71 = load %struct.fddi_mac_sf*, %struct.fddi_mac_sf** %7, align 8
  %72 = getelementptr inbounds %struct.fddi_mac_sf, %struct.fddi_mac_sf* %71, i32 0, i32 1
  store i8* %70, i8** %72, align 8
  %73 = load %struct.fddi_mac_sf*, %struct.fddi_mac_sf** %7, align 8
  %74 = getelementptr inbounds %struct.fddi_mac_sf, %struct.fddi_mac_sf* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = inttoptr i64 %75 to i8*
  %77 = load i64, i64* @BEACON_INFO, align 8
  %78 = trunc i64 %77 to i32
  %79 = shl i32 %78, 24
  %80 = add nsw i32 %79, 0
  %81 = call i32 @set_int(i8* %76, i32 %80)
  %82 = load %struct.s_smc*, %struct.s_smc** %3, align 8
  %83 = load i32, i32* %5, align 4
  %84 = load %struct.fddi_mac_sf*, %struct.fddi_mac_sf** %7, align 8
  %85 = bitcast %struct.fddi_mac_sf* %84 to %struct.fddi_mac*
  %86 = load %struct.s_smc*, %struct.s_smc** %3, align 8
  %87 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* @BEACON_FRAME_OFF, align 8
  %93 = add nsw i64 %91, %92
  %94 = load i32, i32* %6, align 4
  %95 = call i32 @copy_tx_mac(%struct.s_smc* %82, i32 %83, %struct.fddi_mac* %85, i64 %93, i32 %94)
  %96 = load i32, i32* @FM_SABC, align 4
  %97 = call i32 @FM_A(i32 %96)
  %98 = load %struct.s_smc*, %struct.s_smc** %3, align 8
  %99 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 1
  %103 = load i64, i64* %102, align 8
  %104 = load i64, i64* @BEACON_FRAME_OFF, align 8
  %105 = add nsw i64 %103, %104
  %106 = call i32 @outpw(i32 %97, i64 %105)
  store i32 23, i32* %6, align 4
  %107 = load i32, i32* @TX_DESCRIPTOR, align 4
  %108 = load i32, i32* %6, align 4
  %109 = sub nsw i32 %108, 1
  %110 = and i32 %109, 3
  %111 = shl i32 %110, 27
  %112 = or i32 %107, %111
  store i32 %112, i32* %5, align 4
  %113 = load i8*, i8** @FC_BEACON, align 8
  %114 = load %struct.fddi_mac_sf*, %struct.fddi_mac_sf** %7, align 8
  %115 = getelementptr inbounds %struct.fddi_mac_sf, %struct.fddi_mac_sf* %114, i32 0, i32 3
  store i8* %113, i8** %115, align 8
  %116 = load i8*, i8** @MA, align 8
  %117 = load %struct.fddi_mac_sf*, %struct.fddi_mac_sf** %7, align 8
  %118 = getelementptr inbounds %struct.fddi_mac_sf, %struct.fddi_mac_sf* %117, i32 0, i32 2
  store i8* %116, i8** %118, align 8
  %119 = load i8*, i8** @dbeacon_multi, align 8
  %120 = load %struct.fddi_mac_sf*, %struct.fddi_mac_sf** %7, align 8
  %121 = getelementptr inbounds %struct.fddi_mac_sf, %struct.fddi_mac_sf* %120, i32 0, i32 1
  store i8* %119, i8** %121, align 8
  %122 = load %struct.fddi_mac_sf*, %struct.fddi_mac_sf** %7, align 8
  %123 = getelementptr inbounds %struct.fddi_mac_sf, %struct.fddi_mac_sf* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = inttoptr i64 %124 to i8*
  %126 = load i64, i64* @DBEACON_INFO, align 8
  %127 = trunc i64 %126 to i32
  %128 = shl i32 %127, 24
  %129 = add nsw i32 %128, 0
  %130 = call i32 @set_int(i8* %125, i32 %129)
  %131 = load %struct.fddi_mac_sf*, %struct.fddi_mac_sf** %7, align 8
  %132 = getelementptr inbounds %struct.fddi_mac_sf, %struct.fddi_mac_sf* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = inttoptr i64 %133 to i8*
  %135 = getelementptr inbounds i8, i8* %134, i64 4
  %136 = call i32 @set_int(i8* %135, i32 0)
  %137 = load %struct.fddi_mac_sf*, %struct.fddi_mac_sf** %7, align 8
  %138 = getelementptr inbounds %struct.fddi_mac_sf, %struct.fddi_mac_sf* %137, i32 0, i32 0
  %139 = load i64, i64* %138, align 8
  %140 = inttoptr i64 %139 to i8*
  %141 = getelementptr inbounds i8, i8* %140, i64 8
  %142 = call i32 @set_int(i8* %141, i32 0)
  %143 = load %struct.s_smc*, %struct.s_smc** %3, align 8
  %144 = load i32, i32* %5, align 4
  %145 = load %struct.fddi_mac_sf*, %struct.fddi_mac_sf** %7, align 8
  %146 = bitcast %struct.fddi_mac_sf* %145 to %struct.fddi_mac*
  %147 = load %struct.s_smc*, %struct.s_smc** %3, align 8
  %148 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %147, i32 0, i32 0
  %149 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %149, i32 0, i32 0
  %151 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %150, i32 0, i32 1
  %152 = load i64, i64* %151, align 8
  %153 = load i64, i64* @DBEACON_FRAME_OFF, align 8
  %154 = add nsw i64 %152, %153
  %155 = load i32, i32* %6, align 4
  %156 = call i32 @copy_tx_mac(%struct.s_smc* %143, i32 %144, %struct.fddi_mac* %146, i64 %154, i32 %155)
  %157 = load i32, i32* @FM_EACB, align 4
  %158 = call i32 @FM_A(i32 %157)
  %159 = load %struct.s_smc*, %struct.s_smc** %3, align 8
  %160 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %159, i32 0, i32 0
  %161 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %160, i32 0, i32 0
  %162 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %161, i32 0, i32 0
  %163 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %162, i32 0, i32 0
  %164 = load i64, i64* %163, align 8
  %165 = sub nsw i64 %164, 1
  %166 = call i32 @outpw(i32 %158, i64 %165)
  %167 = load i32, i32* @FM_WPXSF, align 4
  %168 = call i32 @FM_A(i32 %167)
  %169 = call i32 @outpw(i32 %168, i64 0)
  %170 = load i32, i32* @FM_RPXSF, align 4
  %171 = call i32 @FM_A(i32 %170)
  %172 = call i32 @outpw(i32 %171, i64 0)
  ret void
}

declare dso_local i32 @set_int(i8*, i32) #1

declare dso_local i32 @copy_tx_mac(%struct.s_smc*, i32, %struct.fddi_mac*, i64, i32) #1

declare dso_local i32 @outpw(i32, i64) #1

declare dso_local i32 @FM_A(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
