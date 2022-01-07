; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfad_bsg.c_bfad_iocmd_rport_get_attr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfad_bsg.c_bfad_iocmd_rport_get_attr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfad_s = type { i32, i32 }
%struct.bfa_bsg_rport_attr_s = type { i32, i32, i32, i64, i32, i32 }
%struct.bfa_fcs_lport_s = type { i32 }
%struct.bfa_fcs_rport_s = type { i32 }

@BFA_STATUS_UNKNOWN_LWWN = common dso_local global i32 0, align 4
@BFA_STATUS_UNKNOWN_RWWN = common dso_local global i32 0, align 4
@BFA_STATUS_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bfad_iocmd_rport_get_attr(%struct.bfad_s* %0, i8* %1) #0 {
  %3 = alloca %struct.bfad_s*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.bfa_bsg_rport_attr_s*, align 8
  %6 = alloca %struct.bfa_fcs_lport_s*, align 8
  %7 = alloca %struct.bfa_fcs_rport_s*, align 8
  %8 = alloca i64, align 8
  store %struct.bfad_s* %0, %struct.bfad_s** %3, align 8
  store i8* %1, i8** %4, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.bfa_bsg_rport_attr_s*
  store %struct.bfa_bsg_rport_attr_s* %10, %struct.bfa_bsg_rport_attr_s** %5, align 8
  %11 = load %struct.bfad_s*, %struct.bfad_s** %3, align 8
  %12 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %11, i32 0, i32 0
  %13 = load i64, i64* %8, align 8
  %14 = call i32 @spin_lock_irqsave(i32* %12, i64 %13)
  %15 = load %struct.bfad_s*, %struct.bfad_s** %3, align 8
  %16 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %15, i32 0, i32 1
  %17 = load %struct.bfa_bsg_rport_attr_s*, %struct.bfa_bsg_rport_attr_s** %5, align 8
  %18 = getelementptr inbounds %struct.bfa_bsg_rport_attr_s, %struct.bfa_bsg_rport_attr_s* %17, i32 0, i32 5
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.bfa_bsg_rport_attr_s*, %struct.bfa_bsg_rport_attr_s** %5, align 8
  %21 = getelementptr inbounds %struct.bfa_bsg_rport_attr_s, %struct.bfa_bsg_rport_attr_s* %20, i32 0, i32 4
  %22 = load i32, i32* %21, align 8
  %23 = call %struct.bfa_fcs_lport_s* @bfa_fcs_lookup_port(i32* %16, i32 %19, i32 %22)
  store %struct.bfa_fcs_lport_s* %23, %struct.bfa_fcs_lport_s** %6, align 8
  %24 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %6, align 8
  %25 = icmp eq %struct.bfa_fcs_lport_s* %24, null
  br i1 %25, label %26, label %36

26:                                               ; preds = %2
  %27 = load %struct.bfad_s*, %struct.bfad_s** %3, align 8
  %28 = call i32 @bfa_trc(%struct.bfad_s* %27, i32 0)
  %29 = load %struct.bfad_s*, %struct.bfad_s** %3, align 8
  %30 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %29, i32 0, i32 0
  %31 = load i64, i64* %8, align 8
  %32 = call i32 @spin_unlock_irqrestore(i32* %30, i64 %31)
  %33 = load i32, i32* @BFA_STATUS_UNKNOWN_LWWN, align 4
  %34 = load %struct.bfa_bsg_rport_attr_s*, %struct.bfa_bsg_rport_attr_s** %5, align 8
  %35 = getelementptr inbounds %struct.bfa_bsg_rport_attr_s, %struct.bfa_bsg_rport_attr_s* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 8
  br label %81

36:                                               ; preds = %2
  %37 = load %struct.bfa_bsg_rport_attr_s*, %struct.bfa_bsg_rport_attr_s** %5, align 8
  %38 = getelementptr inbounds %struct.bfa_bsg_rport_attr_s, %struct.bfa_bsg_rport_attr_s* %37, i32 0, i32 3
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %50

