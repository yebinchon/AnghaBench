; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_svc.c_bfa_lps_send_login.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_svc.c_bfa_lps_send_login.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_lps_s = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.bfa_lps_mod_s = type { i32 }
%struct.bfi_lps_login_req_s = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@BFI_MC_LPS = common dso_local global i32 0, align 4
@BFI_LPS_H2I_LOGIN_REQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bfa_lps_s*)* @bfa_lps_send_login to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bfa_lps_send_login(%struct.bfa_lps_s* %0) #0 {
  %2 = alloca %struct.bfa_lps_s*, align 8
  %3 = alloca %struct.bfa_lps_mod_s*, align 8
  %4 = alloca %struct.bfi_lps_login_req_s*, align 8
  store %struct.bfa_lps_s* %0, %struct.bfa_lps_s** %2, align 8
  %5 = load %struct.bfa_lps_s*, %struct.bfa_lps_s** %2, align 8
  %6 = getelementptr inbounds %struct.bfa_lps_s, %struct.bfa_lps_s* %5, i32 0, i32 2
  %7 = load i32, i32* %6, align 4
  %8 = call %struct.bfa_lps_mod_s* @BFA_LPS_MOD(i32 %7)
  store %struct.bfa_lps_mod_s* %8, %struct.bfa_lps_mod_s** %3, align 8
  %9 = load %struct.bfa_lps_s*, %struct.bfa_lps_s** %2, align 8
  %10 = getelementptr inbounds %struct.bfa_lps_s, %struct.bfa_lps_s* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.bfa_lps_s*, %struct.bfa_lps_s** %2, align 8
  %13 = getelementptr inbounds %struct.bfa_lps_s, %struct.bfa_lps_s* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.bfi_lps_login_req_s* @bfa_reqq_next(i32 %11, i32 %14)
  store %struct.bfi_lps_login_req_s* %15, %struct.bfi_lps_login_req_s** %4, align 8
  %16 = load %struct.bfi_lps_login_req_s*, %struct.bfi_lps_login_req_s** %4, align 8
  %17 = icmp ne %struct.bfi_lps_login_req_s* %16, null
  %18 = xor i1 %17, true
  %19 = zext i1 %18 to i32
  %20 = call i32 @WARN_ON(i32 %19)
  %21 = load %struct.bfi_lps_login_req_s*, %struct.bfi_lps_login_req_s** %4, align 8
  %22 = getelementptr inbounds %struct.bfi_lps_login_req_s, %struct.bfi_lps_login_req_s* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @BFI_MC_LPS, align 4
  %25 = load i32, i32* @BFI_LPS_H2I_LOGIN_REQ, align 4
  %26 = load %struct.bfa_lps_s*, %struct.bfa_lps_s** %2, align 8
  %27 = getelementptr inbounds %struct.bfa_lps_s, %struct.bfa_lps_s* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @bfa_fn_lpu(i32 %28)
  %30 = call i32 @bfi_h2i_set(i32 %23, i32 %24, i32 %25, i32 %29)
  %31 = load %struct.bfa_lps_s*, %struct.bfa_lps_s** %2, align 8
  %32 = getelementptr inbounds %struct.bfa_lps_s, %struct.bfa_lps_s* %31, i32 0, i32 9
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.bfi_lps_login_req_s*, %struct.bfi_lps_login_req_s** %4, align 8
  %35 = getelementptr inbounds %struct.bfi_lps_login_req_s, %struct.bfi_lps_login_req_s* %34, i32 0, i32 7
  store i32 %33, i32* %35, align 4
  %36 = load %struct.bfa_lps_s*, %struct.bfa_lps_s** %2, align 8
  %37 = getelementptr inbounds %struct.bfa_lps_s, %struct.bfa_lps_s* %36, i32 0, i32 8
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.bfi_lps_login_req_s*, %struct.bfi_lps_login_req_s** %4, align 8
  %40 = getelementptr inbounds %struct.bfi_lps_login_req_s, %struct.bfi_lps_login_req_s* %39, i32 0, i32 6
  store i32 %38, i32* %40, align 4
  %41 = load %struct.bfa_lps_s*, %struct.bfa_lps_s** %2, align 8
  %42 = getelementptr inbounds %struct.bfa_lps_s, %struct.bfa_lps_s* %41, i32 0, i32 7
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @cpu_to_be16(i32 %43)
  %45 = load %struct.bfi_lps_login_req_s*, %struct.bfi_lps_login_req_s** %4, align 8
  %46 = getelementptr inbounds %struct.bfi_lps_login_req_s, %struct.bfi_lps_login_req_s* %45, i32 0, i32 5
  store i32 %44, i32* %46, align 4
  %47 = load %struct.bfa_lps_s*, %struct.bfa_lps_s** %2, align 8
  %48 = getelementptr inbounds %struct.bfa_lps_s, %struct.bfa_lps_s* %47, i32 0, i32 6
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.bfi_lps_login_req_s*, %struct.bfi_lps_login_req_s** %4, align 8
  %51 = getelementptr inbounds %struct.bfi_lps_login_req_s, %struct.bfi_lps_login_req_s* %50, i32 0, i32 4
  store i32 %49, i32* %51, align 4
  %52 = load %struct.bfa_lps_s*, %struct.bfa_lps_s** %2, align 8
  %53 = getelementptr inbounds %struct.bfa_lps_s, %struct.bfa_lps_s* %52, i32 0, i32 5
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.bfi_lps_login_req_s*, %struct.bfi_lps_login_req_s** %4, align 8
  %56 = getelementptr inbounds %struct.bfi_lps_login_req_s, %struct.bfi_lps_login_req_s* %55, i32 0, i32 3
  store i32 %54, i32* %56, align 4
  %57 = load %struct.bfa_lps_s*, %struct.bfa_lps_s** %2, align 8
  %58 = getelementptr inbounds %struct.bfa_lps_s, %struct.bfa_lps_s* %57, i32 0, i32 4
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.bfi_lps_login_req_s*, %struct.bfi_lps_login_req_s** %4, align 8
  %61 = getelementptr inbounds %struct.bfi_lps_login_req_s, %struct.bfi_lps_login_req_s* %60, i32 0, i32 2
  store i32 %59, i32* %61, align 4
  %62 = load %struct.bfa_lps_s*, %struct.bfa_lps_s** %2, align 8
  %63 = getelementptr inbounds %struct.bfa_lps_s, %struct.bfa_lps_s* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.bfi_lps_login_req_s*, %struct.bfi_lps_login_req_s** %4, align 8
  %66 = getelementptr inbounds %struct.bfi_lps_login_req_s, %struct.bfi_lps_login_req_s* %65, i32 0, i32 1
  store i32 %64, i32* %66, align 4
  %67 = load %struct.bfa_lps_s*, %struct.bfa_lps_s** %2, align 8
  %68 = getelementptr inbounds %struct.bfa_lps_s, %struct.bfa_lps_s* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.bfa_lps_s*, %struct.bfa_lps_s** %2, align 8
  %71 = getelementptr inbounds %struct.bfa_lps_s, %struct.bfa_lps_s* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.bfi_lps_login_req_s*, %struct.bfi_lps_login_req_s** %4, align 8
  %74 = getelementptr inbounds %struct.bfi_lps_login_req_s, %struct.bfi_lps_login_req_s* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @bfa_reqq_produce(i32 %69, i32 %72, i32 %75)
  %77 = load %struct.bfa_lps_s*, %struct.bfa_lps_s** %2, align 8
  %78 = getelementptr inbounds %struct.bfa_lps_s, %struct.bfa_lps_s* %77, i32 0, i32 0
  %79 = call i32 @list_del(i32* %78)
  %80 = load %struct.bfa_lps_s*, %struct.bfa_lps_s** %2, align 8
  %81 = getelementptr inbounds %struct.bfa_lps_s, %struct.bfa_lps_s* %80, i32 0, i32 0
  %82 = load %struct.bfa_lps_mod_s*, %struct.bfa_lps_mod_s** %3, align 8
  %83 = getelementptr inbounds %struct.bfa_lps_mod_s, %struct.bfa_lps_mod_s* %82, i32 0, i32 0
  %84 = call i32 @list_add_tail(i32* %81, i32* %83)
  ret void
}

declare dso_local %struct.bfa_lps_mod_s* @BFA_LPS_MOD(i32) #1

declare dso_local %struct.bfi_lps_login_req_s* @bfa_reqq_next(i32, i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @bfi_h2i_set(i32, i32, i32, i32) #1

declare dso_local i32 @bfa_fn_lpu(i32) #1

declare dso_local i32 @cpu_to_be16(i32) #1

declare dso_local i32 @bfa_reqq_produce(i32, i32, i32) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
