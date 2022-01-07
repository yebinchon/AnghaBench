; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_fcbuild.c_fc_ct_rsp_parse.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_fcbuild.c_fc_ct_rsp_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ct_hdr_s = type { i64, i32 }

@CT_RSP_ACCEPT = common dso_local global i64 0, align 8
@CT_RSN_LOGICAL_BUSY = common dso_local global i64 0, align 8
@FC_PARSE_BUSY = common dso_local global i32 0, align 4
@FC_PARSE_FAILURE = common dso_local global i32 0, align 4
@FC_PARSE_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fc_ct_rsp_parse(%struct.ct_hdr_s* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ct_hdr_s*, align 8
  store %struct.ct_hdr_s* %0, %struct.ct_hdr_s** %3, align 8
  %4 = load %struct.ct_hdr_s*, %struct.ct_hdr_s** %3, align 8
  %5 = getelementptr inbounds %struct.ct_hdr_s, %struct.ct_hdr_s* %4, i32 0, i32 1
  %6 = load i32, i32* %5, align 8
  %7 = call i64 @be16_to_cpu(i32 %6)
  %8 = load i64, i64* @CT_RSP_ACCEPT, align 8
  %9 = icmp ne i64 %7, %8
  br i1 %9, label %10, label %20

10:                                               ; preds = %1
  %11 = load %struct.ct_hdr_s*, %struct.ct_hdr_s** %3, align 8
  %12 = getelementptr inbounds %struct.ct_hdr_s, %struct.ct_hdr_s* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @CT_RSN_LOGICAL_BUSY, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %10
  %17 = load i32, i32* @FC_PARSE_BUSY, align 4
  store i32 %17, i32* %2, align 4
  br label %22

18:                                               ; preds = %10
  %19 = load i32, i32* @FC_PARSE_FAILURE, align 4
  store i32 %19, i32* %2, align 4
  br label %22

20:                                               ; preds = %1
  %21 = load i32, i32* @FC_PARSE_OK, align 4
  store i32 %21, i32* %2, align 4
  br label %22

22:                                               ; preds = %20, %18, %16
  %23 = load i32, i32* %2, align 4
  ret i32 %23
}

declare dso_local i64 @be16_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