41:                                               ; preds = %36
  %42 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %6, align 8
  %43 = load %struct.bfa_bsg_rport_attr_s*, %struct.bfa_bsg_rport_attr_s** %5, align 8
  %44 = getelementptr inbounds %struct.bfa_bsg_rport_attr_s, %struct.bfa_bsg_rport_attr_s* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.bfa_bsg_rport_attr_s*, %struct.bfa_bsg_rport_attr_s** %5, align 8
  %47 = getelementptr inbounds %struct.bfa_bsg_rport_attr_s, %struct.bfa_bsg_rport_attr_s* %46, i32 0, i32 3
  %48 = load i64, i64* %47, align 8
  %49 = call %struct.bfa_fcs_rport_s* @bfa_fcs_lport_get_rport_by_qualifier(%struct.bfa_fcs_lport_s* %42, i32 %45, i64 %48)
  store %struct.bfa_fcs_rport_s* %49, %struct.bfa_fcs_rport_s** %7, align 8
  br label %56

50:                                               ; preds = %36
  %51 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %6, align 8
  %52 = load %struct.bfa_bsg_rport_attr_s*, %struct.bfa_bsg_rport_attr_s** %5, align 8
  %53 = getelementptr inbounds %struct.bfa_bsg_rport_attr_s, %struct.bfa_bsg_rport_attr_s* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = call %struct.bfa_fcs_rport_s* @bfa_fcs_rport_lookup(%struct.bfa_fcs_lport_s* %51, i32 %54)
  store %struct.bfa_fcs_rport_s* %55, %struct.bfa_fcs_rport_s** %7, align 8
  br label %56

56:                                               ; preds = %50, %41
  %57 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %7, align 8
  %58 = icmp eq %struct.bfa_fcs_rport_s* %57, null
  br i1 %58, label %59, label %69

59:                                               ; preds = %56
  %60 = load %struct.bfad_s*, %struct.bfad_s** %3, align 8
  %61 = call i32 @bfa_trc(%struct.bfad_s* %60, i32 0)
  %62 = load %struct.bfad_s*, %struct.bfad_s** %3, align 8
  %63 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %62, i32 0, i32 0
  %64 = load i64, i64* %8, align 8
  %65 = call i32 @spin_unlock_irqrestore(i32* %63, i64 %64)
  %66 = load i32, i32* @BFA_STATUS_UNKNOWN_RWWN, align 4
  %67 = load %struct.bfa_bsg_rport_attr_s*, %struct.bfa_bsg_rport_attr_s** %5, align 8
  %68 = getelementptr inbounds %struct.bfa_bsg_rport_attr_s, %struct.bfa_bsg_rport_attr_s* %67, i32 0, i32 0
  store i32 %66, i32* %68, align 8
  br label %81

69:                                               ; preds = %56
  %70 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %7, align 8
  %71 = load %struct.bfa_bsg_rport_attr_s*, %struct.bfa_bsg_rport_attr_s** %5, align 8
  %72 = getelementptr inbounds %struct.bfa_bsg_rport_attr_s, %struct.bfa_bsg_rport_attr_s* %71, i32 0, i32 1
  %73 = call i32 @bfa_fcs_rport_get_attr(%struct.bfa_fcs_rport_s* %70, i32* %72)
  %74 = load %struct.bfad_s*, %struct.bfad_s** %3, align 8
  %75 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %74, i32 0, i32 0
  %76 = load i64, i64* %8, align 8
  %77 = call i32 @spin_unlock_irqrestore(i32* %75, i64 %76)
  %78 = load i32, i32* @BFA_STATUS_OK, align 4
  %79 = load %struct.bfa_bsg_rport_attr_s*, %struct.bfa_bsg_rport_attr_s** %5, align 8
  %80 = getelementptr inbounds %struct.bfa_bsg_rport_attr_s, %struct.bfa_bsg_rport_attr_s* %79, i32 0, i32 0
  store i32 %78, i32* %80, align 8
  br label %81

81:                                               ; preds = %69, %59, %26
  ret i32 0
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local %struct.bfa_fcs_lport_s* @bfa_fcs_lookup_port(i32*, i32, i32) #1

declare dso_local i32 @bfa_trc(%struct.bfad_s*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local %struct.bfa_fcs_rport_s* @bfa_fcs_lport_get_rport_by_qualifier(%struct.bfa_fcs_lport_s*, i32, i64) #1

declare dso_local %struct.bfa_fcs_rport_s* @bfa_fcs_rport_lookup(%struct.bfa_fcs_lport_s*, i32) #1

declare dso_local i32 @bfa_fcs_rport_get_attr(%struct.bfa_fcs_rport_s*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
