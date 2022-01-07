; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_ioc.c_bfa_sfp_scn.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_ioc.c_bfa_sfp_scn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_sfp_s = type { i32, i32, i32 }
%struct.bfi_mbmsg_s = type { i32 }
%struct.bfi_sfp_scn_s = type { i32 }

@BFA_SFP_STATE_INSERTED = common dso_local global i32 0, align 4
@BFA_SFP_STATE_REMOVED = common dso_local global i32 0, align 4
@BFA_SFP_STATE_FAILED = common dso_local global i32 0, align 4
@BFA_SFP_STATE_UNSUPPORT = common dso_local global i32 0, align 4
@BFI_SFP_MEM_ALL = common dso_local global i32 0, align 4
@BFA_SFP_STATE_VALID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bfa_sfp_s*, %struct.bfi_mbmsg_s*)* @bfa_sfp_scn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bfa_sfp_scn(%struct.bfa_sfp_s* %0, %struct.bfi_mbmsg_s* %1) #0 {
  %3 = alloca %struct.bfa_sfp_s*, align 8
  %4 = alloca %struct.bfi_mbmsg_s*, align 8
  %5 = alloca %struct.bfi_sfp_scn_s*, align 8
  store %struct.bfa_sfp_s* %0, %struct.bfa_sfp_s** %3, align 8
  store %struct.bfi_mbmsg_s* %1, %struct.bfi_mbmsg_s** %4, align 8
  %6 = load %struct.bfi_mbmsg_s*, %struct.bfi_mbmsg_s** %4, align 8
  %7 = bitcast %struct.bfi_mbmsg_s* %6 to %struct.bfi_sfp_scn_s*
  store %struct.bfi_sfp_scn_s* %7, %struct.bfi_sfp_scn_s** %5, align 8
  %8 = load %struct.bfi_sfp_scn_s*, %struct.bfi_sfp_scn_s** %5, align 8
  %9 = getelementptr inbounds %struct.bfi_sfp_scn_s, %struct.bfi_sfp_scn_s* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  switch i32 %10, label %71 [
    i32 132, label %11
    i32 130, label %20
    i32 133, label %29
    i32 129, label %38
    i32 131, label %54
    i32 128, label %58
  ]

11:                                               ; preds = %2
  %12 = load i32, i32* @BFA_SFP_STATE_INSERTED, align 4
  %13 = load %struct.bfa_sfp_s*, %struct.bfa_sfp_s** %3, align 8
  %14 = getelementptr inbounds %struct.bfa_sfp_s, %struct.bfa_sfp_s* %13, i32 0, i32 1
  store i32 %12, i32* %14, align 4
  %15 = load %struct.bfa_sfp_s*, %struct.bfa_sfp_s** %3, align 8
  %16 = getelementptr inbounds %struct.bfa_sfp_s, %struct.bfa_sfp_s* %15, i32 0, i32 2
  store i32 0, i32* %16, align 4
  %17 = load %struct.bfa_sfp_s*, %struct.bfa_sfp_s** %3, align 8
  %18 = load %struct.bfi_sfp_scn_s*, %struct.bfi_sfp_scn_s** %5, align 8
  %19 = call i32 @bfa_sfp_scn_aen_post(%struct.bfa_sfp_s* %17, %struct.bfi_sfp_scn_s* %18)
  br label %78

20:                                               ; preds = %2
  %21 = load i32, i32* @BFA_SFP_STATE_REMOVED, align 4
  %22 = load %struct.bfa_sfp_s*, %struct.bfa_sfp_s** %3, align 8
  %23 = getelementptr inbounds %struct.bfa_sfp_s, %struct.bfa_sfp_s* %22, i32 0, i32 1
  store i32 %21, i32* %23, align 4
  %24 = load %struct.bfa_sfp_s*, %struct.bfa_sfp_s** %3, align 8
  %25 = getelementptr inbounds %struct.bfa_sfp_s, %struct.bfa_sfp_s* %24, i32 0, i32 2
  store i32 0, i32* %25, align 4
  %26 = load %struct.bfa_sfp_s*, %struct.bfa_sfp_s** %3, align 8
  %27 = load %struct.bfi_sfp_scn_s*, %struct.bfi_sfp_scn_s** %5, align 8
  %28 = call i32 @bfa_sfp_scn_aen_post(%struct.bfa_sfp_s* %26, %struct.bfi_sfp_scn_s* %27)
  br label %78

