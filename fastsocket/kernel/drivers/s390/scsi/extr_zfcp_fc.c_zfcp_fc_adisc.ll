; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/scsi/extr_zfcp_fc.c_zfcp_fc_adisc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/scsi/extr_zfcp_fc.c_zfcp_fc_adisc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.zfcp_port = type { i32, %struct.zfcp_adapter* }
%struct.zfcp_adapter = type { i32 }
%struct.zfcp_els_adisc = type { %struct.TYPE_4__, %struct.TYPE_6__, %struct.TYPE_6__, i32, i32 }
%struct.TYPE_4__ = type { i64, i32, i32, i32, %struct.zfcp_port*, %struct.zfcp_adapter*, i32*, i32* }
%struct.TYPE_6__ = type { i32, i32, i32, i32 }

@zfcp_data = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@zfcp_fc_adisc_handler = common dso_local global i32 0, align 4
@ZFCP_LS_ADISC = common dso_local global i32 0, align 4
@ZFCP_FC_CTELS_TMO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.zfcp_port*)* @zfcp_fc_adisc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zfcp_fc_adisc(%struct.zfcp_port* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.zfcp_port*, align 8
  %4 = alloca %struct.zfcp_els_adisc*, align 8
  %5 = alloca %struct.zfcp_adapter*, align 8
  %6 = alloca i32, align 4
  store %struct.zfcp_port* %0, %struct.zfcp_port** %3, align 8
  %7 = load %struct.zfcp_port*, %struct.zfcp_port** %3, align 8
  %8 = getelementptr inbounds %struct.zfcp_port, %struct.zfcp_port* %7, i32 0, i32 1
  %9 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %8, align 8
  store %struct.zfcp_adapter* %9, %struct.zfcp_adapter** %5, align 8
  %10 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @zfcp_data, i32 0, i32 0), align 4
  %11 = load i32, i32* @GFP_ATOMIC, align 4
  %12 = call %struct.zfcp_els_adisc* @kmem_cache_zalloc(i32 %10, i32 %11)
  store %struct.zfcp_els_adisc* %12, %struct.zfcp_els_adisc** %4, align 8
  %13 = load %struct.zfcp_els_adisc*, %struct.zfcp_els_adisc** %4, align 8
  %14 = icmp ne %struct.zfcp_els_adisc* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %1
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %106

