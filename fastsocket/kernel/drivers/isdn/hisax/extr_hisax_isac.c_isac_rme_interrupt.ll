; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_hisax_isac.c_isac_rme_interrupt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_hisax_isac.c_isac_rme_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isac = type { i8 (%struct.isac*, i32)*, i32, i32, i32 (%struct.isac*, i32, i32)* }
%struct.sk_buff = type { i32 }

@ISAC_RSTA = common dso_local global i32 0, align 4
@ISAC_RSTA_RDO = common dso_local global i8 0, align 1
@ISAC_RSTA_CRC = common dso_local global i8 0, align 1
@ISAC_RSTA_RAB = common dso_local global i8 0, align 1
@DBG_WARN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"RSTA %#x, dropped\00", align 1
@ISAC_CMDR = common dso_local global i32 0, align 4
@ISAC_CMDR_RMC = common dso_local global i32 0, align 4
@ISAC_RBCL = common dso_local global i32 0, align 4
@DBG_IRQ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"RBCL %#x\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"count %d < 1\00", align 1
@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [21 x i8] c"no memory, dropping\0A\00", align 1
@DBG_RPACKET = common dso_local global i32 0, align 4
@PH_DATA = common dso_local global i32 0, align 4
@INDICATION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.isac*)* @isac_rme_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @isac_rme_interrupt(%struct.isac* %0) #0 {
  %2 = alloca %struct.isac*, align 8
  %3 = alloca i8, align 1
  %4 = alloca i32, align 4
  %5 = alloca %struct.sk_buff*, align 8
  store %struct.isac* %0, %struct.isac** %2, align 8
  %6 = load %struct.isac*, %struct.isac** %2, align 8
  %7 = getelementptr inbounds %struct.isac, %struct.isac* %6, i32 0, i32 0
  %8 = load i8 (%struct.isac*, i32)*, i8 (%struct.isac*, i32)** %7, align 8
  %9 = load %struct.isac*, %struct.isac** %2, align 8
  %10 = load i32, i32* @ISAC_RSTA, align 4
  %11 = call zeroext i8 %8(%struct.isac* %9, i32 %10)
  store i8 %11, i8* %3, align 1
  %12 = load i8, i8* %3, align 1
  %13 = zext i8 %12 to i32
  %14 = load i8, i8* @ISAC_RSTA_RDO, align 1
  %15 = zext i8 %14 to i32
  %16 = load i8, i8* @ISAC_RSTA_CRC, align 1
  %17 = zext i8 %16 to i32
  %18 = or i32 %15, %17
  %19 = load i8, i8* @ISAC_RSTA_RAB, align 1
  %20 = zext i8 %19 to i32
  %21 = or i32 %18, %20
  %22 = and i32 %13, %21
  %23 = load i8, i8* @ISAC_RSTA_CRC, align 1
  %24 = zext i8 %23 to i32
  %25 = icmp ne i32 %22, %24
  br i1 %25, label %26, label %38

26:                                               ; preds = %1
  %27 = load i32, i32* @DBG_WARN, align 4
  %28 = load i8, i8* %3, align 1
  %29 = zext i8 %28 to i32
  %30 = call i32 (i32, i8*, ...) @DBG(i32 %27, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %29)
  %31 = load %struct.isac*, %struct.isac** %2, align 8
  %32 = getelementptr inbounds %struct.isac, %struct.isac* %31, i32 0, i32 3
  %33 = load i32 (%struct.isac*, i32, i32)*, i32 (%struct.isac*, i32, i32)** %32, align 8
  %34 = load %struct.isac*, %struct.isac** %2, align 8
  %35 = load i32, i32* @ISAC_CMDR, align 4
  %36 = load i32, i32* @ISAC_CMDR_RMC, align 4
  %37 = call i32 %33(%struct.isac* %34, i32 %35, i32 %36)
  br label %93

