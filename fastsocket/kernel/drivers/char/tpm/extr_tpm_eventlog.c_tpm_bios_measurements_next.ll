; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/tpm/extr_tpm_eventlog.c_tpm_bios_measurements_next.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/tpm/extr_tpm_eventlog.c_tpm_bios_measurements_next.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { %struct.tpm_bios_log* }
%struct.tpm_bios_log = type { i8* }
%struct.tcpa_event = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.seq_file*, i8*, i32*)* @tpm_bios_measurements_next to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @tpm_bios_measurements_next(%struct.seq_file* %0, i8* %1, i32* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.seq_file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.tcpa_event*, align 8
  %9 = alloca %struct.tpm_bios_log*, align 8
  %10 = alloca i8*, align 8
  store %struct.seq_file* %0, %struct.seq_file** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = bitcast i8* %11 to %struct.tcpa_event*
  store %struct.tcpa_event* %12, %struct.tcpa_event** %8, align 8
  %13 = load %struct.seq_file*, %struct.seq_file** %5, align 8
  %14 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %13, i32 0, i32 0
  %15 = load %struct.tpm_bios_log*, %struct.tpm_bios_log** %14, align 8
  store %struct.tpm_bios_log* %15, %struct.tpm_bios_log** %9, align 8
  %16 = load %struct.tpm_bios_log*, %struct.tpm_bios_log** %9, align 8
  %17 = getelementptr inbounds %struct.tpm_bios_log, %struct.tpm_bios_log* %16, i32 0, i32 0
  %18 = load i8*, i8** %17, align 8
  store i8* %18, i8** %10, align 8
  %19 = load %struct.tcpa_event*, %struct.tcpa_event** %8, align 8
  %20 = getelementptr inbounds %struct.tcpa_event, %struct.tcpa_event* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = add i64 16, %21
  %23 = load i8*, i8** %6, align 8
  %24 = getelementptr i8, i8* %23, i64 %22
  store i8* %24, i8** %6, align 8
  %25 = load i8*, i8** %6, align 8
  %26 = getelementptr i8, i8* %25, i64 16
  %27 = load i8*, i8** %10, align 8
  %28 = icmp uge i8* %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %3
  store i8* null, i8** %4, align 8
  br label %68

30:                                               ; preds = %3
  %31 = load i8*, i8** %6, align 8
  %32 = bitcast i8* %31 to %struct.tcpa_event*
  store %struct.tcpa_event* %32, %struct.tcpa_event** %8, align 8
  %33 = load %struct.tcpa_event*, %struct.tcpa_event** %8, align 8
  %34 = getelementptr inbounds %struct.tcpa_event, %struct.tcpa_event* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %30
  %38 = load %struct.tcpa_event*, %struct.tcpa_event** %8, align 8
  %39 = getelementptr inbounds %struct.tcpa_event, %struct.tcpa_event* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %37
  store i8* null, i8** %4, align 8
  br label %68

43:                                               ; preds = %37, %30
  %44 = load %struct.tcpa_event*, %struct.tcpa_event** %8, align 8
  %45 = getelementptr inbounds %struct.tcpa_event, %struct.tcpa_event* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %43
  %49 = load %struct.tcpa_event*, %struct.tcpa_event** %8, align 8
  %50 = getelementptr inbounds %struct.tcpa_event, %struct.tcpa_event* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = icmp eq i64 %51, 0
  br i1 %52, label %62, label %53

53:                                               ; preds = %48, %43
  %54 = load i8*, i8** %6, align 8
  %55 = getelementptr i8, i8* %54, i64 16
  %56 = load %struct.tcpa_event*, %struct.tcpa_event** %8, align 8
  %57 = getelementptr inbounds %struct.tcpa_event, %struct.tcpa_event* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = getelementptr i8, i8* %55, i64 %58
  %60 = load i8*, i8** %10, align 8
  %61 = icmp uge i8* %59, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %53, %48
  store i8* null, i8** %4, align 8
  br label %68

63:                                               ; preds = %53
  %64 = load i32*, i32** %7, align 8
  %65 = load i32, i32* %64, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %64, align 4
  %67 = load i8*, i8** %6, align 8
  store i8* %67, i8** %4, align 8
  br label %68

68:                                               ; preds = %63, %62, %42, %29
  %69 = load i8*, i8** %4, align 8
  ret i8* %69
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
