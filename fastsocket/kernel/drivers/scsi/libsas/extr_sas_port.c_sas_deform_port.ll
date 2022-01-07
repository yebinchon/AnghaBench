; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/libsas/extr_sas_port.c_sas_deform_port.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/libsas/extr_sas_port.c_sas_deform_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.asd_sas_phy = type { i32, %struct.asd_sas_port*, i32, i32, %struct.sas_ha_struct* }
%struct.asd_sas_port = type { i32, i32, i32, i64, i64, i64, i64, i32, i32, i32, i32*, %struct.domain_device* }
%struct.domain_device = type { i32 }
%struct.sas_ha_struct = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.sas_internal = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 (%struct.asd_sas_phy*)* }

@SAS_ADDR_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sas_deform_port(%struct.asd_sas_phy* %0, i32 %1) #0 {
  %3 = alloca %struct.asd_sas_phy*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.sas_ha_struct*, align 8
  %6 = alloca %struct.asd_sas_port*, align 8
  %7 = alloca %struct.sas_internal*, align 8
  %8 = alloca %struct.domain_device*, align 8
  %9 = alloca i64, align 8
  store %struct.asd_sas_phy* %0, %struct.asd_sas_phy** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.asd_sas_phy*, %struct.asd_sas_phy** %3, align 8
  %11 = getelementptr inbounds %struct.asd_sas_phy, %struct.asd_sas_phy* %10, i32 0, i32 4
  %12 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %11, align 8
  store %struct.sas_ha_struct* %12, %struct.sas_ha_struct** %5, align 8
  %13 = load %struct.asd_sas_phy*, %struct.asd_sas_phy** %3, align 8
  %14 = getelementptr inbounds %struct.asd_sas_phy, %struct.asd_sas_phy* %13, i32 0, i32 1
  %15 = load %struct.asd_sas_port*, %struct.asd_sas_port** %14, align 8
  store %struct.asd_sas_port* %15, %struct.asd_sas_port** %6, align 8
  %16 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %5, align 8
  %17 = getelementptr inbounds %struct.sas_ha_struct, %struct.sas_ha_struct* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call %struct.sas_internal* @to_sas_internal(i32 %21)
  store %struct.sas_internal* %22, %struct.sas_internal** %7, align 8
  %23 = load %struct.asd_sas_port*, %struct.asd_sas_port** %6, align 8
  %24 = icmp ne %struct.asd_sas_port* %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %2
  br label %144

26:                                               ; preds = %2
  %27 = load %struct.asd_sas_port*, %struct.asd_sas_port** %6, align 8
  %28 = getelementptr inbounds %struct.asd_sas_port, %struct.asd_sas_port* %27, i32 0, i32 11
  %29 = load %struct.domain_device*, %struct.domain_device** %28, align 8
  store %struct.domain_device* %29, %struct.domain_device** %8, align 8
  %30 = load %struct.domain_device*, %struct.domain_device** %8, align 8
  %31 = icmp ne %struct.domain_device* %30, null
  br i1 %31, label %32, label %37

32:                                               ; preds = %26
  %33 = load %struct.domain_device*, %struct.domain_device** %8, align 8
  %34 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = add nsw i32 %35, -1
  store i32 %36, i32* %34, align 4
  br label %37

37:                                               ; preds = %32, %26
  %38 = load %struct.asd_sas_port*, %struct.asd_sas_port** %6, align 8
  %39 = getelementptr inbounds %struct.asd_sas_port, %struct.asd_sas_port* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = icmp eq i32 %40, 1
  br i1 %41, label %42, label %52

42:                                               ; preds = %37
  %43 = load %struct.asd_sas_port*, %struct.asd_sas_port** %6, align 8
  %44 = load i32, i32* %4, align 4
  %45 = call i32 @sas_unregister_domain_devices(%struct.asd_sas_port* %43, i32 %44)
  %46 = load %struct.asd_sas_port*, %struct.asd_sas_port** %6, align 8
  %47 = getelementptr inbounds %struct.asd_sas_port, %struct.asd_sas_port* %46, i32 0, i32 10
  %48 = load i32*, i32** %47, align 8
  %49 = call i32 @sas_port_delete(i32* %48)
  %50 = load %struct.asd_sas_port*, %struct.asd_sas_port** %6, align 8
  %51 = getelementptr inbounds %struct.asd_sas_port, %struct.asd_sas_port* %50, i32 0, i32 10
  store i32* null, i32** %51, align 8
  br label %65

