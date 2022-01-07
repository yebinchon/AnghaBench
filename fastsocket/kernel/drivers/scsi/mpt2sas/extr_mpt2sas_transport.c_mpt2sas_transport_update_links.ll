; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/mpt2sas/extr_mpt2sas_transport.c_mpt2sas_transport_update_links.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/mpt2sas/extr_mpt2sas_transport.c_mpt2sas_transport_update_links.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.MPT2SAS_ADAPTER = type { i32, i32, i64, i64 }
%struct._sas_node = type { %struct._sas_phy* }
%struct._sas_phy = type { %struct.TYPE_5__, %struct.TYPE_4__*, i32 }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { i32, i32 }

@MPI2_SAS_NEG_LINK_RATE_1_5 = common dso_local global i64 0, align 8
@MPT_DEBUG_TRANSPORT = common dso_local global i32 0, align 4
@KERN_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [112 x i8] c"refresh: parent sas_addr(0x%016llx),\0A\09link_rate(0x%02x), phy(%d)\0A\09attached_handle(0x%04x), sas_addr(0x%016llx)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mpt2sas_transport_update_links(%struct.MPT2SAS_ADAPTER* %0, i64 %1, i32 %2, i64 %3, i64 %4) #0 {
  %6 = alloca %struct.MPT2SAS_ADAPTER*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct._sas_node*, align 8
  %13 = alloca %struct._sas_phy*, align 8
  store %struct.MPT2SAS_ADAPTER* %0, %struct.MPT2SAS_ADAPTER** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  store i64 %4, i64* %10, align 8
  %14 = load %struct.MPT2SAS_ADAPTER*, %struct.MPT2SAS_ADAPTER** %6, align 8
  %15 = getelementptr inbounds %struct.MPT2SAS_ADAPTER, %struct.MPT2SAS_ADAPTER* %14, i32 0, i32 3
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %23, label %18

18:                                               ; preds = %5
  %19 = load %struct.MPT2SAS_ADAPTER*, %struct.MPT2SAS_ADAPTER** %6, align 8
  %20 = getelementptr inbounds %struct.MPT2SAS_ADAPTER, %struct.MPT2SAS_ADAPTER* %19, i32 0, i32 2
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %18, %5
  br label %110

24:                                               ; preds = %18
  %25 = load %struct.MPT2SAS_ADAPTER*, %struct.MPT2SAS_ADAPTER** %6, align 8
  %26 = getelementptr inbounds %struct.MPT2SAS_ADAPTER, %struct.MPT2SAS_ADAPTER* %25, i32 0, i32 1
  %27 = load i64, i64* %11, align 8
  %28 = call i32 @spin_lock_irqsave(i32* %26, i64 %27)
  %29 = load %struct.MPT2SAS_ADAPTER*, %struct.MPT2SAS_ADAPTER** %6, align 8
  %30 = load i64, i64* %7, align 8
  %31 = call %struct._sas_node* @_transport_sas_node_find_by_sas_address(%struct.MPT2SAS_ADAPTER* %29, i64 %30)
  store %struct._sas_node* %31, %struct._sas_node** %12, align 8
  %32 = load %struct._sas_node*, %struct._sas_node** %12, align 8
  %33 = icmp ne %struct._sas_node* %32, null
  br i1 %33, label %39, label %34

34:                                               ; preds = %24
  %35 = load %struct.MPT2SAS_ADAPTER*, %struct.MPT2SAS_ADAPTER** %6, align 8
  %36 = getelementptr inbounds %struct.MPT2SAS_ADAPTER, %struct.MPT2SAS_ADAPTER* %35, i32 0, i32 1
  %37 = load i64, i64* %11, align 8
  %38 = call i32 @spin_unlock_irqrestore(i32* %36, i64 %37)
  br label %110

39:                                               ; preds = %24
  %40 = load %struct._sas_node*, %struct._sas_node** %12, align 8
  %41 = getelementptr inbounds %struct._sas_node, %struct._sas_node* %40, i32 0, i32 0
  %42 = load %struct._sas_phy*, %struct._sas_phy** %41, align 8
  %43 = load i64, i64* %9, align 8
  %44 = getelementptr inbounds %struct._sas_phy, %struct._sas_phy* %42, i64 %43
  store %struct._sas_phy* %44, %struct._sas_phy** %13, align 8
  %45 = load i32, i32* %8, align 4
  %46 = load %struct._sas_phy*, %struct._sas_phy** %13, align 8
  %47 = getelementptr inbounds %struct._sas_phy, %struct._sas_phy* %46, i32 0, i32 2
  store i32 %45, i32* %47, align 8
  %48 = load %struct.MPT2SAS_ADAPTER*, %struct.MPT2SAS_ADAPTER** %6, align 8
  %49 = getelementptr inbounds %struct.MPT2SAS_ADAPTER, %struct.MPT2SAS_ADAPTER* %48, i32 0, i32 1
  %50 = load i64, i64* %11, align 8
  %51 = call i32 @spin_unlock_irqrestore(i32* %49, i64 %50)
  %52 = load i32, i32* %8, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %72