29:                                               ; preds = %2
  %30 = load i32, i32* @BFA_SFP_STATE_FAILED, align 4
  %31 = load %struct.bfa_sfp_s*, %struct.bfa_sfp_s** %3, align 8
  %32 = getelementptr inbounds %struct.bfa_sfp_s, %struct.bfa_sfp_s* %31, i32 0, i32 1
  store i32 %30, i32* %32, align 4
  %33 = load %struct.bfa_sfp_s*, %struct.bfa_sfp_s** %3, align 8
  %34 = getelementptr inbounds %struct.bfa_sfp_s, %struct.bfa_sfp_s* %33, i32 0, i32 2
  store i32 0, i32* %34, align 4
  %35 = load %struct.bfa_sfp_s*, %struct.bfa_sfp_s** %3, align 8
  %36 = load %struct.bfi_sfp_scn_s*, %struct.bfi_sfp_scn_s** %5, align 8
  %37 = call i32 @bfa_sfp_scn_aen_post(%struct.bfa_sfp_s* %35, %struct.bfi_sfp_scn_s* %36)
  br label %78

38:                                               ; preds = %2
  %39 = load i32, i32* @BFA_SFP_STATE_UNSUPPORT, align 4
  %40 = load %struct.bfa_sfp_s*, %struct.bfa_sfp_s** %3, align 8
  %41 = getelementptr inbounds %struct.bfa_sfp_s, %struct.bfa_sfp_s* %40, i32 0, i32 1
  store i32 %39, i32* %41, align 4
  %42 = load %struct.bfa_sfp_s*, %struct.bfa_sfp_s** %3, align 8
  %43 = load %struct.bfi_sfp_scn_s*, %struct.bfi_sfp_scn_s** %5, align 8
  %44 = call i32 @bfa_sfp_scn_aen_post(%struct.bfa_sfp_s* %42, %struct.bfi_sfp_scn_s* %43)
  %45 = load %struct.bfa_sfp_s*, %struct.bfa_sfp_s** %3, align 8
  %46 = getelementptr inbounds %struct.bfa_sfp_s, %struct.bfa_sfp_s* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %53, label %49

49:                                               ; preds = %38
  %50 = load %struct.bfa_sfp_s*, %struct.bfa_sfp_s** %3, align 8
  %51 = load i32, i32* @BFI_SFP_MEM_ALL, align 4
  %52 = call i32 @bfa_sfp_getdata(%struct.bfa_sfp_s* %50, i32 %51)
  br label %53

53:                                               ; preds = %49, %38
  br label %78

54:                                               ; preds = %2
  %55 = load %struct.bfa_sfp_s*, %struct.bfa_sfp_s** %3, align 8
  %56 = load %struct.bfi_sfp_scn_s*, %struct.bfi_sfp_scn_s** %5, align 8
  %57 = call i32 @bfa_sfp_scn_aen_post(%struct.bfa_sfp_s* %55, %struct.bfi_sfp_scn_s* %56)
  br label %78

58:                                               ; preds = %2
  %59 = load i32, i32* @BFA_SFP_STATE_VALID, align 4
  %60 = load %struct.bfa_sfp_s*, %struct.bfa_sfp_s** %3, align 8
  %61 = getelementptr inbounds %struct.bfa_sfp_s, %struct.bfa_sfp_s* %60, i32 0, i32 1
  store i32 %59, i32* %61, align 4
  %62 = load %struct.bfa_sfp_s*, %struct.bfa_sfp_s** %3, align 8
  %63 = getelementptr inbounds %struct.bfa_sfp_s, %struct.bfa_sfp_s* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %70, label %66

66:                                               ; preds = %58
  %67 = load %struct.bfa_sfp_s*, %struct.bfa_sfp_s** %3, align 8
  %68 = load i32, i32* @BFI_SFP_MEM_ALL, align 4
  %69 = call i32 @bfa_sfp_getdata(%struct.bfa_sfp_s* %67, i32 %68)
  br label %70

70:                                               ; preds = %66, %58
  br label %78

71:                                               ; preds = %2
  %72 = load %struct.bfa_sfp_s*, %struct.bfa_sfp_s** %3, align 8
  %73 = load %struct.bfi_sfp_scn_s*, %struct.bfi_sfp_scn_s** %5, align 8
  %74 = getelementptr inbounds %struct.bfi_sfp_scn_s, %struct.bfi_sfp_scn_s* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @bfa_trc(%struct.bfa_sfp_s* %72, i32 %75)
  %77 = call i32 @WARN_ON(i32 1)
  br label %78

78:                                               ; preds = %71, %70, %54, %53, %29, %20, %11
  ret void
}

declare dso_local i32 @bfa_sfp_scn_aen_post(%struct.bfa_sfp_s*, %struct.bfi_sfp_scn_s*) #1

declare dso_local i32 @bfa_sfp_getdata(%struct.bfa_sfp_s*, i32) #1

declare dso_local i32 @bfa_trc(%struct.bfa_sfp_s*, i32) #1

declare dso_local i32 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
