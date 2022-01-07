; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_mxser.c_mxser_check_modem_status.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_mxser.c_mxser_check_modem_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { i32 }
%struct.mxser_port = type { i64, i32, i64, %struct.TYPE_8__*, %struct.TYPE_7__, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32, i32, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32, i32, i32, i32 }

@UART_MSR_TERI = common dso_local global i32 0, align 4
@UART_MSR_DDSR = common dso_local global i32 0, align 4
@UART_MSR_DDCD = common dso_local global i32 0, align 4
@UART_MSR_DCTS = common dso_local global i32 0, align 4
@ASYNC_CHECK_CD = common dso_local global i32 0, align 4
@UART_MSR_DCD = common dso_local global i32 0, align 4
@ASYNC_CTS_FLOW = common dso_local global i32 0, align 4
@UART_MSR_CTS = common dso_local global i32 0, align 4
@PORT_16550A = common dso_local global i64 0, align 8
@UART_IER_THRI = common dso_local global i32 0, align 4
@UART_IER = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tty_struct*, %struct.mxser_port*, i32)* @mxser_check_modem_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mxser_check_modem_status(%struct.tty_struct* %0, %struct.mxser_port* %1, i32 %2) #0 {
  %4 = alloca %struct.tty_struct*, align 8
  %5 = alloca %struct.mxser_port*, align 8
  %6 = alloca i32, align 4
  store %struct.tty_struct* %0, %struct.tty_struct** %4, align 8
  store %struct.mxser_port* %1, %struct.mxser_port** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @UART_MSR_TERI, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %17

11:                                               ; preds = %3
  %12 = load %struct.mxser_port*, %struct.mxser_port** %5, align 8
  %13 = getelementptr inbounds %struct.mxser_port, %struct.mxser_port* %12, i32 0, i32 6
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 4
  %16 = add nsw i32 %15, 1
  store i32 %16, i32* %14, align 4
  br label %17

17:                                               ; preds = %11, %3
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* @UART_MSR_DDSR, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %17
  %23 = load %struct.mxser_port*, %struct.mxser_port** %5, align 8
  %24 = getelementptr inbounds %struct.mxser_port, %struct.mxser_port* %23, i32 0, i32 6
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %25, align 8
  br label %28

28:                                               ; preds = %22, %17
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* @UART_MSR_DDCD, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %28
  %34 = load %struct.mxser_port*, %struct.mxser_port** %5, align 8
  %35 = getelementptr inbounds %struct.mxser_port, %struct.mxser_port* %34, i32 0, i32 6
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %36, align 4
  br label %39

39:                                               ; preds = %33, %28
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* @UART_MSR_DCTS, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %39
  %45 = load %struct.mxser_port*, %struct.mxser_port** %5, align 8
  %46 = getelementptr inbounds %struct.mxser_port, %struct.mxser_port* %45, i32 0, i32 6
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %47, align 8
  br label %50

50:                                               ; preds = %44, %39
  %51 = load i32, i32* %6, align 4
  %52 = load %struct.mxser_port*, %struct.mxser_port** %5, align 8
  %53 = getelementptr inbounds %struct.mxser_port, %struct.mxser_port* %52, i32 0, i32 5
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 0
  store i32 %51, i32* %54, align 4
  %55 = load %struct.mxser_port*, %struct.mxser_port** %5, align 8
  %56 = getelementptr inbounds %struct.mxser_port, %struct.mxser_port* %55, i32 0, i32 4
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 2
  %58 = call i32 @wake_up_interruptible(i32* %57)
  %59 = load %struct.mxser_port*, %struct.mxser_port** %5, align 8
  %60 = getelementptr inbounds %struct.mxser_port, %struct.mxser_port* %59, i32 0, i32 4
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* @ASYNC_CHECK_CD, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %82

66:                                               ; preds = %50
  %67 = load i32, i32* %6, align 4
  %68 = load i32, i32* @UART_MSR_DDCD, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %82

71:                                               ; preds = %66
  %72 = load i32, i32* %6, align 4
  %73 = load i32, i32* @UART_MSR_DCD, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %81

76:                                               ; preds = %71
  %77 = load %struct.mxser_port*, %struct.mxser_port** %5, align 8
  %78 = getelementptr inbounds %struct.mxser_port, %struct.mxser_port* %77, i32 0, i32 4
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 1
  %80 = call i32 @wake_up_interruptible(i32* %79)
  br label %81

81:                                               ; preds = %76, %71
  br label %82

82:                                               ; preds = %81, %66, %50
  %83 = load %struct.mxser_port*, %struct.mxser_port** %5, align 8
  %84 = getelementptr inbounds %struct.mxser_port, %struct.mxser_port* %83, i32 0, i32 4
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = load i32, i32* @ASYNC_CTS_FLOW, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %185

90:                                               ; preds = %82
  %91 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %92 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %146

95:                                               ; preds = %90
  %96 = load i32, i32* %6, align 4
  %97 = load i32, i32* @UART_MSR_CTS, align 4
  %98 = and i32 %96, %97
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %145

