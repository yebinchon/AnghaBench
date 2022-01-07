; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla4xxx/extr_ql4_mbx.c_qla4xxx_is_intr_poll_mode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla4xxx/extr_ql4_mbx.c_qla4xxx_is_intr_poll_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_qla_host = type { i32 }

@AF_IRQ_ATTACHED = common dso_local global i32 0, align 4
@AF_83XX_MBOX_INTR_ON = common dso_local global i32 0, align 4
@AF_INTERRUPTS_ON = common dso_local global i32 0, align 4
@AF_ONLINE = common dso_local global i32 0, align 4
@AF_HA_REMOVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_qla_host*)* @qla4xxx_is_intr_poll_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qla4xxx_is_intr_poll_mode(%struct.scsi_qla_host* %0) #0 {
  %2 = alloca %struct.scsi_qla_host*, align 8
  %3 = alloca i32, align 4
  store %struct.scsi_qla_host* %0, %struct.scsi_qla_host** %2, align 8
  store i32 1, i32* %3, align 4
  %4 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %5 = call i64 @is_qla8032(%struct.scsi_qla_host* %4)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %21

7:                                                ; preds = %1
  %8 = load i32, i32* @AF_IRQ_ATTACHED, align 4
  %9 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %10 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %9, i32 0, i32 0
  %11 = call i64 @test_bit(i32 %8, i32* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %20

13:                                               ; preds = %7
  %14 = load i32, i32* @AF_83XX_MBOX_INTR_ON, align 4
  %15 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %16 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %15, i32 0, i32 0
  %17 = call i64 @test_bit(i32 %14, i32* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %13
  store i32 0, i32* %3, align 4
  br label %20

20:                                               ; preds = %19, %13, %7
  br label %47

21:                                               ; preds = %1
  %22 = load i32, i32* @AF_IRQ_ATTACHED, align 4
  %23 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %24 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %23, i32 0, i32 0
  %25 = call i64 @test_bit(i32 %22, i32* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %46

27:                                               ; preds = %21
  %28 = load i32, i32* @AF_INTERRUPTS_ON, align 4
  %29 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %30 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %29, i32 0, i32 0
  %31 = call i64 @test_bit(i32 %28, i32* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %46

33:                                               ; preds = %27
  %34 = load i32, i32* @AF_ONLINE, align 4
  %35 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %36 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %35, i32 0, i32 0
  %37 = call i64 @test_bit(i32 %34, i32* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %46

39:                                               ; preds = %33
  %40 = load i32, i32* @AF_HA_REMOVAL, align 4
  %41 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %42 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %41, i32 0, i32 0
  %43 = call i64 @test_bit(i32 %40, i32* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %39
  store i32 0, i32* %3, align 4
  br label %46

46:                                               ; preds = %45, %39, %33, %27, %21
  br label %47

47:                                               ; preds = %46, %20
  %48 = load i32, i32* %3, align 4
  ret i32 %48
}

declare dso_local i64 @is_qla8032(%struct.scsi_qla_host*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
