; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/libsas/extr_sas_event.c_sas_enable_revalidation.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/libsas/extr_sas_event.c_sas_enable_revalidation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sas_ha_struct = type { i32, i32, %struct.asd_sas_port**, i32 }
%struct.asd_sas_port = type { %struct.sas_discovery }
%struct.sas_discovery = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@SAS_HA_ATA_EH_ACTIVE = common dso_local global i32 0, align 4
@DISCE_REVALIDATE_DOMAIN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sas_enable_revalidation(%struct.sas_ha_struct* %0) #0 {
  %2 = alloca %struct.sas_ha_struct*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.asd_sas_port*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.sas_discovery*, align 8
  store %struct.sas_ha_struct* %0, %struct.sas_ha_struct** %2, align 8
  %7 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %2, align 8
  %8 = getelementptr inbounds %struct.sas_ha_struct, %struct.sas_ha_struct* %7, i32 0, i32 1
  %9 = call i32 @mutex_lock(i32* %8)
  %10 = load i32, i32* @SAS_HA_ATA_EH_ACTIVE, align 4
  %11 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %2, align 8
  %12 = getelementptr inbounds %struct.sas_ha_struct, %struct.sas_ha_struct* %11, i32 0, i32 3
  %13 = call i32 @clear_bit(i32 %10, i32* %12)
  store i32 0, i32* %3, align 4
  br label %14

14:                                               ; preds = %50, %1
  %15 = load i32, i32* %3, align 4
  %16 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %2, align 8
  %17 = getelementptr inbounds %struct.sas_ha_struct, %struct.sas_ha_struct* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp slt i32 %15, %18
  br i1 %19, label %20, label %53

20:                                               ; preds = %14
  %21 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %2, align 8
  %22 = getelementptr inbounds %struct.sas_ha_struct, %struct.sas_ha_struct* %21, i32 0, i32 2
  %23 = load %struct.asd_sas_port**, %struct.asd_sas_port*** %22, align 8
  %24 = load i32, i32* %3, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.asd_sas_port*, %struct.asd_sas_port** %23, i64 %25
  %27 = load %struct.asd_sas_port*, %struct.asd_sas_port** %26, align 8
  store %struct.asd_sas_port* %27, %struct.asd_sas_port** %4, align 8
  %28 = load i32, i32* @DISCE_REVALIDATE_DOMAIN, align 4
  store i32 %28, i32* %5, align 4
  %29 = load %struct.asd_sas_port*, %struct.asd_sas_port** %4, align 8
  %30 = getelementptr inbounds %struct.asd_sas_port, %struct.asd_sas_port* %29, i32 0, i32 0
  store %struct.sas_discovery* %30, %struct.sas_discovery** %6, align 8
  %31 = load i32, i32* %5, align 4
  %32 = load %struct.sas_discovery*, %struct.sas_discovery** %6, align 8
  %33 = getelementptr inbounds %struct.sas_discovery, %struct.sas_discovery* %32, i32 0, i32 1
  %34 = call i32 @test_and_clear_bit(i32 %31, i32* %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %20
  br label %50

37:                                               ; preds = %20
  %38 = load i32, i32* %5, align 4
  %39 = load %struct.sas_discovery*, %struct.sas_discovery** %6, align 8
  %40 = getelementptr inbounds %struct.sas_discovery, %struct.sas_discovery* %39, i32 0, i32 1
  %41 = load %struct.sas_discovery*, %struct.sas_discovery** %6, align 8
  %42 = getelementptr inbounds %struct.sas_discovery, %struct.sas_discovery* %41, i32 0, i32 0
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = load i32, i32* %5, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %2, align 8
  %49 = call i32 @sas_queue_event(i32 %38, i32* %40, i32* %47, %struct.sas_ha_struct* %48)
  br label %50

50:                                               ; preds = %37, %36
  %51 = load i32, i32* %3, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %3, align 4
  br label %14

53:                                               ; preds = %14
  %54 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %2, align 8
  %55 = getelementptr inbounds %struct.sas_ha_struct, %struct.sas_ha_struct* %54, i32 0, i32 1
  %56 = call i32 @mutex_unlock(i32* %55)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @test_and_clear_bit(i32, i32*) #1

declare dso_local i32 @sas_queue_event(i32, i32*, i32*, %struct.sas_ha_struct*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
