; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/libsas/extr_sas_host_smp.c_sas_host_smp_discover.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/libsas/extr_sas_host_smp.c_sas_host_smp_discover.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sas_ha_struct = type { i64, %struct.TYPE_7__**, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__*, i32, %struct.sas_phy* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.sas_rphy* }
%struct.sas_rphy = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i64, i64 }
%struct.sas_phy = type { i64, i32, i32, i32, i32 }

@SMP_RESP_NO_PHY = common dso_local global i64 0, align 8
@SMP_RESP_FUNC_ACC = common dso_local global i64 0, align 8
@SAS_ADDR_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sas_ha_struct*, i64*, i64)* @sas_host_smp_discover to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sas_host_smp_discover(%struct.sas_ha_struct* %0, i64* %1, i64 %2) #0 {
  %4 = alloca %struct.sas_ha_struct*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.sas_phy*, align 8
  %8 = alloca %struct.sas_rphy*, align 8
  store %struct.sas_ha_struct* %0, %struct.sas_ha_struct** %4, align 8
  store i64* %1, i64** %5, align 8
  store i64 %2, i64* %6, align 8
  %9 = load i64, i64* %6, align 8
  %10 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %4, align 8
  %11 = getelementptr inbounds %struct.sas_ha_struct, %struct.sas_ha_struct* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp uge i64 %9, %12
  br i1 %13, label %14, label %18

14:                                               ; preds = %3
  %15 = load i64, i64* @SMP_RESP_NO_PHY, align 8
  %16 = load i64*, i64** %5, align 8
  %17 = getelementptr inbounds i64, i64* %16, i64 2
  store i64 %15, i64* %17, align 8
  br label %134

18:                                               ; preds = %3
  %19 = load i64, i64* @SMP_RESP_FUNC_ACC, align 8
  %20 = load i64*, i64** %5, align 8
  %21 = getelementptr inbounds i64, i64* %20, i64 2
  store i64 %19, i64* %21, align 8
  %22 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %4, align 8
  %23 = getelementptr inbounds %struct.sas_ha_struct, %struct.sas_ha_struct* %22, i32 0, i32 1
  %24 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %23, align 8
  %25 = load i64, i64* %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %24, i64 %25
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 2
  %29 = load %struct.sas_phy*, %struct.sas_phy** %28, align 8
  store %struct.sas_phy* %29, %struct.sas_phy** %7, align 8
  %30 = load i64, i64* %6, align 8
  %31 = load i64*, i64** %5, align 8
  %32 = getelementptr inbounds i64, i64* %31, i64 9
  store i64 %30, i64* %32, align 8
  %33 = load %struct.sas_phy*, %struct.sas_phy** %7, align 8
  %34 = getelementptr inbounds %struct.sas_phy, %struct.sas_phy* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64*, i64** %5, align 8
  %37 = getelementptr inbounds i64, i64* %36, i64 13
  store i64 %35, i64* %37, align 8
  %38 = load i64*, i64** %5, align 8
  %39 = getelementptr inbounds i64, i64* %38, i64 16
  %40 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %4, align 8
  %41 = getelementptr inbounds %struct.sas_ha_struct, %struct.sas_ha_struct* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @SAS_ADDR_SIZE, align 4
  %44 = call i32 @memcpy(i64* %39, i32 %42, i32 %43)
  %45 = load i64*, i64** %5, align 8
  %46 = getelementptr inbounds i64, i64* %45, i64 24
  %47 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %4, align 8
  %48 = getelementptr inbounds %struct.sas_ha_struct, %struct.sas_ha_struct* %47, i32 0, i32 1
  %49 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %48, align 8
  %50 = load i64, i64* %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %49, i64 %50
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* @SAS_ADDR_SIZE, align 4
  %56 = call i32 @memcpy(i64* %46, i32 %54, i32 %55)
  %57 = load %struct.sas_phy*, %struct.sas_phy** %7, align 8
  %58 = getelementptr inbounds %struct.sas_phy, %struct.sas_phy* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = shl i32 %59, 4
  %61 = load %struct.sas_phy*, %struct.sas_phy** %7, align 8
  %62 = getelementptr inbounds %struct.sas_phy, %struct.sas_phy* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %64 = or i32 %60, %63
  %65 = sext i32 %64 to i64
  %66 = load i64*, i64** %5, align 8
  %67 = getelementptr inbounds i64, i64* %66, i64 40
  store i64 %65, i64* %67, align 8
  %68 = load %struct.sas_phy*, %struct.sas_phy** %7, align 8
  %69 = getelementptr inbounds %struct.sas_phy, %struct.sas_phy* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 8
  %71 = shl i32 %70, 4
  %72 = load %struct.sas_phy*, %struct.sas_phy** %7, align 8
  %73 = getelementptr inbounds %struct.sas_phy, %struct.sas_phy* %72, i32 0, i32 4
  %74 = load i32, i32* %73, align 4
  %75 = or i32 %71, %74
  %76 = sext i32 %75 to i64
  %77 = load i64*, i64** %5, align 8
  %78 = getelementptr inbounds i64, i64* %77, i64 41
  store i64 %76, i64* %78, align 8
  %79 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %4, align 8
  %80 = getelementptr inbounds %struct.sas_ha_struct, %struct.sas_ha_struct* %79, i32 0, i32 1
  %81 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %80, align 8
  %82 = load i64, i64* %6, align 8
  %83 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %81, i64 %82
  %84 = load %struct.TYPE_7__*, %struct.TYPE_7__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 0
  %86 = load %struct.TYPE_6__*, %struct.TYPE_6__** %85, align 8
  %87 = icmp ne %struct.TYPE_6__* %86, null
  br i1 %87, label %88, label %100

