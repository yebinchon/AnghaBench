; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_fcbuild.c_fc_prli_rsp_parse.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_fcbuild.c_fc_prli_rsp_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fc_prli_s = type { i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@FC_PARSE_FAILURE = common dso_local global i32 0, align 4
@FC_ELS_ACC = common dso_local global i64 0, align 8
@FC_PRLI_ACC_XQTD = common dso_local global i64 0, align 8
@FC_PRLI_ACC_PREDEF_IMG = common dso_local global i64 0, align 8
@FC_PARSE_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fc_prli_rsp_parse(%struct.fc_prli_s* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fc_prli_s*, align 8
  %5 = alloca i32, align 4
  store %struct.fc_prli_s* %0, %struct.fc_prli_s** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  %7 = sext i32 %6 to i64
  %8 = icmp ult i64 %7, 24
  br i1 %8, label %9, label %11

9:                                                ; preds = %2
  %10 = load i32, i32* @FC_PARSE_FAILURE, align 4
  store i32 %10, i32* %3, align 4
  br label %46

11:                                               ; preds = %2
  %12 = load %struct.fc_prli_s*, %struct.fc_prli_s** %4, align 8
  %13 = getelementptr inbounds %struct.fc_prli_s, %struct.fc_prli_s* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @FC_ELS_ACC, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %11
  %18 = load i32, i32* @FC_PARSE_FAILURE, align 4
  store i32 %18, i32* %3, align 4
  br label %46

19:                                               ; preds = %11
  %20 = load %struct.fc_prli_s*, %struct.fc_prli_s** %4, align 8
  %21 = getelementptr inbounds %struct.fc_prli_s, %struct.fc_prli_s* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @FC_PRLI_ACC_XQTD, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %35

26:                                               ; preds = %19
  %27 = load %struct.fc_prli_s*, %struct.fc_prli_s** %4, align 8
  %28 = getelementptr inbounds %struct.fc_prli_s, %struct.fc_prli_s* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @FC_PRLI_ACC_PREDEF_IMG, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %26
  %34 = load i32, i32* @FC_PARSE_FAILURE, align 4
  store i32 %34, i32* %3, align 4
  br label %46

35:                                               ; preds = %26, %19
  %36 = load %struct.fc_prli_s*, %struct.fc_prli_s** %4, align 8
  %37 = getelementptr inbounds %struct.fc_prli_s, %struct.fc_prli_s* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = icmp ne i32 %40, 1
  br i1 %41, label %42, label %44

42:                                               ; preds = %35
  %43 = load i32, i32* @FC_PARSE_FAILURE, align 4
  store i32 %43, i32* %3, align 4
  br label %46

44:                                               ; preds = %35
  %45 = load i32, i32* @FC_PARSE_OK, align 4
  store i32 %45, i32* %3, align 4
  br label %46

46:                                               ; preds = %44, %42, %33, %17, %9
  %47 = load i32, i32* %3, align 4
  ret i32 %47
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
