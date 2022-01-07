; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_tmscsim.c_dc390_Status_0.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_tmscsim.c_dc390_Status_0.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dc390_acb = type { i32 }
%struct.dc390_srb = type { i32, i8*, i8* }

@ScsiFifo = common dso_local global i32 0, align 4
@SCSI_NOP0 = common dso_local global i32 0, align 4
@SRB_COMPLETED = common dso_local global i32 0, align 4
@ScsiCmd = common dso_local global i32 0, align 4
@MSG_ACCEPTED_CMD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dc390_acb*, %struct.dc390_srb*, i32*)* @dc390_Status_0 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dc390_Status_0(%struct.dc390_acb* %0, %struct.dc390_srb* %1, i32* %2) #0 {
  %4 = alloca %struct.dc390_acb*, align 8
  %5 = alloca %struct.dc390_srb*, align 8
  %6 = alloca i32*, align 8
  store %struct.dc390_acb* %0, %struct.dc390_acb** %4, align 8
  store %struct.dc390_srb* %1, %struct.dc390_srb** %5, align 8
  store i32* %2, i32** %6, align 8
  %7 = load i32, i32* @ScsiFifo, align 4
  %8 = call i8* @DC390_read8(i32 %7)
  %9 = load %struct.dc390_srb*, %struct.dc390_srb** %5, align 8
  %10 = getelementptr inbounds %struct.dc390_srb, %struct.dc390_srb* %9, i32 0, i32 2
  store i8* %8, i8** %10, align 8
  %11 = load i32, i32* @ScsiFifo, align 4
  %12 = call i8* @DC390_read8(i32 %11)
  %13 = load %struct.dc390_srb*, %struct.dc390_srb** %5, align 8
  %14 = getelementptr inbounds %struct.dc390_srb, %struct.dc390_srb* %13, i32 0, i32 1
  store i8* %12, i8** %14, align 8
  %15 = load i32, i32* @SCSI_NOP0, align 4
  %16 = load i32*, i32** %6, align 8
  store i32 %15, i32* %16, align 4
  %17 = load i32, i32* @SRB_COMPLETED, align 4
  %18 = load %struct.dc390_srb*, %struct.dc390_srb** %5, align 8
  %19 = getelementptr inbounds %struct.dc390_srb, %struct.dc390_srb* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 8
  %20 = load i32, i32* @ScsiCmd, align 4
  %21 = load i32, i32* @MSG_ACCEPTED_CMD, align 4
  %22 = call i32 @DC390_write8(i32 %20, i32 %21)
  ret void
}

declare dso_local i8* @DC390_read8(i32) #1

declare dso_local i32 @DC390_write8(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
