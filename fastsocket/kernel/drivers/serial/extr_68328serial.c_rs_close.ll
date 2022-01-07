; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_68328serial.c_rs_close.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_68328serial.c_rs_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.TYPE_9__ = type { i64, i32 (%struct.tty_struct.0*)*, i32 (%struct.tty_struct.1*)* }
%struct.tty_struct.0 = type opaque
%struct.tty_struct.1 = type opaque
%struct.tty_struct = type { i32, i32, %struct.TYPE_9__, %struct.TYPE_7__*, i32, i64 }
%struct.TYPE_7__ = type { i64 }
%struct.file = type { i32 }
%struct.m68k_serial = type { i64, i32, i32, i64, i32, i32, i64, i64, %struct.TYPE_6__, i64 }
%struct.TYPE_6__ = type { i32* }

@uart_addr = common dso_local global %struct.TYPE_8__* null, align 8
@.str = private unnamed_addr constant [9 x i8] c"rs_close\00", align 1
@.str.1 = private unnamed_addr constant [69 x i8] c"rs_close: bad serial port count; tty->count is 1, info->count is %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [48 x i8] c"rs_close: bad serial port count for ttyS%d: %d\0A\00", align 1
@S_CLOSING = common dso_local global i32 0, align 4
@S_CLOSING_WAIT_NONE = common dso_local global i64 0, align 8
@USTCNT_RXEN = common dso_local global i32 0, align 4
@USTCNT_RX_INTR_MASK = common dso_local global i32 0, align 4
@S_NORMAL_ACTIVE = common dso_local global i32 0, align 4
@N_TTY = common dso_local global i64 0, align 8
@ldiscs = common dso_local global %struct.TYPE_9__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tty_struct*, %struct.file*)* @rs_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rs_close(%struct.tty_struct* %0, %struct.file* %1) #0 {
  %3 = alloca %struct.tty_struct*, align 8
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.m68k_serial*, align 8
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca i64, align 8
  store %struct.tty_struct* %0, %struct.tty_struct** %3, align 8
  store %struct.file* %1, %struct.file** %4, align 8
  %8 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %9 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %8, i32 0, i32 5
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %10 to %struct.m68k_serial*
  store %struct.m68k_serial* %11, %struct.m68k_serial** %5, align 8
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** @uart_addr, align 8
  %13 = load %struct.m68k_serial*, %struct.m68k_serial** %5, align 8
  %14 = getelementptr inbounds %struct.m68k_serial, %struct.m68k_serial* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i64 %15
  store %struct.TYPE_8__* %16, %struct.TYPE_8__** %6, align 8
  %17 = load %struct.m68k_serial*, %struct.m68k_serial** %5, align 8
  %18 = icmp ne %struct.m68k_serial* %17, null
  br i1 %18, label %19, label %26

