; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_serial_ks8695.c_ks8695uart_set_termios.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_serial_ks8695.c_ks8695uart_set_termios.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32, i32, i32, i32, i32 }
%struct.ktermios = type { i32, i32 }

@CSIZE = common dso_local global i32 0, align 4
@URCL_5 = common dso_local global i32 0, align 4
@URCL_6 = common dso_local global i32 0, align 4
@URCL_7 = common dso_local global i32 0, align 4
@URCL_8 = common dso_local global i32 0, align 4
@CSTOPB = common dso_local global i32 0, align 4
@URLC_URSB = common dso_local global i32 0, align 4
@PARENB = common dso_local global i32 0, align 4
@CMSPAR = common dso_local global i32 0, align 4
@PARODD = common dso_local global i32 0, align 4
@URPE_MARK = common dso_local global i32 0, align 4
@URPE_SPACE = common dso_local global i32 0, align 4
@URPE_ODD = common dso_local global i32 0, align 4
@URPE_EVEN = common dso_local global i32 0, align 4
@URFC_URFRT_8 = common dso_local global i32 0, align 4
@URFC_URTFR = common dso_local global i32 0, align 4
@URFC_URRFR = common dso_local global i32 0, align 4
@URFC_URFE = common dso_local global i32 0, align 4
@URLS_URROE = common dso_local global i32 0, align 4
@INPCK = common dso_local global i32 0, align 4
@URLS_URFE = common dso_local global i32 0, align 4
@URLS_URPE = common dso_local global i32 0, align 4
@BRKINT = common dso_local global i32 0, align 4
@PARMRK = common dso_local global i32 0, align 4
@URLS_URBI = common dso_local global i32 0, align 4
@IGNPAR = common dso_local global i32 0, align 4
@IGNBRK = common dso_local global i32 0, align 4
@CREAD = common dso_local global i32 0, align 4
@UART_DUMMY_LSR_RX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_port*, %struct.ktermios*, %struct.ktermios*)* @ks8695uart_set_termios to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ks8695uart_set_termios(%struct.uart_port* %0, %struct.ktermios* %1, %struct.ktermios* %2) #0 {
  %4 = alloca %struct.uart_port*, align 8
  %5 = alloca %struct.ktermios*, align 8
  %6 = alloca %struct.ktermios*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.uart_port* %0, %struct.uart_port** %4, align 8
  store %struct.ktermios* %1, %struct.ktermios** %5, align 8
  store %struct.ktermios* %2, %struct.ktermios** %6, align 8
  store i32 0, i32* %8, align 4
  %12 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %13 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %14 = load %struct.ktermios*, %struct.ktermios** %6, align 8
  %15 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %16 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = sdiv i32 %17, 16
  %19 = call i32 @uart_get_baud_rate(%struct.uart_port* %12, %struct.ktermios* %13, %struct.ktermios* %14, i32 0, i32 %18)
  store i32 %19, i32* %10, align 4
  %20 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %21 = load i32, i32* %10, align 4
  %22 = call i32 @uart_get_divisor(%struct.uart_port* %20, i32 %21)
  store i32 %22, i32* %11, align 4
  %23 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %24 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @CSIZE, align 4
  %27 = and i32 %25, %26
  switch i32 %27, label %34 [
    i32 130, label %28
    i32 129, label %30
    i32 128, label %32
  ]

28:                                               ; preds = %3
  %29 = load i32, i32* @URCL_5, align 4
  store i32 %29, i32* %7, align 4
  br label %36

30:                                               ; preds = %3
  %31 = load i32, i32* @URCL_6, align 4
  store i32 %31, i32* %7, align 4
  br label %36

32:                                               ; preds = %3
  %33 = load i32, i32* @URCL_7, align 4
  store i32 %33, i32* %7, align 4
  br label %36

34:                                               ; preds = %3
  %35 = load i32, i32* @URCL_8, align 4
  store i32 %35, i32* %7, align 4
  br label %36

36:                                               ; preds = %34, %32, %30, %28
  %37 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %38 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @CSTOPB, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %36
  %44 = load i32, i32* @URLC_URSB, align 4
  %45 = load i32, i32* %7, align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* %7, align 4
  br label %47

