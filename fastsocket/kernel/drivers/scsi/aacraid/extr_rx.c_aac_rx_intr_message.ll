; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/aacraid/extr_rx.c_aac_rx_intr_message.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/aacraid/extr_rx.c_aac_rx_intr_message.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }
%struct.aac_dev = type { i32 }

@MUnit = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@DoorBellAdapterNormRespReady = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@IRQ_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @aac_rx_intr_message to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aac_rx_intr_message(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.aac_dev*, align 8
  %10 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = bitcast i8* %11 to %struct.aac_dev*
  store %struct.aac_dev* %12, %struct.aac_dev** %9, align 8
  %13 = load %struct.aac_dev*, %struct.aac_dev** %9, align 8
  %14 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @MUnit, i32 0, i32 0), align 4
  %15 = call i32 @rx_readl(%struct.aac_dev* %13, i32 %14)
  store i32 %15, i32* %10, align 4
  %16 = load i32, i32* %10, align 4
  %17 = sext i32 %16 to i64
  %18 = icmp eq i64 %17, 4294967295
  %19 = zext i1 %18 to i32
  %20 = call i64 @unlikely(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %2
  %23 = load %struct.aac_dev*, %struct.aac_dev** %9, align 8
  %24 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @MUnit, i32 0, i32 0), align 4
  %25 = call i32 @rx_readl(%struct.aac_dev* %23, i32 %24)
  store i32 %25, i32* %10, align 4
  br label %26

26:                                               ; preds = %22, %2
  %27 = load i32, i32* %10, align 4
  %28 = sext i32 %27 to i64
  %29 = icmp ne i64 %28, 4294967295
  %30 = zext i1 %29 to i32
  %31 = call i64 @likely(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %89

33:                                               ; preds = %26
  br label %34

34:                                               ; preds = %83, %33
  store i32 0, i32* %8, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %6, align 4
  %35 = load i32, i32* %10, align 4
  %36 = sext i32 %35 to i64
  %37 = and i64 %36, 2
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %49

39:                                               ; preds = %34
  store i32 1, i32* %6, align 4
  %40 = load i32, i32* %10, align 4
  %41 = sext i32 %40 to i64
  %42 = icmp eq i64 %41, 4294967294
  br i1 %42, label %43, label %44

43:                                               ; preds = %39
  store i32 1, i32* %8, align 4
  br label %44

44:                                               ; preds = %43, %39
  %45 = load i32, i32* %10, align 4
  %46 = sext i32 %45 to i64
  %47 = and i64 %46, -3
  %48 = trunc i64 %47 to i32
  store i32 %48, i32* %10, align 4
  br label %58

49:                                               ; preds = %34
  %50 = load i32, i32* %10, align 4
  %51 = sext i32 %50 to i64
  %52 = and i64 %51, 1
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %49
  store i32 1, i32* %7, align 4
  br label %55

55:                                               ; preds = %54, %49
  %56 = load i32, i32* %10, align 4
  %57 = ashr i32 %56, 2
  store i32 %57, i32* %10, align 4
  br label %58

58:                                               ; preds = %55, %44
  %59 = load i32, i32* %8, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %79, label %61

61:                                               ; preds = %58
  %62 = load %struct.aac_dev*, %struct.aac_dev** %9, align 8
  %63 = load i32, i32* %10, align 4
  %64 = load i32, i32* %6, align 4
  %65 = load i32, i32* %7, align 4
  %66 = call i32 @aac_intr_normal(%struct.aac_dev* %62, i32 %63, i32 %64, i32 %65, i32* null)
  %67 = call i64 @unlikely(i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %78

69:                                               ; preds = %61
  %70 = load %struct.aac_dev*, %struct.aac_dev** %9, align 8
  %71 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @MUnit, i32 0, i32 0), align 4
  %72 = load i32, i32* %10, align 4
  %73 = call i32 @rx_writel(%struct.aac_dev* %70, i32 %71, i32 %72)
  %74 = load %struct.aac_dev*, %struct.aac_dev** %9, align 8
  %75 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @MUnit, i32 0, i32 1), align 4
  %76 = load i32, i32* @DoorBellAdapterNormRespReady, align 4
  %77 = call i32 @rx_writel(%struct.aac_dev* %74, i32 %75, i32 %76)
  br label %78

78:                                               ; preds = %69, %61
  br label %79

79:                                               ; preds = %78, %58
  %80 = load %struct.aac_dev*, %struct.aac_dev** %9, align 8
  %81 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @MUnit, i32 0, i32 0), align 4
  %82 = call i32 @rx_readl(%struct.aac_dev* %80, i32 %81)
  store i32 %82, i32* %10, align 4
  br label %83

83:                                               ; preds = %79
  %84 = load i32, i32* %10, align 4
  %85 = sext i32 %84 to i64
  %86 = icmp ne i64 %85, 4294967295
  br i1 %86, label %34, label %87

87:                                               ; preds = %83
  %88 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %88, i32* %3, align 4
  br label %91

89:                                               ; preds = %26
  %90 = load i32, i32* @IRQ_NONE, align 4
  store i32 %90, i32* %3, align 4
  br label %91

91:                                               ; preds = %89, %87
  %92 = load i32, i32* %3, align 4
  ret i32 %92
}

declare dso_local i32 @rx_readl(%struct.aac_dev*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @aac_intr_normal(%struct.aac_dev*, i32, i32, i32, i32*) #1

declare dso_local i32 @rx_writel(%struct.aac_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
