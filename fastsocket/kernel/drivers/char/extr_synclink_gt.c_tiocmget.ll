; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_synclink_gt.c_tiocmget.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_synclink_gt.c_tiocmget.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { %struct.slgt_info* }
%struct.slgt_info = type { i32, i32, i32 }
%struct.file = type { i32 }

@SerialSignal_RTS = common dso_local global i32 0, align 4
@TIOCM_RTS = common dso_local global i32 0, align 4
@SerialSignal_DTR = common dso_local global i32 0, align 4
@TIOCM_DTR = common dso_local global i32 0, align 4
@SerialSignal_DCD = common dso_local global i32 0, align 4
@TIOCM_CAR = common dso_local global i32 0, align 4
@SerialSignal_RI = common dso_local global i32 0, align 4
@TIOCM_RNG = common dso_local global i32 0, align 4
@SerialSignal_DSR = common dso_local global i32 0, align 4
@TIOCM_DSR = common dso_local global i32 0, align 4
@SerialSignal_CTS = common dso_local global i32 0, align 4
@TIOCM_CTS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"%s tiocmget value=%08X\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tty_struct*, %struct.file*)* @tiocmget to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tiocmget(%struct.tty_struct* %0, %struct.file* %1) #0 {
  %3 = alloca %struct.tty_struct*, align 8
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.slgt_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.tty_struct* %0, %struct.tty_struct** %3, align 8
  store %struct.file* %1, %struct.file** %4, align 8
  %8 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %9 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %8, i32 0, i32 0
  %10 = load %struct.slgt_info*, %struct.slgt_info** %9, align 8
  store %struct.slgt_info* %10, %struct.slgt_info** %5, align 8
  %11 = load %struct.slgt_info*, %struct.slgt_info** %5, align 8
  %12 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %11, i32 0, i32 2
  %13 = load i64, i64* %7, align 8
  %14 = call i32 @spin_lock_irqsave(i32* %12, i64 %13)
  %15 = load %struct.slgt_info*, %struct.slgt_info** %5, align 8
  %16 = call i32 @get_signals(%struct.slgt_info* %15)
  %17 = load %struct.slgt_info*, %struct.slgt_info** %5, align 8
  %18 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %17, i32 0, i32 2
  %19 = load i64, i64* %7, align 8
  %20 = call i32 @spin_unlock_irqrestore(i32* %18, i64 %19)
  %21 = load %struct.slgt_info*, %struct.slgt_info** %5, align 8
  %22 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @SerialSignal_RTS, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %2
  %28 = load i32, i32* @TIOCM_RTS, align 4
  br label %30

29:                                               ; preds = %2
  br label %30

30:                                               ; preds = %29, %27
  %31 = phi i32 [ %28, %27 ], [ 0, %29 ]
  %32 = load %struct.slgt_info*, %struct.slgt_info** %5, align 8
  %33 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @SerialSignal_DTR, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %30
  %39 = load i32, i32* @TIOCM_DTR, align 4
  br label %41

40:                                               ; preds = %30
  br label %41

41:                                               ; preds = %40, %38
  %42 = phi i32 [ %39, %38 ], [ 0, %40 ]
  %43 = add i32 %31, %42
  %44 = load %struct.slgt_info*, %struct.slgt_info** %5, align 8
  %45 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @SerialSignal_DCD, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %41
  %51 = load i32, i32* @TIOCM_CAR, align 4
  br label %53

52:                                               ; preds = %41
  br label %53

53:                                               ; preds = %52, %50
  %54 = phi i32 [ %51, %50 ], [ 0, %52 ]
  %55 = add i32 %43, %54
  %56 = load %struct.slgt_info*, %struct.slgt_info** %5, align 8
  %57 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @SerialSignal_RI, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %53
  %63 = load i32, i32* @TIOCM_RNG, align 4
  br label %65

64:                                               ; preds = %53
  br label %65

65:                                               ; preds = %64, %62
  %66 = phi i32 [ %63, %62 ], [ 0, %64 ]
  %67 = add i32 %55, %66
  %68 = load %struct.slgt_info*, %struct.slgt_info** %5, align 8
  %69 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @SerialSignal_DSR, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %65
  %75 = load i32, i32* @TIOCM_DSR, align 4
  br label %77

76:                                               ; preds = %65
  br label %77

77:                                               ; preds = %76, %74
  %78 = phi i32 [ %75, %74 ], [ 0, %76 ]
  %79 = add i32 %67, %78
  %80 = load %struct.slgt_info*, %struct.slgt_info** %5, align 8
  %81 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* @SerialSignal_CTS, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %88

86:                                               ; preds = %77
  %87 = load i32, i32* @TIOCM_CTS, align 4
  br label %89

88:                                               ; preds = %77
  br label %89

89:                                               ; preds = %88, %86
  %90 = phi i32 [ %87, %86 ], [ 0, %88 ]
  %91 = add i32 %79, %90
  store i32 %91, i32* %6, align 4
  %92 = load %struct.slgt_info*, %struct.slgt_info** %5, align 8
  %93 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* %6, align 4
  %96 = zext i32 %95 to i64
  %97 = inttoptr i64 %96 to i8*
  %98 = call i32 @DBGINFO(i8* %97)
  %99 = load i32, i32* %6, align 4
  ret i32 %99
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @get_signals(%struct.slgt_info*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @DBGINFO(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
