; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/aic94xx/extr_aic94xx_scb.c_asd_get_attached_sas_addr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/aic94xx/extr_aic94xx_scb.c_asd_get_attached_sas_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.asd_phy = type { %struct.TYPE_8__, %struct.TYPE_6__* }
%struct.TYPE_8__ = type { i32*, i64, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.asd_ha_struct* }
%struct.asd_ha_struct = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_6__ = type { i64 }
%struct.sas_identify_frame = type { i32 }

@SATA_OOB_MODE = common dso_local global i64 0, align 8
@SAS_ADDR_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.asd_phy*, i32*)* @asd_get_attached_sas_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @asd_get_attached_sas_addr(%struct.asd_phy* %0, i32* %1) #0 {
  %3 = alloca %struct.asd_phy*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.asd_ha_struct*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.sas_identify_frame*, align 8
  store %struct.asd_phy* %0, %struct.asd_phy** %3, align 8
  store i32* %1, i32** %4, align 8
  %8 = load %struct.asd_phy*, %struct.asd_phy** %3, align 8
  %9 = getelementptr inbounds %struct.asd_phy, %struct.asd_phy* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 0
  %11 = load i32*, i32** %10, align 8
  %12 = getelementptr inbounds i32, i32* %11, i64 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp eq i32 %13, 52
  br i1 %14, label %15, label %52

15:                                               ; preds = %2
  %16 = load %struct.asd_phy*, %struct.asd_phy** %3, align 8
  %17 = getelementptr inbounds %struct.asd_phy, %struct.asd_phy* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @SATA_OOB_MODE, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %52

22:                                               ; preds = %15
  %23 = load %struct.asd_phy*, %struct.asd_phy** %3, align 8
  %24 = getelementptr inbounds %struct.asd_phy, %struct.asd_phy* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 2
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %27, align 8
  store %struct.asd_ha_struct* %28, %struct.asd_ha_struct** %5, align 8
  %29 = load %struct.asd_phy*, %struct.asd_phy** %3, align 8
  %30 = getelementptr inbounds %struct.asd_phy, %struct.asd_phy* %29, i32 0, i32 1
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = inttoptr i64 %33 to i32*
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @be64_to_cpu(i32 %35)
  store i32 %36, i32* %6, align 4
  %37 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %5, align 8
  %38 = getelementptr inbounds %struct.asd_ha_struct, %struct.asd_ha_struct* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %5, align 8
  %42 = load %struct.asd_phy*, %struct.asd_phy** %3, align 8
  %43 = call i64 @ord_phy(%struct.asd_ha_struct* %41, %struct.asd_phy* %42)
  %44 = add nsw i64 %40, %43
  %45 = load i32, i32* %6, align 4
  %46 = sext i32 %45 to i64
  %47 = add nsw i64 %46, %44
  %48 = trunc i64 %47 to i32
  store i32 %48, i32* %6, align 4
  %49 = load i32, i32* %6, align 4
  %50 = call i32 @cpu_to_be64(i32 %49)
  %51 = load i32*, i32** %4, align 8
  store i32 %50, i32* %51, align 4
  br label %65

52:                                               ; preds = %15, %2
  %53 = load %struct.asd_phy*, %struct.asd_phy** %3, align 8
  %54 = getelementptr inbounds %struct.asd_phy, %struct.asd_phy* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = bitcast i32* %56 to i8*
  %58 = bitcast i8* %57 to %struct.sas_identify_frame*
  store %struct.sas_identify_frame* %58, %struct.sas_identify_frame** %7, align 8
  %59 = load i32*, i32** %4, align 8
  %60 = load %struct.sas_identify_frame*, %struct.sas_identify_frame** %7, align 8
  %61 = getelementptr inbounds %struct.sas_identify_frame, %struct.sas_identify_frame* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @SAS_ADDR_SIZE, align 4
  %64 = call i32 @memcpy(i32* %59, i32 %62, i32 %63)
  br label %65

65:                                               ; preds = %52, %22
  ret void
}

declare dso_local i32 @be64_to_cpu(i32) #1

declare dso_local i64 @ord_phy(%struct.asd_ha_struct*, %struct.asd_phy*) #1

declare dso_local i32 @cpu_to_be64(i32) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