52:                                               ; preds = %37
  %53 = load %struct.asd_sas_port*, %struct.asd_sas_port** %6, align 8
  %54 = getelementptr inbounds %struct.asd_sas_port, %struct.asd_sas_port* %53, i32 0, i32 10
  %55 = load i32*, i32** %54, align 8
  %56 = load %struct.asd_sas_phy*, %struct.asd_sas_phy** %3, align 8
  %57 = getelementptr inbounds %struct.asd_sas_phy, %struct.asd_sas_phy* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @sas_port_delete_phy(i32* %55, i32 %58)
  %60 = load %struct.domain_device*, %struct.domain_device** %8, align 8
  %61 = load %struct.asd_sas_port*, %struct.asd_sas_port** %6, align 8
  %62 = getelementptr inbounds %struct.asd_sas_port, %struct.asd_sas_port* %61, i32 0, i32 10
  %63 = load i32*, i32** %62, align 8
  %64 = call i32 @sas_device_set_phy(%struct.domain_device* %60, i32* %63)
  br label %65

65:                                               ; preds = %52, %42
  %66 = load %struct.sas_internal*, %struct.sas_internal** %7, align 8
  %67 = getelementptr inbounds %struct.sas_internal, %struct.sas_internal* %66, i32 0, i32 0
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 0
  %70 = load i32 (%struct.asd_sas_phy*)*, i32 (%struct.asd_sas_phy*)** %69, align 8
  %71 = icmp ne i32 (%struct.asd_sas_phy*)* %70, null
  br i1 %71, label %72, label %80

72:                                               ; preds = %65
  %73 = load %struct.sas_internal*, %struct.sas_internal** %7, align 8
  %74 = getelementptr inbounds %struct.sas_internal, %struct.sas_internal* %73, i32 0, i32 0
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 0
  %77 = load i32 (%struct.asd_sas_phy*)*, i32 (%struct.asd_sas_phy*)** %76, align 8
  %78 = load %struct.asd_sas_phy*, %struct.asd_sas_phy** %3, align 8
  %79 = call i32 %77(%struct.asd_sas_phy* %78)
  br label %80

80:                                               ; preds = %72, %65
  %81 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %5, align 8
  %82 = getelementptr inbounds %struct.sas_ha_struct, %struct.sas_ha_struct* %81, i32 0, i32 0
  %83 = load i64, i64* %9, align 8
  %84 = call i32 @spin_lock_irqsave(i32* %82, i64 %83)
  %85 = load %struct.asd_sas_port*, %struct.asd_sas_port** %6, align 8
  %86 = getelementptr inbounds %struct.asd_sas_port, %struct.asd_sas_port* %85, i32 0, i32 2
  %87 = call i32 @spin_lock(i32* %86)
  %88 = load %struct.asd_sas_phy*, %struct.asd_sas_phy** %3, align 8
  %89 = getelementptr inbounds %struct.asd_sas_phy, %struct.asd_sas_phy* %88, i32 0, i32 2
  %90 = call i32 @list_del_init(i32* %89)
  %91 = load %struct.asd_sas_phy*, %struct.asd_sas_phy** %3, align 8
  %92 = call i32 @sas_phy_set_target(%struct.asd_sas_phy* %91, i32* null)
  %93 = load %struct.asd_sas_phy*, %struct.asd_sas_phy** %3, align 8
  %94 = getelementptr inbounds %struct.asd_sas_phy, %struct.asd_sas_phy* %93, i32 0, i32 1
  store %struct.asd_sas_port* null, %struct.asd_sas_port** %94, align 8
  %95 = load %struct.asd_sas_port*, %struct.asd_sas_port** %6, align 8
  %96 = getelementptr inbounds %struct.asd_sas_port, %struct.asd_sas_port* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = add nsw i32 %97, -1
  store i32 %98, i32* %96, align 8
  %99 = load %struct.asd_sas_phy*, %struct.asd_sas_phy** %3, align 8
  %100 = getelementptr inbounds %struct.asd_sas_phy, %struct.asd_sas_phy* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = shl i32 1, %101
  %103 = xor i32 %102, -1
  %104 = load %struct.asd_sas_port*, %struct.asd_sas_port** %6, align 8
  %105 = getelementptr inbounds %struct.asd_sas_port, %struct.asd_sas_port* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = and i32 %106, %103
  store i32 %107, i32* %105, align 4
  %108 = load %struct.asd_sas_port*, %struct.asd_sas_port** %6, align 8
  %109 = getelementptr inbounds %struct.asd_sas_port, %struct.asd_sas_port* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %112, label %136

