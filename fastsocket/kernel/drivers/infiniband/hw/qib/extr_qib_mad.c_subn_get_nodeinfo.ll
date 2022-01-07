; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_mad.c_subn_get_nodeinfo.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_mad.c_subn_get_nodeinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_smp = type { i32, i64, i32 }
%struct.ib_device = type { i32 }
%struct.ib_node_info = type { i64, i32, i32, i32, i64, i32, i32*, i32, i8*, i8*, i32, i32 }
%struct.qib_devdata = type { i32, i32, i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@IB_SMP_INVALID_FIELD = common dso_local global i32 0, align 4
@ib_qib_sys_image_guid = common dso_local global i32 0, align 4
@QIB_SRC_OUI_1 = common dso_local global i32 0, align 4
@QIB_SRC_OUI_2 = common dso_local global i32 0, align 4
@QIB_SRC_OUI_3 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_smp*, %struct.ib_device*, i32)* @subn_get_nodeinfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @subn_get_nodeinfo(%struct.ib_smp* %0, %struct.ib_device* %1, i32 %2) #0 {
  %4 = alloca %struct.ib_smp*, align 8
  %5 = alloca %struct.ib_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ib_node_info*, align 8
  %8 = alloca %struct.qib_devdata*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.ib_smp* %0, %struct.ib_smp** %4, align 8
  store %struct.ib_device* %1, %struct.ib_device** %5, align 8
  store i32 %2, i32* %6, align 4
  %13 = load %struct.ib_smp*, %struct.ib_smp** %4, align 8
  %14 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %13, i32 0, i32 2
  %15 = bitcast i32* %14 to %struct.ib_node_info*
  store %struct.ib_node_info* %15, %struct.ib_node_info** %7, align 8
  %16 = load %struct.ib_device*, %struct.ib_device** %5, align 8
  %17 = call %struct.qib_devdata* @dd_from_ibdev(%struct.ib_device* %16)
  store %struct.qib_devdata* %17, %struct.qib_devdata** %8, align 8
  %18 = load i32, i32* %6, align 4
  %19 = sub nsw i32 %18, 1
  store i32 %19, i32* %12, align 4
  %20 = load %struct.ib_smp*, %struct.ib_smp** %4, align 8
  %21 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %40, label %24

24:                                               ; preds = %3
  %25 = load i32, i32* %12, align 4
  %26 = load %struct.qib_devdata*, %struct.qib_devdata** %8, align 8
  %27 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp uge i32 %25, %28
  br i1 %29, label %40, label %30

30:                                               ; preds = %24
  %31 = load %struct.qib_devdata*, %struct.qib_devdata** %8, align 8
  %32 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %31, i32 0, i32 5
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = load i32, i32* %12, align 4
  %35 = zext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %30, %24, %3
  %41 = load i32, i32* @IB_SMP_INVALID_FIELD, align 4
  %42 = load %struct.ib_smp*, %struct.ib_smp** %4, align 8
  %43 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = or i32 %44, %41
  store i32 %45, i32* %43, align 8
  br label %57

46:                                               ; preds = %30
  %47 = load %struct.qib_devdata*, %struct.qib_devdata** %8, align 8
  %48 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %47, i32 0, i32 5
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = load i32, i32* %12, align 4
  %51 = zext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.ib_node_info*, %struct.ib_node_info** %7, align 8
  %56 = getelementptr inbounds %struct.ib_node_info, %struct.ib_node_info* %55, i32 0, i32 0
  store i64 %54, i64* %56, align 8
  br label %57

