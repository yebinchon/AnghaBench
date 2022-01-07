; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_svc.c___bfa_fcxp_send_cbfn.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_svc.c___bfa_fcxp_send_cbfn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_fcxp_s = type { i32, i32, i32, i32, i32, i32, i32 (i32, %struct.bfa_fcxp_s*, i32, i32, i32, i32, i32*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i64)* @__bfa_fcxp_send_cbfn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__bfa_fcxp_send_cbfn(i8* %0, i64 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.bfa_fcxp_s*, align 8
  store i8* %0, i8** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = bitcast i8* %6 to %struct.bfa_fcxp_s*
  store %struct.bfa_fcxp_s* %7, %struct.bfa_fcxp_s** %5, align 8
  %8 = load i64, i64* %4, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %33

10:                                               ; preds = %2
  %11 = load %struct.bfa_fcxp_s*, %struct.bfa_fcxp_s** %5, align 8
  %12 = getelementptr inbounds %struct.bfa_fcxp_s, %struct.bfa_fcxp_s* %11, i32 0, i32 6
  %13 = load i32 (i32, %struct.bfa_fcxp_s*, i32, i32, i32, i32, i32*)*, i32 (i32, %struct.bfa_fcxp_s*, i32, i32, i32, i32, i32*)** %12, align 8
  %14 = load %struct.bfa_fcxp_s*, %struct.bfa_fcxp_s** %5, align 8
  %15 = getelementptr inbounds %struct.bfa_fcxp_s, %struct.bfa_fcxp_s* %14, i32 0, i32 5
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.bfa_fcxp_s*, %struct.bfa_fcxp_s** %5, align 8
  %18 = load %struct.bfa_fcxp_s*, %struct.bfa_fcxp_s** %5, align 8
  %19 = getelementptr inbounds %struct.bfa_fcxp_s, %struct.bfa_fcxp_s* %18, i32 0, i32 4
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.bfa_fcxp_s*, %struct.bfa_fcxp_s** %5, align 8
  %22 = getelementptr inbounds %struct.bfa_fcxp_s, %struct.bfa_fcxp_s* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.bfa_fcxp_s*, %struct.bfa_fcxp_s** %5, align 8
  %25 = getelementptr inbounds %struct.bfa_fcxp_s, %struct.bfa_fcxp_s* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.bfa_fcxp_s*, %struct.bfa_fcxp_s** %5, align 8
  %28 = getelementptr inbounds %struct.bfa_fcxp_s, %struct.bfa_fcxp_s* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.bfa_fcxp_s*, %struct.bfa_fcxp_s** %5, align 8
  %31 = getelementptr inbounds %struct.bfa_fcxp_s, %struct.bfa_fcxp_s* %30, i32 0, i32 0
  %32 = call i32 %13(i32 %16, %struct.bfa_fcxp_s* %17, i32 %20, i32 %23, i32 %26, i32 %29, i32* %31)
  br label %36

33:                                               ; preds = %2
  %34 = load %struct.bfa_fcxp_s*, %struct.bfa_fcxp_s** %5, align 8
  %35 = call i32 @bfa_fcxp_free(%struct.bfa_fcxp_s* %34)
  br label %36

36:                                               ; preds = %33, %10
  ret void
}

declare dso_local i32 @bfa_fcxp_free(%struct.bfa_fcxp_s*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
