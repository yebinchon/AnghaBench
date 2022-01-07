; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_a100u2w.c_inia100_abort_cmd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_a100u2w.c_inia100_abort_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.orc_host = type { i32, %struct.orc_scb* }
%struct.orc_scb = type { i64, i64, %struct.orc_extended_scb* }
%struct.orc_extended_scb = type { %struct.scsi_cmnd* }
%struct.scsi_cmnd = type { i32 }

@ORC_MAXQUEUE = common dso_local global i64 0, align 8
@SUCCESS = common dso_local global i32 0, align 4
@FAILED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.orc_host*, %struct.scsi_cmnd*)* @inia100_abort_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @inia100_abort_cmd(%struct.orc_host* %0, %struct.scsi_cmnd* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.orc_host*, align 8
  %5 = alloca %struct.scsi_cmnd*, align 8
  %6 = alloca %struct.orc_extended_scb*, align 8
  %7 = alloca %struct.orc_scb*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.orc_host* %0, %struct.orc_host** %4, align 8
  store %struct.scsi_cmnd* %1, %struct.scsi_cmnd** %5, align 8
  %10 = load %struct.orc_host*, %struct.orc_host** %4, align 8
  %11 = getelementptr inbounds %struct.orc_host, %struct.orc_host* %10, i32 0, i32 0
  %12 = load i64, i64* %9, align 8
  %13 = call i32 @spin_lock_irqsave(i32* %11, i64 %12)
  %14 = load %struct.orc_host*, %struct.orc_host** %4, align 8
  %15 = getelementptr inbounds %struct.orc_host, %struct.orc_host* %14, i32 0, i32 1
  %16 = load %struct.orc_scb*, %struct.orc_scb** %15, align 8
  store %struct.orc_scb* %16, %struct.orc_scb** %7, align 8
  store i64 0, i64* %8, align 8
  br label %17

17:                                               ; preds = %56, %2
  %18 = load i64, i64* %8, align 8
  %19 = load i64, i64* @ORC_MAXQUEUE, align 8
  %20 = icmp slt i64 %18, %19
  br i1 %20, label %21, label %61

21:                                               ; preds = %17
  %22 = load %struct.orc_scb*, %struct.orc_scb** %7, align 8
  %23 = getelementptr inbounds %struct.orc_scb, %struct.orc_scb* %22, i32 0, i32 2
  %24 = load %struct.orc_extended_scb*, %struct.orc_extended_scb** %23, align 8
  store %struct.orc_extended_scb* %24, %struct.orc_extended_scb** %6, align 8
  %25 = load %struct.orc_scb*, %struct.orc_scb** %7, align 8
  %26 = getelementptr inbounds %struct.orc_scb, %struct.orc_scb* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %55

29:                                               ; preds = %21
  %30 = load %struct.orc_extended_scb*, %struct.orc_extended_scb** %6, align 8
  %31 = getelementptr inbounds %struct.orc_extended_scb, %struct.orc_extended_scb* %30, i32 0, i32 0
  %32 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %31, align 8
  %33 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %34 = icmp eq %struct.scsi_cmnd* %32, %33
  br i1 %34, label %35, label %55

35:                                               ; preds = %29
  %36 = load %struct.orc_scb*, %struct.orc_scb** %7, align 8
  %37 = getelementptr inbounds %struct.orc_scb, %struct.orc_scb* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %35
  br label %62

41:                                               ; preds = %35
  %42 = load %struct.orc_host*, %struct.orc_host** %4, align 8
  %43 = load %struct.orc_scb*, %struct.orc_scb** %7, align 8
  %44 = call i64 @orchid_abort_scb(%struct.orc_host* %42, %struct.orc_scb* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %54

46:                                               ; preds = %41
  %47 = load %struct.orc_extended_scb*, %struct.orc_extended_scb** %6, align 8
  %48 = getelementptr inbounds %struct.orc_extended_scb, %struct.orc_extended_scb* %47, i32 0, i32 0
  store %struct.scsi_cmnd* null, %struct.scsi_cmnd** %48, align 8
  %49 = load %struct.orc_host*, %struct.orc_host** %4, align 8
  %50 = getelementptr inbounds %struct.orc_host, %struct.orc_host* %49, i32 0, i32 0
  %51 = load i64, i64* %9, align 8
  %52 = call i32 @spin_unlock_irqrestore(i32* %50, i64 %51)
  %53 = load i32, i32* @SUCCESS, align 4
  store i32 %53, i32* %3, align 4
  br label %68

54:                                               ; preds = %41
  br label %62

55:                                               ; preds = %29, %21
  br label %56

56:                                               ; preds = %55
  %57 = load i64, i64* %8, align 8
  %58 = add nsw i64 %57, 1
  store i64 %58, i64* %8, align 8
  %59 = load %struct.orc_scb*, %struct.orc_scb** %7, align 8
  %60 = getelementptr inbounds %struct.orc_scb, %struct.orc_scb* %59, i32 1
  store %struct.orc_scb* %60, %struct.orc_scb** %7, align 8
  br label %17

61:                                               ; preds = %17
  br label %62

62:                                               ; preds = %61, %54, %40
  %63 = load %struct.orc_host*, %struct.orc_host** %4, align 8
  %64 = getelementptr inbounds %struct.orc_host, %struct.orc_host* %63, i32 0, i32 0
  %65 = load i64, i64* %9, align 8
  %66 = call i32 @spin_unlock_irqrestore(i32* %64, i64 %65)
  %67 = load i32, i32* @FAILED, align 4
  store i32 %67, i32* %3, align 4
  br label %68

68:                                               ; preds = %62, %46
  %69 = load i32, i32* %3, align 4
  ret i32 %69
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @orchid_abort_scb(%struct.orc_host*, %struct.orc_scb*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