57:                                               ; preds = %46, %40
  %58 = load %struct.ib_node_info*, %struct.ib_node_info** %7, align 8
  %59 = getelementptr inbounds %struct.ib_node_info, %struct.ib_node_info* %58, i32 0, i32 1
  store i32 1, i32* %59, align 8
  %60 = load %struct.ib_node_info*, %struct.ib_node_info** %7, align 8
  %61 = getelementptr inbounds %struct.ib_node_info, %struct.ib_node_info* %60, i32 0, i32 2
  store i32 1, i32* %61, align 4
  %62 = load %struct.ib_node_info*, %struct.ib_node_info** %7, align 8
  %63 = getelementptr inbounds %struct.ib_node_info, %struct.ib_node_info* %62, i32 0, i32 3
  store i32 1, i32* %63, align 8
  %64 = load %struct.ib_device*, %struct.ib_device** %5, align 8
  %65 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.ib_node_info*, %struct.ib_node_info** %7, align 8
  %68 = getelementptr inbounds %struct.ib_node_info, %struct.ib_node_info* %67, i32 0, i32 11
  store i32 %66, i32* %68, align 4
  %69 = load i32, i32* @ib_qib_sys_image_guid, align 4
  %70 = load %struct.ib_node_info*, %struct.ib_node_info** %7, align 8
  %71 = getelementptr inbounds %struct.ib_node_info, %struct.ib_node_info* %70, i32 0, i32 10
  store i32 %69, i32* %71, align 8
  %72 = load %struct.qib_devdata*, %struct.qib_devdata** %8, align 8
  %73 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %72, i32 0, i32 5
  %74 = load %struct.TYPE_2__*, %struct.TYPE_2__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load %struct.ib_node_info*, %struct.ib_node_info** %7, align 8
  %78 = getelementptr inbounds %struct.ib_node_info, %struct.ib_node_info* %77, i32 0, i32 4
  store i64 %76, i64* %78, align 8
  %79 = load %struct.qib_devdata*, %struct.qib_devdata** %8, align 8
  %80 = call i32 @qib_get_npkeys(%struct.qib_devdata* %79)
  %81 = call i8* @cpu_to_be16(i32 %80)
  %82 = load %struct.ib_node_info*, %struct.ib_node_info** %7, align 8
  %83 = getelementptr inbounds %struct.ib_node_info, %struct.ib_node_info* %82, i32 0, i32 9
  store i8* %81, i8** %83, align 8
  %84 = load %struct.qib_devdata*, %struct.qib_devdata** %8, align 8
  %85 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %84, i32 0, i32 4
  %86 = load i32, i32* %85, align 8
  %87 = call i8* @cpu_to_be16(i32 %86)
  %88 = load %struct.ib_node_info*, %struct.ib_node_info** %7, align 8
  %89 = getelementptr inbounds %struct.ib_node_info, %struct.ib_node_info* %88, i32 0, i32 8
  store i8* %87, i8** %89, align 8
  %90 = load %struct.qib_devdata*, %struct.qib_devdata** %8, align 8
  %91 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  store i32 %92, i32* %10, align 4
  %93 = load %struct.qib_devdata*, %struct.qib_devdata** %8, align 8
  %94 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 8
  store i32 %95, i32* %11, align 4
  %96 = load i32, i32* %10, align 4
  %97 = shl i32 %96, 16
  %98 = load i32, i32* %11, align 4
  %99 = or i32 %97, %98
  %100 = call i32 @cpu_to_be32(i32 %99)
  %101 = load %struct.ib_node_info*, %struct.ib_node_info** %7, align 8
  %102 = getelementptr inbounds %struct.ib_node_info, %struct.ib_node_info* %101, i32 0, i32 7
  store i32 %100, i32* %102, align 8
  %103 = load i32, i32* %6, align 4
  %104 = load %struct.ib_node_info*, %struct.ib_node_info** %7, align 8
  %105 = getelementptr inbounds %struct.ib_node_info, %struct.ib_node_info* %104, i32 0, i32 5
  store i32 %103, i32* %105, align 8
  %106 = load %struct.qib_devdata*, %struct.qib_devdata** %8, align 8
  %107 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %106, i32 0, i32 3
  %108 = load i32, i32* %107, align 4
  store i32 %108, i32* %9, align 4
  %109 = load i32, i32* @QIB_SRC_OUI_1, align 4
  %110 = load %struct.ib_node_info*, %struct.ib_node_info** %7, align 8
  %111 = getelementptr inbounds %struct.ib_node_info, %struct.ib_node_info* %110, i32 0, i32 6
  %112 = load i32*, i32** %111, align 8
  %113 = getelementptr inbounds i32, i32* %112, i64 0
  store i32 %109, i32* %113, align 4
  %114 = load i32, i32* @QIB_SRC_OUI_2, align 4
  %115 = load %struct.ib_node_info*, %struct.ib_node_info** %7, align 8
  %116 = getelementptr inbounds %struct.ib_node_info, %struct.ib_node_info* %115, i32 0, i32 6
  %117 = load i32*, i32** %116, align 8
  %118 = getelementptr inbounds i32, i32* %117, i64 1
  store i32 %114, i32* %118, align 4
  %119 = load i32, i32* @QIB_SRC_OUI_3, align 4
  %120 = load %struct.ib_node_info*, %struct.ib_node_info** %7, align 8
  %121 = getelementptr inbounds %struct.ib_node_info, %struct.ib_node_info* %120, i32 0, i32 6
  %122 = load i32*, i32** %121, align 8
  %123 = getelementptr inbounds i32, i32* %122, i64 2
  store i32 %119, i32* %123, align 4
  %124 = load %struct.ib_smp*, %struct.ib_smp** %4, align 8
  %125 = call i32 @reply(%struct.ib_smp* %124)
  ret i32 %125
}

declare dso_local %struct.qib_devdata* @dd_from_ibdev(%struct.ib_device*) #1

declare dso_local i8* @cpu_to_be16(i32) #1

declare dso_local i32 @qib_get_npkeys(%struct.qib_devdata*) #1

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local i32 @reply(%struct.ib_smp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
