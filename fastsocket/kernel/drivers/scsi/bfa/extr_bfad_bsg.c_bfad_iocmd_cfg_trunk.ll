; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfad_bsg.c_bfad_iocmd_cfg_trunk.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfad_bsg.c_bfad_iocmd_cfg_trunk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfad_s = type { i32, i32 }
%struct.bfa_bsg_gen_s = type { i32 }
%struct.bfa_fcport_s = type { i64, %struct.TYPE_4__, %struct.bfa_fcport_trunk_s }
%struct.TYPE_4__ = type { i64, i32 }
%struct.bfa_fcport_trunk_s = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@BFA_STATUS_DPORT_ERR = common dso_local global i32 0, align 4
@BFA_PORT_TOPOLOGY_LOOP = common dso_local global i64 0, align 8
@BFA_STATUS_TOPOLOGY_LOOP = common dso_local global i32 0, align 4
@IOCMD_TRUNK_ENABLE = common dso_local global i32 0, align 4
@BFA_TRUNK_OFFLINE = common dso_local global i32 0, align 4
@BFA_TRUE = common dso_local global i32 0, align 4
@IOCMD_TRUNK_DISABLE = common dso_local global i32 0, align 4
@BFA_TRUNK_DISABLED = common dso_local global i32 0, align 4
@BFA_FALSE = common dso_local global i32 0, align 4
@BFA_STATUS_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bfad_iocmd_cfg_trunk(%struct.bfad_s* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.bfad_s*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.bfa_bsg_gen_s*, align 8
  %9 = alloca %struct.bfa_fcport_s*, align 8
  %10 = alloca %struct.bfa_fcport_trunk_s*, align 8
  %11 = alloca i64, align 8
  store %struct.bfad_s* %0, %struct.bfad_s** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load i8*, i8** %6, align 8
  %13 = bitcast i8* %12 to %struct.bfa_bsg_gen_s*
  store %struct.bfa_bsg_gen_s* %13, %struct.bfa_bsg_gen_s** %8, align 8
  %14 = load %struct.bfad_s*, %struct.bfad_s** %5, align 8
  %15 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %14, i32 0, i32 1
  %16 = call %struct.bfa_fcport_s* @BFA_FCPORT_MOD(i32* %15)
  store %struct.bfa_fcport_s* %16, %struct.bfa_fcport_s** %9, align 8
  %17 = load %struct.bfa_fcport_s*, %struct.bfa_fcport_s** %9, align 8
  %18 = getelementptr inbounds %struct.bfa_fcport_s, %struct.bfa_fcport_s* %17, i32 0, i32 2
  store %struct.bfa_fcport_trunk_s* %18, %struct.bfa_fcport_trunk_s** %10, align 8
  %19 = load %struct.bfad_s*, %struct.bfad_s** %5, align 8
  %20 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %19, i32 0, i32 0
  %21 = load i64, i64* %11, align 8
  %22 = call i32 @spin_lock_irqsave(i32* %20, i64 %21)
  %23 = load %struct.bfad_s*, %struct.bfad_s** %5, align 8
  %24 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %23, i32 0, i32 1
  %25 = call i64 @bfa_fcport_is_dport(i32* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %3
  %28 = load i32, i32* @BFA_STATUS_DPORT_ERR, align 4
  store i32 %28, i32* %4, align 4
  br label %97

29:                                               ; preds = %3
  %30 = load %struct.bfa_fcport_s*, %struct.bfa_fcport_s** %9, align 8
  %31 = getelementptr inbounds %struct.bfa_fcport_s, %struct.bfa_fcport_s* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @BFA_PORT_TOPOLOGY_LOOP, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %42, label %36

36:                                               ; preds = %29
  %37 = load %struct.bfa_fcport_s*, %struct.bfa_fcport_s** %9, align 8
  %38 = getelementptr inbounds %struct.bfa_fcport_s, %struct.bfa_fcport_s* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @BFA_PORT_TOPOLOGY_LOOP, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %46

42:                                               ; preds = %36, %29
  %43 = load i32, i32* @BFA_STATUS_TOPOLOGY_LOOP, align 4
  %44 = load %struct.bfa_bsg_gen_s*, %struct.bfa_bsg_gen_s** %8, align 8
  %45 = getelementptr inbounds %struct.bfa_bsg_gen_s, %struct.bfa_bsg_gen_s* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 4
  br label %92

46:                                               ; preds = %36
  %47 = load i32, i32* %7, align 4
  %48 = load i32, i32* @IOCMD_TRUNK_ENABLE, align 4
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %50, label %62

50:                                               ; preds = %46
  %51 = load i32, i32* @BFA_TRUNK_OFFLINE, align 4
  %52 = load %struct.bfa_fcport_trunk_s*, %struct.bfa_fcport_trunk_s** %10, align 8
  %53 = getelementptr inbounds %struct.bfa_fcport_trunk_s, %struct.bfa_fcport_trunk_s* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 0
  store i32 %51, i32* %54, align 4
  %55 = load %struct.bfad_s*, %struct.bfad_s** %5, align 8
  %56 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %55, i32 0, i32 1
  %57 = call i32 @bfa_fcport_disable(i32* %56)
  %58 = load i32, i32* @BFA_TRUE, align 4
  %59 = load %struct.bfa_fcport_s*, %struct.bfa_fcport_s** %9, align 8
  %60 = getelementptr inbounds %struct.bfa_fcport_s, %struct.bfa_fcport_s* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 1
  store i32 %58, i32* %61, align 8
  br label %79

62:                                               ; preds = %46
  %63 = load i32, i32* %7, align 4
  %64 = load i32, i32* @IOCMD_TRUNK_DISABLE, align 4
  %65 = icmp eq i32 %63, %64
  br i1 %65, label %66, label %78

66:                                               ; preds = %62
  %67 = load i32, i32* @BFA_TRUNK_DISABLED, align 4
  %68 = load %struct.bfa_fcport_trunk_s*, %struct.bfa_fcport_trunk_s** %10, align 8
  %69 = getelementptr inbounds %struct.bfa_fcport_trunk_s, %struct.bfa_fcport_trunk_s* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 0
  store i32 %67, i32* %70, align 4
  %71 = load %struct.bfad_s*, %struct.bfad_s** %5, align 8
  %72 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %71, i32 0, i32 1
  %73 = call i32 @bfa_fcport_disable(i32* %72)
  %74 = load i32, i32* @BFA_FALSE, align 4
  %75 = load %struct.bfa_fcport_s*, %struct.bfa_fcport_s** %9, align 8
  %76 = getelementptr inbounds %struct.bfa_fcport_s, %struct.bfa_fcport_s* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 1
  store i32 %74, i32* %77, align 8
  br label %78

78:                                               ; preds = %66, %62
  br label %79

79:                                               ; preds = %78, %50
  %80 = load %struct.bfad_s*, %struct.bfad_s** %5, align 8
  %81 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %80, i32 0, i32 1
  %82 = call i32 @bfa_fcport_is_disabled(i32* %81)
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %88, label %84

84:                                               ; preds = %79
  %85 = load %struct.bfad_s*, %struct.bfad_s** %5, align 8
  %86 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %85, i32 0, i32 1
  %87 = call i32 @bfa_fcport_enable(i32* %86)
  br label %88

88:                                               ; preds = %84, %79
  %89 = load i32, i32* @BFA_STATUS_OK, align 4
  %90 = load %struct.bfa_bsg_gen_s*, %struct.bfa_bsg_gen_s** %8, align 8
  %91 = getelementptr inbounds %struct.bfa_bsg_gen_s, %struct.bfa_bsg_gen_s* %90, i32 0, i32 0
  store i32 %89, i32* %91, align 4
  br label %92

92:                                               ; preds = %88, %42
  %93 = load %struct.bfad_s*, %struct.bfad_s** %5, align 8
  %94 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %93, i32 0, i32 0
  %95 = load i64, i64* %11, align 8
  %96 = call i32 @spin_unlock_irqrestore(i32* %94, i64 %95)
  store i32 0, i32* %4, align 4
  br label %97

97:                                               ; preds = %92, %27
  %98 = load i32, i32* %4, align 4
  ret i32 %98
}

declare dso_local %struct.bfa_fcport_s* @BFA_FCPORT_MOD(i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @bfa_fcport_is_dport(i32*) #1

declare dso_local i32 @bfa_fcport_disable(i32*) #1

declare dso_local i32 @bfa_fcport_is_disabled(i32*) #1

declare dso_local i32 @bfa_fcport_enable(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