19:                                               ; preds = %2
  %20 = load %struct.m68k_serial*, %struct.m68k_serial** %5, align 8
  %21 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %22 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %21, i32 0, i32 4
  %23 = load i32, i32* %22, align 8
  %24 = call i64 @serial_paranoia_check(%struct.m68k_serial* %20, i32 %23, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %19, %2
  br label %158

27:                                               ; preds = %19
  %28 = load i64, i64* %7, align 8
  %29 = call i32 @local_irq_save(i64 %28)
  %30 = load %struct.file*, %struct.file** %4, align 8
  %31 = call i64 @tty_hung_up_p(%struct.file* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %27
  %34 = load i64, i64* %7, align 8
  %35 = call i32 @local_irq_restore(i64 %34)
  br label %158

36:                                               ; preds = %27
  %37 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %38 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = icmp eq i32 %39, 1
  br i1 %40, label %41, label %54

41:                                               ; preds = %36
  %42 = load %struct.m68k_serial*, %struct.m68k_serial** %5, align 8
  %43 = getelementptr inbounds %struct.m68k_serial, %struct.m68k_serial* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = icmp ne i32 %44, 1
  br i1 %45, label %46, label %54

46:                                               ; preds = %41
  %47 = load %struct.m68k_serial*, %struct.m68k_serial** %5, align 8
  %48 = getelementptr inbounds %struct.m68k_serial, %struct.m68k_serial* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = sext i32 %49 to i64
  %51 = call i32 (i8*, i64, ...) @printk(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.1, i64 0, i64 0), i64 %50)
  %52 = load %struct.m68k_serial*, %struct.m68k_serial** %5, align 8
  %53 = getelementptr inbounds %struct.m68k_serial, %struct.m68k_serial* %52, i32 0, i32 1
  store i32 1, i32* %53, align 8
  br label %54

54:                                               ; preds = %46, %41, %36
  %55 = load %struct.m68k_serial*, %struct.m68k_serial** %5, align 8
  %56 = getelementptr inbounds %struct.m68k_serial, %struct.m68k_serial* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = add nsw i32 %57, -1
  store i32 %58, i32* %56, align 8
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %60, label %70

60:                                               ; preds = %54
  %61 = load %struct.m68k_serial*, %struct.m68k_serial** %5, align 8
  %62 = getelementptr inbounds %struct.m68k_serial, %struct.m68k_serial* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.m68k_serial*, %struct.m68k_serial** %5, align 8
  %65 = getelementptr inbounds %struct.m68k_serial, %struct.m68k_serial* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = call i32 (i8*, i64, ...) @printk(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0), i64 %63, i32 %66)
  %68 = load %struct.m68k_serial*, %struct.m68k_serial** %5, align 8
  %69 = getelementptr inbounds %struct.m68k_serial, %struct.m68k_serial* %68, i32 0, i32 1
  store i32 0, i32* %69, align 8
  br label %70

70:                                               ; preds = %60, %54
  %71 = load %struct.m68k_serial*, %struct.m68k_serial** %5, align 8
  %72 = getelementptr inbounds %struct.m68k_serial, %struct.m68k_serial* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %70
  %76 = load i64, i64* %7, align 8
  %77 = call i32 @local_irq_restore(i64 %76)
  br label %158

78:                                               ; preds = %70
  %79 = load i32, i32* @S_CLOSING, align 4
  %80 = load %struct.m68k_serial*, %struct.m68k_serial** %5, align 8
  %81 = getelementptr inbounds %struct.m68k_serial, %struct.m68k_serial* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 4
  %83 = or i32 %82, %79
  store i32 %83, i32* %81, align 4
  %84 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %85 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %84, i32 0, i32 1
  store i32 1, i32* %85, align 4
  %86 = load %struct.m68k_serial*, %struct.m68k_serial** %5, align 8
  %87 = getelementptr inbounds %struct.m68k_serial, %struct.m68k_serial* %86, i32 0, i32 3
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* @S_CLOSING_WAIT_NONE, align 8
  %90 = icmp ne i64 %88, %89
  br i1 %90, label %91, label %97

91:                                               ; preds = %78
  %92 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %93 = load %struct.m68k_serial*, %struct.m68k_serial** %5, align 8
  %94 = getelementptr inbounds %struct.m68k_serial, %struct.m68k_serial* %93, i32 0, i32 3
  %95 = load i64, i64* %94, align 8
  %96 = call i32 @tty_wait_until_sent(%struct.tty_struct* %92, i64 %95)
  br label %97

