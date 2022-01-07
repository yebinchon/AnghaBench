; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_verbs.c_init_ibport.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_verbs.c_init_ibport.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qib_pportdata = type { %struct.TYPE_2__*, %struct.qib_ibport }
%struct.TYPE_2__ = type { i32 }
%struct.qib_ibport = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32, i32, i32 }
%struct.qib_verbs_counters = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@IB_DEFAULT_GID_PREFIX = common dso_local global i32 0, align 4
@IB_LID_PERMISSIVE = common dso_local global i32 0, align 4
@IB_PORT_SYS_IMAGE_GUID_SUP = common dso_local global i32 0, align 4
@IB_PORT_CLIENT_REG_SUP = common dso_local global i32 0, align 4
@IB_PORT_SL_MAP_SUP = common dso_local global i32 0, align 4
@IB_PORT_TRAP_SUP = common dso_local global i32 0, align 4
@IB_PORT_AUTO_MIGR_SUP = common dso_local global i32 0, align 4
@IB_PORT_DR_NOTICE_SUP = common dso_local global i32 0, align 4
@IB_PORT_CAP_MASK_NOTICE_SUP = common dso_local global i32 0, align 4
@IB_PORT_OTHER_LOCAL_CHANGES_SUP = common dso_local global i32 0, align 4
@QIB_HAS_LINK_LATENCY = common dso_local global i32 0, align 4
@IB_PORT_LINK_LATENCY_SUP = common dso_local global i32 0, align 4
@IB_PMA_PORT_XMIT_DATA = common dso_local global i32 0, align 4
@IB_PMA_PORT_RCV_DATA = common dso_local global i32 0, align 4
@IB_PMA_PORT_XMIT_PKTS = common dso_local global i32 0, align 4
@IB_PMA_PORT_RCV_PKTS = common dso_local global i32 0, align 4
@IB_PMA_PORT_XMIT_WAIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qib_pportdata*)* @init_ibport to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_ibport(%struct.qib_pportdata* %0) #0 {
  %2 = alloca %struct.qib_pportdata*, align 8
  %3 = alloca %struct.qib_verbs_counters, align 4
  %4 = alloca %struct.qib_ibport*, align 8
  store %struct.qib_pportdata* %0, %struct.qib_pportdata** %2, align 8
  %5 = load %struct.qib_pportdata*, %struct.qib_pportdata** %2, align 8
  %6 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %5, i32 0, i32 1
  store %struct.qib_ibport* %6, %struct.qib_ibport** %4, align 8
  %7 = load %struct.qib_ibport*, %struct.qib_ibport** %4, align 8
  %8 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %7, i32 0, i32 19
  %9 = call i32 @spin_lock_init(i32* %8)
  %10 = load i32, i32* @IB_DEFAULT_GID_PREFIX, align 4
  %11 = load %struct.qib_ibport*, %struct.qib_ibport** %4, align 8
  %12 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %11, i32 0, i32 18
  store i32 %10, i32* %12, align 4
  %13 = load i32, i32* @IB_LID_PERMISSIVE, align 4
  %14 = call i32 @be16_to_cpu(i32 %13)
  %15 = load %struct.qib_ibport*, %struct.qib_ibport** %4, align 8
  %16 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %15, i32 0, i32 17
  store i32 %14, i32* %16, align 8
  %17 = load i32, i32* @IB_PORT_SYS_IMAGE_GUID_SUP, align 4
  %18 = load i32, i32* @IB_PORT_CLIENT_REG_SUP, align 4
  %19 = or i32 %17, %18
  %20 = load i32, i32* @IB_PORT_SL_MAP_SUP, align 4
  %21 = or i32 %19, %20
  %22 = load i32, i32* @IB_PORT_TRAP_SUP, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* @IB_PORT_AUTO_MIGR_SUP, align 4
  %25 = or i32 %23, %24
  %26 = load i32, i32* @IB_PORT_DR_NOTICE_SUP, align 4
  %27 = or i32 %25, %26
  %28 = load i32, i32* @IB_PORT_CAP_MASK_NOTICE_SUP, align 4
  %29 = or i32 %27, %28
  %30 = load i32, i32* @IB_PORT_OTHER_LOCAL_CHANGES_SUP, align 4
  %31 = or i32 %29, %30
  %32 = load %struct.qib_ibport*, %struct.qib_ibport** %4, align 8
  %33 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 8
  %34 = load %struct.qib_pportdata*, %struct.qib_pportdata** %2, align 8
  %35 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %34, i32 0, i32 0
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @QIB_HAS_LINK_LATENCY, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %1
  %43 = load i32, i32* @IB_PORT_LINK_LATENCY_SUP, align 4
  %44 = load %struct.qib_ibport*, %struct.qib_ibport** %4, align 8
  %45 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = or i32 %46, %43
  store i32 %47, i32* %45, align 8
  br label %48

