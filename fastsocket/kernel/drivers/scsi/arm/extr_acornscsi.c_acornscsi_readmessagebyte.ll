; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/arm/extr_acornscsi.c_acornscsi_readmessagebyte.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/arm/extr_acornscsi.c_acornscsi_readmessagebyte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CMND_XFERINFO = common dso_local global i32 0, align 4
@CMND_SBT = common dso_local global i32 0, align 4
@ASR_DBR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"for message byte\00", align 1
@SBIC_DATA = common dso_local global i32 0, align 4
@ASR_INT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"for interrupt after message byte\00", align 1
@SBIC_SSR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8 (i32*)* @acornscsi_readmessagebyte to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i8 @acornscsi_readmessagebyte(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i8, align 1
  store i32* %0, i32** %2, align 8
  %4 = load i32*, i32** %2, align 8
  %5 = load i32, i32* @CMND_XFERINFO, align 4
  %6 = load i32, i32* @CMND_SBT, align 4
  %7 = or i32 %5, %6
  %8 = call i32 @acornscsi_sbic_issuecmd(i32* %4, i32 %7)
  %9 = load i32*, i32** %2, align 8
  %10 = load i32, i32* @ASR_DBR, align 4
  %11 = load i32, i32* @ASR_DBR, align 4
  %12 = call i32 @acornscsi_sbic_wait(i32* %9, i32 %10, i32 %11, i32 1000, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %13 = load i32*, i32** %2, align 8
  %14 = load i32, i32* @SBIC_DATA, align 4
  %15 = call zeroext i8 @sbic_arm_read(i32* %13, i32 %14)
  store i8 %15, i8* %3, align 1
  %16 = load i32*, i32** %2, align 8
  %17 = load i32, i32* @ASR_INT, align 4
  %18 = load i32, i32* @ASR_INT, align 4
  %19 = call i32 @acornscsi_sbic_wait(i32* %16, i32 %17, i32 %18, i32 1000, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %20 = load i32*, i32** %2, align 8
  %21 = load i32, i32* @SBIC_SSR, align 4
  %22 = call zeroext i8 @sbic_arm_read(i32* %20, i32 %21)
  %23 = load i8, i8* %3, align 1
  ret i8 %23
}

declare dso_local i32 @acornscsi_sbic_issuecmd(i32*, i32) #1

declare dso_local i32 @acornscsi_sbic_wait(i32*, i32, i32, i32, i8*) #1

declare dso_local zeroext i8 @sbic_arm_read(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
