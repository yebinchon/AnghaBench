; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_svc.c_bfa_fcport_update_linkinfo.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_svc.c_bfa_fcport_update_linkinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_fcport_s = type { i32, i32, i32, i32, %struct.TYPE_11__, i32, i32, i32, i32, %struct.bfa_fcport_trunk_s, %struct.TYPE_10__ }
%struct.TYPE_11__ = type { i32, i64 }
%struct.bfa_fcport_trunk_s = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.bfi_fcport_event_s* }
%struct.bfi_fcport_event_s = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { %struct.TYPE_15__, i32, i32, i32, i32 }
%struct.TYPE_15__ = type { %struct.TYPE_14__, i32, i32 }
%struct.TYPE_14__ = type { %struct.TYPE_13__, i32 }
%struct.TYPE_13__ = type { i32 }

@BFA_PORT_TOPOLOGY_LOOP = common dso_local global i32 0, align 4
@BFA_TRUNK_DISABLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bfa_fcport_s*)* @bfa_fcport_update_linkinfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bfa_fcport_update_linkinfo(%struct.bfa_fcport_s* %0) #0 {
  %2 = alloca %struct.bfa_fcport_s*, align 8
  %3 = alloca %struct.bfi_fcport_event_s*, align 8
  %4 = alloca %struct.bfa_fcport_trunk_s*, align 8
  store %struct.bfa_fcport_s* %0, %struct.bfa_fcport_s** %2, align 8
  %5 = load %struct.bfa_fcport_s*, %struct.bfa_fcport_s** %2, align 8
  %6 = getelementptr inbounds %struct.bfa_fcport_s, %struct.bfa_fcport_s* %5, i32 0, i32 10
  %7 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 0
  %9 = load %struct.bfi_fcport_event_s*, %struct.bfi_fcport_event_s** %8, align 8
  store %struct.bfi_fcport_event_s* %9, %struct.bfi_fcport_event_s** %3, align 8
  %10 = load %struct.bfa_fcport_s*, %struct.bfa_fcport_s** %2, align 8
  %11 = getelementptr inbounds %struct.bfa_fcport_s, %struct.bfa_fcport_s* %10, i32 0, i32 9
  store %struct.bfa_fcport_trunk_s* %11, %struct.bfa_fcport_trunk_s** %4, align 8
  %12 = load %struct.bfi_fcport_event_s*, %struct.bfi_fcport_event_s** %3, align 8
  %13 = getelementptr inbounds %struct.bfi_fcport_event_s, %struct.bfi_fcport_event_s* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %13, i32 0, i32 4
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.bfa_fcport_s*, %struct.bfa_fcport_s** %2, align 8
  %17 = getelementptr inbounds %struct.bfa_fcport_s, %struct.bfa_fcport_s* %16, i32 0, i32 2
  store i32 %15, i32* %17, align 8
  %18 = load %struct.bfi_fcport_event_s*, %struct.bfi_fcport_event_s** %3, align 8
  %19 = getelementptr inbounds %struct.bfi_fcport_event_s, %struct.bfi_fcport_event_s* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.bfa_fcport_s*, %struct.bfa_fcport_s** %2, align 8
  %23 = getelementptr inbounds %struct.bfa_fcport_s, %struct.bfa_fcport_s* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 8
  %24 = load %struct.bfa_fcport_s*, %struct.bfa_fcport_s** %2, align 8
  %25 = getelementptr inbounds %struct.bfa_fcport_s, %struct.bfa_fcport_s* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @BFA_PORT_TOPOLOGY_LOOP, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %36

29:                                               ; preds = %1
  %30 = load %struct.bfa_fcport_s*, %struct.bfa_fcport_s** %2, align 8
  %31 = load %struct.bfi_fcport_event_s*, %struct.bfi_fcport_event_s** %3, align 8
  %32 = getelementptr inbounds %struct.bfi_fcport_event_s, %struct.bfi_fcport_event_s* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %33, i32 0, i32 2
  %35 = call i32 @bfa_fcport_update_loop_info(%struct.bfa_fcport_s* %30, i32* %34)
  br label %106

