; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_fcbuild.c_fc_adisc_rsp_parse.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_fcbuild.c_fc_adisc_rsp_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fc_adisc_s = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@FC_PARSE_FAILURE = common dso_local global i32 0, align 4
@FC_ELS_ACC = common dso_local global i64 0, align 8
@FC_PARSE_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fc_adisc_rsp_parse(%struct.fc_adisc_s* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.fc_adisc_s*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.fc_adisc_s* %0, %struct.fc_adisc_s** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %10 = load i32, i32* %7, align 4
  %11 = sext i32 %10 to i64
  %12 = icmp ult i64 %11, 16
  br i1 %12, label %13, label %15

13:                                               ; preds = %4
  %14 = load i32, i32* @FC_PARSE_FAILURE, align 4
  store i32 %14, i32* %5, align 4
  br label %35

15:                                               ; preds = %4
  %16 = load %struct.fc_adisc_s*, %struct.fc_adisc_s** %6, align 8
  %17 = getelementptr inbounds %struct.fc_adisc_s, %struct.fc_adisc_s* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @FC_ELS_ACC, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %15
  %23 = load i32, i32* @FC_PARSE_FAILURE, align 4
  store i32 %23, i32* %5, align 4
  br label %35

24:                                               ; preds = %15
  %25 = load %struct.fc_adisc_s*, %struct.fc_adisc_s** %6, align 8
  %26 = getelementptr inbounds %struct.fc_adisc_s, %struct.fc_adisc_s* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* %8, align 4
  %29 = call i32 @wwn_is_equal(i32 %27, i32 %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %33, label %31

31:                                               ; preds = %24
  %32 = load i32, i32* @FC_PARSE_FAILURE, align 4
  store i32 %32, i32* %5, align 4
  br label %35

33:                                               ; preds = %24
  %34 = load i32, i32* @FC_PARSE_OK, align 4
  store i32 %34, i32* %5, align 4
  br label %35

35:                                               ; preds = %33, %31, %22, %13
  %36 = load i32, i32* %5, align 4
  ret i32 %36
}

declare dso_local i32 @wwn_is_equal(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
