; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/arcnet/extr_arcnet.c_arcnet_timeout.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/arcnet/extr_arcnet.c_arcnet_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.arcnet_local = type { i32, i32, i32, i64, i32, i32 }

@TXFREEflag = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c" - missed IRQ?\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@NOTXcmd = common dso_local global i32 0, align 4
@EXCNAKflag = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4
@D_EXTRA = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [54 x i8] c"tx timed out%s (status=%Xh, intmask=%Xh, dest=%02Xh)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @arcnet_timeout(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.arcnet_local*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %7 = load %struct.net_device*, %struct.net_device** %2, align 8
  %8 = call %struct.arcnet_local* @netdev_priv(%struct.net_device* %7)
  store %struct.arcnet_local* %8, %struct.arcnet_local** %4, align 8
  %9 = call i32 (...) @ASTATUS()
  store i32 %9, i32* %5, align 4
  %10 = load %struct.arcnet_local*, %struct.arcnet_local** %4, align 8
  %11 = getelementptr inbounds %struct.arcnet_local, %struct.arcnet_local* %10, i32 0, i32 5
  %12 = load i64, i64* %3, align 8
  %13 = call i32 @spin_lock_irqsave(i32* %11, i64 %12)
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* @TXFREEflag, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %1
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8** %6, align 8
  br label %34

19:                                               ; preds = %1
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8** %6, align 8
  %20 = load %struct.net_device*, %struct.net_device** %2, align 8
  %21 = getelementptr inbounds %struct.net_device, %struct.net_device* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %22, align 4
  %25 = load %struct.arcnet_local*, %struct.arcnet_local** %4, align 8
  %26 = getelementptr inbounds %struct.arcnet_local, %struct.arcnet_local* %25, i32 0, i32 0
  store i32 1, i32* %26, align 8
  %27 = load i32, i32* @NOTXcmd, align 4
  %28 = load %struct.arcnet_local*, %struct.arcnet_local** %4, align 8
  %29 = getelementptr inbounds %struct.arcnet_local, %struct.arcnet_local* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = shl i32 %30, 3
  %32 = or i32 %27, %31
  %33 = call i32 @ACOMMAND(i32 %32)
  br label %34

34:                                               ; preds = %19, %18
  %35 = load %struct.net_device*, %struct.net_device** %2, align 8
  %36 = getelementptr inbounds %struct.net_device, %struct.net_device* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %37, align 4
  %40 = call i32 @AINTMASK(i32 0)
  %41 = load i32, i32* @TXFREEflag, align 4
  %42 = load i32, i32* @EXCNAKflag, align 4
  %43 = or i32 %41, %42
  %44 = load %struct.arcnet_local*, %struct.arcnet_local** %4, align 8
  %45 = getelementptr inbounds %struct.arcnet_local, %struct.arcnet_local* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = or i32 %46, %43
  store i32 %47, i32* %45, align 8
  %48 = load %struct.arcnet_local*, %struct.arcnet_local** %4, align 8
  %49 = getelementptr inbounds %struct.arcnet_local, %struct.arcnet_local* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @AINTMASK(i32 %50)
  %52 = load %struct.arcnet_local*, %struct.arcnet_local** %4, align 8
  %53 = getelementptr inbounds %struct.arcnet_local, %struct.arcnet_local* %52, i32 0, i32 5
  %54 = load i64, i64* %3, align 8
  %55 = call i32 @spin_unlock_irqrestore(i32* %53, i64 %54)
  %56 = load i64, i64* @jiffies, align 8
  %57 = load %struct.arcnet_local*, %struct.arcnet_local** %4, align 8
  %58 = getelementptr inbounds %struct.arcnet_local, %struct.arcnet_local* %57, i32 0, i32 3
  %59 = load i64, i64* %58, align 8
  %60 = load i32, i32* @HZ, align 4
  %61 = mul nsw i32 10, %60
  %62 = sext i32 %61 to i64
  %63 = add nsw i64 %59, %62
  %64 = call i64 @time_after(i64 %56, i64 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %80

66:                                               ; preds = %34
  %67 = load i32, i32* @D_EXTRA, align 4
  %68 = load i8*, i8** %6, align 8
  %69 = load i32, i32* %5, align 4
  %70 = load %struct.arcnet_local*, %struct.arcnet_local** %4, align 8
  %71 = getelementptr inbounds %struct.arcnet_local, %struct.arcnet_local* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.arcnet_local*, %struct.arcnet_local** %4, align 8
  %74 = getelementptr inbounds %struct.arcnet_local, %struct.arcnet_local* %73, i32 0, i32 4
  %75 = load i32, i32* %74, align 8
  %76 = call i32 @BUGMSG(i32 %67, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.2, i64 0, i64 0), i8* %68, i32 %69, i32 %72, i32 %75)
  %77 = load i64, i64* @jiffies, align 8
  %78 = load %struct.arcnet_local*, %struct.arcnet_local** %4, align 8
  %79 = getelementptr inbounds %struct.arcnet_local, %struct.arcnet_local* %78, i32 0, i32 3
  store i64 %77, i64* %79, align 8
  br label %80

80:                                               ; preds = %66, %34
  %81 = load %struct.arcnet_local*, %struct.arcnet_local** %4, align 8
  %82 = getelementptr inbounds %struct.arcnet_local, %struct.arcnet_local* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = icmp eq i32 %83, -1
  br i1 %84, label %85, label %88

85:                                               ; preds = %80
  %86 = load %struct.net_device*, %struct.net_device** %2, align 8
  %87 = call i32 @netif_wake_queue(%struct.net_device* %86)
  br label %88

88:                                               ; preds = %85, %80
  ret void
}

declare dso_local %struct.arcnet_local* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @ASTATUS(...) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @ACOMMAND(i32) #1

declare dso_local i32 @AINTMASK(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i64 @time_after(i64, i64) #1

declare dso_local i32 @BUGMSG(i32, i8*, i8*, i32, i32, i32) #1

declare dso_local i32 @netif_wake_queue(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