38:                                               ; preds = %1
  %39 = load %struct.isac*, %struct.isac** %2, align 8
  %40 = getelementptr inbounds %struct.isac, %struct.isac* %39, i32 0, i32 0
  %41 = load i8 (%struct.isac*, i32)*, i8 (%struct.isac*, i32)** %40, align 8
  %42 = load %struct.isac*, %struct.isac** %2, align 8
  %43 = load i32, i32* @ISAC_RBCL, align 4
  %44 = call zeroext i8 %41(%struct.isac* %42, i32 %43)
  %45 = zext i8 %44 to i32
  %46 = and i32 %45, 31
  store i32 %46, i32* %4, align 4
  %47 = load i32, i32* @DBG_IRQ, align 4
  %48 = load i32, i32* %4, align 4
  %49 = call i32 (i32, i8*, ...) @DBG(i32 %47, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 %48)
  %50 = load i32, i32* %4, align 4
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %38
  store i32 32, i32* %4, align 4
  br label %53

53:                                               ; preds = %52, %38
  %54 = load %struct.isac*, %struct.isac** %2, align 8
  %55 = load i32, i32* %4, align 4
  %56 = call i32 @isac_empty_fifo(%struct.isac* %54, i32 %55)
  %57 = load %struct.isac*, %struct.isac** %2, align 8
  %58 = getelementptr inbounds %struct.isac, %struct.isac* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  store i32 %59, i32* %4, align 4
  %60 = load i32, i32* %4, align 4
  %61 = icmp slt i32 %60, 1
  br i1 %61, label %62, label %66

62:                                               ; preds = %53
  %63 = load i32, i32* @DBG_WARN, align 4
  %64 = load i32, i32* %4, align 4
  %65 = call i32 (i32, i8*, ...) @DBG(i32 %63, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 %64)
  br label %93

66:                                               ; preds = %53
  %67 = load i32, i32* %4, align 4
  %68 = load i32, i32* @GFP_ATOMIC, align 4
  %69 = call %struct.sk_buff* @alloc_skb(i32 %67, i32 %68)
  store %struct.sk_buff* %69, %struct.sk_buff** %5, align 8
  %70 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %71 = icmp ne %struct.sk_buff* %70, null
  br i1 %71, label %75, label %72

72:                                               ; preds = %66
  %73 = load i32, i32* @DBG_WARN, align 4
  %74 = call i32 (i32, i8*, ...) @DBG(i32 %73, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  br label %93

75:                                               ; preds = %66
  %76 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %77 = load i32, i32* %4, align 4
  %78 = call i32 @skb_put(%struct.sk_buff* %76, i32 %77)
  %79 = load %struct.isac*, %struct.isac** %2, align 8
  %80 = getelementptr inbounds %struct.isac, %struct.isac* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* %4, align 4
  %83 = call i32 @memcpy(i32 %78, i32 %81, i32 %82)
  %84 = load i32, i32* @DBG_RPACKET, align 4
  %85 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %86 = call i32 @DBG_SKB(i32 %84, %struct.sk_buff* %85)
  %87 = load %struct.isac*, %struct.isac** %2, align 8
  %88 = load i32, i32* @PH_DATA, align 4
  %89 = load i32, i32* @INDICATION, align 4
  %90 = or i32 %88, %89
  %91 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %92 = call i32 @D_L1L2(%struct.isac* %87, i32 %90, %struct.sk_buff* %91)
  br label %93

93:                                               ; preds = %75, %72, %62, %26
  %94 = load %struct.isac*, %struct.isac** %2, align 8
  %95 = getelementptr inbounds %struct.isac, %struct.isac* %94, i32 0, i32 1
  store i32 0, i32* %95, align 8
  ret void
}

declare dso_local i32 @DBG(i32, i8*, ...) #1

declare dso_local i32 @isac_empty_fifo(%struct.isac*, i32) #1

declare dso_local %struct.sk_buff* @alloc_skb(i32, i32) #1

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
