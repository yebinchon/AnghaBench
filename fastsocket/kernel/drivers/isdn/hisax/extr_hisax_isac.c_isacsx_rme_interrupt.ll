; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_hisax_isac.c_isacsx_rme_interrupt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_hisax_isac.c_isacsx_rme_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isac = type { i8 (%struct.isac*, i32)*, i32, i32, i32 (%struct.isac*, i32, i32)* }
%struct.sk_buff = type { i32 }

@ISACSX_RSTAD = common dso_local global i32 0, align 4
@ISACSX_RSTAD_VFR = common dso_local global i8 0, align 1
@ISACSX_RSTAD_RDO = common dso_local global i8 0, align 1
@ISACSX_RSTAD_CRC = common dso_local global i8 0, align 1
@ISACSX_RSTAD_RAB = common dso_local global i8 0, align 1
@DBG_WARN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"RSTAD %#x, dropped\00", align 1
@ISACSX_CMDRD = common dso_local global i32 0, align 4
@ISACSX_CMDRD_RMC = common dso_local global i32 0, align 4
@ISACSX_RBCLD = common dso_local global i32 0, align 4
@DBG_IRQ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"RBCLD %#x\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"count %d < 1\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"no memory, dropping\00", align 1
@DBG_RPACKET = common dso_local global i32 0, align 4
@PH_DATA = common dso_local global i32 0, align 4
@INDICATION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.isac*)* @isacsx_rme_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @isacsx_rme_interrupt(%struct.isac* %0) #0 {
  %2 = alloca %struct.isac*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca i8, align 1
  store %struct.isac* %0, %struct.isac** %2, align 8
  %6 = load %struct.isac*, %struct.isac** %2, align 8
  %7 = getelementptr inbounds %struct.isac, %struct.isac* %6, i32 0, i32 0
  %8 = load i8 (%struct.isac*, i32)*, i8 (%struct.isac*, i32)** %7, align 8
  %9 = load %struct.isac*, %struct.isac** %2, align 8
  %10 = load i32, i32* @ISACSX_RSTAD, align 4
  %11 = call zeroext i8 %8(%struct.isac* %9, i32 %10)
  store i8 %11, i8* %5, align 1
  %12 = load i8, i8* %5, align 1
  %13 = zext i8 %12 to i32
  %14 = load i8, i8* @ISACSX_RSTAD_VFR, align 1
  %15 = zext i8 %14 to i32
  %16 = load i8, i8* @ISACSX_RSTAD_RDO, align 1
  %17 = zext i8 %16 to i32
  %18 = or i32 %15, %17
  %19 = load i8, i8* @ISACSX_RSTAD_CRC, align 1
  %20 = zext i8 %19 to i32
  %21 = or i32 %18, %20
  %22 = load i8, i8* @ISACSX_RSTAD_RAB, align 1
  %23 = zext i8 %22 to i32
  %24 = or i32 %21, %23
  %25 = and i32 %13, %24
  %26 = load i8, i8* @ISACSX_RSTAD_VFR, align 1
  %27 = zext i8 %26 to i32
  %28 = load i8, i8* @ISACSX_RSTAD_CRC, align 1
  %29 = zext i8 %28 to i32
  %30 = or i32 %27, %29
  %31 = icmp ne i32 %25, %30
  br i1 %31, label %32, label %44

32:                                               ; preds = %1
  %33 = load i32, i32* @DBG_WARN, align 4
  %34 = load i8, i8* %5, align 1
  %35 = zext i8 %34 to i32
  %36 = call i32 (i32, i8*, ...) @DBG(i32 %33, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %35)
  %37 = load %struct.isac*, %struct.isac** %2, align 8
  %38 = getelementptr inbounds %struct.isac, %struct.isac* %37, i32 0, i32 3
  %39 = load i32 (%struct.isac*, i32, i32)*, i32 (%struct.isac*, i32, i32)** %38, align 8
  %40 = load %struct.isac*, %struct.isac** %2, align 8
  %41 = load i32, i32* @ISACSX_CMDRD, align 4
  %42 = load i32, i32* @ISACSX_CMDRD_RMC, align 4
  %43 = call i32 %39(%struct.isac* %40, i32 %41, i32 %42)
  br label %99

