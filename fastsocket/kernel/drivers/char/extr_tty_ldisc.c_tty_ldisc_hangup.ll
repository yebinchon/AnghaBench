; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_tty_ldisc.c_tty_ldisc_hangup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_tty_ldisc.c_tty_ldisc_hangup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { i32, i64, %struct.TYPE_6__*, i32, i32, i32, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.tty_ldisc = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 (%struct.tty_struct*)*, i32 (%struct.tty_struct*)*, i32 (%struct.tty_struct*)* }

@TTY_DRIVER_RESET_TERMIOS = common dso_local global i32 0, align 4
@TTY_DO_WRITE_WAKEUP = common dso_local global i32 0, align 4
@POLLOUT = common dso_local global i32 0, align 4
@POLLIN = common dso_local global i32 0, align 4
@N_TTY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tty_ldisc_hangup(%struct.tty_struct* %0) #0 {
  %2 = alloca %struct.tty_struct*, align 8
  %3 = alloca %struct.tty_ldisc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.tty_struct* %0, %struct.tty_struct** %2, align 8
  %6 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %7 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %6, i32 0, i32 6
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @TTY_DRIVER_RESET_TERMIOS, align 4
  %12 = and i32 %10, %11
  store i32 %12, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %13 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %14 = call %struct.tty_ldisc* @tty_ldisc_ref(%struct.tty_struct* %13)
  store %struct.tty_ldisc* %14, %struct.tty_ldisc** %3, align 8
  %15 = load %struct.tty_ldisc*, %struct.tty_ldisc** %3, align 8
  %16 = icmp ne %struct.tty_ldisc* %15, null
  br i1 %16, label %17, label %73

17:                                               ; preds = %1
  %18 = load %struct.tty_ldisc*, %struct.tty_ldisc** %3, align 8
  %19 = getelementptr inbounds %struct.tty_ldisc, %struct.tty_ldisc* %18, i32 0, i32 0
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 2
  %22 = load i32 (%struct.tty_struct*)*, i32 (%struct.tty_struct*)** %21, align 8
  %23 = icmp ne i32 (%struct.tty_struct*)* %22, null
  br i1 %23, label %24, label %32

24:                                               ; preds = %17
  %25 = load %struct.tty_ldisc*, %struct.tty_ldisc** %3, align 8
  %26 = getelementptr inbounds %struct.tty_ldisc, %struct.tty_ldisc* %25, i32 0, i32 0
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 2
  %29 = load i32 (%struct.tty_struct*)*, i32 (%struct.tty_struct*)** %28, align 8
  %30 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %31 = call i32 %29(%struct.tty_struct* %30)
  br label %32

