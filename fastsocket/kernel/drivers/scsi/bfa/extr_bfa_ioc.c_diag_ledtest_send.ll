; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_ioc.c_diag_ledtest_send.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_ioc.c_diag_ledtest_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_diag_s = type { %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }
%struct.bfa_diag_ledtest_s = type { i32, i32, i64, i64 }
%struct.bfi_diag_ledtest_req_s = type { i32, i32, i32, i8*, i8*, i32 }

@BFI_MC_DIAG = common dso_local global i32 0, align 4
@BFI_DIAG_H2I_LEDTEST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bfa_diag_s*, %struct.bfa_diag_ledtest_s*)* @diag_ledtest_send to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @diag_ledtest_send(%struct.bfa_diag_s* %0, %struct.bfa_diag_ledtest_s* %1) #0 {
  %3 = alloca %struct.bfa_diag_s*, align 8
  %4 = alloca %struct.bfa_diag_ledtest_s*, align 8
  %5 = alloca %struct.bfi_diag_ledtest_req_s*, align 8
  store %struct.bfa_diag_s* %0, %struct.bfa_diag_s** %3, align 8
  store %struct.bfa_diag_ledtest_s* %1, %struct.bfa_diag_ledtest_s** %4, align 8
  %6 = load %struct.bfa_diag_s*, %struct.bfa_diag_s** %3, align 8
  %7 = getelementptr inbounds %struct.bfa_diag_s, %struct.bfa_diag_s* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %10 to %struct.bfi_diag_ledtest_req_s*
  store %struct.bfi_diag_ledtest_req_s* %11, %struct.bfi_diag_ledtest_req_s** %5, align 8
  %12 = load %struct.bfi_diag_ledtest_req_s*, %struct.bfi_diag_ledtest_req_s** %5, align 8
  %13 = getelementptr inbounds %struct.bfi_diag_ledtest_req_s, %struct.bfi_diag_ledtest_req_s* %12, i32 0, i32 5
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @BFI_MC_DIAG, align 4
  %16 = load i32, i32* @BFI_DIAG_H2I_LEDTEST, align 4
  %17 = load %struct.bfa_diag_s*, %struct.bfa_diag_s** %3, align 8
  %18 = getelementptr inbounds %struct.bfa_diag_s, %struct.bfa_diag_s* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @bfa_ioc_portid(i32 %19)
  %21 = call i32 @bfi_h2i_set(i32 %14, i32 %15, i32 %16, i32 %20)
  %22 = load %struct.bfa_diag_ledtest_s*, %struct.bfa_diag_ledtest_s** %4, align 8
  %23 = getelementptr inbounds %struct.bfa_diag_ledtest_s, %struct.bfa_diag_ledtest_s* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %33

26:                                               ; preds = %2
  %27 = load %struct.bfa_diag_ledtest_s*, %struct.bfa_diag_ledtest_s** %4, align 8
  %28 = getelementptr inbounds %struct.bfa_diag_ledtest_s, %struct.bfa_diag_ledtest_s* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = sdiv i32 500, %29
  %31 = load %struct.bfa_diag_ledtest_s*, %struct.bfa_diag_ledtest_s** %4, align 8
  %32 = getelementptr inbounds %struct.bfa_diag_ledtest_s, %struct.bfa_diag_ledtest_s* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 8
  br label %33

33:                                               ; preds = %26, %2
  %34 = load %struct.bfa_diag_ledtest_s*, %struct.bfa_diag_ledtest_s** %4, align 8
  %35 = getelementptr inbounds %struct.bfa_diag_ledtest_s, %struct.bfa_diag_ledtest_s* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %33
  %39 = load %struct.bfa_diag_ledtest_s*, %struct.bfa_diag_ledtest_s** %4, align 8
  %40 = getelementptr inbounds %struct.bfa_diag_ledtest_s, %struct.bfa_diag_ledtest_s* %39, i32 0, i32 0
  store i32 1, i32* %40, align 8
  br label %41

