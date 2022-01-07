; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_fcbuild.c_fc_abts_rsp_parse.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_fcbuild.c_fc_abts_rsp_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fchs_s = type { i64 }

@FC_CAT_BA_ACC = common dso_local global i64 0, align 8
@FC_CAT_BA_RJT = common dso_local global i64 0, align 8
@FC_PARSE_OK = common dso_local global i32 0, align 4
@FC_PARSE_FAILURE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fc_abts_rsp_parse(%struct.fchs_s* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fchs_s*, align 8
  %5 = alloca i32, align 4
  store %struct.fchs_s* %0, %struct.fchs_s** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.fchs_s*, %struct.fchs_s** %4, align 8
  %7 = getelementptr inbounds %struct.fchs_s, %struct.fchs_s* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @FC_CAT_BA_ACC, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %17, label %11

11:                                               ; preds = %2
  %12 = load %struct.fchs_s*, %struct.fchs_s** %4, align 8
  %13 = getelementptr inbounds %struct.fchs_s, %struct.fchs_s* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @FC_CAT_BA_RJT, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %11, %2
  %18 = load i32, i32* @FC_PARSE_OK, align 4
  store i32 %18, i32* %3, align 4
  br label %21

19:                                               ; preds = %11
  %20 = load i32, i32* @FC_PARSE_FAILURE, align 4
  store i32 %20, i32* %3, align 4
  br label %21

21:                                               ; preds = %19, %17
  %22 = load i32, i32* %3, align 4
  ret i32 %22
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
