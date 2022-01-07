; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_sa1100.c_sa1100_rx_chars.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_sa1100.c_sa1100_rx_chars.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sa1100_port = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i64, %struct.TYPE_8__, %struct.TYPE_7__* }
%struct.TYPE_8__ = type { i32, i32, i32, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.tty_struct* }
%struct.tty_struct = type { i32 }

@UTSR1_RNE = common dso_local global i32 0, align 4
@TTY_NORMAL = common dso_local global i32 0, align 4
@UTSR1_PRE = common dso_local global i32 0, align 4
@UTSR1_FRE = common dso_local global i32 0, align 4
@UTSR1_ROR = common dso_local global i32 0, align 4
@TTY_PARITY = common dso_local global i32 0, align 4
@TTY_FRAME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sa1100_port*)* @sa1100_rx_chars to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sa1100_rx_chars(%struct.sa1100_port* %0) #0 {
  %2 = alloca %struct.sa1100_port*, align 8
  %3 = alloca %struct.tty_struct*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.sa1100_port* %0, %struct.sa1100_port** %2, align 8
  %7 = load %struct.sa1100_port*, %struct.sa1100_port** %2, align 8
  %8 = getelementptr inbounds %struct.sa1100_port, %struct.sa1100_port* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 3
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = load %struct.tty_struct*, %struct.tty_struct** %12, align 8
  store %struct.tty_struct* %13, %struct.tty_struct** %3, align 8
  %14 = load %struct.sa1100_port*, %struct.sa1100_port** %2, align 8
  %15 = call i32 @UART_GET_UTSR1(%struct.sa1100_port* %14)
  %16 = call i32 @UTSR1_TO_SM(i32 %15)
  %17 = load %struct.sa1100_port*, %struct.sa1100_port** %2, align 8
  %18 = call i32 @UART_GET_UTSR0(%struct.sa1100_port* %17)
  %19 = call i32 @UTSR0_TO_SM(i32 %18)
  %20 = or i32 %16, %19
  store i32 %20, i32* %4, align 4
  br label %21

21:                                               ; preds = %126, %1
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* @UTSR1_RNE, align 4
  %24 = call i32 @UTSR1_TO_SM(i32 %23)
  %25 = and i32 %22, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %134

27:                                               ; preds = %21
  %28 = load %struct.sa1100_port*, %struct.sa1100_port** %2, align 8
  %29 = call i32 @UART_GET_CHAR(%struct.sa1100_port* %28)
  store i32 %29, i32* %5, align 4
  %30 = load %struct.sa1100_port*, %struct.sa1100_port** %2, align 8
  %31 = getelementptr inbounds %struct.sa1100_port, %struct.sa1100_port* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 2
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %33, align 4
  %36 = load i32, i32* @TTY_NORMAL, align 4
  store i32 %36, i32* %6, align 4
  %37 = load i32, i32* %4, align 4
  %38 = load i32, i32* @UTSR1_PRE, align 4
  %39 = load i32, i32* @UTSR1_FRE, align 4
  %40 = or i32 %38, %39
  %41 = load i32, i32* @UTSR1_ROR, align 4
  %42 = or i32 %40, %41
  %43 = call i32 @UTSR1_TO_SM(i32 %42)
  %44 = and i32 %37, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %110

46:                                               ; preds = %27
  %47 = load i32, i32* %4, align 4
  %48 = load i32, i32* @UTSR1_PRE, align 4
  %49 = call i32 @UTSR1_TO_SM(i32 %48)
  %50 = and i32 %47, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %59

52:                                               ; preds = %46
  %53 = load %struct.sa1100_port*, %struct.sa1100_port** %2, align 8
  %54 = getelementptr inbounds %struct.sa1100_port, %struct.sa1100_port* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 2
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %56, align 8
  br label %73

59:                                               ; preds = %46
  %60 = load i32, i32* %4, align 4
  %61 = load i32, i32* @UTSR1_FRE, align 4
  %62 = call i32 @UTSR1_TO_SM(i32 %61)
  %63 = and i32 %60, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %72

65:                                               ; preds = %59
  %66 = load %struct.sa1100_port*, %struct.sa1100_port** %2, align 8
  %67 = getelementptr inbounds %struct.sa1100_port, %struct.sa1100_port* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %67, i32 0, i32 2
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %69, align 4
  br label %72

72:                                               ; preds = %65, %59
  br label %73