44:                                               ; preds = %1
  %45 = load %struct.isac*, %struct.isac** %2, align 8
  %46 = getelementptr inbounds %struct.isac, %struct.isac* %45, i32 0, i32 0
  %47 = load i8 (%struct.isac*, i32)*, i8 (%struct.isac*, i32)** %46, align 8
  %48 = load %struct.isac*, %struct.isac** %2, align 8
  %49 = load i32, i32* @ISACSX_RBCLD, align 4
  %50 = call zeroext i8 %47(%struct.isac* %48, i32 %49)
  %51 = zext i8 %50 to i32
  %52 = and i32 %51, 31
  store i32 %52, i32* %3, align 4
  %53 = load i32, i32* @DBG_IRQ, align 4
  %54 = load i32, i32* %3, align 4
  %55 = call i32 (i32, i8*, ...) @DBG(i32 %53, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %54)
  %56 = load i32, i32* %3, align 4
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %44
  store i32 32, i32* %3, align 4
  br label %59

59:                                               ; preds = %58, %44
  %60 = load %struct.isac*, %struct.isac** %2, align 8
  %61 = load i32, i32* %3, align 4
  %62 = call i32 @isac_empty_fifo(%struct.isac* %60, i32 %61)
  %63 = load %struct.isac*, %struct.isac** %2, align 8
  %64 = getelementptr inbounds %struct.isac, %struct.isac* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = sub nsw i32 %65, 1
  store i32 %66, i32* %3, align 4
  %67 = load i32, i32* %3, align 4
  %68 = icmp slt i32 %67, 1
  br i1 %68, label %69, label %73

69:                                               ; preds = %59
  %70 = load i32, i32* @DBG_WARN, align 4
  %71 = load i32, i32* %3, align 4
  %72 = call i32 (i32, i8*, ...) @DBG(i32 %70, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 %71)
  br label %99

73:                                               ; preds = %59
  %74 = load i32, i32* %3, align 4
  %75 = call %struct.sk_buff* @dev_alloc_skb(i32 %74)
  store %struct.sk_buff* %75, %struct.sk_buff** %4, align 8
  %76 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %77 = icmp ne %struct.sk_buff* %76, null
  br i1 %77, label %81, label %78

78:                                               ; preds = %73
  %79 = load i32, i32* @DBG_WARN, align 4
  %80 = call i32 (i32, i8*, ...) @DBG(i32 %79, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0))
  br label %99

81:                                               ; preds = %73
  %82 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %83 = load i32, i32* %3, align 4
  %84 = call i32 @skb_put(%struct.sk_buff* %82, i32 %83)
  %85 = load %struct.isac*, %struct.isac** %2, align 8
  %86 = getelementptr inbounds %struct.isac, %struct.isac* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* %3, align 4
  %89 = call i32 @memcpy(i32 %84, i32 %87, i32 %88)
  %90 = load i32, i32* @DBG_RPACKET, align 4
  %91 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %92 = call i32 @DBG_SKB(i32 %90, %struct.sk_buff* %91)
  %93 = load %struct.isac*, %struct.isac** %2, align 8
  %94 = load i32, i32* @PH_DATA, align 4
  %95 = load i32, i32* @INDICATION, align 4
  %96 = or i32 %94, %95
  %97 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %98 = call i32 @D_L1L2(%struct.isac* %93, i32 %96, %struct.sk_buff* %97)
  br label %99

99:                                               ; preds = %81, %78, %69, %32
  %100 = load %struct.isac*, %struct.isac** %2, align 8
  %101 = getelementptr inbounds %struct.isac, %struct.isac* %100, i32 0, i32 1
  store i32 0, i32* %101, align 8
  ret void
}

declare dso_local i32 @DBG(i32, i8*, ...) #1

declare dso_local i32 @isac_empty_fifo(%struct.isac*, i32) #1

declare dso_local %struct.sk_buff* @dev_alloc_skb(i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @DBG_SKB(i32, %struct.sk_buff*) #1

declare dso_local i32 @D_L1L2(%struct.isac*, i32, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
