; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_scsi_error.c_scsi_eh_completed_normally.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_scsi_error.c_scsi_eh_completed_normally.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_cmnd = type { i32, i32*, i32 }

@DID_RESET = common dso_local global i64 0, align 8
@DID_OK = common dso_local global i64 0, align 8
@FAILED = common dso_local global i32 0, align 4
@COMMAND_COMPLETE = common dso_local global i64 0, align 8
@SUCCESS = common dso_local global i32 0, align 4
@TEST_UNIT_READY = common dso_local global i32 0, align 4
@NEEDS_RETRY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_cmnd*)* @scsi_eh_completed_normally to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @scsi_eh_completed_normally(%struct.scsi_cmnd* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.scsi_cmnd*, align 8
  store %struct.scsi_cmnd* %0, %struct.scsi_cmnd** %3, align 8
  %4 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %5 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %4, i32 0, i32 2
  %6 = load i32, i32* %5, align 8
  %7 = call i64 @host_byte(i32 %6)
  %8 = load i64, i64* @DID_RESET, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %10, label %13

10:                                               ; preds = %1
  %11 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %12 = call i32 @scsi_check_sense(%struct.scsi_cmnd* %11)
  store i32 %12, i32* %2, align 4
  br label %69

13:                                               ; preds = %1
  %14 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %15 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 8
  %17 = call i64 @host_byte(i32 %16)
  %18 = load i64, i64* @DID_OK, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %13
  %21 = load i32, i32* @FAILED, align 4
  store i32 %21, i32* %2, align 4
  br label %69

22:                                               ; preds = %13
  %23 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %24 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = call i64 @msg_byte(i32 %25)
  %27 = load i64, i64* @COMMAND_COMPLETE, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %22
  %30 = load i32, i32* @FAILED, align 4
  store i32 %30, i32* %2, align 4
  br label %69

31:                                               ; preds = %22
  %32 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %33 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @status_byte(i32 %34)
  switch i32 %35, label %67 [
    i32 132, label %36
    i32 134, label %41
    i32 135, label %43
    i32 133, label %46
    i32 130, label %46
    i32 131, label %46
    i32 128, label %48
    i32 129, label %60
    i32 136, label %65
  ]

36:                                               ; preds = %31
  %37 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %38 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @scsi_handle_queue_ramp_up(i32 %39)
  br label %41

41:                                               ; preds = %31, %36
  %42 = load i32, i32* @SUCCESS, align 4
  store i32 %42, i32* %2, align 4
  br label %69

43:                                               ; preds = %31
  %44 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %45 = call i32 @scsi_check_sense(%struct.scsi_cmnd* %44)
  store i32 %45, i32* %2, align 4
  br label %69

46:                                               ; preds = %31, %31, %31
  %47 = load i32, i32* @SUCCESS, align 4
  store i32 %47, i32* %2, align 4
  br label %69

48:                                               ; preds = %31
  %49 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %50 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %49, i32 0, i32 1
  %51 = load i32*, i32** %50, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @TEST_UNIT_READY, align 4
  %55 = icmp eq i32 %53, %54
  br i1 %55, label %56, label %58

56:                                               ; preds = %48
  %57 = load i32, i32* @SUCCESS, align 4
  store i32 %57, i32* %2, align 4
  br label %69

58:                                               ; preds = %48
  %59 = load i32, i32* @FAILED, align 4
  store i32 %59, i32* %2, align 4
  br label %69

60:                                               ; preds = %31
  %61 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %62 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @scsi_handle_queue_full(i32 %63)
  br label %65

65:                                               ; preds = %31, %60
  %66 = load i32, i32* @NEEDS_RETRY, align 4
  store i32 %66, i32* %2, align 4
  br label %69

67:                                               ; preds = %31
  %68 = load i32, i32* @FAILED, align 4
  store i32 %68, i32* %2, align 4
  br label %69

69:                                               ; preds = %67, %65, %58, %56, %46, %43, %41, %29, %20, %10
  %70 = load i32, i32* %2, align 4
  ret i32 %70
}

declare dso_local i64 @host_byte(i32) #1

declare dso_local i32 @scsi_check_sense(%struct.scsi_cmnd*) #1

declare dso_local i64 @msg_byte(i32) #1

declare dso_local i32 @status_byte(i32) #1

declare dso_local i32 @scsi_handle_queue_ramp_up(i32) #1

declare dso_local i32 @scsi_handle_queue_full(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