48:                                               ; preds = %42, %1
  %49 = load i32, i32* @IB_PMA_PORT_XMIT_DATA, align 4
  %50 = load %struct.qib_ibport*, %struct.qib_ibport** %4, align 8
  %51 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %50, i32 0, i32 16
  %52 = load i32*, i32** %51, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 0
  store i32 %49, i32* %53, align 4
  %54 = load i32, i32* @IB_PMA_PORT_RCV_DATA, align 4
  %55 = load %struct.qib_ibport*, %struct.qib_ibport** %4, align 8
  %56 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %55, i32 0, i32 16
  %57 = load i32*, i32** %56, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 1
  store i32 %54, i32* %58, align 4
  %59 = load i32, i32* @IB_PMA_PORT_XMIT_PKTS, align 4
  %60 = load %struct.qib_ibport*, %struct.qib_ibport** %4, align 8
  %61 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %60, i32 0, i32 16
  %62 = load i32*, i32** %61, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 2
  store i32 %59, i32* %63, align 4
  %64 = load i32, i32* @IB_PMA_PORT_RCV_PKTS, align 4
  %65 = load %struct.qib_ibport*, %struct.qib_ibport** %4, align 8
  %66 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %65, i32 0, i32 16
  %67 = load i32*, i32** %66, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 3
  store i32 %64, i32* %68, align 4
  %69 = load i32, i32* @IB_PMA_PORT_XMIT_WAIT, align 4
  %70 = load %struct.qib_ibport*, %struct.qib_ibport** %4, align 8
  %71 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %70, i32 0, i32 16
  %72 = load i32*, i32** %71, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 4
  store i32 %69, i32* %73, align 4
  %74 = load %struct.qib_pportdata*, %struct.qib_pportdata** %2, align 8
  %75 = call i32 @qib_get_counters(%struct.qib_pportdata* %74, %struct.qib_verbs_counters* %3)
  %76 = getelementptr inbounds %struct.qib_verbs_counters, %struct.qib_verbs_counters* %3, i32 0, i32 12
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.qib_ibport*, %struct.qib_ibport** %4, align 8
  %79 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %78, i32 0, i32 15
  store i32 %77, i32* %79, align 4
  %80 = getelementptr inbounds %struct.qib_verbs_counters, %struct.qib_verbs_counters* %3, i32 0, i32 11
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.qib_ibport*, %struct.qib_ibport** %4, align 8
  %83 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %82, i32 0, i32 14
  store i32 %81, i32* %83, align 8
  %84 = getelementptr inbounds %struct.qib_verbs_counters, %struct.qib_verbs_counters* %3, i32 0, i32 10
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.qib_ibport*, %struct.qib_ibport** %4, align 8
  %87 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %86, i32 0, i32 13
  store i32 %85, i32* %87, align 4
  %88 = getelementptr inbounds %struct.qib_verbs_counters, %struct.qib_verbs_counters* %3, i32 0, i32 9
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.qib_ibport*, %struct.qib_ibport** %4, align 8
  %91 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %90, i32 0, i32 12
  store i32 %89, i32* %91, align 8
  %92 = getelementptr inbounds %struct.qib_verbs_counters, %struct.qib_verbs_counters* %3, i32 0, i32 8
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.qib_ibport*, %struct.qib_ibport** %4, align 8
  %95 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %94, i32 0, i32 11
  store i32 %93, i32* %95, align 4
  %96 = getelementptr inbounds %struct.qib_verbs_counters, %struct.qib_verbs_counters* %3, i32 0, i32 7
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.qib_ibport*, %struct.qib_ibport** %4, align 8
  %99 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %98, i32 0, i32 10
  store i32 %97, i32* %99, align 8
  %100 = getelementptr inbounds %struct.qib_verbs_counters, %struct.qib_verbs_counters* %3, i32 0, i32 6
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.qib_ibport*, %struct.qib_ibport** %4, align 8
  %103 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %102, i32 0, i32 9
  store i32 %101, i32* %103, align 4
  %104 = getelementptr inbounds %struct.qib_verbs_counters, %struct.qib_verbs_counters* %3, i32 0, i32 5
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.qib_ibport*, %struct.qib_ibport** %4, align 8
  %107 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %106, i32 0, i32 8
  store i32 %105, i32* %107, align 8
  %108 = getelementptr inbounds %struct.qib_verbs_counters, %struct.qib_verbs_counters* %3, i32 0, i32 4
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.qib_ibport*, %struct.qib_ibport** %4, align 8
  %111 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %110, i32 0, i32 7
  store i32 %109, i32* %111, align 4
  %112 = getelementptr inbounds %struct.qib_verbs_counters, %struct.qib_verbs_counters* %3, i32 0, i32 3
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.qib_ibport*, %struct.qib_ibport** %4, align 8
  %115 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %114, i32 0, i32 6
  store i32 %113, i32* %115, align 8
  %116 = getelementptr inbounds %struct.qib_verbs_counters, %struct.qib_verbs_counters* %3, i32 0, i32 2
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.qib_ibport*, %struct.qib_ibport** %4, align 8
  %119 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %118, i32 0, i32 5
  store i32 %117, i32* %119, align 4
  %120 = getelementptr inbounds %struct.qib_verbs_counters, %struct.qib_verbs_counters* %3, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.qib_ibport*, %struct.qib_ibport** %4, align 8
  %123 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %122, i32 0, i32 4
  store i32 %121, i32* %123, align 8
  %124 = getelementptr inbounds %struct.qib_verbs_counters, %struct.qib_verbs_counters* %3, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = load %struct.qib_ibport*, %struct.qib_ibport** %4, align 8
  %127 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %126, i32 0, i32 3
  store i32 %125, i32* %127, align 4
  %128 = load %struct.qib_ibport*, %struct.qib_ibport** %4, align 8
  %129 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 8
  %131 = call i32 @rcu_assign_pointer(i32 %130, i32* null)
  %132 = load %struct.qib_ibport*, %struct.qib_ibport** %4, align 8
  %133 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  %135 = call i32 @rcu_assign_pointer(i32 %134, i32* null)
  ret void
}

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @be16_to_cpu(i32) #1

declare dso_local i32 @qib_get_counters(%struct.qib_pportdata*, %struct.qib_verbs_counters*) #1

declare dso_local i32 @rcu_assign_pointer(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