18:                                               ; preds = %1
  %19 = load %struct.zfcp_els_adisc*, %struct.zfcp_els_adisc** %4, align 8
  %20 = getelementptr inbounds %struct.zfcp_els_adisc, %struct.zfcp_els_adisc* %19, i32 0, i32 4
  %21 = load %struct.zfcp_els_adisc*, %struct.zfcp_els_adisc** %4, align 8
  %22 = getelementptr inbounds %struct.zfcp_els_adisc, %struct.zfcp_els_adisc* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 7
  store i32* %20, i32** %23, align 8
  %24 = load %struct.zfcp_els_adisc*, %struct.zfcp_els_adisc** %4, align 8
  %25 = getelementptr inbounds %struct.zfcp_els_adisc, %struct.zfcp_els_adisc* %24, i32 0, i32 3
  %26 = load %struct.zfcp_els_adisc*, %struct.zfcp_els_adisc** %4, align 8
  %27 = getelementptr inbounds %struct.zfcp_els_adisc, %struct.zfcp_els_adisc* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 6
  store i32* %25, i32** %28, align 8
  %29 = load %struct.zfcp_els_adisc*, %struct.zfcp_els_adisc** %4, align 8
  %30 = getelementptr inbounds %struct.zfcp_els_adisc, %struct.zfcp_els_adisc* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 7
  %32 = load i32*, i32** %31, align 8
  %33 = load %struct.zfcp_els_adisc*, %struct.zfcp_els_adisc** %4, align 8
  %34 = getelementptr inbounds %struct.zfcp_els_adisc, %struct.zfcp_els_adisc* %33, i32 0, i32 1
  %35 = call i32 @sg_init_one(i32* %32, %struct.TYPE_6__* %34, i32 4)
  %36 = load %struct.zfcp_els_adisc*, %struct.zfcp_els_adisc** %4, align 8
  %37 = getelementptr inbounds %struct.zfcp_els_adisc, %struct.zfcp_els_adisc* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 6
  %39 = load i32*, i32** %38, align 8
  %40 = load %struct.zfcp_els_adisc*, %struct.zfcp_els_adisc** %4, align 8
  %41 = getelementptr inbounds %struct.zfcp_els_adisc, %struct.zfcp_els_adisc* %40, i32 0, i32 2
  %42 = call i32 @sg_init_one(i32* %39, %struct.TYPE_6__* %41, i32 4)
  %43 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %5, align 8
  %44 = load %struct.zfcp_els_adisc*, %struct.zfcp_els_adisc** %4, align 8
  %45 = getelementptr inbounds %struct.zfcp_els_adisc, %struct.zfcp_els_adisc* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 5
  store %struct.zfcp_adapter* %43, %struct.zfcp_adapter** %46, align 8
  %47 = load %struct.zfcp_port*, %struct.zfcp_port** %3, align 8
  %48 = load %struct.zfcp_els_adisc*, %struct.zfcp_els_adisc** %4, align 8
  %49 = getelementptr inbounds %struct.zfcp_els_adisc, %struct.zfcp_els_adisc* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 4
  store %struct.zfcp_port* %47, %struct.zfcp_port** %50, align 8
  %51 = load %struct.zfcp_port*, %struct.zfcp_port** %3, align 8
  %52 = getelementptr inbounds %struct.zfcp_port, %struct.zfcp_port* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.zfcp_els_adisc*, %struct.zfcp_els_adisc** %4, align 8
  %55 = getelementptr inbounds %struct.zfcp_els_adisc, %struct.zfcp_els_adisc* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 3
  store i32 %53, i32* %56, align 8
  %57 = load i32, i32* @zfcp_fc_adisc_handler, align 4
  %58 = load %struct.zfcp_els_adisc*, %struct.zfcp_els_adisc** %4, align 8
  %59 = getelementptr inbounds %struct.zfcp_els_adisc, %struct.zfcp_els_adisc* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 2
  store i32 %57, i32* %60, align 4
  %61 = load %struct.zfcp_els_adisc*, %struct.zfcp_els_adisc** %4, align 8
  %62 = ptrtoint %struct.zfcp_els_adisc* %61 to i64
  %63 = load %struct.zfcp_els_adisc*, %struct.zfcp_els_adisc** %4, align 8
  %64 = getelementptr inbounds %struct.zfcp_els_adisc, %struct.zfcp_els_adisc* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  store i64 %62, i64* %65, align 8
  %66 = load i32, i32* @ZFCP_LS_ADISC, align 4
  %67 = load %struct.zfcp_els_adisc*, %struct.zfcp_els_adisc** %4, align 8
  %68 = getelementptr inbounds %struct.zfcp_els_adisc, %struct.zfcp_els_adisc* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 3
  store i32 %66, i32* %69, align 4
  %70 = load %struct.zfcp_els_adisc*, %struct.zfcp_els_adisc** %4, align 8
  %71 = getelementptr inbounds %struct.zfcp_els_adisc, %struct.zfcp_els_adisc* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 1
  store i32 %66, i32* %72, align 8
  %73 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %5, align 8
  %74 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @fc_host_port_name(i32 %75)
  %77 = load %struct.zfcp_els_adisc*, %struct.zfcp_els_adisc** %4, align 8
  %78 = getelementptr inbounds %struct.zfcp_els_adisc, %struct.zfcp_els_adisc* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 2
  store i32 %76, i32* %79, align 8
  %80 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %5, align 8
  %81 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @fc_host_node_name(i32 %82)
  %84 = load %struct.zfcp_els_adisc*, %struct.zfcp_els_adisc** %4, align 8
  %85 = getelementptr inbounds %struct.zfcp_els_adisc, %struct.zfcp_els_adisc* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 1
  store i32 %83, i32* %86, align 4
  %87 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %5, align 8
  %88 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @fc_host_port_id(i32 %89)
  %91 = load %struct.zfcp_els_adisc*, %struct.zfcp_els_adisc** %4, align 8
  %92 = getelementptr inbounds %struct.zfcp_els_adisc, %struct.zfcp_els_adisc* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 0
  store i32 %90, i32* %93, align 8
  %94 = load %struct.zfcp_els_adisc*, %struct.zfcp_els_adisc** %4, align 8
  %95 = getelementptr inbounds %struct.zfcp_els_adisc, %struct.zfcp_els_adisc* %94, i32 0, i32 0
  %96 = load i32, i32* @ZFCP_FC_CTELS_TMO, align 4
  %97 = call i32 @zfcp_fsf_send_els(%struct.TYPE_4__* %95, i32 %96)
  store i32 %97, i32* %6, align 4
  %98 = load i32, i32* %6, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %104

100:                                              ; preds = %18
  %101 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @zfcp_data, i32 0, i32 0), align 4
  %102 = load %struct.zfcp_els_adisc*, %struct.zfcp_els_adisc** %4, align 8
  %103 = call i32 @kmem_cache_free(i32 %101, %struct.zfcp_els_adisc* %102)
  br label %104

104:                                              ; preds = %100, %18
  %105 = load i32, i32* %6, align 4
  store i32 %105, i32* %2, align 4
  br label %106

106:                                              ; preds = %104, %15
  %107 = load i32, i32* %2, align 4
  ret i32 %107
}

declare dso_local %struct.zfcp_els_adisc* @kmem_cache_zalloc(i32, i32) #1

declare dso_local i32 @sg_init_one(i32*, %struct.TYPE_6__*, i32) #1

declare dso_local i32 @fc_host_port_name(i32) #1

declare dso_local i32 @fc_host_node_name(i32) #1

declare dso_local i32 @fc_host_port_id(i32) #1

declare dso_local i32 @zfcp_fsf_send_els(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @kmem_cache_free(i32, %struct.zfcp_els_adisc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
