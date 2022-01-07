; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/isci/extr_init.c_isci_register_sas_ha.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/isci/extr_init.c_isci_register_sas_ha.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isci_host = type { %struct.asd_sas_port*, %struct.TYPE_4__*, %struct.TYPE_3__*, %struct.sas_ha_struct }
%struct.asd_sas_port = type { i32 }
%struct.TYPE_4__ = type { %struct.asd_sas_phy, i32* }
%struct.asd_sas_phy = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.sas_ha_struct = type { i32, i32, i32, i32, %struct.asd_sas_port**, %struct.asd_sas_phy**, i32*, i32, i32 }

@SCI_MAX_PHYS = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@SCI_MAX_PORTS = common dso_local global i32 0, align 4
@DRV_NAME = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@ISCI_CAN_QUEUE_VAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.isci_host*)* @isci_register_sas_ha to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @isci_register_sas_ha(%struct.isci_host* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.isci_host*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.sas_ha_struct*, align 8
  %6 = alloca %struct.asd_sas_phy**, align 8
  %7 = alloca %struct.asd_sas_port**, align 8
  store %struct.isci_host* %0, %struct.isci_host** %3, align 8
  %8 = load %struct.isci_host*, %struct.isci_host** %3, align 8
  %9 = getelementptr inbounds %struct.isci_host, %struct.isci_host* %8, i32 0, i32 3
  store %struct.sas_ha_struct* %9, %struct.sas_ha_struct** %5, align 8
  %10 = load %struct.isci_host*, %struct.isci_host** %3, align 8
  %11 = getelementptr inbounds %struct.isci_host, %struct.isci_host* %10, i32 0, i32 2
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i32, i32* @SCI_MAX_PHYS, align 4
  %15 = sext i32 %14 to i64
  %16 = mul i64 %15, 8
  %17 = trunc i64 %16 to i32
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = call i8* @devm_kzalloc(i32* %13, i32 %17, i32 %18)
  %20 = bitcast i8* %19 to %struct.asd_sas_phy**
  store %struct.asd_sas_phy** %20, %struct.asd_sas_phy*** %6, align 8
  %21 = load %struct.asd_sas_phy**, %struct.asd_sas_phy*** %6, align 8
  %22 = icmp ne %struct.asd_sas_phy** %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %1
  %24 = load i32, i32* @ENOMEM, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %2, align 4
  br label %107

26:                                               ; preds = %1
  %27 = load %struct.isci_host*, %struct.isci_host** %3, align 8
  %28 = getelementptr inbounds %struct.isci_host, %struct.isci_host* %27, i32 0, i32 2
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i32, i32* @SCI_MAX_PORTS, align 4
  %32 = sext i32 %31 to i64
  %33 = mul i64 %32, 8
  %34 = trunc i64 %33 to i32
  %35 = load i32, i32* @GFP_KERNEL, align 4
  %36 = call i8* @devm_kzalloc(i32* %30, i32 %34, i32 %35)
  %37 = bitcast i8* %36 to %struct.asd_sas_port**
  store %struct.asd_sas_port** %37, %struct.asd_sas_port*** %7, align 8
  %38 = load %struct.asd_sas_port**, %struct.asd_sas_port*** %7, align 8
  %39 = icmp ne %struct.asd_sas_port** %38, null
  br i1 %39, label %43, label %40

40:                                               ; preds = %26
  %41 = load i32, i32* @ENOMEM, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %2, align 4
  br label %107

43:                                               ; preds = %26
  %44 = load i32, i32* @DRV_NAME, align 4
  %45 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %5, align 8
  %46 = getelementptr inbounds %struct.sas_ha_struct, %struct.sas_ha_struct* %45, i32 0, i32 8
  store i32 %44, i32* %46, align 4
  %47 = load i32, i32* @THIS_MODULE, align 4
  %48 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %5, align 8
  %49 = getelementptr inbounds %struct.sas_ha_struct, %struct.sas_ha_struct* %48, i32 0, i32 7
  store i32 %47, i32* %49, align 8
  %50 = load %struct.isci_host*, %struct.isci_host** %3, align 8
  %51 = getelementptr inbounds %struct.isci_host, %struct.isci_host* %50, i32 0, i32 1
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i64 0
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 1
  %55 = load i32*, i32** %54, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 0
  %57 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %5, align 8
  %58 = getelementptr inbounds %struct.sas_ha_struct, %struct.sas_ha_struct* %57, i32 0, i32 6
  store i32* %56, i32** %58, align 8
  store i32 0, i32* %4, align 4
  br label %59

59:                                               ; preds = %85, %43
  %60 = load i32, i32* %4, align 4
  %61 = load i32, i32* @SCI_MAX_PHYS, align 4
  %62 = icmp slt i32 %60, %61
  br i1 %62, label %63, label %88

63:                                               ; preds = %59
  %64 = load %struct.isci_host*, %struct.isci_host** %3, align 8
  %65 = getelementptr inbounds %struct.isci_host, %struct.isci_host* %64, i32 0, i32 1
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %65, align 8
  %67 = load i32, i32* %4, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  %71 = load %struct.asd_sas_phy**, %struct.asd_sas_phy*** %6, align 8
  %72 = load i32, i32* %4, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.asd_sas_phy*, %struct.asd_sas_phy** %71, i64 %73
  store %struct.asd_sas_phy* %70, %struct.asd_sas_phy** %74, align 8
  %75 = load %struct.isci_host*, %struct.isci_host** %3, align 8
  %76 = getelementptr inbounds %struct.isci_host, %struct.isci_host* %75, i32 0, i32 0
  %77 = load %struct.asd_sas_port*, %struct.asd_sas_port** %76, align 8
  %78 = load i32, i32* %4, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.asd_sas_port, %struct.asd_sas_port* %77, i64 %79
  %81 = load %struct.asd_sas_port**, %struct.asd_sas_port*** %7, align 8
  %82 = load i32, i32* %4, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.asd_sas_port*, %struct.asd_sas_port** %81, i64 %83
  store %struct.asd_sas_port* %80, %struct.asd_sas_port** %84, align 8
  br label %85

85:                                               ; preds = %63
  %86 = load i32, i32* %4, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %4, align 4
  br label %59

88:                                               ; preds = %59
  %89 = load %struct.asd_sas_phy**, %struct.asd_sas_phy*** %6, align 8
  %90 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %5, align 8
  %91 = getelementptr inbounds %struct.sas_ha_struct, %struct.sas_ha_struct* %90, i32 0, i32 5
  store %struct.asd_sas_phy** %89, %struct.asd_sas_phy*** %91, align 8
  %92 = load %struct.asd_sas_port**, %struct.asd_sas_port*** %7, align 8
  %93 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %5, align 8
  %94 = getelementptr inbounds %struct.sas_ha_struct, %struct.sas_ha_struct* %93, i32 0, i32 4
  store %struct.asd_sas_port** %92, %struct.asd_sas_port*** %94, align 8
  %95 = load i32, i32* @SCI_MAX_PHYS, align 4
  %96 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %5, align 8
  %97 = getelementptr inbounds %struct.sas_ha_struct, %struct.sas_ha_struct* %96, i32 0, i32 0
  store i32 %95, i32* %97, align 8
  %98 = load i32, i32* @ISCI_CAN_QUEUE_VAL, align 4
  %99 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %5, align 8
  %100 = getelementptr inbounds %struct.sas_ha_struct, %struct.sas_ha_struct* %99, i32 0, i32 3
  store i32 %98, i32* %100, align 4
  %101 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %5, align 8
  %102 = getelementptr inbounds %struct.sas_ha_struct, %struct.sas_ha_struct* %101, i32 0, i32 1
  store i32 1, i32* %102, align 4
  %103 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %5, align 8
  %104 = getelementptr inbounds %struct.sas_ha_struct, %struct.sas_ha_struct* %103, i32 0, i32 2
  store i32 1, i32* %104, align 8
  %105 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %5, align 8
  %106 = call i32 @sas_register_ha(%struct.sas_ha_struct* %105)
  store i32 0, i32* %2, align 4
  br label %107

107:                                              ; preds = %88, %40, %23
  %108 = load i32, i32* %2, align 4
  ret i32 %108
}

declare dso_local i8* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @sas_register_ha(%struct.sas_ha_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
