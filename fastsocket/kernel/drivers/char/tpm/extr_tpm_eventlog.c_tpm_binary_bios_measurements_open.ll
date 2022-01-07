; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/tpm/extr_tpm_eventlog.c_tpm_binary_bios_measurements_open.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/tpm/extr_tpm_eventlog.c_tpm_binary_bios_measurements_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.file = type { %struct.seq_file* }
%struct.seq_file = type { %struct.tpm_bios_log* }
%struct.tpm_bios_log = type { %struct.tpm_bios_log* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@tpm_binary_b_measurments_seqops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @tpm_binary_bios_measurements_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tpm_binary_bios_measurements_open(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.tpm_bios_log*, align 8
  %8 = alloca %struct.seq_file*, align 8
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.file* %1, %struct.file** %5, align 8
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.tpm_bios_log* @kzalloc(i32 8, i32 %9)
  store %struct.tpm_bios_log* %10, %struct.tpm_bios_log** %7, align 8
  %11 = load %struct.tpm_bios_log*, %struct.tpm_bios_log** %7, align 8
  %12 = icmp ne %struct.tpm_bios_log* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %44

16:                                               ; preds = %2
  %17 = load %struct.tpm_bios_log*, %struct.tpm_bios_log** %7, align 8
  %18 = call i32 @read_log(%struct.tpm_bios_log* %17)
  store i32 %18, i32* %6, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %16
  br label %37

21:                                               ; preds = %16
  %22 = load %struct.file*, %struct.file** %5, align 8
  %23 = call i32 @seq_open(%struct.file* %22, i32* @tpm_binary_b_measurments_seqops)
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* %6, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %33, label %26

26:                                               ; preds = %21
  %27 = load %struct.file*, %struct.file** %5, align 8
  %28 = getelementptr inbounds %struct.file, %struct.file* %27, i32 0, i32 0
  %29 = load %struct.seq_file*, %struct.seq_file** %28, align 8
  store %struct.seq_file* %29, %struct.seq_file** %8, align 8
  %30 = load %struct.tpm_bios_log*, %struct.tpm_bios_log** %7, align 8
  %31 = load %struct.seq_file*, %struct.seq_file** %8, align 8
  %32 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %31, i32 0, i32 0
  store %struct.tpm_bios_log* %30, %struct.tpm_bios_log** %32, align 8
  br label %34

33:                                               ; preds = %21
  br label %37

34:                                               ; preds = %26
  br label %35

35:                                               ; preds = %37, %34
  %36 = load i32, i32* %6, align 4
  store i32 %36, i32* %3, align 4
  br label %44

37:                                               ; preds = %33, %20
  %38 = load %struct.tpm_bios_log*, %struct.tpm_bios_log** %7, align 8
  %39 = getelementptr inbounds %struct.tpm_bios_log, %struct.tpm_bios_log* %38, i32 0, i32 0
  %40 = load %struct.tpm_bios_log*, %struct.tpm_bios_log** %39, align 8
  %41 = call i32 @kfree(%struct.tpm_bios_log* %40)
  %42 = load %struct.tpm_bios_log*, %struct.tpm_bios_log** %7, align 8
  %43 = call i32 @kfree(%struct.tpm_bios_log* %42)
  br label %35

44:                                               ; preds = %35, %13
  %45 = load i32, i32* %3, align 4
  ret i32 %45
}

declare dso_local %struct.tpm_bios_log* @kzalloc(i32, i32) #1

declare dso_local i32 @read_log(%struct.tpm_bios_log*) #1

declare dso_local i32 @seq_open(%struct.file*, i32*) #1

declare dso_local i32 @kfree(%struct.tpm_bios_log*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
