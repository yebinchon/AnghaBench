; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_amiserial.c_receive_chars.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_amiserial.c_receive_chars.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }
%struct.async_struct = type { i32, i32, i32, %struct.TYPE_3__*, %struct.tty_struct* }
%struct.TYPE_3__ = type { %struct.async_icount }
%struct.async_icount = type { i32, i32, i32, i32, i32 }
%struct.tty_struct = type { i32 }

@UART_LSR_DR = common dso_local global i32 0, align 4
@custom = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@IF_RBF = common dso_local global i32 0, align 4
@UART_LSR_BI = common dso_local global i32 0, align 4
@SDR_OVRUN = common dso_local global i32 0, align 4
@UART_LSR_OE = common dso_local global i32 0, align 4
@TTY_NORMAL = common dso_local global i8 0, align 1
@UART_LSR_PE = common dso_local global i32 0, align 4
@UART_LSR_FE = common dso_local global i32 0, align 4
@TTY_BREAK = common dso_local global i8 0, align 1
@ASYNC_SAK = common dso_local global i32 0, align 4
@TTY_PARITY = common dso_local global i8 0, align 1
@TTY_FRAME = common dso_local global i8 0, align 1
@TTY_OVERRUN = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.async_struct*)* @receive_chars to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @receive_chars(%struct.async_struct* %0) #0 {
  %2 = alloca %struct.async_struct*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.tty_struct*, align 8
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  %8 = alloca %struct.async_icount*, align 8
  %9 = alloca i32, align 4
  store %struct.async_struct* %0, %struct.async_struct** %2, align 8
  %10 = load %struct.async_struct*, %struct.async_struct** %2, align 8
  %11 = getelementptr inbounds %struct.async_struct, %struct.async_struct* %10, i32 0, i32 4
  %12 = load %struct.tty_struct*, %struct.tty_struct** %11, align 8
  store %struct.tty_struct* %12, %struct.tty_struct** %5, align 8
  store i32 0, i32* %9, align 4
  %13 = load %struct.async_struct*, %struct.async_struct** %2, align 8
  %14 = getelementptr inbounds %struct.async_struct, %struct.async_struct* %13, i32 0, i32 3
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  store %struct.async_icount* %16, %struct.async_icount** %8, align 8
  %17 = load i32, i32* @UART_LSR_DR, align 4
  store i32 %17, i32* %3, align 4
  %18 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @custom, i32 0, i32 0), align 4
  store i32 %18, i32* %4, align 4
  %19 = call i32 (...) @mb()
  %20 = load i32, i32* @IF_RBF, align 4
  store i32 %20, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @custom, i32 0, i32 1), align 4
  %21 = call i32 (...) @mb()
  %22 = load i32, i32* %4, align 4
  %23 = and i32 %22, 511
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %1
  %26 = load i32, i32* @UART_LSR_BI, align 4
  %27 = load i32, i32* %3, align 4
  %28 = or i32 %27, %26
  store i32 %28, i32* %3, align 4
  br label %29

29:                                               ; preds = %25, %1
  %30 = load i32, i32* %4, align 4
  %31 = load i32, i32* @SDR_OVRUN, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %29
  %35 = load i32, i32* @UART_LSR_OE, align 4
  %36 = load i32, i32* %3, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %3, align 4
  br label %38

38:                                               ; preds = %34, %29
  %39 = load i32, i32* %4, align 4
  %40 = and i32 %39, 255
  %41 = trunc i32 %40 to i8
  store i8 %41, i8* %6, align 1
  %42 = load %struct.async_icount*, %struct.async_icount** %8, align 8
  %43 = getelementptr inbounds %struct.async_icount, %struct.async_icount* %42, i32 0, i32 4
  %44 = load i32, i32* %43, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %43, align 4
  %46 = load i8, i8* @TTY_NORMAL, align 1
  store i8 %46, i8* %7, align 1
  %47 = load i32, i32* %3, align 4
  %48 = load i32, i32* @UART_LSR_BI, align 4
  %49 = load i32, i32* @UART_LSR_PE, align 4
  %50 = or i32 %48, %49
  %51 = load i32, i32* @UART_LSR_FE, align 4
  %52 = or i32 %50, %51
  %53 = load i32, i32* @UART_LSR_OE, align 4
  %54 = or i32 %52, %53
  %55 = and i32 %47, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %158

57:                                               ; preds = %38
  %58 = load i32, i32* %3, align 4
  %59 = load i32, i32* @UART_LSR_BI, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %73

62:                                               ; preds = %57
  %63 = load i32, i32* @UART_LSR_FE, align 4
  %64 = load i32, i32* @UART_LSR_PE, align 4
  %65 = or i32 %63, %64
  %66 = xor i32 %65, -1
  %67 = load i32, i32* %3, align 4
  %68 = and i32 %67, %66
  store i32 %68, i32* %3, align 4
  %69 = load %struct.async_icount*, %struct.async_icount** %8, align 8
  %70 = getelementptr inbounds %struct.async_icount, %struct.async_icount* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %70, align 4
  br label %95

73:                                               ; preds = %57
  %74 = load i32, i32* %3, align 4
  %75 = load i32, i32* @UART_LSR_PE, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %83