41:                                               ; preds = %38, %33
  %42 = load %struct.bfa_diag_s*, %struct.bfa_diag_s** %3, align 8
  %43 = load %struct.bfa_diag_ledtest_s*, %struct.bfa_diag_ledtest_s** %4, align 8
  %44 = getelementptr inbounds %struct.bfa_diag_ledtest_s, %struct.bfa_diag_ledtest_s* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @bfa_trc(%struct.bfa_diag_s* %42, i32 %45)
  %47 = load %struct.bfa_diag_ledtest_s*, %struct.bfa_diag_ledtest_s** %4, align 8
  %48 = getelementptr inbounds %struct.bfa_diag_ledtest_s, %struct.bfa_diag_ledtest_s* %47, i32 0, i32 3
  %49 = load i64, i64* %48, align 8
  %50 = inttoptr i64 %49 to i8*
  %51 = load %struct.bfi_diag_ledtest_req_s*, %struct.bfi_diag_ledtest_req_s** %5, align 8
  %52 = getelementptr inbounds %struct.bfi_diag_ledtest_req_s, %struct.bfi_diag_ledtest_req_s* %51, i32 0, i32 4
  store i8* %50, i8** %52, align 8
  %53 = load %struct.bfa_diag_ledtest_s*, %struct.bfa_diag_ledtest_s** %4, align 8
  %54 = getelementptr inbounds %struct.bfa_diag_ledtest_s, %struct.bfa_diag_ledtest_s* %53, i32 0, i32 2
  %55 = load i64, i64* %54, align 8
  %56 = inttoptr i64 %55 to i8*
  %57 = load %struct.bfi_diag_ledtest_req_s*, %struct.bfi_diag_ledtest_req_s** %5, align 8
  %58 = getelementptr inbounds %struct.bfi_diag_ledtest_req_s, %struct.bfi_diag_ledtest_req_s* %57, i32 0, i32 3
  store i8* %56, i8** %58, align 8
  %59 = load %struct.bfa_diag_s*, %struct.bfa_diag_s** %3, align 8
  %60 = getelementptr inbounds %struct.bfa_diag_s, %struct.bfa_diag_s* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @bfa_ioc_portid(i32 %61)
  %63 = load %struct.bfi_diag_ledtest_req_s*, %struct.bfi_diag_ledtest_req_s** %5, align 8
  %64 = getelementptr inbounds %struct.bfi_diag_ledtest_req_s, %struct.bfi_diag_ledtest_req_s* %63, i32 0, i32 2
  store i32 %62, i32* %64, align 8
  %65 = load %struct.bfa_diag_ledtest_s*, %struct.bfa_diag_ledtest_s** %4, align 8
  %66 = getelementptr inbounds %struct.bfa_diag_ledtest_s, %struct.bfa_diag_ledtest_s* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.bfi_diag_ledtest_req_s*, %struct.bfi_diag_ledtest_req_s** %5, align 8
  %69 = getelementptr inbounds %struct.bfi_diag_ledtest_req_s, %struct.bfi_diag_ledtest_req_s* %68, i32 0, i32 1
  store i32 %67, i32* %69, align 4
  %70 = load %struct.bfa_diag_ledtest_s*, %struct.bfa_diag_ledtest_s** %4, align 8
  %71 = getelementptr inbounds %struct.bfa_diag_ledtest_s, %struct.bfa_diag_ledtest_s* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @cpu_to_be16(i32 %72)
  %74 = load %struct.bfi_diag_ledtest_req_s*, %struct.bfi_diag_ledtest_req_s** %5, align 8
  %75 = getelementptr inbounds %struct.bfi_diag_ledtest_req_s, %struct.bfi_diag_ledtest_req_s* %74, i32 0, i32 0
  store i32 %73, i32* %75, align 8
  %76 = load %struct.bfa_diag_s*, %struct.bfa_diag_s** %3, align 8
  %77 = getelementptr inbounds %struct.bfa_diag_s, %struct.bfa_diag_s* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  %79 = load %struct.bfa_diag_s*, %struct.bfa_diag_s** %3, align 8
  %80 = getelementptr inbounds %struct.bfa_diag_s, %struct.bfa_diag_s* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 0
  %82 = call i32 @bfa_ioc_mbox_queue(i32 %78, %struct.TYPE_4__* %81)
  ret void
}

declare dso_local i32 @bfi_h2i_set(i32, i32, i32, i32) #1

declare dso_local i32 @bfa_ioc_portid(i32) #1

declare dso_local i32 @bfa_trc(%struct.bfa_diag_s*, i32) #1

declare dso_local i32 @cpu_to_be16(i32) #1

declare dso_local i32 @bfa_ioc_mbox_queue(i32, %struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
