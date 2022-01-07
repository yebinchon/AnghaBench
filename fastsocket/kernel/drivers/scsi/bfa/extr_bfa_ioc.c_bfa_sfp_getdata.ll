; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_ioc.c_bfa_sfp_getdata.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_ioc.c_bfa_sfp_getdata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_sfp_s = type { i32, i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.bfi_sfp_req_s = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bfa_sfp_s*, i32)* @bfa_sfp_getdata to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bfa_sfp_getdata(%struct.bfa_sfp_s* %0, i32 %1) #0 {
  %3 = alloca %struct.bfa_sfp_s*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.bfi_sfp_req_s*, align 8
  store %struct.bfa_sfp_s* %0, %struct.bfa_sfp_s** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.bfa_sfp_s*, %struct.bfa_sfp_s** %3, align 8
  %7 = getelementptr inbounds %struct.bfa_sfp_s, %struct.bfa_sfp_s* %6, i32 0, i32 4
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = inttoptr i64 %9 to %struct.bfi_sfp_req_s*
  store %struct.bfi_sfp_req_s* %10, %struct.bfi_sfp_req_s** %5, align 8
  %11 = load %struct.bfa_sfp_s*, %struct.bfa_sfp_s** %3, align 8
  %12 = getelementptr inbounds %struct.bfa_sfp_s, %struct.bfa_sfp_s* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp ne i32 %13, 0
  %15 = zext i1 %14 to i32
  %16 = call i32 @WARN_ON(i32 %15)
  %17 = load %struct.bfa_sfp_s*, %struct.bfa_sfp_s** %3, align 8
  %18 = load %struct.bfa_sfp_s*, %struct.bfa_sfp_s** %3, align 8
  %19 = getelementptr inbounds %struct.bfa_sfp_s, %struct.bfa_sfp_s* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @bfa_trc(%struct.bfa_sfp_s* %17, i32 %20)
  %22 = load %struct.bfa_sfp_s*, %struct.bfa_sfp_s** %3, align 8
  %23 = getelementptr inbounds %struct.bfa_sfp_s, %struct.bfa_sfp_s* %22, i32 0, i32 0
  store i32 1, i32* %23, align 8
  %24 = load i32, i32* %4, align 4
  %25 = load %struct.bfa_sfp_s*, %struct.bfa_sfp_s** %3, align 8
  %26 = getelementptr inbounds %struct.bfa_sfp_s, %struct.bfa_sfp_s* %25, i32 0, i32 1
  store i32 %24, i32* %26, align 4
  %27 = load i32, i32* %4, align 4
  %28 = load %struct.bfi_sfp_req_s*, %struct.bfi_sfp_req_s** %5, align 8
  %29 = getelementptr inbounds %struct.bfi_sfp_req_s, %struct.bfi_sfp_req_s* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 4
  %30 = load %struct.bfi_sfp_req_s*, %struct.bfi_sfp_req_s** %5, align 8
  %31 = getelementptr inbounds %struct.bfi_sfp_req_s, %struct.bfi_sfp_req_s* %30, i32 0, i32 1
  %32 = load %struct.bfa_sfp_s*, %struct.bfa_sfp_s** %3, align 8
  %33 = getelementptr inbounds %struct.bfa_sfp_s, %struct.bfa_sfp_s* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @bfa_alen_set(i32* %31, i32 4, i32 %34)
  %36 = load %struct.bfa_sfp_s*, %struct.bfa_sfp_s** %3, align 8
  %37 = call i32 @bfa_sfp_getdata_send(%struct.bfa_sfp_s* %36)
  ret void
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @bfa_trc(%struct.bfa_sfp_s*, i32) #1

declare dso_local i32 @bfa_alen_set(i32*, i32, i32) #1

declare dso_local i32 @bfa_sfp_getdata_send(%struct.bfa_sfp_s*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