32:                                               ; preds = %24, %17
  %33 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %34 = call i32 @tty_driver_flush_buffer(%struct.tty_struct* %33)
  %35 = load i32, i32* @TTY_DO_WRITE_WAKEUP, align 4
  %36 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %37 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %36, i32 0, i32 5
  %38 = call i64 @test_bit(i32 %35, i32* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %55

40:                                               ; preds = %32
  %41 = load %struct.tty_ldisc*, %struct.tty_ldisc** %3, align 8
  %42 = getelementptr inbounds %struct.tty_ldisc, %struct.tty_ldisc* %41, i32 0, i32 0
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 1
  %45 = load i32 (%struct.tty_struct*)*, i32 (%struct.tty_struct*)** %44, align 8
  %46 = icmp ne i32 (%struct.tty_struct*)* %45, null
  br i1 %46, label %47, label %55

47:                                               ; preds = %40
  %48 = load %struct.tty_ldisc*, %struct.tty_ldisc** %3, align 8
  %49 = getelementptr inbounds %struct.tty_ldisc, %struct.tty_ldisc* %48, i32 0, i32 0
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 1
  %52 = load i32 (%struct.tty_struct*)*, i32 (%struct.tty_struct*)** %51, align 8
  %53 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %54 = call i32 %52(%struct.tty_struct* %53)
  br label %55

55:                                               ; preds = %47, %40, %32
  %56 = load %struct.tty_ldisc*, %struct.tty_ldisc** %3, align 8
  %57 = getelementptr inbounds %struct.tty_ldisc, %struct.tty_ldisc* %56, i32 0, i32 0
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 0
  %60 = load i32 (%struct.tty_struct*)*, i32 (%struct.tty_struct*)** %59, align 8
  %61 = icmp ne i32 (%struct.tty_struct*)* %60, null
  br i1 %61, label %62, label %70

62:                                               ; preds = %55
  %63 = load %struct.tty_ldisc*, %struct.tty_ldisc** %3, align 8
  %64 = getelementptr inbounds %struct.tty_ldisc, %struct.tty_ldisc* %63, i32 0, i32 0
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 0
  %67 = load i32 (%struct.tty_struct*)*, i32 (%struct.tty_struct*)** %66, align 8
  %68 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %69 = call i32 %67(%struct.tty_struct* %68)
  br label %70

70:                                               ; preds = %62, %55
  %71 = load %struct.tty_ldisc*, %struct.tty_ldisc** %3, align 8
  %72 = call i32 @tty_ldisc_deref(%struct.tty_ldisc* %71)
  br label %73

73:                                               ; preds = %70, %1
  %74 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %75 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %74, i32 0, i32 4
  %76 = load i32, i32* @POLLOUT, align 4
  %77 = call i32 @wake_up_interruptible_poll(i32* %75, i32 %76)
  %78 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %79 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %78, i32 0, i32 3
  %80 = load i32, i32* @POLLIN, align 4
  %81 = call i32 @wake_up_interruptible_poll(i32* %79, i32 %80)
  %82 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %83 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %82, i32 0, i32 0
  %84 = call i32 @mutex_lock(i32* %83)
  %85 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %86 = call i32 @tty_ldisc_halt(%struct.tty_struct* %85)
  %87 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %88 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %131

91:                                               ; preds = %73
  %92 = load i32, i32* %4, align 4
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %94, label %111

94:                                               ; preds = %91
  %95 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %96 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %97 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %96, i32 0, i32 2
  %98 = load %struct.TYPE_6__*, %struct.TYPE_6__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @tty_ldisc_reinit(%struct.tty_struct* %95, i32 %100)
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %109, label %103

103:                                              ; preds = %94
  %104 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %105 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %106 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %105, i32 0, i32 1
  %107 = load i64, i64* %106, align 8
  %108 = call i32 @tty_ldisc_open(%struct.tty_struct* %104, i64 %107)
  store i32 %108, i32* %5, align 4
  br label %110

109:                                              ; preds = %94
  store i32 1, i32* %5, align 4
  br label %110

110:                                              ; preds = %109, %103
  br label %111

111:                                              ; preds = %110, %91
  %112 = load i32, i32* %4, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %117, label %114

114:                                              ; preds = %111
  %115 = load i32, i32* %5, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %128

117:                                              ; preds = %114, %111
  %118 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %119 = load i32, i32* @N_TTY, align 4
  %120 = call i32 @tty_ldisc_reinit(%struct.tty_struct* %118, i32 %119)
  %121 = call i32 @BUG_ON(i32 %120)
  %122 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %123 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %124 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %123, i32 0, i32 1
  %125 = load i64, i64* %124, align 8
  %126 = call i32 @tty_ldisc_open(%struct.tty_struct* %122, i64 %125)
  %127 = call i32 @WARN_ON(i32 %126)
  br label %128

128:                                              ; preds = %117, %114
  %129 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %130 = call i32 @tty_ldisc_enable(%struct.tty_struct* %129)
  br label %131

131:                                              ; preds = %128, %73
  %132 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %133 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %132, i32 0, i32 0
  %134 = call i32 @mutex_unlock(i32* %133)
  %135 = load i32, i32* %4, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %140

137:                                              ; preds = %131
  %138 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %139 = call i32 @tty_reset_termios(%struct.tty_struct* %138)
  br label %140

140:                                              ; preds = %137, %131
  ret void
}

declare dso_local %struct.tty_ldisc* @tty_ldisc_ref(%struct.tty_struct*) #1

declare dso_local i32 @tty_driver_flush_buffer(%struct.tty_struct*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @tty_ldisc_deref(%struct.tty_ldisc*) #1

declare dso_local i32 @wake_up_interruptible_poll(i32*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @tty_ldisc_halt(%struct.tty_struct*) #1

declare dso_local i32 @tty_ldisc_reinit(%struct.tty_struct*, i32) #1

declare dso_local i32 @tty_ldisc_open(%struct.tty_struct*, i64) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @tty_ldisc_enable(%struct.tty_struct*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @tty_reset_termios(%struct.tty_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
