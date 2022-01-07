; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla4xxx/extr_ql4_os.c_qla4xxx_should_update_isid.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla4xxx/extr_ql4_os.c_qla4xxx_should_update_isid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_qla_host = type { i32 }
%struct.ql4_tuple_ddb = type { i64, i32*, i32, i32 }

@QLA_ERROR = common dso_local global i32 0, align 4
@QLA_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_qla_host*, %struct.ql4_tuple_ddb*, %struct.ql4_tuple_ddb*)* @qla4xxx_should_update_isid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qla4xxx_should_update_isid(%struct.scsi_qla_host* %0, %struct.ql4_tuple_ddb* %1, %struct.ql4_tuple_ddb* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.scsi_qla_host*, align 8
  %6 = alloca %struct.ql4_tuple_ddb*, align 8
  %7 = alloca %struct.ql4_tuple_ddb*, align 8
  store %struct.scsi_qla_host* %0, %struct.scsi_qla_host** %5, align 8
  store %struct.ql4_tuple_ddb* %1, %struct.ql4_tuple_ddb** %6, align 8
  store %struct.ql4_tuple_ddb* %2, %struct.ql4_tuple_ddb** %7, align 8
  %8 = load %struct.ql4_tuple_ddb*, %struct.ql4_tuple_ddb** %6, align 8
  %9 = getelementptr inbounds %struct.ql4_tuple_ddb, %struct.ql4_tuple_ddb* %8, i32 0, i32 3
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.ql4_tuple_ddb*, %struct.ql4_tuple_ddb** %7, align 8
  %12 = getelementptr inbounds %struct.ql4_tuple_ddb, %struct.ql4_tuple_ddb* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 4
  %14 = call i64 @strcmp(i32 %10, i32 %13)
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %27

16:                                               ; preds = %3
  %17 = load %struct.ql4_tuple_ddb*, %struct.ql4_tuple_ddb** %6, align 8
  %18 = getelementptr inbounds %struct.ql4_tuple_ddb, %struct.ql4_tuple_ddb* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.ql4_tuple_ddb*, %struct.ql4_tuple_ddb** %7, align 8
  %21 = getelementptr inbounds %struct.ql4_tuple_ddb, %struct.ql4_tuple_ddb* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp eq i64 %19, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %16
  %25 = load i32, i32* @QLA_ERROR, align 4
  store i32 %25, i32* %4, align 4
  br label %53

26:                                               ; preds = %16
  br label %27

27:                                               ; preds = %26, %3
  %28 = load %struct.ql4_tuple_ddb*, %struct.ql4_tuple_ddb** %6, align 8
  %29 = getelementptr inbounds %struct.ql4_tuple_ddb, %struct.ql4_tuple_ddb* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.ql4_tuple_ddb*, %struct.ql4_tuple_ddb** %7, align 8
  %32 = getelementptr inbounds %struct.ql4_tuple_ddb, %struct.ql4_tuple_ddb* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = call i64 @strcmp(i32 %30, i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %27
  %37 = load i32, i32* @QLA_ERROR, align 4
  store i32 %37, i32* %4, align 4
  br label %53

38:                                               ; preds = %27
  %39 = load %struct.ql4_tuple_ddb*, %struct.ql4_tuple_ddb** %6, align 8
  %40 = getelementptr inbounds %struct.ql4_tuple_ddb, %struct.ql4_tuple_ddb* %39, i32 0, i32 1
  %41 = load i32*, i32** %40, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 0
  %43 = load %struct.ql4_tuple_ddb*, %struct.ql4_tuple_ddb** %7, align 8
  %44 = getelementptr inbounds %struct.ql4_tuple_ddb, %struct.ql4_tuple_ddb* %43, i32 0, i32 1
  %45 = load i32*, i32** %44, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 0
  %47 = call i64 @memcmp(i32* %42, i32* %46, i32 8)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %38
  %50 = load i32, i32* @QLA_ERROR, align 4
  store i32 %50, i32* %4, align 4
  br label %53

51:                                               ; preds = %38
  %52 = load i32, i32* @QLA_SUCCESS, align 4
  store i32 %52, i32* %4, align 4
  br label %53

53:                                               ; preds = %51, %49, %36, %24
  %54 = load i32, i32* %4, align 4
  ret i32 %54
}

declare dso_local i64 @strcmp(i32, i32) #1

declare dso_local i64 @memcmp(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