88:                                               ; preds = %18
  %89 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %4, align 8
  %90 = getelementptr inbounds %struct.sas_ha_struct, %struct.sas_ha_struct* %89, i32 0, i32 1
  %91 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %90, align 8
  %92 = load i64, i64* %6, align 8
  %93 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %91, i64 %92
  %94 = load %struct.TYPE_7__*, %struct.TYPE_7__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i32 0, i32 0
  %96 = load %struct.TYPE_6__*, %struct.TYPE_6__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 0
  %98 = load %struct.TYPE_5__*, %struct.TYPE_5__** %97, align 8
  %99 = icmp ne %struct.TYPE_5__* %98, null
  br i1 %99, label %101, label %100

100:                                              ; preds = %88, %18
  br label %134

101:                                              ; preds = %88
  %102 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %4, align 8
  %103 = getelementptr inbounds %struct.sas_ha_struct, %struct.sas_ha_struct* %102, i32 0, i32 1
  %104 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %103, align 8
  %105 = load i64, i64* %6, align 8
  %106 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %104, i64 %105
  %107 = load %struct.TYPE_7__*, %struct.TYPE_7__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %107, i32 0, i32 0
  %109 = load %struct.TYPE_6__*, %struct.TYPE_6__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i32 0, i32 0
  %111 = load %struct.TYPE_5__*, %struct.TYPE_5__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %111, i32 0, i32 0
  %113 = load %struct.sas_rphy*, %struct.sas_rphy** %112, align 8
  store %struct.sas_rphy* %113, %struct.sas_rphy** %8, align 8
  %114 = load %struct.sas_rphy*, %struct.sas_rphy** %8, align 8
  %115 = getelementptr inbounds %struct.sas_rphy, %struct.sas_rphy* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = shl i32 %117, 4
  %119 = sext i32 %118 to i64
  %120 = load i64*, i64** %5, align 8
  %121 = getelementptr inbounds i64, i64* %120, i64 12
  store i64 %119, i64* %121, align 8
  %122 = load %struct.sas_rphy*, %struct.sas_rphy** %8, align 8
  %123 = getelementptr inbounds %struct.sas_rphy, %struct.sas_rphy* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %123, i32 0, i32 1
  %125 = load i64, i64* %124, align 8
  %126 = load i64*, i64** %5, align 8
  %127 = getelementptr inbounds i64, i64* %126, i64 14
  store i64 %125, i64* %127, align 8
  %128 = load %struct.sas_rphy*, %struct.sas_rphy** %8, align 8
  %129 = getelementptr inbounds %struct.sas_rphy, %struct.sas_rphy* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %129, i32 0, i32 2
  %131 = load i64, i64* %130, align 8
  %132 = load i64*, i64** %5, align 8
  %133 = getelementptr inbounds i64, i64* %132, i64 15
  store i64 %131, i64* %133, align 8
  br label %134

134:                                              ; preds = %101, %100, %14
  ret void
}

declare dso_local i32 @memcpy(i64*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
