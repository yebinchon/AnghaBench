; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/tpm/extr_tpm_eventlog.c_tpm_bios_measurements_start.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/tpm/extr_tpm_eventlog.c_tpm_bios_measurements_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { %struct.tpm_bios_log* }
%struct.tpm_bios_log = type { i8*, i8* }
%struct.tcpa_event = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.seq_file*, i64*)* @tpm_bios_measurements_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @tpm_bios_measurements_start(%struct.seq_file* %0, i64* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.seq_file*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.tpm_bios_log*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.tcpa_event*, align 8
  store %struct.seq_file* %0, %struct.seq_file** %4, align 8
  store i64* %1, i64** %5, align 8
  %11 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %12 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %11, i32 0, i32 0
  %13 = load %struct.tpm_bios_log*, %struct.tpm_bios_log** %12, align 8
  store %struct.tpm_bios_log* %13, %struct.tpm_bios_log** %7, align 8
  %14 = load %struct.tpm_bios_log*, %struct.tpm_bios_log** %7, align 8
  %15 = getelementptr inbounds %struct.tpm_bios_log, %struct.tpm_bios_log* %14, i32 0, i32 1
  %16 = load i8*, i8** %15, align 8
  store i8* %16, i8** %8, align 8
  %17 = load %struct.tpm_bios_log*, %struct.tpm_bios_log** %7, align 8
  %18 = getelementptr inbounds %struct.tpm_bios_log, %struct.tpm_bios_log* %17, i32 0, i32 0
  %19 = load i8*, i8** %18, align 8
  store i8* %19, i8** %9, align 8
  store i64 0, i64* %6, align 8
  br label %20

20:                                               ; preds = %51, %2
  %21 = load i64, i64* %6, align 8
  %22 = load i64*, i64** %5, align 8
  %23 = load i64, i64* %22, align 8
  %24 = icmp slt i64 %21, %23
  br i1 %24, label %25, label %54

25:                                               ; preds = %20
  %26 = load i8*, i8** %8, align 8
  %27 = bitcast i8* %26 to %struct.tcpa_event*
  store %struct.tcpa_event* %27, %struct.tcpa_event** %10, align 8
  %28 = load i8*, i8** %8, align 8
  %29 = getelementptr i8, i8* %28, i64 16
  %30 = load i8*, i8** %9, align 8
  %31 = icmp ult i8* %29, %30
  br i1 %31, label %32, label %50

32:                                               ; preds = %25
  %33 = load %struct.tcpa_event*, %struct.tcpa_event** %10, align 8
  %34 = getelementptr inbounds %struct.tcpa_event, %struct.tcpa_event* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %32
  %38 = load %struct.tcpa_event*, %struct.tcpa_event** %10, align 8
  %39 = getelementptr inbounds %struct.tcpa_event, %struct.tcpa_event* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %37
  store i8* null, i8** %3, align 8
  br label %84

43:                                               ; preds = %37, %32
  %44 = load %struct.tcpa_event*, %struct.tcpa_event** %10, align 8
  %45 = getelementptr inbounds %struct.tcpa_event, %struct.tcpa_event* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = add i64 16, %46
  %48 = load i8*, i8** %8, align 8
  %49 = getelementptr i8, i8* %48, i64 %47
  store i8* %49, i8** %8, align 8
  br label %50

50:                                               ; preds = %43, %25
  br label %51

51:                                               ; preds = %50
  %52 = load i64, i64* %6, align 8
  %53 = add nsw i64 %52, 1
  store i64 %53, i64* %6, align 8
  br label %20

54:                                               ; preds = %20
  %55 = load i8*, i8** %8, align 8
  %56 = getelementptr i8, i8* %55, i64 16
  %57 = load i8*, i8** %9, align 8
  %58 = icmp uge i8* %56, %57
  br i1 %58, label %59, label %60

59:                                               ; preds = %54
  store i8* null, i8** %3, align 8
  br label %84

60:                                               ; preds = %54
  %61 = load i8*, i8** %8, align 8
  %62 = bitcast i8* %61 to %struct.tcpa_event*
  store %struct.tcpa_event* %62, %struct.tcpa_event** %10, align 8
  %63 = load %struct.tcpa_event*, %struct.tcpa_event** %10, align 8
  %64 = getelementptr inbounds %struct.tcpa_event, %struct.tcpa_event* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = icmp eq i64 %65, 0
  br i1 %66, label %67, label %72

67:                                               ; preds = %60
  %68 = load %struct.tcpa_event*, %struct.tcpa_event** %10, align 8
  %69 = getelementptr inbounds %struct.tcpa_event, %struct.tcpa_event* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = icmp eq i64 %70, 0
  br i1 %71, label %81, label %72

72:                                               ; preds = %67, %60
  %73 = load i8*, i8** %8, align 8
  %74 = getelementptr i8, i8* %73, i64 16
  %75 = load %struct.tcpa_event*, %struct.tcpa_event** %10, align 8
  %76 = getelementptr inbounds %struct.tcpa_event, %struct.tcpa_event* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = getelementptr i8, i8* %74, i64 %77
  %79 = load i8*, i8** %9, align 8
  %80 = icmp uge i8* %78, %79
  br i1 %80, label %81, label %82

81:                                               ; preds = %72, %67
  store i8* null, i8** %3, align 8
  br label %84

82:                                               ; preds = %72
  %83 = load i8*, i8** %8, align 8
  store i8* %83, i8** %3, align 8
  br label %84

84:                                               ; preds = %82, %81, %59, %42
  %85 = load i8*, i8** %3, align 8
  ret i8* %85
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
