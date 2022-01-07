; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_sh-sci.c_sci_handle_errors.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_sh-sci.c_sci_handle_errors.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.tty_struct* }
%struct.tty_struct = type { i32 }
%struct.sci_port = type { i32 }

@SCxSR = common dso_local global i32 0, align 4
@TTY_OVERRUN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"overrun error\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"BREAK detected\0A\00", align 1
@TTY_BREAK = common dso_local global i32 0, align 4
@TTY_FRAME = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [13 x i8] c"frame error\0A\00", align 1
@TTY_PARITY = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [13 x i8] c"parity error\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uart_port*)* @sci_handle_errors to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sci_handle_errors(%struct.uart_port* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.uart_port*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i16, align 2
  %6 = alloca %struct.tty_struct*, align 8
  %7 = alloca %struct.sci_port*, align 8
  store %struct.uart_port* %0, %struct.uart_port** %3, align 8
  store i32 0, i32* %4, align 4
  %8 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %9 = load i32, i32* @SCxSR, align 4
  %10 = call zeroext i16 @sci_in(%struct.uart_port* %8, i32 %9)
  store i16 %10, i16* %5, align 2
  %11 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %12 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %11, i32 0, i32 1
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load %struct.tty_struct*, %struct.tty_struct** %15, align 8
  store %struct.tty_struct* %16, %struct.tty_struct** %6, align 8
  %17 = load i16, i16* %5, align 2
  %18 = zext i16 %17 to i32
  %19 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %20 = call zeroext i16 @SCxSR_ORER(%struct.uart_port* %19)
  %21 = zext i16 %20 to i32
  %22 = and i32 %18, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %37

24:                                               ; preds = %1
  %25 = load %struct.tty_struct*, %struct.tty_struct** %6, align 8
  %26 = load i32, i32* @TTY_OVERRUN, align 4
  %27 = call i64 @tty_insert_flip_char(%struct.tty_struct* %25, i32 0, i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %24
  %30 = load i32, i32* %4, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %4, align 4
  br label %32

32:                                               ; preds = %29, %24
  %33 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %34 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @dev_notice(i32 %35, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  br label %37

37:                                               ; preds = %32, %1
  %38 = load i16, i16* %5, align 2
  %39 = zext i16 %38 to i32
  %40 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %41 = call zeroext i16 @SCxSR_FER(%struct.uart_port* %40)
  %42 = zext i16 %41 to i32
  %43 = and i32 %39, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %93

45:                                               ; preds = %37
  %46 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %47 = call i64 @sci_rxd_in(%struct.uart_port* %46)
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %49, label %79

49:                                               ; preds = %45
  %50 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %51 = call %struct.sci_port* @to_sci_port(%struct.uart_port* %50)
  store %struct.sci_port* %51, %struct.sci_port** %7, align 8
  %52 = load %struct.sci_port*, %struct.sci_port** %7, align 8
  %53 = getelementptr inbounds %struct.sci_port, %struct.sci_port* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %78, label %56

56:                                               ; preds = %49
  %57 = load %struct.sci_port*, %struct.sci_port** %7, align 8
  %58 = getelementptr inbounds %struct.sci_port, %struct.sci_port* %57, i32 0, i32 0
  store i32 1, i32* %58, align 4
  %59 = load %struct.sci_port*, %struct.sci_port** %7, align 8
  %60 = call i32 @sci_schedule_break_timer(%struct.sci_port* %59)
  %61 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %62 = call i64 @uart_handle_break(%struct.uart_port* %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %56
  store i32 0, i32* %2, align 4
  br label %122

65:                                               ; preds = %56
  %66 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %67 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @dev_dbg(i32 %68, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  %70 = load %struct.tty_struct*, %struct.tty_struct** %6, align 8
  %71 = load i32, i32* @TTY_BREAK, align 4
  %72 = call i64 @tty_insert_flip_char(%struct.tty_struct* %70, i32 0, i32 %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %65
  %75 = load i32, i32* %4, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %4, align 4
  br label %77

77:                                               ; preds = %74, %65
  br label %78

78:                                               ; preds = %77, %49
  br label %92

79:                                               ; preds = %45
  %80 = load %struct.tty_struct*, %struct.tty_struct** %6, align 8
  %81 = load i32, i32* @TTY_FRAME, align 4
  %82 = call i64 @tty_insert_flip_char(%struct.tty_struct* %80, i32 0, i32 %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %87

84:                                               ; preds = %79
  %85 = load i32, i32* %4, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %4, align 4
  br label %87

87:                                               ; preds = %84, %79
  %88 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %89 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = call i32 @dev_notice(i32 %90, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  br label %92

92:                                               ; preds = %87, %78
  br label %93

93:                                               ; preds = %92, %37
  %94 = load i16, i16* %5, align 2
  %95 = zext i16 %94 to i32
  %96 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %97 = call zeroext i16 @SCxSR_PER(%struct.uart_port* %96)
  %98 = zext i16 %97 to i32
  %99 = and i32 %95, %98
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %114

101:                                              ; preds = %93
  %102 = load %struct.tty_struct*, %struct.tty_struct** %6, align 8
  %103 = load i32, i32* @TTY_PARITY, align 4
  %104 = call i64 @tty_insert_flip_char(%struct.tty_struct* %102, i32 0, i32 %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %109

106:                                              ; preds = %101
  %107 = load i32, i32* %4, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %4, align 4
  br label %109

109:                                              ; preds = %106, %101
  %110 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %111 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = call i32 @dev_notice(i32 %112, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  br label %114

114:                                              ; preds = %109, %93
  %115 = load i32, i32* %4, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %120

117:                                              ; preds = %114
  %118 = load %struct.tty_struct*, %struct.tty_struct** %6, align 8
  %119 = call i32 @tty_flip_buffer_push(%struct.tty_struct* %118)
  br label %120

120:                                              ; preds = %117, %114
  %121 = load i32, i32* %4, align 4
  store i32 %121, i32* %2, align 4
  br label %122

122:                                              ; preds = %120, %64
  %123 = load i32, i32* %2, align 4
  ret i32 %123
}

declare dso_local zeroext i16 @sci_in(%struct.uart_port*, i32) #1

declare dso_local zeroext i16 @SCxSR_ORER(%struct.uart_port*) #1

declare dso_local i64 @tty_insert_flip_char(%struct.tty_struct*, i32, i32) #1

declare dso_local i32 @dev_notice(i32, i8*) #1

declare dso_local zeroext i16 @SCxSR_FER(%struct.uart_port*) #1

declare dso_local i64 @sci_rxd_in(%struct.uart_port*) #1

declare dso_local %struct.sci_port* @to_sci_port(%struct.uart_port*) #1

declare dso_local i32 @sci_schedule_break_timer(%struct.sci_port*) #1

declare dso_local i64 @uart_handle_break(%struct.uart_port*) #1

declare dso_local i32 @dev_dbg(i32, i8*) #1

declare dso_local zeroext i16 @SCxSR_PER(%struct.uart_port*) #1

declare dso_local i32 @tty_flip_buffer_push(%struct.tty_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
