; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_synclink_gt.c_set_termios.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_synclink_gt.c_set_termios.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { i64, %struct.TYPE_4__*, i32, %struct.TYPE_3__*, %struct.slgt_info* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.slgt_info = type { i32, i32 }
%struct.ktermios = type { i32 }

@.str = private unnamed_addr constant [16 x i8] c"%s set_termios\0A\00", align 1
@CBAUD = common dso_local global i32 0, align 4
@SerialSignal_RTS = common dso_local global i32 0, align 4
@SerialSignal_DTR = common dso_local global i32 0, align 4
@CRTSCTS = common dso_local global i32 0, align 4
@TTY_THROTTLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tty_struct*, %struct.ktermios*)* @set_termios to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_termios(%struct.tty_struct* %0, %struct.ktermios* %1) #0 {
  %3 = alloca %struct.tty_struct*, align 8
  %4 = alloca %struct.ktermios*, align 8
  %5 = alloca %struct.slgt_info*, align 8
  %6 = alloca i64, align 8
  store %struct.tty_struct* %0, %struct.tty_struct** %3, align 8
  store %struct.ktermios* %1, %struct.ktermios** %4, align 8
  %7 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %8 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %7, i32 0, i32 4
  %9 = load %struct.slgt_info*, %struct.slgt_info** %8, align 8
  store %struct.slgt_info* %9, %struct.slgt_info** %5, align 8
  %10 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %11 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %10, i32 0, i32 3
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = sext i32 %14 to i64
  %16 = inttoptr i64 %15 to i8*
  %17 = call i32 @DBGINFO(i8* %16)
  %18 = load %struct.slgt_info*, %struct.slgt_info** %5, align 8
  %19 = call i32 @change_params(%struct.slgt_info* %18)
  %20 = load %struct.ktermios*, %struct.ktermios** %4, align 8
  %21 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @CBAUD, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %54

26:                                               ; preds = %2
  %27 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %28 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %27, i32 0, i32 1
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @CBAUD, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %54, label %35

35:                                               ; preds = %26
  %36 = load i32, i32* @SerialSignal_RTS, align 4
  %37 = load i32, i32* @SerialSignal_DTR, align 4
  %38 = add nsw i32 %36, %37
  %39 = xor i32 %38, -1
  %40 = load %struct.slgt_info*, %struct.slgt_info** %5, align 8
  %41 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = and i32 %42, %39
  store i32 %43, i32* %41, align 4
  %44 = load %struct.slgt_info*, %struct.slgt_info** %5, align 8
  %45 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %44, i32 0, i32 0
  %46 = load i64, i64* %6, align 8
  %47 = call i32 @spin_lock_irqsave(i32* %45, i64 %46)
  %48 = load %struct.slgt_info*, %struct.slgt_info** %5, align 8
  %49 = call i32 @set_signals(%struct.slgt_info* %48)
  %50 = load %struct.slgt_info*, %struct.slgt_info** %5, align 8
  %51 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %50, i32 0, i32 0
  %52 = load i64, i64* %6, align 8
  %53 = call i32 @spin_unlock_irqrestore(i32* %51, i64 %52)
  br label %54

54:                                               ; preds = %35, %26, %2
  %55 = load %struct.ktermios*, %struct.ktermios** %4, align 8
  %56 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @CBAUD, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %107, label %61

61:                                               ; preds = %54
  %62 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %63 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %62, i32 0, i32 1
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @CBAUD, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %107

70:                                               ; preds = %61
  %71 = load i32, i32* @SerialSignal_DTR, align 4
  %72 = load %struct.slgt_info*, %struct.slgt_info** %5, align 8
  %73 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = or i32 %74, %71
  store i32 %75, i32* %73, align 4
  %76 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %77 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %76, i32 0, i32 1
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* @CRTSCTS, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %90

84:                                               ; preds = %70
  %85 = load i32, i32* @TTY_THROTTLED, align 4
  %86 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %87 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %86, i32 0, i32 2
  %88 = call i32 @test_bit(i32 %85, i32* %87)
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %96, label %90

90:                                               ; preds = %84, %70
  %91 = load i32, i32* @SerialSignal_RTS, align 4
  %92 = load %struct.slgt_info*, %struct.slgt_info** %5, align 8
  %93 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = or i32 %94, %91
  store i32 %95, i32* %93, align 4
  br label %96

96:                                               ; preds = %90, %84
  %97 = load %struct.slgt_info*, %struct.slgt_info** %5, align 8
  %98 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %97, i32 0, i32 0
  %99 = load i64, i64* %6, align 8
  %100 = call i32 @spin_lock_irqsave(i32* %98, i64 %99)
  %101 = load %struct.slgt_info*, %struct.slgt_info** %5, align 8
  %102 = call i32 @set_signals(%struct.slgt_info* %101)
  %103 = load %struct.slgt_info*, %struct.slgt_info** %5, align 8
  %104 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %103, i32 0, i32 0
  %105 = load i64, i64* %6, align 8
  %106 = call i32 @spin_unlock_irqrestore(i32* %104, i64 %105)
  br label %107

107:                                              ; preds = %96, %61, %54
  %108 = load %struct.ktermios*, %struct.ktermios** %4, align 8
  %109 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = load i32, i32* @CRTSCTS, align 4
  %112 = and i32 %110, %111
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %128

114:                                              ; preds = %107
  %115 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %116 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %115, i32 0, i32 1
  %117 = load %struct.TYPE_4__*, %struct.TYPE_4__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = load i32, i32* @CRTSCTS, align 4
  %121 = and i32 %119, %120
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %128, label %123

123:                                              ; preds = %114
  %124 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %125 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %124, i32 0, i32 0
  store i64 0, i64* %125, align 8
  %126 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %127 = call i32 @tx_release(%struct.tty_struct* %126)
  br label %128

128:                                              ; preds = %123, %114, %107
  ret void
}

declare dso_local i32 @DBGINFO(i8*) #1

declare dso_local i32 @change_params(%struct.slgt_info*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @set_signals(%struct.slgt_info*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @tx_release(%struct.tty_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
