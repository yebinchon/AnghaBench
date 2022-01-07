; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_amiserial.c_rs_close.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_amiserial.c_rs_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8*, i8* }
%struct.tty_struct = type { i32, i32, i32, %struct.async_struct* }
%struct.async_struct = type { i32, i64, i32, i32, i64, i64, i32*, i64, i32, i32, i32, %struct.serial_state* }
%struct.serial_state = type { i32 }
%struct.file = type { i32 }

@.str = private unnamed_addr constant [9 x i8] c"rs_close\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"before DEC-hung\00", align 1
@.str.2 = private unnamed_addr constant [70 x i8] c"rs_close: bad serial port count; tty->count is 1, state->count is %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [48 x i8] c"rs_close: bad serial port count for ttys%d: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"before DEC-2\00", align 1
@ASYNC_CLOSING = common dso_local global i32 0, align 4
@ASYNC_CLOSING_WAIT_NONE = common dso_local global i64 0, align 8
@UART_LSR_DR = common dso_local global i32 0, align 4
@ASYNC_INITIALIZED = common dso_local global i32 0, align 4
@IF_RBF = common dso_local global i8* null, align 8
@custom = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@ASYNC_NORMAL_ACTIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tty_struct*, %struct.file*)* @rs_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rs_close(%struct.tty_struct* %0, %struct.file* %1) #0 {
  %3 = alloca %struct.tty_struct*, align 8
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.async_struct*, align 8
  %6 = alloca %struct.serial_state*, align 8
  %7 = alloca i64, align 8
  store %struct.tty_struct* %0, %struct.tty_struct** %3, align 8
  store %struct.file* %1, %struct.file** %4, align 8
  %8 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %9 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %8, i32 0, i32 3
  %10 = load %struct.async_struct*, %struct.async_struct** %9, align 8
  store %struct.async_struct* %10, %struct.async_struct** %5, align 8
  %11 = load %struct.async_struct*, %struct.async_struct** %5, align 8
  %12 = icmp ne %struct.async_struct* %11, null
  br i1 %12, label %13, label %20

13:                                               ; preds = %2
  %14 = load %struct.async_struct*, %struct.async_struct** %5, align 8
  %15 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %16 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 8
  %18 = call i64 @serial_paranoia_check(%struct.async_struct* %14, i32 %17, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %13, %2
  br label %164

21:                                               ; preds = %13
  %22 = load %struct.async_struct*, %struct.async_struct** %5, align 8
  %23 = getelementptr inbounds %struct.async_struct, %struct.async_struct* %22, i32 0, i32 11
  %24 = load %struct.serial_state*, %struct.serial_state** %23, align 8
  store %struct.serial_state* %24, %struct.serial_state** %6, align 8
  %25 = load i64, i64* %7, align 8
  %26 = call i32 @local_irq_save(i64 %25)
  %27 = load %struct.file*, %struct.file** %4, align 8
  %28 = call i64 @tty_hung_up_p(%struct.file* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %21
  %31 = call i32 @DBG_CNT(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  %32 = load i64, i64* %7, align 8
  %33 = call i32 @local_irq_restore(i64 %32)
  br label %164

34:                                               ; preds = %21
  %35 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %36 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = icmp eq i32 %37, 1
  br i1 %38, label %39, label %51

39:                                               ; preds = %34
  %40 = load %struct.serial_state*, %struct.serial_state** %6, align 8
  %41 = getelementptr inbounds %struct.serial_state, %struct.serial_state* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = icmp ne i32 %42, 1
  br i1 %43, label %44, label %51

44:                                               ; preds = %39
  %45 = load %struct.serial_state*, %struct.serial_state** %6, align 8
  %46 = getelementptr inbounds %struct.serial_state, %struct.serial_state* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 (i8*, i32, ...) @printk(i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.2, i64 0, i64 0), i32 %47)
  %49 = load %struct.serial_state*, %struct.serial_state** %6, align 8
  %50 = getelementptr inbounds %struct.serial_state, %struct.serial_state* %49, i32 0, i32 0
  store i32 1, i32* %50, align 4
  br label %51

51:                                               ; preds = %44, %39, %34
  %52 = load %struct.serial_state*, %struct.serial_state** %6, align 8
  %53 = getelementptr inbounds %struct.serial_state, %struct.serial_state* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = add nsw i32 %54, -1
  store i32 %55, i32* %53, align 4
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %57, label %67

57:                                               ; preds = %51
  %58 = load %struct.async_struct*, %struct.async_struct** %5, align 8
  %59 = getelementptr inbounds %struct.async_struct, %struct.async_struct* %58, i32 0, i32 10
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.serial_state*, %struct.serial_state** %6, align 8
  %62 = getelementptr inbounds %struct.serial_state, %struct.serial_state* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 (i8*, i32, ...) @printk(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.3, i64 0, i64 0), i32 %60, i32 %63)
  %65 = load %struct.serial_state*, %struct.serial_state** %6, align 8
  %66 = getelementptr inbounds %struct.serial_state, %struct.serial_state* %65, i32 0, i32 0
  store i32 0, i32* %66, align 4
  br label %67

67:                                               ; preds = %57, %51
  %68 = load %struct.serial_state*, %struct.serial_state** %6, align 8
  %69 = getelementptr inbounds %struct.serial_state, %struct.serial_state* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %76

72:                                               ; preds = %67
  %73 = call i32 @DBG_CNT(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0))
  %74 = load i64, i64* %7, align 8
  %75 = call i32 @local_irq_restore(i64 %74)
  br label %164