97:                                               ; preds = %91, %78
  %98 = load i32, i32* @USTCNT_RXEN, align 4
  %99 = xor i32 %98, -1
  %100 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = and i32 %102, %99
  store i32 %103, i32* %101, align 4
  %104 = load i32, i32* @USTCNT_RXEN, align 4
  %105 = load i32, i32* @USTCNT_RX_INTR_MASK, align 4
  %106 = or i32 %104, %105
  %107 = xor i32 %106, -1
  %108 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %109 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = and i32 %110, %107
  store i32 %111, i32* %109, align 4
  %112 = load %struct.m68k_serial*, %struct.m68k_serial** %5, align 8
  %113 = call i32 @shutdown(%struct.m68k_serial* %112)
  %114 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %115 = call i32 @rs_flush_buffer(%struct.tty_struct* %114)
  %116 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %117 = call i32 @tty_ldisc_flush(%struct.tty_struct* %116)
  %118 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %119 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %118, i32 0, i32 1
  store i32 0, i32* %119, align 4
  %120 = load %struct.m68k_serial*, %struct.m68k_serial** %5, align 8
  %121 = getelementptr inbounds %struct.m68k_serial, %struct.m68k_serial* %120, i32 0, i32 9
  store i64 0, i64* %121, align 8
  %122 = load %struct.m68k_serial*, %struct.m68k_serial** %5, align 8
  %123 = getelementptr inbounds %struct.m68k_serial, %struct.m68k_serial* %122, i32 0, i32 8
  %124 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %123, i32 0, i32 0
  store i32* null, i32** %124, align 8
  %125 = load %struct.m68k_serial*, %struct.m68k_serial** %5, align 8
  %126 = getelementptr inbounds %struct.m68k_serial, %struct.m68k_serial* %125, i32 0, i32 7
  %127 = load i64, i64* %126, align 8
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %144

129:                                              ; preds = %97
  %130 = load %struct.m68k_serial*, %struct.m68k_serial** %5, align 8
  %131 = getelementptr inbounds %struct.m68k_serial, %struct.m68k_serial* %130, i32 0, i32 6
  %132 = load i64, i64* %131, align 8
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %140

134:                                              ; preds = %129
  %135 = load %struct.m68k_serial*, %struct.m68k_serial** %5, align 8
  %136 = getelementptr inbounds %struct.m68k_serial, %struct.m68k_serial* %135, i32 0, i32 6
  %137 = load i64, i64* %136, align 8
  %138 = call i32 @jiffies_to_msecs(i64 %137)
  %139 = call i32 @msleep_interruptible(i32 %138)
  br label %140

140:                                              ; preds = %134, %129
  %141 = load %struct.m68k_serial*, %struct.m68k_serial** %5, align 8
  %142 = getelementptr inbounds %struct.m68k_serial, %struct.m68k_serial* %141, i32 0, i32 5
  %143 = call i32 @wake_up_interruptible(i32* %142)
  br label %144

144:                                              ; preds = %140, %97
  %145 = load i32, i32* @S_NORMAL_ACTIVE, align 4
  %146 = load i32, i32* @S_CLOSING, align 4
  %147 = or i32 %145, %146
  %148 = xor i32 %147, -1
  %149 = load %struct.m68k_serial*, %struct.m68k_serial** %5, align 8
  %150 = getelementptr inbounds %struct.m68k_serial, %struct.m68k_serial* %149, i32 0, i32 2
  %151 = load i32, i32* %150, align 4
  %152 = and i32 %151, %148
  store i32 %152, i32* %150, align 4
  %153 = load %struct.m68k_serial*, %struct.m68k_serial** %5, align 8
  %154 = getelementptr inbounds %struct.m68k_serial, %struct.m68k_serial* %153, i32 0, i32 4
  %155 = call i32 @wake_up_interruptible(i32* %154)
  %156 = load i64, i64* %7, align 8
  %157 = call i32 @local_irq_restore(i64 %156)
  br label %158

158:                                              ; preds = %144, %75, %33, %26
  ret void
}

declare dso_local i64 @serial_paranoia_check(%struct.m68k_serial*, i32, i8*) #1

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i64 @tty_hung_up_p(%struct.file*) #1

declare dso_local i32 @local_irq_restore(i64) #1

declare dso_local i32 @printk(i8*, i64, ...) #1

declare dso_local i32 @tty_wait_until_sent(%struct.tty_struct*, i64) #1

declare dso_local i32 @shutdown(%struct.m68k_serial*) #1

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
