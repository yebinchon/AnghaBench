; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfad_bsg.c_bfad_iocmd_qos_get_vc_attr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfad_bsg.c_bfad_iocmd_qos_get_vc_attr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfad_s = type { i32, i32 }
%struct.bfa_bsg_qos_vc_attr_s = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64, %struct.TYPE_4__*, i32, i8* }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.bfa_fcport_s = type { %struct.bfa_qos_vc_attr_s }
%struct.bfa_qos_vc_attr_s = type { %struct.TYPE_6__*, i32, i32, i32 }
%struct.TYPE_6__ = type { i32, i32, i32 }

@BFA_STATUS_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bfad_iocmd_qos_get_vc_attr(%struct.bfad_s* %0, i8* %1) #0 {
  %3 = alloca %struct.bfad_s*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.bfa_bsg_qos_vc_attr_s*, align 8
  %6 = alloca %struct.bfa_fcport_s*, align 8
  %7 = alloca %struct.bfa_qos_vc_attr_s*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.bfad_s* %0, %struct.bfad_s** %3, align 8
  store i8* %1, i8** %4, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = bitcast i8* %10 to %struct.bfa_bsg_qos_vc_attr_s*
  store %struct.bfa_bsg_qos_vc_attr_s* %11, %struct.bfa_bsg_qos_vc_attr_s** %5, align 8
  %12 = load %struct.bfad_s*, %struct.bfad_s** %3, align 8
  %13 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %12, i32 0, i32 1
  %14 = call %struct.bfa_fcport_s* @BFA_FCPORT_MOD(i32* %13)
  store %struct.bfa_fcport_s* %14, %struct.bfa_fcport_s** %6, align 8
  %15 = load %struct.bfa_fcport_s*, %struct.bfa_fcport_s** %6, align 8
  %16 = getelementptr inbounds %struct.bfa_fcport_s, %struct.bfa_fcport_s* %15, i32 0, i32 0
  store %struct.bfa_qos_vc_attr_s* %16, %struct.bfa_qos_vc_attr_s** %7, align 8
  store i64 0, i64* %9, align 8
  %17 = load %struct.bfad_s*, %struct.bfad_s** %3, align 8
  %18 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %17, i32 0, i32 0
  %19 = load i64, i64* %8, align 8
  %20 = call i32 @spin_lock_irqsave(i32* %18, i64 %19)
  %21 = load %struct.bfa_qos_vc_attr_s*, %struct.bfa_qos_vc_attr_s** %7, align 8
  %22 = getelementptr inbounds %struct.bfa_qos_vc_attr_s, %struct.bfa_qos_vc_attr_s* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 8
  %24 = call i8* @be16_to_cpu(i32 %23)
  %25 = ptrtoint i8* %24 to i64
  %26 = load %struct.bfa_bsg_qos_vc_attr_s*, %struct.bfa_bsg_qos_vc_attr_s** %5, align 8
  %27 = getelementptr inbounds %struct.bfa_bsg_qos_vc_attr_s, %struct.bfa_bsg_qos_vc_attr_s* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  store i64 %25, i64* %28, align 8
  %29 = load %struct.bfa_qos_vc_attr_s*, %struct.bfa_qos_vc_attr_s** %7, align 8
  %30 = getelementptr inbounds %struct.bfa_qos_vc_attr_s, %struct.bfa_qos_vc_attr_s* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = call i8* @be16_to_cpu(i32 %31)
  %33 = load %struct.bfa_bsg_qos_vc_attr_s*, %struct.bfa_bsg_qos_vc_attr_s** %5, align 8
  %34 = getelementptr inbounds %struct.bfa_bsg_qos_vc_attr_s, %struct.bfa_bsg_qos_vc_attr_s* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 3
  store i8* %32, i8** %35, align 8
  %36 = load %struct.bfa_qos_vc_attr_s*, %struct.bfa_qos_vc_attr_s** %7, align 8
  %37 = getelementptr inbounds %struct.bfa_qos_vc_attr_s, %struct.bfa_qos_vc_attr_s* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @be32_to_cpu(i32 %38)
  %40 = load %struct.bfa_bsg_qos_vc_attr_s*, %struct.bfa_bsg_qos_vc_attr_s** %5, align 8
  %41 = getelementptr inbounds %struct.bfa_bsg_qos_vc_attr_s, %struct.bfa_bsg_qos_vc_attr_s* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 2
  store i32 %39, i32* %42, align 8
  br label %43