47:                                               ; preds = %43, %36
  %48 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %49 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @PARENB, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %94

54:                                               ; preds = %47
  %55 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %56 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @CMSPAR, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %77

61:                                               ; preds = %54
  %62 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %63 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @PARODD, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %61
  %69 = load i32, i32* @URPE_MARK, align 4
  %70 = load i32, i32* %7, align 4
  %71 = or i32 %70, %69
  store i32 %71, i32* %7, align 4
  br label %76

72:                                               ; preds = %61
  %73 = load i32, i32* @URPE_SPACE, align 4
  %74 = load i32, i32* %7, align 4
  %75 = or i32 %74, %73
  store i32 %75, i32* %7, align 4
  br label %76

76:                                               ; preds = %72, %68
  br label %93

77:                                               ; preds = %54
  %78 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %79 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* @PARODD, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %88

84:                                               ; preds = %77
  %85 = load i32, i32* @URPE_ODD, align 4
  %86 = load i32, i32* %7, align 4
  %87 = or i32 %86, %85
  store i32 %87, i32* %7, align 4
  br label %92

88:                                               ; preds = %77
  %89 = load i32, i32* @URPE_EVEN, align 4
  %90 = load i32, i32* %7, align 4
  %91 = or i32 %90, %89
  store i32 %91, i32* %7, align 4
  br label %92

92:                                               ; preds = %88, %84
  br label %93

93:                                               ; preds = %92, %76
  br label %94

94:                                               ; preds = %93, %47
  %95 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %96 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = icmp sgt i32 %97, 1
  br i1 %98, label %99, label %107

99:                                               ; preds = %94
  %100 = load i32, i32* @URFC_URFRT_8, align 4
  %101 = load i32, i32* @URFC_URTFR, align 4
  %102 = or i32 %100, %101
  %103 = load i32, i32* @URFC_URRFR, align 4
  %104 = or i32 %102, %103
  %105 = load i32, i32* @URFC_URFE, align 4
  %106 = or i32 %104, %105
  store i32 %106, i32* %8, align 4
  br label %107

107:                                              ; preds = %99, %94
  %108 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %109 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %108, i32 0, i32 4
  %110 = load i64, i64* %9, align 8
  %111 = call i32 @spin_lock_irqsave(i32* %109, i64 %110)
  %112 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %113 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %114 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = load i32, i32* %10, align 4
  %117 = call i32 @uart_update_timeout(%struct.uart_port* %112, i32 %115, i32 %116)
  %118 = load i32, i32* @URLS_URROE, align 4
  %119 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %120 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %119, i32 0, i32 2
  store i32 %118, i32* %120, align 4
  %121 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %122 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = load i32, i32* @INPCK, align 4
  %125 = and i32 %123, %124
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %135

127:                                              ; preds = %107
  %128 = load i32, i32* @URLS_URFE, align 4
  %129 = load i32, i32* @URLS_URPE, align 4
  %130 = or i32 %128, %129
  %131 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %132 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %131, i32 0, i32 2
  %133 = load i32, i32* %132, align 4
  %134 = or i32 %133, %130
  store i32 %134, i32* %132, align 4
  br label %135

135:                                              ; preds = %127, %107
  %136 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %137 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = load i32, i32* @BRKINT, align 4
  %140 = load i32, i32* @PARMRK, align 4
  %141 = or i32 %139, %140
  %142 = and i32 %138, %141
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %150

144:                                              ; preds = %135
  %145 = load i32, i32* @URLS_URBI, align 4
  %146 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %147 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %146, i32 0, i32 2
  %148 = load i32, i32* %147, align 4
  %149 = or i32 %148, %145
  store i32 %149, i32* %147, align 4
  br label %150

150:                                              ; preds = %144, %135
  %151 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %152 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %151, i32 0, i32 3
  store i32 0, i32* %152, align 4
  %153 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %154 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 4
  %156 = load i32, i32* @IGNPAR, align 4
  %157 = and i32 %155, %156
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %167

