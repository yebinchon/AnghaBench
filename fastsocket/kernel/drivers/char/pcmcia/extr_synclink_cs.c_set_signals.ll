; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/pcmcia/extr_synclink_cs.c_set_signals.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/pcmcia/extr_synclink_cs.c_set_signals.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64 }

@CHA = common dso_local global i64 0, align 8
@MODE = common dso_local global i64 0, align 8
@MGSL_MODE_ASYNC = common dso_local global i64 0, align 8
@SerialSignal_RTS = common dso_local global i32 0, align 4
@BIT6 = common dso_local global i8 0, align 1
@BIT2 = common dso_local global i8 0, align 1
@SerialSignal_DTR = common dso_local global i32 0, align 4
@PVR = common dso_local global i64 0, align 8
@PVR_DTR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_9__*)* @set_signals to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_signals(%struct.TYPE_9__* %0) #0 {
  %2 = alloca %struct.TYPE_9__*, align 8
  %3 = alloca i8, align 1
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %2, align 8
  %4 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %5 = load i64, i64* @CHA, align 8
  %6 = load i64, i64* @MODE, align 8
  %7 = add nsw i64 %5, %6
  %8 = call zeroext i8 @read_reg(%struct.TYPE_9__* %4, i64 %7)
  store i8 %8, i8* %3, align 1
  %9 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @MGSL_MODE_ASYNC, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %38

15:                                               ; preds = %1
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @SerialSignal_RTS, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %30

22:                                               ; preds = %15
  %23 = load i8, i8* @BIT6, align 1
  %24 = zext i8 %23 to i32
  %25 = xor i32 %24, -1
  %26 = load i8, i8* %3, align 1
  %27 = zext i8 %26 to i32
  %28 = and i32 %27, %25
  %29 = trunc i32 %28 to i8
  store i8 %29, i8* %3, align 1
  br label %37

30:                                               ; preds = %15
  %31 = load i8, i8* @BIT6, align 1
  %32 = zext i8 %31 to i32
  %33 = load i8, i8* %3, align 1
  %34 = zext i8 %33 to i32
  %35 = or i32 %34, %32
  %36 = trunc i32 %35 to i8
  store i8 %36, i8* %3, align 1
  br label %37

37:                                               ; preds = %30, %22
  br label %61

38:                                               ; preds = %1
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @SerialSignal_RTS, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %52

45:                                               ; preds = %38
  %46 = load i8, i8* @BIT2, align 1
  %47 = zext i8 %46 to i32
  %48 = load i8, i8* %3, align 1
  %49 = zext i8 %48 to i32
  %50 = or i32 %49, %47
  %51 = trunc i32 %50 to i8
  store i8 %51, i8* %3, align 1
  br label %60

52:                                               ; preds = %38
  %53 = load i8, i8* @BIT2, align 1
  %54 = zext i8 %53 to i32
  %55 = xor i32 %54, -1
  %56 = load i8, i8* %3, align 1
  %57 = zext i8 %56 to i32
  %58 = and i32 %57, %55
  %59 = trunc i32 %58 to i8
  store i8 %59, i8* %3, align 1
  br label %60

60:                                               ; preds = %52, %45
  br label %61

61:                                               ; preds = %60, %37
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %63 = load i64, i64* @CHA, align 8
  %64 = load i64, i64* @MODE, align 8
  %65 = add nsw i64 %63, %64
  %66 = load i8, i8* %3, align 1
  %67 = call i32 @write_reg(%struct.TYPE_9__* %62, i64 %65, i8 zeroext %66)
  %68 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* @SerialSignal_DTR, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %81

74:                                               ; preds = %61
  %75 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %76 = load i64, i64* @CHA, align 8
  %77 = load i64, i64* @PVR, align 8
  %78 = add nsw i64 %76, %77
  %79 = load i32, i32* @PVR_DTR, align 4
  %80 = call i32 @clear_reg_bits(%struct.TYPE_9__* %75, i64 %78, i32 %79)
  br label %88

81:                                               ; preds = %61
  %82 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %83 = load i64, i64* @CHA, align 8
  %84 = load i64, i64* @PVR, align 8
  %85 = add nsw i64 %83, %84
  %86 = load i32, i32* @PVR_DTR, align 4
  %87 = call i32 @set_reg_bits(%struct.TYPE_9__* %82, i64 %85, i32 %86)
  br label %88

88:                                               ; preds = %81, %74
  ret void
}

declare dso_local zeroext i8 @read_reg(%struct.TYPE_9__*, i64) #1

declare dso_local i32 @write_reg(%struct.TYPE_9__*, i64, i8 zeroext) #1

declare dso_local i32 @clear_reg_bits(%struct.TYPE_9__*, i64, i32) #1

declare dso_local i32 @set_reg_bits(%struct.TYPE_9__*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