54:                                               ; preds = %39
  %55 = load i64, i64* %10, align 8
  %56 = load i64, i64* @MPI2_SAS_NEG_LINK_RATE_1_5, align 8
  %57 = icmp uge i64 %55, %56
  br i1 %57, label %58, label %72

58:                                               ; preds = %54
  %59 = load %struct.MPT2SAS_ADAPTER*, %struct.MPT2SAS_ADAPTER** %6, align 8
  %60 = load i32, i32* %8, align 4
  %61 = load %struct._sas_phy*, %struct._sas_phy** %13, align 8
  %62 = getelementptr inbounds %struct._sas_phy, %struct._sas_phy* %61, i32 0, i32 0
  %63 = call i32 @_transport_set_identify(%struct.MPT2SAS_ADAPTER* %59, i32 %60, %struct.TYPE_5__* %62)
  %64 = load %struct.MPT2SAS_ADAPTER*, %struct.MPT2SAS_ADAPTER** %6, align 8
  %65 = load %struct._sas_node*, %struct._sas_node** %12, align 8
  %66 = load %struct._sas_phy*, %struct._sas_phy** %13, align 8
  %67 = load %struct._sas_phy*, %struct._sas_phy** %13, align 8
  %68 = getelementptr inbounds %struct._sas_phy, %struct._sas_phy* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = call i32 @_transport_add_phy_to_an_existing_port(%struct.MPT2SAS_ADAPTER* %64, %struct._sas_node* %65, %struct._sas_phy* %66, i64 %70)
  br label %76

72:                                               ; preds = %54, %39
  %73 = load %struct._sas_phy*, %struct._sas_phy** %13, align 8
  %74 = getelementptr inbounds %struct._sas_phy, %struct._sas_phy* %73, i32 0, i32 0
  %75 = call i32 @memset(%struct.TYPE_5__* %74, i32 0, i32 4)
  br label %76

76:                                               ; preds = %72, %58
  %77 = load %struct._sas_phy*, %struct._sas_phy** %13, align 8
  %78 = getelementptr inbounds %struct._sas_phy, %struct._sas_phy* %77, i32 0, i32 1
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** %78, align 8
  %80 = icmp ne %struct.TYPE_4__* %79, null
  br i1 %80, label %81, label %88

81:                                               ; preds = %76
  %82 = load i64, i64* %10, align 8
  %83 = call i32 @_transport_convert_phy_link_rate(i64 %82)
  %84 = load %struct._sas_phy*, %struct._sas_phy** %13, align 8
  %85 = getelementptr inbounds %struct._sas_phy, %struct._sas_phy* %84, i32 0, i32 1
  %86 = load %struct.TYPE_4__*, %struct.TYPE_4__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 1
  store i32 %83, i32* %87, align 4
  br label %88

88:                                               ; preds = %81, %76
  %89 = load %struct.MPT2SAS_ADAPTER*, %struct.MPT2SAS_ADAPTER** %6, align 8
  %90 = getelementptr inbounds %struct.MPT2SAS_ADAPTER, %struct.MPT2SAS_ADAPTER* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = load i32, i32* @MPT_DEBUG_TRANSPORT, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %110

95:                                               ; preds = %88
  %96 = load i32, i32* @KERN_INFO, align 4
  %97 = load %struct._sas_phy*, %struct._sas_phy** %13, align 8
  %98 = getelementptr inbounds %struct._sas_phy, %struct._sas_phy* %97, i32 0, i32 1
  %99 = load %struct.TYPE_4__*, %struct.TYPE_4__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 0
  %101 = load i64, i64* %7, align 8
  %102 = load i64, i64* %10, align 8
  %103 = load i64, i64* %9, align 8
  %104 = load i32, i32* %8, align 4
  %105 = load %struct._sas_phy*, %struct._sas_phy** %13, align 8
  %106 = getelementptr inbounds %struct._sas_phy, %struct._sas_phy* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = call i32 @dev_printk(i32 %96, i32* %100, i8* getelementptr inbounds ([112 x i8], [112 x i8]* @.str, i64 0, i64 0), i64 %101, i64 %102, i64 %103, i32 %104, i64 %108)
  br label %110

110:                                              ; preds = %23, %34, %95, %88
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local %struct._sas_node* @_transport_sas_node_find_by_sas_address(%struct.MPT2SAS_ADAPTER*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @_transport_set_identify(%struct.MPT2SAS_ADAPTER*, i32, %struct.TYPE_5__*) #1

declare dso_local i32 @_transport_add_phy_to_an_existing_port(%struct.MPT2SAS_ADAPTER*, %struct._sas_node*, %struct._sas_phy*, i64) #1

declare dso_local i32 @memset(%struct.TYPE_5__*, i32, i32) #1

declare dso_local i32 @_transport_convert_phy_link_rate(i64) #1

declare dso_local i32 @dev_printk(i32, i32*, i8*, i64, i64, i64, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