76:                                               ; preds = %67
  %77 = load i32, i32* @ASYNC_CLOSING, align 4
  %78 = load %struct.async_struct*, %struct.async_struct** %5, align 8
  %79 = getelementptr inbounds %struct.async_struct, %struct.async_struct* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = or i32 %80, %77
  store i32 %81, i32* %79, align 8
  %82 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %83 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %82, i32 0, i32 1
  store i32 1, i32* %83, align 4
  %84 = load %struct.async_struct*, %struct.async_struct** %5, align 8
  %85 = getelementptr inbounds %struct.async_struct, %struct.async_struct* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* @ASYNC_CLOSING_WAIT_NONE, align 8
  %88 = icmp ne i64 %86, %87
  br i1 %88, label %89, label %95

89:                                               ; preds = %76
  %90 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %91 = load %struct.async_struct*, %struct.async_struct** %5, align 8
  %92 = getelementptr inbounds %struct.async_struct, %struct.async_struct* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = call i32 @tty_wait_until_sent(%struct.tty_struct* %90, i64 %93)
  br label %95

95:                                               ; preds = %89, %76
  %96 = load i32, i32* @UART_LSR_DR, align 4
  %97 = xor i32 %96, -1
  %98 = load %struct.async_struct*, %struct.async_struct** %5, align 8
  %99 = getelementptr inbounds %struct.async_struct, %struct.async_struct* %98, i32 0, i32 9
  %100 = load i32, i32* %99, align 4
  %101 = and i32 %100, %97
  store i32 %101, i32* %99, align 4
  %102 = load %struct.async_struct*, %struct.async_struct** %5, align 8
  %103 = getelementptr inbounds %struct.async_struct, %struct.async_struct* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = load i32, i32* @ASYNC_INITIALIZED, align 4
  %106 = and i32 %104, %105
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %118

108:                                              ; preds = %95
  %109 = load i8*, i8** @IF_RBF, align 8
  store i8* %109, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @custom, i32 0, i32 1), align 8
  %110 = call i32 (...) @mb()
  %111 = load i8*, i8** @IF_RBF, align 8
  store i8* %111, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @custom, i32 0, i32 0), align 8
  %112 = call i32 (...) @mb()
  %113 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %114 = load %struct.async_struct*, %struct.async_struct** %5, align 8
  %115 = getelementptr inbounds %struct.async_struct, %struct.async_struct* %114, i32 0, i32 8
  %116 = load i32, i32* %115, align 8
  %117 = call i32 @rs_wait_until_sent(%struct.tty_struct* %113, i32 %116)
  br label %118