159:                                              ; preds = %150
  %160 = load i32, i32* @URLS_URFE, align 4
  %161 = load i32, i32* @URLS_URPE, align 4
  %162 = or i32 %160, %161
  %163 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %164 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %163, i32 0, i32 3
  %165 = load i32, i32* %164, align 4
  %166 = or i32 %165, %162
  store i32 %166, i32* %164, align 4
  br label %167

167:                                              ; preds = %159, %150
  %168 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %169 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %168, i32 0, i32 1
  %170 = load i32, i32* %169, align 4
  %171 = load i32, i32* @IGNBRK, align 4
  %172 = and i32 %170, %171
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %193

174:                                              ; preds = %167
  %175 = load i32, i32* @URLS_URBI, align 4
  %176 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %177 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %176, i32 0, i32 3
  %178 = load i32, i32* %177, align 4
  %179 = or i32 %178, %175
  store i32 %179, i32* %177, align 4
  %180 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %181 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %180, i32 0, i32 1
  %182 = load i32, i32* %181, align 4
  %183 = load i32, i32* @IGNPAR, align 4
  %184 = and i32 %182, %183
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %192

186:                                              ; preds = %174
  %187 = load i32, i32* @URLS_URROE, align 4
  %188 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %189 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %188, i32 0, i32 3
  %190 = load i32, i32* %189, align 4
  %191 = or i32 %190, %187
  store i32 %191, i32* %189, align 4
  br label %192

192:                                              ; preds = %186, %174
  br label %193

193:                                              ; preds = %192, %167
  %194 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %195 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 4
  %197 = load i32, i32* @CREAD, align 4
  %198 = and i32 %196, %197
  %199 = icmp eq i32 %198, 0
  br i1 %199, label %200, label %206

200:                                              ; preds = %193
  %201 = load i32, i32* @UART_DUMMY_LSR_RX, align 4
  %202 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %203 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %202, i32 0, i32 3
  %204 = load i32, i32* %203, align 4
  %205 = or i32 %204, %201
  store i32 %205, i32* %203, align 4
  br label %206

206:                                              ; preds = %200, %193
  %207 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %208 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %209 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %208, i32 0, i32 0
  %210 = load i32, i32* %209, align 4
  %211 = call i64 @UART_ENABLE_MS(%struct.uart_port* %207, i32 %210)
  %212 = icmp ne i64 %211, 0
  br i1 %212, label %213, label %216

213:                                              ; preds = %206
  %214 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %215 = call i32 @ks8695uart_enable_ms(%struct.uart_port* %214)
  br label %219

216:                                              ; preds = %206
  %217 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %218 = call i32 @ks8695uart_disable_ms(%struct.uart_port* %217)
  br label %219

219:                                              ; preds = %216, %213
  %220 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %221 = load i32, i32* %11, align 4
  %222 = call i32 @UART_PUT_BRDR(%struct.uart_port* %220, i32 %221)
  %223 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %224 = load i32, i32* %7, align 4
  %225 = call i32 @UART_PUT_LCR(%struct.uart_port* %223, i32 %224)
  %226 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %227 = load i32, i32* %8, align 4
  %228 = call i32 @UART_PUT_FCR(%struct.uart_port* %226, i32 %227)
  %229 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %230 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %229, i32 0, i32 4
  %231 = load i64, i64* %9, align 8
  %232 = call i32 @spin_unlock_irqrestore(i32* %230, i64 %231)
  ret void
}

declare dso_local i32 @uart_get_baud_rate(%struct.uart_port*, %struct.ktermios*, %struct.ktermios*, i32, i32) #1

declare dso_local i32 @uart_get_divisor(%struct.uart_port*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @uart_update_timeout(%struct.uart_port*, i32, i32) #1

declare dso_local i64 @UART_ENABLE_MS(%struct.uart_port*, i32) #1

declare dso_local i32 @ks8695uart_enable_ms(%struct.uart_port*) #1

declare dso_local i32 @ks8695uart_disable_ms(%struct.uart_port*) #1

declare dso_local i32 @UART_PUT_BRDR(%struct.uart_port*, i32) #1

declare dso_local i32 @UART_PUT_LCR(%struct.uart_port*, i32) #1

declare dso_local i32 @UART_PUT_FCR(%struct.uart_port*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