43:                                               ; preds = %50, %2
  %44 = load i64, i64* %9, align 8
  %45 = load %struct.bfa_bsg_qos_vc_attr_s*, %struct.bfa_bsg_qos_vc_attr_s** %5, align 8
  %46 = getelementptr inbounds %struct.bfa_bsg_qos_vc_attr_s, %struct.bfa_bsg_qos_vc_attr_s* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp ult i64 %44, %48
  br i1 %49, label %50, label %95

50:                                               ; preds = %43
  %51 = load %struct.bfa_qos_vc_attr_s*, %struct.bfa_qos_vc_attr_s** %7, align 8
  %52 = getelementptr inbounds %struct.bfa_qos_vc_attr_s, %struct.bfa_qos_vc_attr_s* %51, i32 0, i32 0
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %52, align 8
  %54 = load i64, i64* %9, align 8
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.bfa_bsg_qos_vc_attr_s*, %struct.bfa_bsg_qos_vc_attr_s** %5, align 8
  %59 = getelementptr inbounds %struct.bfa_bsg_qos_vc_attr_s, %struct.bfa_bsg_qos_vc_attr_s* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 1
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %60, align 8
  %62 = load i64, i64* %9, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 2
  store i32 %57, i32* %64, align 4
  %65 = load %struct.bfa_qos_vc_attr_s*, %struct.bfa_qos_vc_attr_s** %7, align 8
  %66 = getelementptr inbounds %struct.bfa_qos_vc_attr_s, %struct.bfa_qos_vc_attr_s* %65, i32 0, i32 0
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %66, align 8
  %68 = load i64, i64* %9, align 8
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.bfa_bsg_qos_vc_attr_s*, %struct.bfa_bsg_qos_vc_attr_s** %5, align 8
  %73 = getelementptr inbounds %struct.bfa_bsg_qos_vc_attr_s, %struct.bfa_bsg_qos_vc_attr_s* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 1
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %74, align 8
  %76 = load i64, i64* %9, align 8
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 1
  store i32 %71, i32* %78, align 4
  %79 = load %struct.bfa_qos_vc_attr_s*, %struct.bfa_qos_vc_attr_s** %7, align 8
  %80 = getelementptr inbounds %struct.bfa_qos_vc_attr_s, %struct.bfa_qos_vc_attr_s* %79, i32 0, i32 0
  %81 = load %struct.TYPE_6__*, %struct.TYPE_6__** %80, align 8
  %82 = load i64, i64* %9, align 8
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i64 %82
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.bfa_bsg_qos_vc_attr_s*, %struct.bfa_bsg_qos_vc_attr_s** %5, align 8
  %87 = getelementptr inbounds %struct.bfa_bsg_qos_vc_attr_s, %struct.bfa_bsg_qos_vc_attr_s* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i32 0, i32 1
  %89 = load %struct.TYPE_4__*, %struct.TYPE_4__** %88, align 8
  %90 = load i64, i64* %9, align 8
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i64 %90
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 0
  store i32 %85, i32* %92, align 4
  %93 = load i64, i64* %9, align 8
  %94 = add i64 %93, 1
  store i64 %94, i64* %9, align 8
  br label %43

95:                                               ; preds = %43
  %96 = load %struct.bfad_s*, %struct.bfad_s** %3, align 8
  %97 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %96, i32 0, i32 0
  %98 = load i64, i64* %8, align 8
  %99 = call i32 @spin_unlock_irqrestore(i32* %97, i64 %98)
  %100 = load i32, i32* @BFA_STATUS_OK, align 4
  %101 = load %struct.bfa_bsg_qos_vc_attr_s*, %struct.bfa_bsg_qos_vc_attr_s** %5, align 8
  %102 = getelementptr inbounds %struct.bfa_bsg_qos_vc_attr_s, %struct.bfa_bsg_qos_vc_attr_s* %101, i32 0, i32 0
  store i32 %100, i32* %102, align 8
  ret i32 0
}

declare dso_local %struct.bfa_fcport_s* @BFA_FCPORT_MOD(i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i8* @be16_to_cpu(i32) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