118:                                              ; preds = %108, %95
  %119 = load %struct.async_struct*, %struct.async_struct** %5, align 8
  %120 = call i32 @shutdown(%struct.async_struct* %119)
  %121 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %122 = call i32 @rs_flush_buffer(%struct.tty_struct* %121)
  %123 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %124 = call i32 @tty_ldisc_flush(%struct.tty_struct* %123)
  %125 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %126 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %125, i32 0, i32 1
  store i32 0, i32* %126, align 4
  %127 = load %struct.async_struct*, %struct.async_struct** %5, align 8
  %128 = getelementptr inbounds %struct.async_struct, %struct.async_struct* %127, i32 0, i32 7
  store i64 0, i64* %128, align 8
  %129 = load %struct.async_struct*, %struct.async_struct** %5, align 8
  %130 = getelementptr inbounds %struct.async_struct, %struct.async_struct* %129, i32 0, i32 6
  store i32* null, i32** %130, align 8
  %131 = load %struct.async_struct*, %struct.async_struct** %5, align 8
  %132 = getelementptr inbounds %struct.async_struct, %struct.async_struct* %131, i32 0, i32 5
  %133 = load i64, i64* %132, align 8
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %150

135:                                              ; preds = %118
  %136 = load %struct.async_struct*, %struct.async_struct** %5, align 8
  %137 = getelementptr inbounds %struct.async_struct, %struct.async_struct* %136, i32 0, i32 4
  %138 = load i64, i64* %137, align 8
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %146

140:                                              ; preds = %135
  %141 = load %struct.async_struct*, %struct.async_struct** %5, align 8
  %142 = getelementptr inbounds %struct.async_struct, %struct.async_struct* %141, i32 0, i32 4
  %143 = load i64, i64* %142, align 8
  %144 = call i32 @jiffies_to_msecs(i64 %143)
  %145 = call i32 @msleep_interruptible(i32 %144)
  br label %146

146:                                              ; preds = %140, %135
  %147 = load %struct.async_struct*, %struct.async_struct** %5, align 8
  %148 = getelementptr inbounds %struct.async_struct, %struct.async_struct* %147, i32 0, i32 3
  %149 = call i32 @wake_up_interruptible(i32* %148)
  br label %150

150:                                              ; preds = %146, %118
  %151 = load i32, i32* @ASYNC_NORMAL_ACTIVE, align 4
  %152 = load i32, i32* @ASYNC_CLOSING, align 4
  %153 = or i32 %151, %152
  %154 = xor i32 %153, -1
  %155 = load %struct.async_struct*, %struct.async_struct** %5, align 8
  %156 = getelementptr inbounds %struct.async_struct, %struct.async_struct* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 8
  %158 = and i32 %157, %154
  store i32 %158, i32* %156, align 8
  %159 = load %struct.async_struct*, %struct.async_struct** %5, align 8
  %160 = getelementptr inbounds %struct.async_struct, %struct.async_struct* %159, i32 0, i32 2
  %161 = call i32 @wake_up_interruptible(i32* %160)
  %162 = load i64, i64* %7, align 8
  %163 = call i32 @local_irq_restore(i64 %162)
  br label %164

164:                                              ; preds = %150, %72, %30, %20
  ret void
}

declare dso_local i64 @serial_paranoia_check(%struct.async_struct*, i32, i8*) #1

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i64 @tty_hung_up_p(%struct.file*) #1

declare dso_local i32 @DBG_CNT(i8*) #1

declare dso_local i32 @local_irq_restore(i64) #1

declare dso_local i32 @printk(i8*, i32, ...) #1

declare dso_local i32 @tty_wait_until_sent(%struct.tty_struct*, i64) #1

declare dso_local i32 @mb(...) #1

declare dso_local i32 @rs_wait_until_sent(%struct.tty_struct*, i32) #1

declare dso_local i32 @shutdown(%struct.async_struct*) #1

declare dso_local i32 @rs_flush_buffer(%struct.tty_struct*) #1

declare dso_local i32 @tty_ldisc_flush(%struct.tty_struct*) #1

declare dso_local i32 @msleep_interruptible(i32) #1

declare dso_local i32 @jiffies_to_msecs(i64) #1

declare dso_local i32 @wake_up_interruptible(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
