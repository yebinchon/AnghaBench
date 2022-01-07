; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/nes/extr_nes_cm.c_nes_disconnect.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/nes/extr_nes_cm.c_nes_disconnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 (%struct.TYPE_11__*, i64)* }
%struct.nes_qp = type { i64, i32, i32, i64, i64, i32, i64, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.nes_vnic = type { %struct.TYPE_8__*, %struct.nes_ib_device*, %struct.nes_device* }
%struct.TYPE_8__ = type { i32 }
%struct.nes_ib_device = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 (i32)* }
%struct.nes_device = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@NES_DBG_CM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"netdev refcnt = %u.\0A\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"Call close API\0A\00", align 1
@g_cm_core = common dso_local global %struct.TYPE_11__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nes_qp*, i32)* @nes_disconnect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nes_disconnect(%struct.nes_qp* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nes_qp*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.nes_vnic*, align 8
  %8 = alloca %struct.nes_device*, align 8
  %9 = alloca %struct.nes_ib_device*, align 8
  store %struct.nes_qp* %0, %struct.nes_qp** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %10 = load %struct.nes_qp*, %struct.nes_qp** %4, align 8
  %11 = getelementptr inbounds %struct.nes_qp, %struct.nes_qp* %10, i32 0, i32 7
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = call %struct.nes_vnic* @to_nesvnic(i32 %13)
  store %struct.nes_vnic* %14, %struct.nes_vnic** %7, align 8
  %15 = load %struct.nes_vnic*, %struct.nes_vnic** %7, align 8
  %16 = icmp ne %struct.nes_vnic* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %2
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %99

20:                                               ; preds = %2
  %21 = load %struct.nes_vnic*, %struct.nes_vnic** %7, align 8
  %22 = getelementptr inbounds %struct.nes_vnic, %struct.nes_vnic* %21, i32 0, i32 2
  %23 = load %struct.nes_device*, %struct.nes_device** %22, align 8
  store %struct.nes_device* %23, %struct.nes_device** %8, align 8
  %24 = load %struct.nes_vnic*, %struct.nes_vnic** %7, align 8
  %25 = getelementptr inbounds %struct.nes_vnic, %struct.nes_vnic* %24, i32 0, i32 1
  %26 = load %struct.nes_ib_device*, %struct.nes_ib_device** %25, align 8
  store %struct.nes_ib_device* %26, %struct.nes_ib_device** %9, align 8
  %27 = load i32, i32* @NES_DBG_CM, align 4
  %28 = load %struct.nes_vnic*, %struct.nes_vnic** %7, align 8
  %29 = getelementptr inbounds %struct.nes_vnic, %struct.nes_vnic* %28, i32 0, i32 0
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 0
  %32 = call i32 @atomic_read(i32* %31)
  %33 = call i32 (i32, i8*, ...) @nes_debug(i32 %27, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %32)
  %34 = load %struct.nes_qp*, %struct.nes_qp** %4, align 8
  %35 = getelementptr inbounds %struct.nes_qp, %struct.nes_qp* %34, i32 0, i32 6
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %20
  %39 = load %struct.nes_qp*, %struct.nes_qp** %4, align 8
  %40 = getelementptr inbounds %struct.nes_qp, %struct.nes_qp* %39, i32 0, i32 6
  store i64 0, i64* %40, align 8
  br label %79

41:                                               ; preds = %20
  %42 = load %struct.nes_qp*, %struct.nes_qp** %4, align 8
  %43 = getelementptr inbounds %struct.nes_qp, %struct.nes_qp* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %78

46:                                               ; preds = %41
  %47 = load %struct.nes_qp*, %struct.nes_qp** %4, align 8
  %48 = getelementptr inbounds %struct.nes_qp, %struct.nes_qp* %47, i32 0, i32 5
  %49 = load i32, i32* %48, align 8
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %60

51:                                               ; preds = %46
  %52 = load %struct.nes_ib_device*, %struct.nes_ib_device** %9, align 8
  %53 = getelementptr inbounds %struct.nes_ib_device, %struct.nes_ib_device* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 0
  %55 = load i32 (i32)*, i32 (i32)** %54, align 8
  %56 = load %struct.nes_qp*, %struct.nes_qp** %4, align 8
  %57 = getelementptr inbounds %struct.nes_qp, %struct.nes_qp* %56, i32 0, i32 5
  %58 = load i32, i32* %57, align 8
  %59 = call i32 %55(i32 %58)
  br label %60

60:                                               ; preds = %51, %46
  %61 = load %struct.nes_device*, %struct.nes_device** %8, align 8
  %62 = getelementptr inbounds %struct.nes_device, %struct.nes_device* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.nes_qp*, %struct.nes_qp** %4, align 8
  %65 = getelementptr inbounds %struct.nes_qp, %struct.nes_qp* %64, i32 0, i32 4
  %66 = load i64, i64* %65, align 8
  %67 = load %struct.nes_qp*, %struct.nes_qp** %4, align 8
  %68 = getelementptr inbounds %struct.nes_qp, %struct.nes_qp* %67, i32 0, i32 3
  %69 = load i64, i64* %68, align 8
  %70 = add nsw i64 %66, %69
  %71 = load %struct.nes_qp*, %struct.nes_qp** %4, align 8
  %72 = getelementptr inbounds %struct.nes_qp, %struct.nes_qp* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.nes_qp*, %struct.nes_qp** %4, align 8
  %75 = getelementptr inbounds %struct.nes_qp, %struct.nes_qp* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = call i32 @pci_free_consistent(i32 %63, i64 %70, i32 %73, i32 %76)
  br label %78

78:                                               ; preds = %60, %41
  br label %79

79:                                               ; preds = %78, %38
  %80 = load %struct.nes_qp*, %struct.nes_qp** %4, align 8
  %81 = getelementptr inbounds %struct.nes_qp, %struct.nes_qp* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %97

84:                                               ; preds = %79
  %85 = load i32, i32* @NES_DBG_CM, align 4
  %86 = call i32 (i32, i8*, ...) @nes_debug(i32 %85, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  %87 = load %struct.TYPE_11__*, %struct.TYPE_11__** @g_cm_core, align 8
  %88 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %87, i32 0, i32 0
  %89 = load %struct.TYPE_10__*, %struct.TYPE_10__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %89, i32 0, i32 0
  %91 = load i32 (%struct.TYPE_11__*, i64)*, i32 (%struct.TYPE_11__*, i64)** %90, align 8
  %92 = load %struct.TYPE_11__*, %struct.TYPE_11__** @g_cm_core, align 8
  %93 = load %struct.nes_qp*, %struct.nes_qp** %4, align 8
  %94 = getelementptr inbounds %struct.nes_qp, %struct.nes_qp* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = call i32 %91(%struct.TYPE_11__* %92, i64 %95)
  br label %97

97:                                               ; preds = %84, %79
  %98 = load i32, i32* %6, align 4
  store i32 %98, i32* %3, align 4
  br label %99

99:                                               ; preds = %97, %17
  %100 = load i32, i32* %3, align 4
  ret i32 %100
}

declare dso_local %struct.nes_vnic* @to_nesvnic(i32) #1

declare dso_local i32 @nes_debug(i32, i8*, ...) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @pci_free_consistent(i32, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
