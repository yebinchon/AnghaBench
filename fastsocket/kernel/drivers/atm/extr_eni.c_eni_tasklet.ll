; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/atm/extr_eni.c_eni_tasklet.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/atm/extr_eni.c_eni_tasklet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atm_dev = type { i32 }
%struct.eni_dev = type { i32, i32, i32 }

@.str = private unnamed_addr constant [22 x i8] c"eni_tasklet (dev %p)\0A\00", align 1
@MID_RX_DMA_COMPLETE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"INT: RX DMA complete, starting dequeue_rx\0A\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"dequeue_rx done, starting poll_rx\0A\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"poll_rx done\0A\00", align 1
@MID_SERVICE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [36 x i8] c"INT: service, starting get_service\0A\00", align 1
@.str.5 = private unnamed_addr constant [36 x i8] c"get_service done, starting poll_rx\0A\00", align 1
@MID_TX_DMA_COMPLETE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [22 x i8] c"INT: TX DMA COMPLETE\0A\00", align 1
@MID_TX_COMPLETE = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [18 x i8] c"INT: TX COMPLETE\0A\00", align 1
@tx_complete = common dso_local global i32 0, align 4
@MID_DMA_ERR_ACK = common dso_local global i32 0, align 4
@MID_TX_IDENT_MISM = common dso_local global i32 0, align 4
@MID_TX_DMA_OVFL = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [15 x i8] c"bug interrupt\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @eni_tasklet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @eni_tasklet(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.atm_dev*, align 8
  %4 = alloca %struct.eni_dev*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  %7 = load i64, i64* %2, align 8
  %8 = inttoptr i64 %7 to %struct.atm_dev*
  store %struct.atm_dev* %8, %struct.atm_dev** %3, align 8
  %9 = load %struct.atm_dev*, %struct.atm_dev** %3, align 8
  %10 = call %struct.eni_dev* @ENI_DEV(%struct.atm_dev* %9)
  store %struct.eni_dev* %10, %struct.eni_dev** %4, align 8
  %11 = load %struct.atm_dev*, %struct.atm_dev** %3, align 8
  %12 = call i32 @DPRINTK(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), %struct.atm_dev* %11)
  %13 = load %struct.eni_dev*, %struct.eni_dev** %4, align 8
  %14 = getelementptr inbounds %struct.eni_dev, %struct.eni_dev* %13, i32 0, i32 1
  %15 = load i64, i64* %5, align 8
  %16 = call i32 @spin_lock_irqsave(i32* %14, i64 %15)
  %17 = load %struct.eni_dev*, %struct.eni_dev** %4, align 8
  %18 = getelementptr inbounds %struct.eni_dev, %struct.eni_dev* %17, i32 0, i32 2
  %19 = call i32 @xchg(i32* %18, i32 0)
  store i32 %19, i32* %6, align 4
  %20 = load %struct.eni_dev*, %struct.eni_dev** %4, align 8
  %21 = getelementptr inbounds %struct.eni_dev, %struct.eni_dev* %20, i32 0, i32 1
  %22 = load i64, i64* %5, align 8
  %23 = call i32 @spin_unlock_irqrestore(i32* %21, i64 %22)
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* @MID_RX_DMA_COMPLETE, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %36

28:                                               ; preds = %1
  %29 = call i32 @EVENT(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i32 0, i32 0)
  %30 = load %struct.atm_dev*, %struct.atm_dev** %3, align 8
  %31 = call i32 @dequeue_rx(%struct.atm_dev* %30)
  %32 = call i32 @EVENT(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i32 0, i32 0)
  %33 = load %struct.atm_dev*, %struct.atm_dev** %3, align 8
  %34 = call i32 @poll_rx(%struct.atm_dev* %33)
  %35 = call i32 @EVENT(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i32 0, i32 0)
  br label %36

36:                                               ; preds = %28, %1
  %37 = load i32, i32* %6, align 4
  %38 = load i32, i32* @MID_SERVICE, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %49

41:                                               ; preds = %36
  %42 = call i32 @EVENT(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0), i32 0, i32 0)
  %43 = load %struct.atm_dev*, %struct.atm_dev** %3, align 8
  %44 = call i32 @get_service(%struct.atm_dev* %43)
  %45 = call i32 @EVENT(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i64 0, i64 0), i32 0, i32 0)
  %46 = load %struct.atm_dev*, %struct.atm_dev** %3, align 8
  %47 = call i32 @poll_rx(%struct.atm_dev* %46)
  %48 = call i32 @EVENT(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i32 0, i32 0)
  br label %49

49:                                               ; preds = %41, %36
  %50 = load i32, i32* %6, align 4
  %51 = load i32, i32* @MID_TX_DMA_COMPLETE, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %49
  %55 = call i32 @EVENT(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0), i32 0, i32 0)
  %56 = load %struct.atm_dev*, %struct.atm_dev** %3, align 8
  %57 = call i32 @dequeue_tx(%struct.atm_dev* %56)
  br label %58

58:                                               ; preds = %54, %49
  %59 = load i32, i32* %6, align 4
  %60 = load i32, i32* @MID_TX_COMPLETE, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %70

63:                                               ; preds = %58
  %64 = call i32 @EVENT(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i64 0, i64 0), i32 0, i32 0)
  %65 = load i32, i32* @tx_complete, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* @tx_complete, align 4
  %67 = load %struct.eni_dev*, %struct.eni_dev** %4, align 8
  %68 = getelementptr inbounds %struct.eni_dev, %struct.eni_dev* %67, i32 0, i32 0
  %69 = call i32 @wake_up(i32* %68)
  br label %70

70:                                               ; preds = %63, %58
  %71 = load i32, i32* %6, align 4
  %72 = load i32, i32* @MID_DMA_ERR_ACK, align 4
  %73 = load i32, i32* @MID_TX_IDENT_MISM, align 4
  %74 = or i32 %72, %73
  %75 = load i32, i32* @MID_TX_DMA_OVFL, align 4
  %76 = or i32 %74, %75
  %77 = and i32 %71, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %84

79:                                               ; preds = %70
  %80 = call i32 @EVENT(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i64 0, i64 0), i32 0, i32 0)
  %81 = load %struct.atm_dev*, %struct.atm_dev** %3, align 8
  %82 = load i32, i32* %6, align 4
  %83 = call i32 @bug_int(%struct.atm_dev* %81, i32 %82)
  br label %84

84:                                               ; preds = %79, %70
  %85 = load %struct.atm_dev*, %struct.atm_dev** %3, align 8
  %86 = call i32 @poll_tx(%struct.atm_dev* %85)
  ret void
}

declare dso_local %struct.eni_dev* @ENI_DEV(%struct.atm_dev*) #1

declare dso_local i32 @DPRINTK(i8*, %struct.atm_dev*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @xchg(i32*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @EVENT(i8*, i32, i32) #1

declare dso_local i32 @dequeue_rx(%struct.atm_dev*) #1

declare dso_local i32 @poll_rx(%struct.atm_dev*) #1

declare dso_local i32 @get_service(%struct.atm_dev*) #1

declare dso_local i32 @dequeue_tx(%struct.atm_dev*) #1

declare dso_local i32 @wake_up(i32*) #1

declare dso_local i32 @bug_int(%struct.atm_dev*, i32) #1

declare dso_local i32 @poll_tx(%struct.atm_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