100:                                              ; preds = %95
  %101 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %102 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %101, i32 0, i32 0
  store i32 0, i32* %102, align 4
  %103 = load %struct.mxser_port*, %struct.mxser_port** %5, align 8
  %104 = getelementptr inbounds %struct.mxser_port, %struct.mxser_port* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = load i64, i64* @PORT_16550A, align 8
  %107 = icmp ne i64 %105, %106
  br i1 %107, label %108, label %142

108:                                              ; preds = %100
  %109 = load %struct.mxser_port*, %struct.mxser_port** %5, align 8
  %110 = getelementptr inbounds %struct.mxser_port, %struct.mxser_port* %109, i32 0, i32 3
  %111 = load %struct.TYPE_8__*, %struct.TYPE_8__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %142, label %115

115:                                              ; preds = %108
  %116 = load %struct.mxser_port*, %struct.mxser_port** %5, align 8
  %117 = getelementptr inbounds %struct.mxser_port, %struct.mxser_port* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 8
  %119 = load i32, i32* @UART_IER_THRI, align 4
  %120 = xor i32 %119, -1
  %121 = and i32 %118, %120
  %122 = load %struct.mxser_port*, %struct.mxser_port** %5, align 8
  %123 = getelementptr inbounds %struct.mxser_port, %struct.mxser_port* %122, i32 0, i32 2
  %124 = load i64, i64* %123, align 8
  %125 = load i64, i64* @UART_IER, align 8
  %126 = add nsw i64 %124, %125
  %127 = call i32 @outb(i32 %121, i64 %126)
  %128 = load i32, i32* @UART_IER_THRI, align 4
  %129 = load %struct.mxser_port*, %struct.mxser_port** %5, align 8
  %130 = getelementptr inbounds %struct.mxser_port, %struct.mxser_port* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 8
  %132 = or i32 %131, %128
  store i32 %132, i32* %130, align 8
  %133 = load %struct.mxser_port*, %struct.mxser_port** %5, align 8
  %134 = getelementptr inbounds %struct.mxser_port, %struct.mxser_port* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 8
  %136 = load %struct.mxser_port*, %struct.mxser_port** %5, align 8
  %137 = getelementptr inbounds %struct.mxser_port, %struct.mxser_port* %136, i32 0, i32 2
  %138 = load i64, i64* %137, align 8
  %139 = load i64, i64* @UART_IER, align 8
  %140 = add nsw i64 %138, %139
  %141 = call i32 @outb(i32 %135, i64 %140)
  br label %142

142:                                              ; preds = %115, %108, %100
  %143 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %144 = call i32 @tty_wakeup(%struct.tty_struct* %143)
  br label %145

145:                                              ; preds = %142, %95
  br label %184

146:                                              ; preds = %90
  %147 = load i32, i32* %6, align 4
  %148 = load i32, i32* @UART_MSR_CTS, align 4
  %149 = and i32 %147, %148
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %183, label %151

151:                                              ; preds = %146
  %152 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %153 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %152, i32 0, i32 0
  store i32 1, i32* %153, align 4
  %154 = load %struct.mxser_port*, %struct.mxser_port** %5, align 8
  %155 = getelementptr inbounds %struct.mxser_port, %struct.mxser_port* %154, i32 0, i32 0
  %156 = load i64, i64* %155, align 8
  %157 = load i64, i64* @PORT_16550A, align 8
  %158 = icmp ne i64 %156, %157
  br i1 %158, label %159, label %182

159:                                              ; preds = %151
  %160 = load %struct.mxser_port*, %struct.mxser_port** %5, align 8
  %161 = getelementptr inbounds %struct.mxser_port, %struct.mxser_port* %160, i32 0, i32 3
  %162 = load %struct.TYPE_8__*, %struct.TYPE_8__** %161, align 8
  %163 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 4
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %182, label %166

166:                                              ; preds = %159
  %167 = load i32, i32* @UART_IER_THRI, align 4
  %168 = xor i32 %167, -1
  %169 = load %struct.mxser_port*, %struct.mxser_port** %5, align 8
  %170 = getelementptr inbounds %struct.mxser_port, %struct.mxser_port* %169, i32 0, i32 1
  %171 = load i32, i32* %170, align 8
  %172 = and i32 %171, %168
  store i32 %172, i32* %170, align 8
  %173 = load %struct.mxser_port*, %struct.mxser_port** %5, align 8
  %174 = getelementptr inbounds %struct.mxser_port, %struct.mxser_port* %173, i32 0, i32 1
  %175 = load i32, i32* %174, align 8
  %176 = load %struct.mxser_port*, %struct.mxser_port** %5, align 8
  %177 = getelementptr inbounds %struct.mxser_port, %struct.mxser_port* %176, i32 0, i32 2
  %178 = load i64, i64* %177, align 8
  %179 = load i64, i64* @UART_IER, align 8
  %180 = add nsw i64 %178, %179
  %181 = call i32 @outb(i32 %175, i64 %180)
  br label %182

182:                                              ; preds = %166, %159, %151
  br label %183

183:                                              ; preds = %182, %146
  br label %184

184:                                              ; preds = %183, %145
  br label %185

185:                                              ; preds = %184, %82
  ret void
}

declare dso_local i32 @wake_up_interruptible(i32*) #1

declare dso_local i32 @outb(i32, i64) #1

declare dso_local i32 @tty_wakeup(%struct.tty_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
