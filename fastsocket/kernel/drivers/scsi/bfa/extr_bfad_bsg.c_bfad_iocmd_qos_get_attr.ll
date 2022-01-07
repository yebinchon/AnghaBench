; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfad_bsg.c_bfad_iocmd_qos_get_attr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfad_bsg.c_bfad_iocmd_qos_get_attr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfad_s = type { i32, i32 }
%struct.bfa_bsg_qos_attr_s = type { i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, %struct.TYPE_6__, i32, i32 }
%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.bfa_fcport_s = type { i64, %struct.TYPE_10__, %struct.TYPE_8__ }
%struct.TYPE_10__ = type { i32, i32, i32 }
%struct.TYPE_8__ = type { i64, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32, i32 }

@BFA_PORT_TOPOLOGY_LOOP = common dso_local global i64 0, align 8
@BFA_STATUS_TOPOLOGY_LOOP = common dso_local global i32 0, align 4
@BFA_STATUS_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bfad_iocmd_qos_get_attr(%struct.bfad_s* %0, i8* %1) #0 {
  %3 = alloca %struct.bfad_s*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.bfa_bsg_qos_attr_s*, align 8
  %6 = alloca %struct.bfa_fcport_s*, align 8
  %7 = alloca i64, align 8
  store %struct.bfad_s* %0, %struct.bfad_s** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.bfa_bsg_qos_attr_s*
  store %struct.bfa_bsg_qos_attr_s* %9, %struct.bfa_bsg_qos_attr_s** %5, align 8
  %10 = load %struct.bfad_s*, %struct.bfad_s** %3, align 8
  %11 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %10, i32 0, i32 1
  %12 = call %struct.bfa_fcport_s* @BFA_FCPORT_MOD(i32* %11)
  store %struct.bfa_fcport_s* %12, %struct.bfa_fcport_s** %6, align 8
  %13 = load %struct.bfad_s*, %struct.bfad_s** %3, align 8
  %14 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %13, i32 0, i32 0
  %15 = load i64, i64* %7, align 8
  %16 = call i32 @spin_lock_irqsave(i32* %14, i64 %15)
  %17 = load %struct.bfa_fcport_s*, %struct.bfa_fcport_s** %6, align 8
  %18 = getelementptr inbounds %struct.bfa_fcport_s, %struct.bfa_fcport_s* %17, i32 0, i32 2
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @BFA_PORT_TOPOLOGY_LOOP, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %33

23:                                               ; preds = %2
  %24 = load %struct.bfa_fcport_s*, %struct.bfa_fcport_s** %6, align 8
  %25 = getelementptr inbounds %struct.bfa_fcport_s, %struct.bfa_fcport_s* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @BFA_PORT_TOPOLOGY_LOOP, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %33

29:                                               ; preds = %23
  %30 = load i32, i32* @BFA_STATUS_TOPOLOGY_LOOP, align 4
  %31 = load %struct.bfa_bsg_qos_attr_s*, %struct.bfa_bsg_qos_attr_s** %5, align 8
  %32 = getelementptr inbounds %struct.bfa_bsg_qos_attr_s, %struct.bfa_bsg_qos_attr_s* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 4
  br label %86

33:                                               ; preds = %23, %2
  %34 = load %struct.bfa_fcport_s*, %struct.bfa_fcport_s** %6, align 8
  %35 = getelementptr inbounds %struct.bfa_fcport_s, %struct.bfa_fcport_s* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.bfa_bsg_qos_attr_s*, %struct.bfa_bsg_qos_attr_s** %5, align 8
  %39 = getelementptr inbounds %struct.bfa_bsg_qos_attr_s, %struct.bfa_bsg_qos_attr_s* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 3
  store i32 %37, i32* %40, align 4
  %41 = load %struct.bfa_fcport_s*, %struct.bfa_fcport_s** %6, align 8
  %42 = getelementptr inbounds %struct.bfa_fcport_s, %struct.bfa_fcport_s* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @be32_to_cpu(i32 %44)
  %46 = load %struct.bfa_bsg_qos_attr_s*, %struct.bfa_bsg_qos_attr_s** %5, align 8
  %47 = getelementptr inbounds %struct.bfa_bsg_qos_attr_s, %struct.bfa_bsg_qos_attr_s* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 2
  store i32 %45, i32* %48, align 4
  %49 = load %struct.bfa_fcport_s*, %struct.bfa_fcport_s** %6, align 8
  %50 = getelementptr inbounds %struct.bfa_fcport_s, %struct.bfa_fcport_s* %49, i32 0, i32 2
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.bfa_bsg_qos_attr_s*, %struct.bfa_bsg_qos_attr_s** %5, align 8
  %55 = getelementptr inbounds %struct.bfa_bsg_qos_attr_s, %struct.bfa_bsg_qos_attr_s* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 2
  store i32 %53, i32* %57, align 4
  %58 = load %struct.bfa_fcport_s*, %struct.bfa_fcport_s** %6, align 8
  %59 = getelementptr inbounds %struct.bfa_fcport_s, %struct.bfa_fcport_s* %58, i32 0, i32 2
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.bfa_bsg_qos_attr_s*, %struct.bfa_bsg_qos_attr_s** %5, align 8
  %64 = getelementptr inbounds %struct.bfa_bsg_qos_attr_s, %struct.bfa_bsg_qos_attr_s* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 1
  store i32 %62, i32* %66, align 4
  %67 = load %struct.bfa_fcport_s*, %struct.bfa_fcport_s** %6, align 8
  %68 = getelementptr inbounds %struct.bfa_fcport_s, %struct.bfa_fcport_s* %67, i32 0, i32 2
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load %struct.bfa_bsg_qos_attr_s*, %struct.bfa_bsg_qos_attr_s** %5, align 8
  %73 = getelementptr inbounds %struct.bfa_bsg_qos_attr_s, %struct.bfa_bsg_qos_attr_s* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 0
  store i32 %71, i32* %75, align 4
  %76 = load %struct.bfa_fcport_s*, %struct.bfa_fcport_s** %6, align 8
  %77 = getelementptr inbounds %struct.bfa_fcport_s, %struct.bfa_fcport_s* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = load %struct.bfa_bsg_qos_attr_s*, %struct.bfa_bsg_qos_attr_s** %5, align 8
  %81 = getelementptr inbounds %struct.bfa_bsg_qos_attr_s, %struct.bfa_bsg_qos_attr_s* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %81, i32 0, i32 0
  store i32 %79, i32* %82, align 4
  %83 = load i32, i32* @BFA_STATUS_OK, align 4
  %84 = load %struct.bfa_bsg_qos_attr_s*, %struct.bfa_bsg_qos_attr_s** %5, align 8
  %85 = getelementptr inbounds %struct.bfa_bsg_qos_attr_s, %struct.bfa_bsg_qos_attr_s* %84, i32 0, i32 0
  store i32 %83, i32* %85, align 4
  br label %86

86:                                               ; preds = %33, %29
  %87 = load %struct.bfad_s*, %struct.bfad_s** %3, align 8
  %88 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %87, i32 0, i32 0
  %89 = load i64, i64* %7, align 8
  %90 = call i32 @spin_unlock_irqrestore(i32* %88, i64 %89)
  ret i32 0
}

declare dso_local %struct.bfa_fcport_s* @BFA_FCPORT_MOD(i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