36:                                               ; preds = %1
  %37 = load %struct.bfi_fcport_event_s*, %struct.bfi_fcport_event_s** %3, align 8
  %38 = getelementptr inbounds %struct.bfi_fcport_event_s, %struct.bfi_fcport_event_s* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.bfa_fcport_s*, %struct.bfa_fcport_s** %2, align 8
  %42 = getelementptr inbounds %struct.bfa_fcport_s, %struct.bfa_fcport_s* %41, i32 0, i32 8
  store i32 %40, i32* %42, align 4
  %43 = load %struct.bfi_fcport_event_s*, %struct.bfi_fcport_event_s** %3, align 8
  %44 = getelementptr inbounds %struct.bfi_fcport_event_s, %struct.bfi_fcport_event_s* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.bfa_fcport_s*, %struct.bfa_fcport_s** %2, align 8
  %50 = getelementptr inbounds %struct.bfa_fcport_s, %struct.bfa_fcport_s* %49, i32 0, i32 7
  store i32 %48, i32* %50, align 8
  %51 = load %struct.bfa_fcport_s*, %struct.bfa_fcport_s** %2, align 8
  %52 = getelementptr inbounds %struct.bfa_fcport_s, %struct.bfa_fcport_s* %51, i32 0, i32 4
  %53 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %64

56:                                               ; preds = %36
  %57 = load %struct.bfi_fcport_event_s*, %struct.bfi_fcport_event_s** %3, align 8
  %58 = getelementptr inbounds %struct.bfi_fcport_event_s, %struct.bfi_fcport_event_s* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.bfa_fcport_s*, %struct.bfa_fcport_s** %2, align 8
  %63 = getelementptr inbounds %struct.bfa_fcport_s, %struct.bfa_fcport_s* %62, i32 0, i32 6
  store i32 %61, i32* %63, align 4
  br label %64

64:                                               ; preds = %56, %36
  %65 = load %struct.bfi_fcport_event_s*, %struct.bfi_fcport_event_s** %3, align 8
  %66 = getelementptr inbounds %struct.bfi_fcport_event_s, %struct.bfi_fcport_event_s* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.bfa_fcport_s*, %struct.bfa_fcport_s** %2, align 8
  %70 = getelementptr inbounds %struct.bfa_fcport_s, %struct.bfa_fcport_s* %69, i32 0, i32 5
  store i32 %68, i32* %70, align 8
  %71 = load %struct.bfa_fcport_s*, %struct.bfa_fcport_s** %2, align 8
  %72 = getelementptr inbounds %struct.bfa_fcport_s, %struct.bfa_fcport_s* %71, i32 0, i32 4
  %73 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %81, label %76

76:                                               ; preds = %64
  %77 = load i32, i32* @BFA_TRUNK_DISABLED, align 4
  %78 = load %struct.bfa_fcport_trunk_s*, %struct.bfa_fcport_trunk_s** %4, align 8
  %79 = getelementptr inbounds %struct.bfa_fcport_trunk_s, %struct.bfa_fcport_trunk_s* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %79, i32 0, i32 0
  store i32 %77, i32* %80, align 4
  br label %81

81:                                               ; preds = %76, %64
  %82 = load %struct.bfi_fcport_event_s*, %struct.bfi_fcport_event_s** %3, align 8
  %83 = getelementptr inbounds %struct.bfi_fcport_event_s, %struct.bfi_fcport_event_s* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @be16_to_cpu(i32 %88)
  %90 = load %struct.bfa_fcport_s*, %struct.bfa_fcport_s** %2, align 8
  %91 = getelementptr inbounds %struct.bfa_fcport_s, %struct.bfa_fcport_s* %90, i32 0, i32 3
  store i32 %89, i32* %91, align 4
  %92 = load %struct.bfa_fcport_s*, %struct.bfa_fcport_s** %2, align 8
  %93 = getelementptr inbounds %struct.bfa_fcport_s, %struct.bfa_fcport_s* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.bfa_fcport_s*, %struct.bfa_fcport_s** %2, align 8
  %96 = getelementptr inbounds %struct.bfa_fcport_s, %struct.bfa_fcport_s* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 8
  %98 = call i32 @bfa_trc(i32 %94, i32 %97)
  %99 = load %struct.bfa_fcport_s*, %struct.bfa_fcport_s** %2, align 8
  %100 = getelementptr inbounds %struct.bfa_fcport_s, %struct.bfa_fcport_s* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.bfa_fcport_s*, %struct.bfa_fcport_s** %2, align 8
  %103 = getelementptr inbounds %struct.bfa_fcport_s, %struct.bfa_fcport_s* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = call i32 @bfa_trc(i32 %101, i32 %104)
  br label %106

106:                                              ; preds = %81, %29
  ret void
}

declare dso_local i32 @bfa_fcport_update_loop_info(%struct.bfa_fcport_s*, i32*) #1

declare dso_local i32 @be16_to_cpu(i32) #1

declare dso_local i32 @bfa_trc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
