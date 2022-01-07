; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_fcbuild.c_fc_prli_parse.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_fcbuild.c_fc_prli_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fc_prli_s = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32 }

@FC_TYPE_FCP = common dso_local global i64 0, align 8
@FC_PARSE_FAILURE = common dso_local global i32 0, align 4
@FC_PARSE_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fc_prli_parse(%struct.fc_prli_s* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fc_prli_s*, align 8
  store %struct.fc_prli_s* %0, %struct.fc_prli_s** %3, align 8
  %4 = load %struct.fc_prli_s*, %struct.fc_prli_s** %3, align 8
  %5 = getelementptr inbounds %struct.fc_prli_s, %struct.fc_prli_s* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @FC_TYPE_FCP, align 8
  %9 = icmp ne i64 %7, %8
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = load i32, i32* @FC_PARSE_FAILURE, align 4
  store i32 %11, i32* %2, align 4
  br label %31

12:                                               ; preds = %1
  %13 = load %struct.fc_prli_s*, %struct.fc_prli_s** %3, align 8
  %14 = getelementptr inbounds %struct.fc_prli_s, %struct.fc_prli_s* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %12
  %19 = load i32, i32* @FC_PARSE_FAILURE, align 4
  store i32 %19, i32* %2, align 4
  br label %31

20:                                               ; preds = %12
  %21 = load %struct.fc_prli_s*, %struct.fc_prli_s** %3, align 8
  %22 = getelementptr inbounds %struct.fc_prli_s, %struct.fc_prli_s* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %29, label %27

27:                                               ; preds = %20
  %28 = load i32, i32* @FC_PARSE_FAILURE, align 4
  store i32 %28, i32* %2, align 4
  br label %31

29:                                               ; preds = %20
  %30 = load i32, i32* @FC_PARSE_OK, align 4
  store i32 %30, i32* %2, align 4
  br label %31

31:                                               ; preds = %29, %27, %18, %10
  %32 = load i32, i32* %2, align 4
  ret i32 %32
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
