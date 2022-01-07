; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfad_bsg.c_bfad_iocmd_fabric_get_lports.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfad_bsg.c_bfad_iocmd_fabric_get_lports.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfad_s = type { i32, i32 }
%struct.bfa_bsg_fabric_get_lports_s = type { i64, i64, i32 }

@BFA_STATUS_EINVAL = common dso_local global i64 0, align 8
@BFA_STATUS_OK = common dso_local global i64 0, align 8
@BFA_STATUS_VERSION_FAIL = common dso_local global i64 0, align 8
@BFA_STATUS_UNKNOWN_VFID = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bfad_s*, i8*, i32)* @bfad_iocmd_fabric_get_lports to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bfad_iocmd_fabric_get_lports(%struct.bfad_s* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.bfad_s*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.bfa_bsg_fabric_get_lports_s*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  store %struct.bfad_s* %0, %struct.bfad_s** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %12 = load i8*, i8** %5, align 8
  %13 = bitcast i8* %12 to %struct.bfa_bsg_fabric_get_lports_s*
  store %struct.bfa_bsg_fabric_get_lports_s* %13, %struct.bfa_bsg_fabric_get_lports_s** %7, align 8
  %14 = load %struct.bfa_bsg_fabric_get_lports_s*, %struct.bfa_bsg_fabric_get_lports_s** %7, align 8
  %15 = getelementptr inbounds %struct.bfa_bsg_fabric_get_lports_s, %struct.bfa_bsg_fabric_get_lports_s* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  store i64 %16, i64* %9, align 8
  %17 = load i64, i64* %9, align 8
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %3
  %20 = load i64, i64* @BFA_STATUS_EINVAL, align 8
  %21 = load %struct.bfa_bsg_fabric_get_lports_s*, %struct.bfa_bsg_fabric_get_lports_s** %7, align 8
  %22 = getelementptr inbounds %struct.bfa_bsg_fabric_get_lports_s, %struct.bfa_bsg_fabric_get_lports_s* %21, i32 0, i32 1
  store i64 %20, i64* %22, align 8
  br label %76

23:                                               ; preds = %3
  %24 = load i32, i32* %6, align 4
  %25 = load %struct.bfa_bsg_fabric_get_lports_s*, %struct.bfa_bsg_fabric_get_lports_s** %7, align 8
  %26 = getelementptr inbounds %struct.bfa_bsg_fabric_get_lports_s, %struct.bfa_bsg_fabric_get_lports_s* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = mul nuw i64 4, %27
  %29 = trunc i64 %28 to i32
  %30 = call i64 @bfad_chk_iocmd_sz(i32 %24, i32 24, i32 %29)
  %31 = load i64, i64* @BFA_STATUS_OK, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %37

33:                                               ; preds = %23
  %34 = load i64, i64* @BFA_STATUS_VERSION_FAIL, align 8
  %35 = load %struct.bfa_bsg_fabric_get_lports_s*, %struct.bfa_bsg_fabric_get_lports_s** %7, align 8
  %36 = getelementptr inbounds %struct.bfa_bsg_fabric_get_lports_s, %struct.bfa_bsg_fabric_get_lports_s* %35, i32 0, i32 1
  store i64 %34, i64* %36, align 8
  br label %76

37:                                               ; preds = %23
  %38 = load %struct.bfa_bsg_fabric_get_lports_s*, %struct.bfa_bsg_fabric_get_lports_s** %7, align 8
  %39 = bitcast %struct.bfa_bsg_fabric_get_lports_s* %38 to i8*
  %40 = getelementptr inbounds i8, i8* %39, i64 24
  store i8* %40, i8** %11, align 8
  %41 = load %struct.bfad_s*, %struct.bfad_s** %4, align 8
  %42 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %41, i32 0, i32 0
  %43 = load i64, i64* %10, align 8
  %44 = call i32 @spin_lock_irqsave(i32* %42, i64 %43)
  %45 = load %struct.bfad_s*, %struct.bfad_s** %4, align 8
  %46 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %45, i32 0, i32 1
  %47 = load %struct.bfa_bsg_fabric_get_lports_s*, %struct.bfa_bsg_fabric_get_lports_s** %7, align 8
  %48 = getelementptr inbounds %struct.bfa_bsg_fabric_get_lports_s, %struct.bfa_bsg_fabric_get_lports_s* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = call i32* @bfa_fcs_vf_lookup(i32* %46, i32 %49)
  store i32* %50, i32** %8, align 8
  %51 = load i32*, i32** %8, align 8
  %52 = icmp eq i32* %51, null
  br i1 %52, label %53, label %61

53:                                               ; preds = %37
  %54 = load %struct.bfad_s*, %struct.bfad_s** %4, align 8
  %55 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %54, i32 0, i32 0
  %56 = load i64, i64* %10, align 8
  %57 = call i32 @spin_unlock_irqrestore(i32* %55, i64 %56)
  %58 = load i64, i64* @BFA_STATUS_UNKNOWN_VFID, align 8
  %59 = load %struct.bfa_bsg_fabric_get_lports_s*, %struct.bfa_bsg_fabric_get_lports_s** %7, align 8
  %60 = getelementptr inbounds %struct.bfa_bsg_fabric_get_lports_s, %struct.bfa_bsg_fabric_get_lports_s* %59, i32 0, i32 1
  store i64 %58, i64* %60, align 8
  br label %76

61:                                               ; preds = %37
  %62 = load i32*, i32** %8, align 8
  %63 = load i8*, i8** %11, align 8
  %64 = bitcast i8* %63 to i32*
  %65 = call i32 @bfa_fcs_vf_get_ports(i32* %62, i32* %64, i64* %9)
  %66 = load %struct.bfad_s*, %struct.bfad_s** %4, align 8
  %67 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %66, i32 0, i32 0
  %68 = load i64, i64* %10, align 8
  %69 = call i32 @spin_unlock_irqrestore(i32* %67, i64 %68)
  %70 = load i64, i64* %9, align 8
  %71 = load %struct.bfa_bsg_fabric_get_lports_s*, %struct.bfa_bsg_fabric_get_lports_s** %7, align 8
  %72 = getelementptr inbounds %struct.bfa_bsg_fabric_get_lports_s, %struct.bfa_bsg_fabric_get_lports_s* %71, i32 0, i32 0
  store i64 %70, i64* %72, align 8
  %73 = load i64, i64* @BFA_STATUS_OK, align 8
  %74 = load %struct.bfa_bsg_fabric_get_lports_s*, %struct.bfa_bsg_fabric_get_lports_s** %7, align 8
  %75 = getelementptr inbounds %struct.bfa_bsg_fabric_get_lports_s, %struct.bfa_bsg_fabric_get_lports_s* %74, i32 0, i32 1
  store i64 %73, i64* %75, align 8
  br label %76

76:                                               ; preds = %61, %53, %33, %19
  ret i32 0
}

declare dso_local i64 @bfad_chk_iocmd_sz(i32, i32, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32* @bfa_fcs_vf_lookup(i32*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @bfa_fcs_vf_get_ports(i32*, i32*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
