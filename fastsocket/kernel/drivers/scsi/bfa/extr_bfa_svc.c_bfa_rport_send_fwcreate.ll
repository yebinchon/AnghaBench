; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_svc.c_bfa_rport_send_fwcreate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_svc.c_bfa_rport_send_fwcreate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_rport_s = type { i32, %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i64, i32, i32 }
%struct.bfi_rport_create_req_s = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@BFA_REQQ_RPORT = common dso_local global i32 0, align 4
@BFA_FALSE = common dso_local global i32 0, align 4
@BFI_MC_RPORT = common dso_local global i32 0, align 4
@BFI_RPORT_H2I_CREATE_REQ = common dso_local global i32 0, align 4
@BFA_TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bfa_rport_s*)* @bfa_rport_send_fwcreate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bfa_rport_send_fwcreate(%struct.bfa_rport_s* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bfa_rport_s*, align 8
  %4 = alloca %struct.bfi_rport_create_req_s*, align 8
  store %struct.bfa_rport_s* %0, %struct.bfa_rport_s** %3, align 8
  %5 = load %struct.bfa_rport_s*, %struct.bfa_rport_s** %3, align 8
  %6 = getelementptr inbounds %struct.bfa_rport_s, %struct.bfa_rport_s* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = load i32, i32* @BFA_REQQ_RPORT, align 4
  %9 = call %struct.bfi_rport_create_req_s* @bfa_reqq_next(i32 %7, i32 %8)
  store %struct.bfi_rport_create_req_s* %9, %struct.bfi_rport_create_req_s** %4, align 8
  %10 = load %struct.bfi_rport_create_req_s*, %struct.bfi_rport_create_req_s** %4, align 8
  %11 = icmp ne %struct.bfi_rport_create_req_s* %10, null
  br i1 %11, label %21, label %12

12:                                               ; preds = %1
  %13 = load %struct.bfa_rport_s*, %struct.bfa_rport_s** %3, align 8
  %14 = getelementptr inbounds %struct.bfa_rport_s, %struct.bfa_rport_s* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @BFA_REQQ_RPORT, align 4
  %17 = load %struct.bfa_rport_s*, %struct.bfa_rport_s** %3, align 8
  %18 = getelementptr inbounds %struct.bfa_rport_s, %struct.bfa_rport_s* %17, i32 0, i32 3
  %19 = call i32 @bfa_reqq_wait(i32 %15, i32 %16, i32* %18)
  %20 = load i32, i32* @BFA_FALSE, align 4
  store i32 %20, i32* %2, align 4
  br label %100

21:                                               ; preds = %1
  %22 = load %struct.bfi_rport_create_req_s*, %struct.bfi_rport_create_req_s** %4, align 8
  %23 = getelementptr inbounds %struct.bfi_rport_create_req_s, %struct.bfi_rport_create_req_s* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @BFI_MC_RPORT, align 4
  %26 = load i32, i32* @BFI_RPORT_H2I_CREATE_REQ, align 4
  %27 = load %struct.bfa_rport_s*, %struct.bfa_rport_s** %3, align 8
  %28 = getelementptr inbounds %struct.bfa_rport_s, %struct.bfa_rport_s* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @bfa_fn_lpu(i32 %29)
  %31 = call i32 @bfi_h2i_set(i32 %24, i32 %25, i32 %26, i32 %30)
  %32 = load %struct.bfa_rport_s*, %struct.bfa_rport_s** %3, align 8
  %33 = getelementptr inbounds %struct.bfa_rport_s, %struct.bfa_rport_s* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.bfi_rport_create_req_s*, %struct.bfi_rport_create_req_s** %4, align 8
  %36 = getelementptr inbounds %struct.bfi_rport_create_req_s, %struct.bfi_rport_create_req_s* %35, i32 0, i32 9
  store i32 %34, i32* %36, align 4
  %37 = load %struct.bfa_rport_s*, %struct.bfa_rport_s** %3, align 8
  %38 = getelementptr inbounds %struct.bfa_rport_s, %struct.bfa_rport_s* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 7
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @cpu_to_be16(i32 %40)
  %42 = load %struct.bfi_rport_create_req_s*, %struct.bfi_rport_create_req_s** %4, align 8
  %43 = getelementptr inbounds %struct.bfi_rport_create_req_s, %struct.bfi_rport_create_req_s* %42, i32 0, i32 8
  store i32 %41, i32* %43, align 4
  %44 = load %struct.bfa_rport_s*, %struct.bfa_rport_s** %3, align 8
  %45 = getelementptr inbounds %struct.bfa_rport_s, %struct.bfa_rport_s* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 6
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.bfi_rport_create_req_s*, %struct.bfi_rport_create_req_s** %4, align 8
  %49 = getelementptr inbounds %struct.bfi_rport_create_req_s, %struct.bfi_rport_create_req_s* %48, i32 0, i32 7
  store i32 %47, i32* %49, align 4
  %50 = load %struct.bfa_rport_s*, %struct.bfa_rport_s** %3, align 8
  %51 = getelementptr inbounds %struct.bfa_rport_s, %struct.bfa_rport_s* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.bfa_rport_s*, %struct.bfa_rport_s** %3, align 8
  %54 = getelementptr inbounds %struct.bfa_rport_s, %struct.bfa_rport_s* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 5
  %56 = load i64, i64* %55, align 8
  %57 = trunc i64 %56 to i32
  %58 = call i32 @bfa_lps_get_fwtag(i32 %52, i32 %57)
  %59 = load %struct.bfi_rport_create_req_s*, %struct.bfi_rport_create_req_s** %4, align 8
  %60 = getelementptr inbounds %struct.bfi_rport_create_req_s, %struct.bfi_rport_create_req_s* %59, i32 0, i32 6
  store i32 %58, i32* %60, align 4
  %61 = load %struct.bfa_rport_s*, %struct.bfa_rport_s** %3, align 8
  %62 = getelementptr inbounds %struct.bfa_rport_s, %struct.bfa_rport_s* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 4
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.bfi_rport_create_req_s*, %struct.bfi_rport_create_req_s** %4, align 8
  %66 = getelementptr inbounds %struct.bfi_rport_create_req_s, %struct.bfi_rport_create_req_s* %65, i32 0, i32 5
  store i32 %64, i32* %66, align 4
  %67 = load %struct.bfa_rport_s*, %struct.bfa_rport_s** %3, align 8
  %68 = getelementptr inbounds %struct.bfa_rport_s, %struct.bfa_rport_s* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.bfi_rport_create_req_s*, %struct.bfi_rport_create_req_s** %4, align 8
  %72 = getelementptr inbounds %struct.bfi_rport_create_req_s, %struct.bfi_rport_create_req_s* %71, i32 0, i32 4
  store i32 %70, i32* %72, align 4
  %73 = load %struct.bfa_rport_s*, %struct.bfa_rport_s** %3, align 8
  %74 = getelementptr inbounds %struct.bfa_rport_s, %struct.bfa_rport_s* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 8
  %77 = load %struct.bfi_rport_create_req_s*, %struct.bfi_rport_create_req_s** %4, align 8
  %78 = getelementptr inbounds %struct.bfi_rport_create_req_s, %struct.bfi_rport_create_req_s* %77, i32 0, i32 3
  store i32 %76, i32* %78, align 4
  %79 = load %struct.bfa_rport_s*, %struct.bfa_rport_s** %3, align 8
  %80 = getelementptr inbounds %struct.bfa_rport_s, %struct.bfa_rport_s* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.bfi_rport_create_req_s*, %struct.bfi_rport_create_req_s** %4, align 8
  %84 = getelementptr inbounds %struct.bfi_rport_create_req_s, %struct.bfi_rport_create_req_s* %83, i32 0, i32 2
  store i32 %82, i32* %84, align 4
  %85 = load %struct.bfa_rport_s*, %struct.bfa_rport_s** %3, align 8
  %86 = getelementptr inbounds %struct.bfa_rport_s, %struct.bfa_rport_s* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = load %struct.bfi_rport_create_req_s*, %struct.bfi_rport_create_req_s** %4, align 8
  %90 = getelementptr inbounds %struct.bfi_rport_create_req_s, %struct.bfi_rport_create_req_s* %89, i32 0, i32 1
  store i32 %88, i32* %90, align 4
  %91 = load %struct.bfa_rport_s*, %struct.bfa_rport_s** %3, align 8
  %92 = getelementptr inbounds %struct.bfa_rport_s, %struct.bfa_rport_s* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = load i32, i32* @BFA_REQQ_RPORT, align 4
  %95 = load %struct.bfi_rport_create_req_s*, %struct.bfi_rport_create_req_s** %4, align 8
  %96 = getelementptr inbounds %struct.bfi_rport_create_req_s, %struct.bfi_rport_create_req_s* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @bfa_reqq_produce(i32 %93, i32 %94, i32 %97)
  %99 = load i32, i32* @BFA_TRUE, align 4
  store i32 %99, i32* %2, align 4
  br label %100

100:                                              ; preds = %21, %12
  %101 = load i32, i32* %2, align 4
  ret i32 %101
}

declare dso_local %struct.bfi_rport_create_req_s* @bfa_reqq_next(i32, i32) #1

declare dso_local i32 @bfa_reqq_wait(i32, i32, i32*) #1

declare dso_local i32 @bfi_h2i_set(i32, i32, i32, i32) #1

declare dso_local i32 @bfa_fn_lpu(i32) #1

declare dso_local i32 @cpu_to_be16(i32) #1

declare dso_local i32 @bfa_lps_get_fwtag(i32, i32) #1

declare dso_local i32 @bfa_reqq_produce(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