78:                                               ; preds = %73
  %79 = load %struct.async_icount*, %struct.async_icount** %8, align 8
  %80 = getelementptr inbounds %struct.async_icount, %struct.async_icount* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %80, align 4
  br label %94

83:                                               ; preds = %73
  %84 = load i32, i32* %3, align 4
  %85 = load i32, i32* @UART_LSR_FE, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %93

88:                                               ; preds = %83
  %89 = load %struct.async_icount*, %struct.async_icount** %8, align 8
  %90 = getelementptr inbounds %struct.async_icount, %struct.async_icount* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %90, align 4
  br label %93

93:                                               ; preds = %88, %83
  br label %94

94:                                               ; preds = %93, %78
  br label %95

95:                                               ; preds = %94, %62
  %96 = load i32, i32* %3, align 4
  %97 = load i32, i32* @UART_LSR_OE, align 4
  %98 = and i32 %96, %97
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %105

100:                                              ; preds = %95
  %101 = load %struct.async_icount*, %struct.async_icount** %8, align 8
  %102 = getelementptr inbounds %struct.async_icount, %struct.async_icount* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %102, align 4
  br label %105

105:                                              ; preds = %100, %95
  %106 = load i32, i32* %3, align 4
  %107 = load %struct.async_struct*, %struct.async_struct** %2, align 8
  %108 = getelementptr inbounds %struct.async_struct, %struct.async_struct* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = and i32 %106, %109
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %113

112:                                              ; preds = %105
  br label %172

113:                                              ; preds = %105
  %114 = load %struct.async_struct*, %struct.async_struct** %2, align 8
  %115 = getelementptr inbounds %struct.async_struct, %struct.async_struct* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = load i32, i32* %3, align 4
  %118 = and i32 %117, %116
  store i32 %118, i32* %3, align 4
  %119 = load i32, i32* %3, align 4
  %120 = load i32, i32* @UART_LSR_BI, align 4
  %121 = and i32 %119, %120
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %135

123:                                              ; preds = %113
  %124 = load i8, i8* @TTY_BREAK, align 1
  store i8 %124, i8* %7, align 1
  %125 = load %struct.async_struct*, %struct.async_struct** %2, align 8
  %126 = getelementptr inbounds %struct.async_struct, %struct.async_struct* %125, i32 0, i32 2
  %127 = load i32, i32* %126, align 8
  %128 = load i32, i32* @ASYNC_SAK, align 4
  %129 = and i32 %127, %128
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %134

131:                                              ; preds = %123
  %132 = load %struct.tty_struct*, %struct.tty_struct** %5, align 8
  %133 = call i32 @do_SAK(%struct.tty_struct* %132)
  br label %134

134:                                              ; preds = %131, %123
  br label %151

135:                                              ; preds = %113
  %136 = load i32, i32* %3, align 4
  %137 = load i32, i32* @UART_LSR_PE, align 4
  %138 = and i32 %136, %137
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %142

140:                                              ; preds = %135
  %141 = load i8, i8* @TTY_PARITY, align 1
  store i8 %141, i8* %7, align 1
  br label %150

142:                                              ; preds = %135
  %143 = load i32, i32* %3, align 4
  %144 = load i32, i32* @UART_LSR_FE, align 4
  %145 = and i32 %143, %144
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %149

147:                                              ; preds = %142
  %148 = load i8, i8* @TTY_FRAME, align 1
  store i8 %148, i8* %7, align 1
  br label %149

149:                                              ; preds = %147, %142
  br label %150

150:                                              ; preds = %149, %140
  br label %151

151:                                              ; preds = %150, %134
  %152 = load i32, i32* %3, align 4
  %153 = load i32, i32* @UART_LSR_OE, align 4
  %154 = and i32 %152, %153
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %157

156:                                              ; preds = %151
  store i32 1, i32* %9, align 4
  br label %157

157:                                              ; preds = %156, %151
  br label %158

158:                                              ; preds = %157, %38
  %159 = load %struct.tty_struct*, %struct.tty_struct** %5, align 8
  %160 = load i8, i8* %6, align 1
  %161 = load i8, i8* %7, align 1
  %162 = call i32 @tty_insert_flip_char(%struct.tty_struct* %159, i8 zeroext %160, i8 zeroext %161)
  %163 = load i32, i32* %9, align 4
  %164 = icmp eq i32 %163, 1
  br i1 %164, label %165, label %169

165:                                              ; preds = %158
  %166 = load %struct.tty_struct*, %struct.tty_struct** %5, align 8
  %167 = load i8, i8* @TTY_OVERRUN, align 1
  %168 = call i32 @tty_insert_flip_char(%struct.tty_struct* %166, i8 zeroext 0, i8 zeroext %167)
  br label %169

169:                                              ; preds = %165, %158
  %170 = load %struct.tty_struct*, %struct.tty_struct** %5, align 8
  %171 = call i32 @tty_flip_buffer_push(%struct.tty_struct* %170)
  br label %172

172:                                              ; preds = %169, %112
  ret void
}

declare dso_local i32 @mb(...) #1

declare dso_local i32 @do_SAK(%struct.tty_struct*) #1

declare dso_local i32 @tty_insert_flip_char(%struct.tty_struct*, i8 zeroext, i8 zeroext) #1

declare dso_local i32 @tty_flip_buffer_push(%struct.tty_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
