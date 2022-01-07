; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_sun3_NCR5380.c_do_abort.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_sun3_NCR5380.c_do_abort.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Scsi_Host = type { i32 }

@INITIATOR_COMMAND_REG = common dso_local global i32 0, align 4
@ICR_BASE = common dso_local global i32 0, align 4
@ICR_ASSERT_ATN = common dso_local global i32 0, align 4
@STATUS_REG = common dso_local global i32 0, align 4
@SR_REQ = common dso_local global i8 0, align 1
@TARGET_COMMAND_REG = common dso_local global i32 0, align 4
@PHASE_MASK = common dso_local global i8 0, align 1
@PHASE_MSGOUT = common dso_local global i8 0, align 1
@ICR_ASSERT_ACK = common dso_local global i32 0, align 4
@ABORT = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.Scsi_Host*)* @do_abort to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_abort(%struct.Scsi_Host* %0) #0 {
  %2 = alloca %struct.Scsi_Host*, align 8
  %3 = alloca i8, align 1
  %4 = alloca i8*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i32, align 4
  store %struct.Scsi_Host* %0, %struct.Scsi_Host** %2, align 8
  %7 = load i32, i32* @INITIATOR_COMMAND_REG, align 4
  %8 = load i32, i32* @ICR_BASE, align 4
  %9 = load i32, i32* @ICR_ASSERT_ATN, align 4
  %10 = or i32 %8, %9
  %11 = call i32 @NCR5380_write(i32 %7, i32 %10)
  br label %12

12:                                               ; preds = %21, %1
  %13 = load i32, i32* @STATUS_REG, align 4
  %14 = call zeroext i8 @NCR5380_read(i32 %13)
  store i8 %14, i8* %3, align 1
  %15 = zext i8 %14 to i32
  %16 = load i8, i8* @SR_REQ, align 1
  %17 = zext i8 %16 to i32
  %18 = and i32 %15, %17
  %19 = icmp ne i32 %18, 0
  %20 = xor i1 %19, true
  br i1 %20, label %21, label %22

21:                                               ; preds = %12
  br label %12

22:                                               ; preds = %12
  %23 = load i32, i32* @TARGET_COMMAND_REG, align 4
  %24 = load i8, i8* %3, align 1
  %25 = call i32 @PHASE_SR_TO_TCR(i8 zeroext %24)
  %26 = call i32 @NCR5380_write(i32 %23, i32 %25)
  %27 = load i8, i8* %3, align 1
  %28 = zext i8 %27 to i32
  %29 = load i8, i8* @PHASE_MASK, align 1
  %30 = zext i8 %29 to i32
  %31 = and i32 %28, %30
  %32 = load i8, i8* @PHASE_MSGOUT, align 1
  %33 = zext i8 %32 to i32
  %34 = icmp ne i32 %31, %33
  br i1 %34, label %35, label %58

35:                                               ; preds = %22
  %36 = load i32, i32* @INITIATOR_COMMAND_REG, align 4
  %37 = load i32, i32* @ICR_BASE, align 4
  %38 = load i32, i32* @ICR_ASSERT_ATN, align 4
  %39 = or i32 %37, %38
  %40 = load i32, i32* @ICR_ASSERT_ACK, align 4
  %41 = or i32 %39, %40
  %42 = call i32 @NCR5380_write(i32 %36, i32 %41)
  br label %43

43:                                               ; preds = %51, %35
  %44 = load i32, i32* @STATUS_REG, align 4
  %45 = call zeroext i8 @NCR5380_read(i32 %44)
  %46 = zext i8 %45 to i32
  %47 = load i8, i8* @SR_REQ, align 1
  %48 = zext i8 %47 to i32
  %49 = and i32 %46, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %43
  br label %43

52:                                               ; preds = %43
  %53 = load i32, i32* @INITIATOR_COMMAND_REG, align 4
  %54 = load i32, i32* @ICR_BASE, align 4
  %55 = load i32, i32* @ICR_ASSERT_ATN, align 4
  %56 = or i32 %54, %55
  %57 = call i32 @NCR5380_write(i32 %53, i32 %56)
  br label %58

58:                                               ; preds = %52, %22
  %59 = load i8, i8* @ABORT, align 1
  store i8 %59, i8* %3, align 1
  store i8* %3, i8** %4, align 8
  store i32 1, i32* %6, align 4
  %60 = load i8, i8* @PHASE_MSGOUT, align 1
  store i8 %60, i8* %5, align 1
  %61 = load %struct.Scsi_Host*, %struct.Scsi_Host** %2, align 8
  %62 = call i32 @NCR5380_transfer_pio(%struct.Scsi_Host* %61, i8* %5, i32* %6, i8** %4)
  %63 = load i32, i32* %6, align 4
  %64 = icmp ne i32 %63, 0
  %65 = zext i1 %64 to i64
  %66 = select i1 %64, i32 -1, i32 0
  ret i32 %66
}

declare dso_local i32 @NCR5380_write(i32, i32) #1

declare dso_local zeroext i8 @NCR5380_read(i32) #1

declare dso_local i32 @PHASE_SR_TO_TCR(i8 zeroext) #1

declare dso_local i32 @NCR5380_transfer_pio(%struct.Scsi_Host*, i8*, i32*, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
