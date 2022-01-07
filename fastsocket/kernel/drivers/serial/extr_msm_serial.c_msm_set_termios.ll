; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_msm_serial.c_msm_set_termios.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_msm_serial.c_msm_set_termios.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32, i32 }
%struct.ktermios = type { i32, i32 }

@UART_MR2 = common dso_local global i32 0, align 4
@UART_MR2_PARITY_MODE = common dso_local global i32 0, align 4
@PARENB = common dso_local global i32 0, align 4
@PARODD = common dso_local global i32 0, align 4
@UART_MR2_PARITY_MODE_ODD = common dso_local global i32 0, align 4
@CMSPAR = common dso_local global i32 0, align 4
@UART_MR2_PARITY_MODE_SPACE = common dso_local global i32 0, align 4
@UART_MR2_PARITY_MODE_EVEN = common dso_local global i32 0, align 4
@UART_MR2_BITS_PER_CHAR = common dso_local global i32 0, align 4
@CSIZE = common dso_local global i32 0, align 4
@UART_MR2_BITS_PER_CHAR_5 = common dso_local global i32 0, align 4
@UART_MR2_BITS_PER_CHAR_6 = common dso_local global i32 0, align 4
@UART_MR2_BITS_PER_CHAR_7 = common dso_local global i32 0, align 4
@UART_MR2_BITS_PER_CHAR_8 = common dso_local global i32 0, align 4
@UART_MR2_STOP_BIT_LEN_ONE = common dso_local global i32 0, align 4
@UART_MR2_STOP_BIT_LEN_TWO = common dso_local global i32 0, align 4
@CSTOPB = common dso_local global i32 0, align 4
@UART_MR1 = common dso_local global i32 0, align 4
@UART_MR1_CTS_CTL = common dso_local global i32 0, align 4
@UART_MR1_RX_RDY_CTL = common dso_local global i32 0, align 4
@CRTSCTS = common dso_local global i32 0, align 4
@INPCK = common dso_local global i32 0, align 4
@UART_SR_PAR_FRAME_ERR = common dso_local global i32 0, align 4
@BRKINT = common dso_local global i32 0, align 4
@PARMRK = common dso_local global i32 0, align 4
@UART_SR_RX_BREAK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_port*, %struct.ktermios*, %struct.ktermios*)* @msm_set_termios to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @msm_set_termios(%struct.uart_port* %0, %struct.ktermios* %1, %struct.ktermios* %2) #0 {
  %4 = alloca %struct.uart_port*, align 8
  %5 = alloca %struct.ktermios*, align 8
  %6 = alloca %struct.ktermios*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.uart_port* %0, %struct.uart_port** %4, align 8
  store %struct.ktermios* %1, %struct.ktermios** %5, align 8
  store %struct.ktermios* %2, %struct.ktermios** %6, align 8
  %10 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %11 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %10, i32 0, i32 0
  %12 = load i64, i64* %7, align 8
  %13 = call i32 @spin_lock_irqsave(i32* %11, i64 %12)
  %14 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %15 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %16 = load %struct.ktermios*, %struct.ktermios** %6, align 8
  %17 = call i32 @uart_get_baud_rate(%struct.uart_port* %14, %struct.ktermios* %15, %struct.ktermios* %16, i32 300, i32 115200)
  store i32 %17, i32* %8, align 4
  %18 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %19 = load i32, i32* %8, align 4
  %20 = call i32 @msm_set_baud_rate(%struct.uart_port* %18, i32 %19)
  store i32 %20, i32* %8, align 4
  %21 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %22 = call i64 @tty_termios_baud_rate(%struct.ktermios* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %3
  %25 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %26 = load i32, i32* %8, align 4
  %27 = load i32, i32* %8, align 4
  %28 = call i32 @tty_termios_encode_baud_rate(%struct.ktermios* %25, i32 %26, i32 %27)
  br label %29

29:                                               ; preds = %24, %3
  %30 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %31 = load i32, i32* @UART_MR2, align 4
  %32 = call i32 @msm_read(%struct.uart_port* %30, i32 %31)
  store i32 %32, i32* %9, align 4
  %33 = load i32, i32* @UART_MR2_PARITY_MODE, align 4
  %34 = xor i32 %33, -1
  %35 = load i32, i32* %9, align 4
  %36 = and i32 %35, %34
  store i32 %36, i32* %9, align 4
  %37 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %38 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @PARENB, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %71

43:                                               ; preds = %29
  %44 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %45 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @PARODD, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %43
  %51 = load i32, i32* @UART_MR2_PARITY_MODE_ODD, align 4
  %52 = load i32, i32* %9, align 4
  %53 = or i32 %52, %51
  store i32 %53, i32* %9, align 4
  br label %70

54:                                               ; preds = %43
  %55 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %56 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @CMSPAR, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %54
  %62 = load i32, i32* @UART_MR2_PARITY_MODE_SPACE, align 4
  %63 = load i32, i32* %9, align 4
  %64 = or i32 %63, %62
  store i32 %64, i32* %9, align 4
  br label %69

65:                                               ; preds = %54
  %66 = load i32, i32* @UART_MR2_PARITY_MODE_EVEN, align 4
  %67 = load i32, i32* %9, align 4
  %68 = or i32 %67, %66
  store i32 %68, i32* %9, align 4
  br label %69

69:                                               ; preds = %65, %61
  br label %70

70:                                               ; preds = %69, %50
  br label %71

71:                                               ; preds = %70, %29
  %72 = load i32, i32* @UART_MR2_BITS_PER_CHAR, align 4
  %73 = xor i32 %72, -1
  %74 = load i32, i32* %9, align 4
  %75 = and i32 %74, %73
  store i32 %75, i32* %9, align 4
  %76 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %77 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @CSIZE, align 4
  %80 = and i32 %78, %79
  switch i32 %80, label %94 [
    i32 131, label %81
    i32 130, label %85
    i32 129, label %89
    i32 128, label %93
  ]

81:                                               ; preds = %71
  %82 = load i32, i32* @UART_MR2_BITS_PER_CHAR_5, align 4
  %83 = load i32, i32* %9, align 4
  %84 = or i32 %83, %82
  store i32 %84, i32* %9, align 4
  br label %98

85:                                               ; preds = %71
  %86 = load i32, i32* @UART_MR2_BITS_PER_CHAR_6, align 4
  %87 = load i32, i32* %9, align 4
  %88 = or i32 %87, %86
  store i32 %88, i32* %9, align 4
  br label %98

89:                                               ; preds = %71
  %90 = load i32, i32* @UART_MR2_BITS_PER_CHAR_7, align 4
  %91 = load i32, i32* %9, align 4
  %92 = or i32 %91, %90
  store i32 %92, i32* %9, align 4
  br label %98

93:                                               ; preds = %71
  br label %94

94:                                               ; preds = %71, %93
  %95 = load i32, i32* @UART_MR2_BITS_PER_CHAR_8, align 4
  %96 = load i32, i32* %9, align 4
  %97 = or i32 %96, %95
  store i32 %97, i32* %9, align 4
  br label %98

98:                                               ; preds = %94, %89, %85, %81
  %99 = load i32, i32* @UART_MR2_STOP_BIT_LEN_ONE, align 4
  %100 = load i32, i32* @UART_MR2_STOP_BIT_LEN_TWO, align 4
  %101 = or i32 %99, %100
  %102 = xor i32 %101, -1
  %103 = load i32, i32* %9, align 4
  %104 = and i32 %103, %102
  store i32 %104, i32* %9, align 4
  %105 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %106 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* @CSTOPB, align 4
  %109 = and i32 %107, %108
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %115

111:                                              ; preds = %98
  %112 = load i32, i32* @UART_MR2_STOP_BIT_LEN_TWO, align 4
  %113 = load i32, i32* %9, align 4
  %114 = or i32 %113, %112
  store i32 %114, i32* %9, align 4
  br label %119

115:                                              ; preds = %98
  %116 = load i32, i32* @UART_MR2_STOP_BIT_LEN_ONE, align 4
  %117 = load i32, i32* %9, align 4
  %118 = or i32 %117, %116
  store i32 %118, i32* %9, align 4
  br label %119

119:                                              ; preds = %115, %111
  %120 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %121 = load i32, i32* %9, align 4
  %122 = load i32, i32* @UART_MR2, align 4
  %123 = call i32 @msm_write(%struct.uart_port* %120, i32 %121, i32 %122)
  %124 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %125 = load i32, i32* @UART_MR1, align 4
  %126 = call i32 @msm_read(%struct.uart_port* %124, i32 %125)
  store i32 %126, i32* %9, align 4
  %127 = load i32, i32* @UART_MR1_CTS_CTL, align 4
  %128 = load i32, i32* @UART_MR1_RX_RDY_CTL, align 4
  %129 = or i32 %127, %128
  %130 = xor i32 %129, -1
  %131 = load i32, i32* %9, align 4
  %132 = and i32 %131, %130
  store i32 %132, i32* %9, align 4
  %133 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %134 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = load i32, i32* @CRTSCTS, align 4
  %137 = and i32 %135, %136
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %146

139:                                              ; preds = %119
  %140 = load i32, i32* @UART_MR1_CTS_CTL, align 4
  %141 = load i32, i32* %9, align 4
  %142 = or i32 %141, %140
  store i32 %142, i32* %9, align 4
  %143 = load i32, i32* @UART_MR1_RX_RDY_CTL, align 4
  %144 = load i32, i32* %9, align 4
  %145 = or i32 %144, %143
  store i32 %145, i32* %9, align 4
  br label %146

146:                                              ; preds = %139, %119
  %147 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %148 = load i32, i32* %9, align 4
  %149 = load i32, i32* @UART_MR1, align 4
  %150 = call i32 @msm_write(%struct.uart_port* %147, i32 %148, i32 %149)
  %151 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %152 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %151, i32 0, i32 1
  store i32 0, i32* %152, align 4
  %153 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %154 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 4
  %156 = load i32, i32* @INPCK, align 4
  %157 = and i32 %155, %156
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %165

159:                                              ; preds = %146
  %160 = load i32, i32* @UART_SR_PAR_FRAME_ERR, align 4
  %161 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %162 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %161, i32 0, i32 1
  %163 = load i32, i32* %162, align 4
  %164 = or i32 %163, %160
  store i32 %164, i32* %162, align 4
  br label %165

165:                                              ; preds = %159, %146
  %166 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %167 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %166, i32 0, i32 1
  %168 = load i32, i32* %167, align 4
  %169 = load i32, i32* @BRKINT, align 4
  %170 = load i32, i32* @PARMRK, align 4
  %171 = or i32 %169, %170
  %172 = and i32 %168, %171
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %180

174:                                              ; preds = %165
  %175 = load i32, i32* @UART_SR_RX_BREAK, align 4
  %176 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %177 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %176, i32 0, i32 1
  %178 = load i32, i32* %177, align 4
  %179 = or i32 %178, %175
  store i32 %179, i32* %177, align 4
  br label %180

180:                                              ; preds = %174, %165
  %181 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %182 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %183 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 4
  %185 = load i32, i32* %8, align 4
  %186 = call i32 @uart_update_timeout(%struct.uart_port* %181, i32 %184, i32 %185)
  %187 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %188 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %187, i32 0, i32 0
  %189 = load i64, i64* %7, align 8
  %190 = call i32 @spin_unlock_irqrestore(i32* %188, i64 %189)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @uart_get_baud_rate(%struct.uart_port*, %struct.ktermios*, %struct.ktermios*, i32, i32) #1

declare dso_local i32 @msm_set_baud_rate(%struct.uart_port*, i32) #1

declare dso_local i64 @tty_termios_baud_rate(%struct.ktermios*) #1

declare dso_local i32 @tty_termios_encode_baud_rate(%struct.ktermios*, i32, i32) #1

declare dso_local i32 @msm_read(%struct.uart_port*, i32) #1

declare dso_local i32 @msm_write(%struct.uart_port*, i32, i32) #1

declare dso_local i32 @uart_update_timeout(%struct.uart_port*, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