112:                                              ; preds = %80
  %113 = load %struct.asd_sas_port*, %struct.asd_sas_port** %6, align 8
  %114 = getelementptr inbounds %struct.asd_sas_port, %struct.asd_sas_port* %113, i32 0, i32 9
  %115 = call i32 @INIT_LIST_HEAD(i32* %114)
  %116 = load %struct.asd_sas_port*, %struct.asd_sas_port** %6, align 8
  %117 = getelementptr inbounds %struct.asd_sas_port, %struct.asd_sas_port* %116, i32 0, i32 8
  %118 = load i32, i32* %117, align 4
  %119 = load i32, i32* @SAS_ADDR_SIZE, align 4
  %120 = call i32 @memset(i32 %118, i32 0, i32 %119)
  %121 = load %struct.asd_sas_port*, %struct.asd_sas_port** %6, align 8
  %122 = getelementptr inbounds %struct.asd_sas_port, %struct.asd_sas_port* %121, i32 0, i32 7
  %123 = load i32, i32* %122, align 8
  %124 = load i32, i32* @SAS_ADDR_SIZE, align 4
  %125 = call i32 @memset(i32 %123, i32 0, i32 %124)
  %126 = load %struct.asd_sas_port*, %struct.asd_sas_port** %6, align 8
  %127 = getelementptr inbounds %struct.asd_sas_port, %struct.asd_sas_port* %126, i32 0, i32 6
  store i64 0, i64* %127, align 8
  %128 = load %struct.asd_sas_port*, %struct.asd_sas_port** %6, align 8
  %129 = getelementptr inbounds %struct.asd_sas_port, %struct.asd_sas_port* %128, i32 0, i32 5
  store i64 0, i64* %129, align 8
  %130 = load %struct.asd_sas_port*, %struct.asd_sas_port** %6, align 8
  %131 = getelementptr inbounds %struct.asd_sas_port, %struct.asd_sas_port* %130, i32 0, i32 4
  store i64 0, i64* %131, align 8
  %132 = load %struct.asd_sas_port*, %struct.asd_sas_port** %6, align 8
  %133 = getelementptr inbounds %struct.asd_sas_port, %struct.asd_sas_port* %132, i32 0, i32 3
  store i64 0, i64* %133, align 8
  %134 = load %struct.asd_sas_port*, %struct.asd_sas_port** %6, align 8
  %135 = getelementptr inbounds %struct.asd_sas_port, %struct.asd_sas_port* %134, i32 0, i32 1
  store i32 0, i32* %135, align 4
  br label %136

136:                                              ; preds = %112, %80
  %137 = load %struct.asd_sas_port*, %struct.asd_sas_port** %6, align 8
  %138 = getelementptr inbounds %struct.asd_sas_port, %struct.asd_sas_port* %137, i32 0, i32 2
  %139 = call i32 @spin_unlock(i32* %138)
  %140 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %5, align 8
  %141 = getelementptr inbounds %struct.sas_ha_struct, %struct.sas_ha_struct* %140, i32 0, i32 0
  %142 = load i64, i64* %9, align 8
  %143 = call i32 @spin_unlock_irqrestore(i32* %141, i64 %142)
  br label %144

144:                                              ; preds = %136, %25
  ret void
}

declare dso_local %struct.sas_internal* @to_sas_internal(i32) #1

declare dso_local i32 @sas_unregister_domain_devices(%struct.asd_sas_port*, i32) #1

declare dso_local i32 @sas_port_delete(i32*) #1

declare dso_local i32 @sas_port_delete_phy(i32*, i32) #1

declare dso_local i32 @sas_device_set_phy(%struct.domain_device*, i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @sas_phy_set_target(%struct.asd_sas_phy*, i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
