; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_svc.c_bfa_fcxp_get_reqbuf.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_svc.c_bfa_fcxp_get_reqbuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_fcxp_s = type { i32, i32, %struct.bfa_fcxp_mod_s* }
%struct.bfa_fcxp_mod_s = type { i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @bfa_fcxp_get_reqbuf(%struct.bfa_fcxp_s* %0) #0 {
  %2 = alloca %struct.bfa_fcxp_s*, align 8
  %3 = alloca %struct.bfa_fcxp_mod_s*, align 8
  %4 = alloca i8*, align 8
  store %struct.bfa_fcxp_s* %0, %struct.bfa_fcxp_s** %2, align 8
  %5 = load %struct.bfa_fcxp_s*, %struct.bfa_fcxp_s** %2, align 8
  %6 = getelementptr inbounds %struct.bfa_fcxp_s, %struct.bfa_fcxp_s* %5, i32 0, i32 2
  %7 = load %struct.bfa_fcxp_mod_s*, %struct.bfa_fcxp_mod_s** %6, align 8
  store %struct.bfa_fcxp_mod_s* %7, %struct.bfa_fcxp_mod_s** %3, align 8
  %8 = load %struct.bfa_fcxp_s*, %struct.bfa_fcxp_s** %2, align 8
  %9 = getelementptr inbounds %struct.bfa_fcxp_s, %struct.bfa_fcxp_s* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp ne i32 %10, 1
  %12 = zext i1 %11 to i32
  %13 = call i32 @WARN_ON(i32 %12)
  %14 = load %struct.bfa_fcxp_mod_s*, %struct.bfa_fcxp_mod_s** %3, align 8
  %15 = load %struct.bfa_fcxp_s*, %struct.bfa_fcxp_s** %2, align 8
  %16 = getelementptr inbounds %struct.bfa_fcxp_s, %struct.bfa_fcxp_s* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.bfa_fcxp_mod_s*, %struct.bfa_fcxp_mod_s** %3, align 8
  %19 = getelementptr inbounds %struct.bfa_fcxp_mod_s, %struct.bfa_fcxp_mod_s* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.bfa_fcxp_mod_s*, %struct.bfa_fcxp_mod_s** %3, align 8
  %22 = getelementptr inbounds %struct.bfa_fcxp_mod_s, %struct.bfa_fcxp_mod_s* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = add nsw i64 %20, %23
  %25 = call i8* @bfa_mem_get_dmabuf_kva(%struct.bfa_fcxp_mod_s* %14, i32 %17, i64 %24)
  store i8* %25, i8** %4, align 8
  %26 = load i8*, i8** %4, align 8
  ret i8* %26
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i8* @bfa_mem_get_dmabuf_kva(%struct.bfa_fcxp_mod_s*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