73:                                               ; preds = %72, %52
  %74 = load i32, i32* %4, align 4
  %75 = load i32, i32* @UTSR1_ROR, align 4
  %76 = call i32 @UTSR1_TO_SM(i32 %75)
  %77 = and i32 %74, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %86

79:                                               ; preds = %73
  %80 = load %struct.sa1100_port*, %struct.sa1100_port** %2, align 8
  %81 = getelementptr inbounds %struct.sa1100_port, %struct.sa1100_port* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %81, i32 0, i32 2
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %83, align 8
  br label %86

86:                                               ; preds = %79, %73
  %87 = load %struct.sa1100_port*, %struct.sa1100_port** %2, align 8
  %88 = getelementptr inbounds %struct.sa1100_port, %struct.sa1100_port* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = load i32, i32* %4, align 4
  %92 = and i32 %91, %90
  store i32 %92, i32* %4, align 4
  %93 = load i32, i32* %4, align 4
  %94 = load i32, i32* @UTSR1_PRE, align 4
  %95 = call i32 @UTSR1_TO_SM(i32 %94)
  %96 = and i32 %93, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %100

98:                                               ; preds = %86
  %99 = load i32, i32* @TTY_PARITY, align 4
  store i32 %99, i32* %6, align 4
  br label %109

100:                                              ; preds = %86
  %101 = load i32, i32* %4, align 4
  %102 = load i32, i32* @UTSR1_FRE, align 4
  %103 = call i32 @UTSR1_TO_SM(i32 %102)
  %104 = and i32 %101, %103
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %108

106:                                              ; preds = %100
  %107 = load i32, i32* @TTY_FRAME, align 4
  store i32 %107, i32* %6, align 4
  br label %108

108:                                              ; preds = %106, %100
  br label %109

109:                                              ; preds = %108, %98
  br label %110

110:                                              ; preds = %109, %27
  %111 = load %struct.sa1100_port*, %struct.sa1100_port** %2, align 8
  %112 = getelementptr inbounds %struct.sa1100_port, %struct.sa1100_port* %111, i32 0, i32 0
  %113 = load i32, i32* %5, align 4
  %114 = call i64 @uart_handle_sysrq_char(%struct.TYPE_9__* %112, i32 %113)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %117

116:                                              ; preds = %110
  br label %126

117:                                              ; preds = %110
  %118 = load %struct.sa1100_port*, %struct.sa1100_port** %2, align 8
  %119 = getelementptr inbounds %struct.sa1100_port, %struct.sa1100_port* %118, i32 0, i32 0
  %120 = load i32, i32* %4, align 4
  %121 = load i32, i32* @UTSR1_ROR, align 4
  %122 = call i32 @UTSR1_TO_SM(i32 %121)
  %123 = load i32, i32* %5, align 4
  %124 = load i32, i32* %6, align 4
  %125 = call i32 @uart_insert_char(%struct.TYPE_9__* %119, i32 %120, i32 %122, i32 %123, i32 %124)
  br label %126

126:                                              ; preds = %117, %116
  %127 = load %struct.sa1100_port*, %struct.sa1100_port** %2, align 8
  %128 = call i32 @UART_GET_UTSR1(%struct.sa1100_port* %127)
  %129 = call i32 @UTSR1_TO_SM(i32 %128)
  %130 = load %struct.sa1100_port*, %struct.sa1100_port** %2, align 8
  %131 = call i32 @UART_GET_UTSR0(%struct.sa1100_port* %130)
  %132 = call i32 @UTSR0_TO_SM(i32 %131)
  %133 = or i32 %129, %132
  store i32 %133, i32* %4, align 4
  br label %21

134:                                              ; preds = %21
  %135 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %136 = call i32 @tty_flip_buffer_push(%struct.tty_struct* %135)
  ret void
}

declare dso_local i32 @UTSR1_TO_SM(i32) #1

declare dso_local i32 @UART_GET_UTSR1(%struct.sa1100_port*) #1

declare dso_local i32 @UTSR0_TO_SM(i32) #1

declare dso_local i32 @UART_GET_UTSR0(%struct.sa1100_port*) #1

declare dso_local i32 @UART_GET_CHAR(%struct.sa1100_port*) #1

declare dso_local i64 @uart_handle_sysrq_char(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @uart_insert_char(%struct.TYPE_9__*, i32, i32, i32, i32) #1

declare dso_local i32 @tty_flip_buffer_push(%struct.tty_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
