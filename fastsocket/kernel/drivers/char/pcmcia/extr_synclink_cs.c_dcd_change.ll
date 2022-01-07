; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/pcmcia/extr_synclink_cs.c_dcd_change.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/pcmcia/extr_synclink_cs.c_dcd_change.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32, %struct.TYPE_10__, i32, i32, i32, i32, i64, %struct.TYPE_9__, %struct.TYPE_8__, i32 }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.tty_struct = type { i32 }

@IO_PIN_SHUTDOWN_LIMIT = common dso_local global i64 0, align 8
@CHB = common dso_local global i32 0, align 4
@IRQ_DCD = common dso_local global i32 0, align 4
@SerialSignal_DCD = common dso_local global i32 0, align 4
@ASYNC_CHECK_CD = common dso_local global i32 0, align 4
@debug_level = common dso_local global i64 0, align 8
@DEBUG_LEVEL_ISR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [16 x i8] c"%s CD now %s...\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"on\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"off\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"doing serial hangup...\00", align 1
@BH_STATUS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_11__*, %struct.tty_struct*)* @dcd_change to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dcd_change(%struct.TYPE_11__* %0, %struct.tty_struct* %1) #0 {
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca %struct.tty_struct*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %3, align 8
  store %struct.tty_struct* %1, %struct.tty_struct** %4, align 8
  %5 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %6 = call i32 @get_signals(%struct.TYPE_11__* %5)
  %7 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 10
  %9 = load i32, i32* %8, align 4
  %10 = add nsw i32 %9, 1
  store i32 %10, i32* %8, align 4
  %11 = sext i32 %9 to i64
  %12 = load i64, i64* @IO_PIN_SHUTDOWN_LIMIT, align 8
  %13 = icmp sge i64 %11, %12
  br i1 %13, label %14, label %19

14:                                               ; preds = %2
  %15 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %16 = load i32, i32* @CHB, align 4
  %17 = load i32, i32* @IRQ_DCD, align 4
  %18 = call i32 @irq_disable(%struct.TYPE_11__* %15, i32 %16, i32 %17)
  br label %19

19:                                               ; preds = %14, %2
  %20 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %20, i32 0, i32 9
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %22, align 8
  %25 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @SerialSignal_DCD, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %19
  %32 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %32, i32 0, i32 8
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %34, align 4
  br label %43

37:                                               ; preds = %19
  %38 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %38, i32 0, i32 8
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %40, align 8
  br label %43

43:                                               ; preds = %37, %31
  %44 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %44, i32 0, i32 5
  %46 = call i32 @wake_up_interruptible(i32* %45)
  %47 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %47, i32 0, i32 4
  %49 = call i32 @wake_up_interruptible(i32* %48)
  %50 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %50, i32 0, i32 2
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* @ASYNC_CHECK_CD, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %100

57:                                               ; preds = %43
  %58 = load i64, i64* @debug_level, align 8
  %59 = load i64, i64* @DEBUG_LEVEL_ISR, align 8
  %60 = icmp sge i64 %58, %59
  br i1 %60, label %61, label %74

61:                                               ; preds = %57
  %62 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %63 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %66 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* @SerialSignal_DCD, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  %71 = zext i1 %70 to i64
  %72 = select i1 %70, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)
  %73 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %64, i8* %72)
  br label %74

74:                                               ; preds = %61, %57
  %75 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %76 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* @SerialSignal_DCD, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %86

81:                                               ; preds = %74
  %82 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %83 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %82, i32 0, i32 2
  %84 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %83, i32 0, i32 1
  %85 = call i32 @wake_up_interruptible(i32* %84)
  br label %99

86:                                               ; preds = %74
  %87 = load i64, i64* @debug_level, align 8
  %88 = load i64, i64* @DEBUG_LEVEL_ISR, align 8
  %89 = icmp sge i64 %87, %88
  br i1 %89, label %90, label %92

90:                                               ; preds = %86
  %91 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  br label %92

92:                                               ; preds = %90, %86
  %93 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %94 = icmp ne %struct.tty_struct* %93, null
  br i1 %94, label %95, label %98

95:                                               ; preds = %92
  %96 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %97 = call i32 @tty_hangup(%struct.tty_struct* %96)
  br label %98

98:                                               ; preds = %95, %92
  br label %99

99:                                               ; preds = %98, %81
  br label %100

100:                                              ; preds = %99, %43
  %101 = load i32, i32* @BH_STATUS, align 4
  %102 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %103 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = or i32 %104, %101
  store i32 %105, i32* %103, align 4
  ret void
}

declare dso_local i32 @get_signals(%struct.TYPE_11__*) #1

declare dso_local i32 @irq_disable(%struct.TYPE_11__*, i32, i32) #1

declare dso_local i32 @wake_up_interruptible(i32*) #1

declare dso_local i32 @printk(i8*, ...) #1

declare dso_local i32 @tty_hangup(%struct.tty_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
