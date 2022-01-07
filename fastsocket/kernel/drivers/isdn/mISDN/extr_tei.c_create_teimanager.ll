; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/mISDN/extr_tei.c_create_teimanager.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/mISDN/extr_tei.c_create_teimanager.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mISDNdevice = type { %struct.TYPE_6__*, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.manager = type { i32, %struct.TYPE_6__, i32, %struct.TYPE_7__, %struct.TYPE_6__, i32, i32, i32, i32 }
%struct.TYPE_7__ = type { i32, i32, i32*, i32, %struct.manager* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@MISDN_ID_NONE = common dso_local global i32 0, align 4
@mgr_send = common dso_local global i32 0, align 4
@mgr_ctrl = common dso_local global i32 0, align 4
@TEI_SAPI = common dso_local global i32 0, align 4
@GROUP_TEI = common dso_local global i32 0, align 4
@mgr_bcast = common dso_local global i32 0, align 4
@mgr_bcast_ctrl = common dso_local global i32 0, align 4
@debug = common dso_local global i32* null, align 8
@DEBUG_MANAGER = common dso_local global i32 0, align 4
@da_debug = common dso_local global i32 0, align 4
@deactfsm = common dso_local global i32 0, align 4
@ST_L1_DEACT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @create_teimanager(%struct.mISDNdevice* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mISDNdevice*, align 8
  %4 = alloca %struct.manager*, align 8
  store %struct.mISDNdevice* %0, %struct.mISDNdevice** %3, align 8
  %5 = load i32, i32* @GFP_KERNEL, align 4
  %6 = call %struct.manager* @kzalloc(i32 88, i32 %5)
  store %struct.manager* %6, %struct.manager** %4, align 8
  %7 = load %struct.manager*, %struct.manager** %4, align 8
  %8 = icmp ne %struct.manager* %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %1
  %10 = load i32, i32* @ENOMEM, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %2, align 4
  br label %111

12:                                               ; preds = %1
  %13 = load %struct.manager*, %struct.manager** %4, align 8
  %14 = getelementptr inbounds %struct.manager, %struct.manager* %13, i32 0, i32 8
  %15 = call i32 @INIT_LIST_HEAD(i32* %14)
  %16 = load %struct.manager*, %struct.manager** %4, align 8
  %17 = getelementptr inbounds %struct.manager, %struct.manager* %16, i32 0, i32 7
  %18 = call i32 @rwlock_init(i32* %17)
  %19 = load %struct.manager*, %struct.manager** %4, align 8
  %20 = getelementptr inbounds %struct.manager, %struct.manager* %19, i32 0, i32 6
  %21 = call i32 @skb_queue_head_init(i32* %20)
  %22 = load %struct.manager*, %struct.manager** %4, align 8
  %23 = getelementptr inbounds %struct.manager, %struct.manager* %22, i32 0, i32 0
  store i32 1, i32* %23, align 8
  %24 = load i32, i32* @MISDN_ID_NONE, align 4
  %25 = load %struct.manager*, %struct.manager** %4, align 8
  %26 = getelementptr inbounds %struct.manager, %struct.manager* %25, i32 0, i32 5
  store i32 %24, i32* %26, align 4
  %27 = load i32, i32* @mgr_send, align 4
  %28 = load %struct.manager*, %struct.manager** %4, align 8
  %29 = getelementptr inbounds %struct.manager, %struct.manager* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 2
  store i32 %27, i32* %30, align 4
  %31 = load i32, i32* @mgr_ctrl, align 4
  %32 = load %struct.manager*, %struct.manager** %4, align 8
  %33 = getelementptr inbounds %struct.manager, %struct.manager* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 1
  store i32 %31, i32* %34, align 4
  %35 = load %struct.mISDNdevice*, %struct.mISDNdevice** %3, align 8
  %36 = getelementptr inbounds %struct.mISDNdevice, %struct.mISDNdevice* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.manager*, %struct.manager** %4, align 8
  %40 = getelementptr inbounds %struct.manager, %struct.manager* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  store i32 %38, i32* %41, align 4
  %42 = load %struct.manager*, %struct.manager** %4, align 8
  %43 = getelementptr inbounds %struct.manager, %struct.manager* %42, i32 0, i32 1
  %44 = load i32, i32* @TEI_SAPI, align 4
  %45 = load i32, i32* @GROUP_TEI, align 4
  %46 = call i32 @set_channel_address(%struct.TYPE_6__* %43, i32 %44, i32 %45)
  %47 = load %struct.manager*, %struct.manager** %4, align 8
  %48 = getelementptr inbounds %struct.manager, %struct.manager* %47, i32 0, i32 1
  %49 = load %struct.mISDNdevice*, %struct.mISDNdevice** %3, align 8
  %50 = getelementptr inbounds %struct.mISDNdevice, %struct.mISDNdevice* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @add_layer2(%struct.TYPE_6__* %48, i32 %52)
  %54 = load i32, i32* @mgr_bcast, align 4
  %55 = load %struct.manager*, %struct.manager** %4, align 8
  %56 = getelementptr inbounds %struct.manager, %struct.manager* %55, i32 0, i32 4
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 2
  store i32 %54, i32* %57, align 8
  %58 = load i32, i32* @mgr_bcast_ctrl, align 4
  %59 = load %struct.manager*, %struct.manager** %4, align 8
  %60 = getelementptr inbounds %struct.manager, %struct.manager* %59, i32 0, i32 4
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 1
  store i32 %58, i32* %61, align 4
  %62 = load %struct.mISDNdevice*, %struct.mISDNdevice** %3, align 8
  %63 = getelementptr inbounds %struct.mISDNdevice, %struct.mISDNdevice* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.manager*, %struct.manager** %4, align 8
  %67 = getelementptr inbounds %struct.manager, %struct.manager* %66, i32 0, i32 4
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 0
  store i32 %65, i32* %68, align 8
  %69 = load %struct.manager*, %struct.manager** %4, align 8
  %70 = getelementptr inbounds %struct.manager, %struct.manager* %69, i32 0, i32 4
  %71 = load i32, i32* @GROUP_TEI, align 4
  %72 = call i32 @set_channel_address(%struct.TYPE_6__* %70, i32 0, i32 %71)
  %73 = load %struct.manager*, %struct.manager** %4, align 8
  %74 = getelementptr inbounds %struct.manager, %struct.manager* %73, i32 0, i32 4
  %75 = load %struct.mISDNdevice*, %struct.mISDNdevice** %3, align 8
  %76 = getelementptr inbounds %struct.mISDNdevice, %struct.mISDNdevice* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @add_layer2(%struct.TYPE_6__* %74, i32 %78)
  %80 = load i32*, i32** @debug, align 8
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* @DEBUG_MANAGER, align 4
  %83 = and i32 %81, %82
  %84 = load %struct.manager*, %struct.manager** %4, align 8
  %85 = getelementptr inbounds %struct.manager, %struct.manager* %84, i32 0, i32 3
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 0
  store i32 %83, i32* %86, align 8
  %87 = load %struct.manager*, %struct.manager** %4, align 8
  %88 = load %struct.manager*, %struct.manager** %4, align 8
  %89 = getelementptr inbounds %struct.manager, %struct.manager* %88, i32 0, i32 3
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i32 0, i32 4
  store %struct.manager* %87, %struct.manager** %90, align 8
  %91 = load i32, i32* @da_debug, align 4
  %92 = load %struct.manager*, %struct.manager** %4, align 8
  %93 = getelementptr inbounds %struct.manager, %struct.manager* %92, i32 0, i32 3
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %93, i32 0, i32 3
  store i32 %91, i32* %94, align 8
  %95 = load %struct.manager*, %struct.manager** %4, align 8
  %96 = getelementptr inbounds %struct.manager, %struct.manager* %95, i32 0, i32 3
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %96, i32 0, i32 2
  store i32* @deactfsm, i32** %97, align 8
  %98 = load i32, i32* @ST_L1_DEACT, align 4
  %99 = load %struct.manager*, %struct.manager** %4, align 8
  %100 = getelementptr inbounds %struct.manager, %struct.manager* %99, i32 0, i32 3
  %101 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %100, i32 0, i32 1
  store i32 %98, i32* %101, align 4
  %102 = load %struct.manager*, %struct.manager** %4, align 8
  %103 = getelementptr inbounds %struct.manager, %struct.manager* %102, i32 0, i32 3
  %104 = load %struct.manager*, %struct.manager** %4, align 8
  %105 = getelementptr inbounds %struct.manager, %struct.manager* %104, i32 0, i32 2
  %106 = call i32 @mISDN_FsmInitTimer(%struct.TYPE_7__* %103, i32* %105)
  %107 = load %struct.manager*, %struct.manager** %4, align 8
  %108 = getelementptr inbounds %struct.manager, %struct.manager* %107, i32 0, i32 1
  %109 = load %struct.mISDNdevice*, %struct.mISDNdevice** %3, align 8
  %110 = getelementptr inbounds %struct.mISDNdevice, %struct.mISDNdevice* %109, i32 0, i32 0
  store %struct.TYPE_6__* %108, %struct.TYPE_6__** %110, align 8
  store i32 0, i32* %2, align 4
  br label %111

111:                                              ; preds = %12, %9
  %112 = load i32, i32* %2, align 4
  ret i32 %112
}

declare dso_local %struct.manager* @kzalloc(i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @rwlock_init(i32*) #1

declare dso_local i32 @skb_queue_head_init(i32*) #1

declare dso_local i32 @set_channel_address(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @add_layer2(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @mISDN_FsmInitTimer(%struct.TYPE_7__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
