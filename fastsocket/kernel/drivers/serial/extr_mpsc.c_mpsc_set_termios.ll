; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_mpsc.c_mpsc_set_termios.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_mpsc.c_mpsc_set_termios.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32 }
%struct.ktermios = type { i32, i32 }
%struct.mpsc_port_info = type { i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }

@CSIZE = common dso_local global i32 0, align 4
@MPSC_MPCR_CL_5 = common dso_local global i32 0, align 4
@MPSC_MPCR_CL_6 = common dso_local global i32 0, align 4
@MPSC_MPCR_CL_7 = common dso_local global i32 0, align 4
@MPSC_MPCR_CL_8 = common dso_local global i32 0, align 4
@CSTOPB = common dso_local global i32 0, align 4
@MPSC_MPCR_SBL_2 = common dso_local global i32 0, align 4
@MPSC_MPCR_SBL_1 = common dso_local global i32 0, align 4
@MPSC_CHR_2_PAR_EVEN = common dso_local global i32 0, align 4
@PARENB = common dso_local global i32 0, align 4
@PARODD = common dso_local global i32 0, align 4
@MPSC_CHR_2_PAR_ODD = common dso_local global i32 0, align 4
@SDMA_DESC_CMDSTAT_OR = common dso_local global i32 0, align 4
@INPCK = common dso_local global i32 0, align 4
@SDMA_DESC_CMDSTAT_PE = common dso_local global i32 0, align 4
@SDMA_DESC_CMDSTAT_FR = common dso_local global i32 0, align 4
@BRKINT = common dso_local global i32 0, align 4
@PARMRK = common dso_local global i32 0, align 4
@SDMA_DESC_CMDSTAT_BR = common dso_local global i32 0, align 4
@IGNPAR = common dso_local global i32 0, align 4
@IGNBRK = common dso_local global i32 0, align 4
@CREAD = common dso_local global i32 0, align 4
@CMSPAR = common dso_local global i32 0, align 4
@MPSC_CHR_2_PAR_MARK = common dso_local global i32 0, align 4
@MPSC_CHR_2_PAR_SPACE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_port*, %struct.ktermios*, %struct.ktermios*)* @mpsc_set_termios to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mpsc_set_termios(%struct.uart_port* %0, %struct.ktermios* %1, %struct.ktermios* %2) #0 {
  %4 = alloca %struct.uart_port*, align 8
  %5 = alloca %struct.ktermios*, align 8
  %6 = alloca %struct.ktermios*, align 8
  %7 = alloca %struct.mpsc_port_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.uart_port* %0, %struct.uart_port** %4, align 8
  store %struct.ktermios* %1, %struct.ktermios** %5, align 8
  store %struct.ktermios* %2, %struct.ktermios** %6, align 8
  %13 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %14 = bitcast %struct.uart_port* %13 to %struct.mpsc_port_info*
  store %struct.mpsc_port_info* %14, %struct.mpsc_port_info** %7, align 8
  %15 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %16 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.mpsc_port_info*, %struct.mpsc_port_info** %7, align 8
  %19 = getelementptr inbounds %struct.mpsc_port_info, %struct.mpsc_port_info* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 4
  %20 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %21 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.mpsc_port_info*, %struct.mpsc_port_info** %7, align 8
  %24 = getelementptr inbounds %struct.mpsc_port_info, %struct.mpsc_port_info* %23, i32 0, i32 1
  store i32 %22, i32* %24, align 4
  %25 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %26 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @CSIZE, align 4
  %29 = and i32 %27, %28
  switch i32 %29, label %37 [
    i32 131, label %30
    i32 130, label %32
    i32 129, label %34
    i32 128, label %36
  ]

30:                                               ; preds = %3
  %31 = load i32, i32* @MPSC_MPCR_CL_5, align 4
  store i32 %31, i32* %10, align 4
  br label %39

32:                                               ; preds = %3
  %33 = load i32, i32* @MPSC_MPCR_CL_6, align 4
  store i32 %33, i32* %10, align 4
  br label %39

34:                                               ; preds = %3
  %35 = load i32, i32* @MPSC_MPCR_CL_7, align 4
  store i32 %35, i32* %10, align 4
  br label %39

36:                                               ; preds = %3
  br label %37

37:                                               ; preds = %3, %36
  %38 = load i32, i32* @MPSC_MPCR_CL_8, align 4
  store i32 %38, i32* %10, align 4
  br label %39

39:                                               ; preds = %37, %34, %32, %30
  %40 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %41 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @CSTOPB, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %39
  %47 = load i32, i32* @MPSC_MPCR_SBL_2, align 4
  store i32 %47, i32* %11, align 4
  br label %50

48:                                               ; preds = %39
  %49 = load i32, i32* @MPSC_MPCR_SBL_1, align 4
  store i32 %49, i32* %11, align 4
  br label %50

50:                                               ; preds = %48, %46
  %51 = load i32, i32* @MPSC_CHR_2_PAR_EVEN, align 4
  store i32 %51, i32* %12, align 4
  %52 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %53 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @PARENB, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %68

58:                                               ; preds = %50
  %59 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %60 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @PARODD, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %58
  %66 = load i32, i32* @MPSC_CHR_2_PAR_ODD, align 4
  store i32 %66, i32* %12, align 4
  br label %67

67:                                               ; preds = %65, %58
  br label %68

68:                                               ; preds = %67, %50
  %69 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %70 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %71 = load %struct.ktermios*, %struct.ktermios** %6, align 8
  %72 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %73 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @uart_get_baud_rate(%struct.uart_port* %69, %struct.ktermios* %70, %struct.ktermios* %71, i32 0, i32 %74)
  store i32 %75, i32* %8, align 4
  %76 = load %struct.mpsc_port_info*, %struct.mpsc_port_info** %7, align 8
  %77 = getelementptr inbounds %struct.mpsc_port_info, %struct.mpsc_port_info* %76, i32 0, i32 3
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 2
  %79 = load i32, i32* %9, align 4
  %80 = call i32 @spin_lock_irqsave(i32* %78, i32 %79)
  %81 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %82 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %83 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* %8, align 4
  %86 = call i32 @uart_update_timeout(%struct.uart_port* %81, i32 %84, i32 %85)
  %87 = load %struct.mpsc_port_info*, %struct.mpsc_port_info** %7, align 8
  %88 = load i32, i32* %10, align 4
  %89 = call i32 @mpsc_set_char_length(%struct.mpsc_port_info* %87, i32 %88)
  %90 = load %struct.mpsc_port_info*, %struct.mpsc_port_info** %7, align 8
  %91 = load i32, i32* %11, align 4
  %92 = call i32 @mpsc_set_stop_bit_length(%struct.mpsc_port_info* %90, i32 %91)
  %93 = load %struct.mpsc_port_info*, %struct.mpsc_port_info** %7, align 8
  %94 = load i32, i32* %12, align 4
  %95 = call i32 @mpsc_set_parity(%struct.mpsc_port_info* %93, i32 %94)
  %96 = load %struct.mpsc_port_info*, %struct.mpsc_port_info** %7, align 8
  %97 = load i32, i32* %8, align 4
  %98 = call i32 @mpsc_set_baudrate(%struct.mpsc_port_info* %96, i32 %97)
  %99 = load i32, i32* @SDMA_DESC_CMDSTAT_OR, align 4
  %100 = load %struct.mpsc_port_info*, %struct.mpsc_port_info** %7, align 8
  %101 = getelementptr inbounds %struct.mpsc_port_info, %struct.mpsc_port_info* %100, i32 0, i32 3
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i32 0, i32 0
  store i32 %99, i32* %102, align 4
  %103 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %104 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* @INPCK, align 4
  %107 = and i32 %105, %106
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %118

109:                                              ; preds = %68
  %110 = load i32, i32* @SDMA_DESC_CMDSTAT_PE, align 4
  %111 = load i32, i32* @SDMA_DESC_CMDSTAT_FR, align 4
  %112 = or i32 %110, %111
  %113 = load %struct.mpsc_port_info*, %struct.mpsc_port_info** %7, align 8
  %114 = getelementptr inbounds %struct.mpsc_port_info, %struct.mpsc_port_info* %113, i32 0, i32 3
  %115 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = or i32 %116, %112
  store i32 %117, i32* %115, align 4
  br label %118

118:                                              ; preds = %109, %68
  %119 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %120 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = load i32, i32* @BRKINT, align 4
  %123 = load i32, i32* @PARMRK, align 4
  %124 = or i32 %122, %123
  %125 = and i32 %121, %124
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %134

127:                                              ; preds = %118
  %128 = load i32, i32* @SDMA_DESC_CMDSTAT_BR, align 4
  %129 = load %struct.mpsc_port_info*, %struct.mpsc_port_info** %7, align 8
  %130 = getelementptr inbounds %struct.mpsc_port_info, %struct.mpsc_port_info* %129, i32 0, i32 3
  %131 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = or i32 %132, %128
  store i32 %133, i32* %131, align 4
  br label %134

134:                                              ; preds = %127, %118
  %135 = load %struct.mpsc_port_info*, %struct.mpsc_port_info** %7, align 8
  %136 = getelementptr inbounds %struct.mpsc_port_info, %struct.mpsc_port_info* %135, i32 0, i32 3
  %137 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %136, i32 0, i32 1
  store i32 0, i32* %137, align 4
  %138 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %139 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = load i32, i32* @IGNPAR, align 4
  %142 = and i32 %140, %141
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %153

144:                                              ; preds = %134
  %145 = load i32, i32* @SDMA_DESC_CMDSTAT_PE, align 4
  %146 = load i32, i32* @SDMA_DESC_CMDSTAT_FR, align 4
  %147 = or i32 %145, %146
  %148 = load %struct.mpsc_port_info*, %struct.mpsc_port_info** %7, align 8
  %149 = getelementptr inbounds %struct.mpsc_port_info, %struct.mpsc_port_info* %148, i32 0, i32 3
  %150 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 4
  %152 = or i32 %151, %147
  store i32 %152, i32* %150, align 4
  br label %153

153:                                              ; preds = %144, %134
  %154 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %155 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 4
  %157 = load i32, i32* @IGNBRK, align 4
  %158 = and i32 %156, %157
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %181

160:                                              ; preds = %153
  %161 = load i32, i32* @SDMA_DESC_CMDSTAT_BR, align 4
  %162 = load %struct.mpsc_port_info*, %struct.mpsc_port_info** %7, align 8
  %163 = getelementptr inbounds %struct.mpsc_port_info, %struct.mpsc_port_info* %162, i32 0, i32 3
  %164 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %163, i32 0, i32 1
  %165 = load i32, i32* %164, align 4
  %166 = or i32 %165, %161
  store i32 %166, i32* %164, align 4
  %167 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %168 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 4
  %170 = load i32, i32* @IGNPAR, align 4
  %171 = and i32 %169, %170
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %180

173:                                              ; preds = %160
  %174 = load i32, i32* @SDMA_DESC_CMDSTAT_OR, align 4
  %175 = load %struct.mpsc_port_info*, %struct.mpsc_port_info** %7, align 8
  %176 = getelementptr inbounds %struct.mpsc_port_info, %struct.mpsc_port_info* %175, i32 0, i32 3
  %177 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %176, i32 0, i32 1
  %178 = load i32, i32* %177, align 4
  %179 = or i32 %178, %174
  store i32 %179, i32* %177, align 4
  br label %180

180:                                              ; preds = %173, %160
  br label %181

181:                                              ; preds = %180, %153
  %182 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %183 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %182, i32 0, i32 1
  %184 = load i32, i32* %183, align 4
  %185 = load i32, i32* @CREAD, align 4
  %186 = and i32 %184, %185
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %199

188:                                              ; preds = %181
  %189 = load %struct.mpsc_port_info*, %struct.mpsc_port_info** %7, align 8
  %190 = getelementptr inbounds %struct.mpsc_port_info, %struct.mpsc_port_info* %189, i32 0, i32 2
  %191 = load i32, i32* %190, align 4
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %198, label %193

193:                                              ; preds = %188
  %194 = load %struct.mpsc_port_info*, %struct.mpsc_port_info** %7, align 8
  %195 = getelementptr inbounds %struct.mpsc_port_info, %struct.mpsc_port_info* %194, i32 0, i32 2
  store i32 1, i32* %195, align 4
  %196 = load %struct.mpsc_port_info*, %struct.mpsc_port_info** %7, align 8
  %197 = call i32 @mpsc_start_rx(%struct.mpsc_port_info* %196)
  br label %198

198:                                              ; preds = %193, %188
  br label %210

199:                                              ; preds = %181
  %200 = load %struct.mpsc_port_info*, %struct.mpsc_port_info** %7, align 8
  %201 = getelementptr inbounds %struct.mpsc_port_info, %struct.mpsc_port_info* %200, i32 0, i32 2
  %202 = load i32, i32* %201, align 4
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %204, label %209

204:                                              ; preds = %199
  %205 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %206 = call i32 @mpsc_stop_rx(%struct.uart_port* %205)
  %207 = load %struct.mpsc_port_info*, %struct.mpsc_port_info** %7, align 8
  %208 = getelementptr inbounds %struct.mpsc_port_info, %struct.mpsc_port_info* %207, i32 0, i32 2
  store i32 0, i32* %208, align 4
  br label %209

209:                                              ; preds = %204, %199
  br label %210

210:                                              ; preds = %209, %198
  %211 = load %struct.mpsc_port_info*, %struct.mpsc_port_info** %7, align 8
  %212 = getelementptr inbounds %struct.mpsc_port_info, %struct.mpsc_port_info* %211, i32 0, i32 3
  %213 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %212, i32 0, i32 2
  %214 = load i32, i32* %9, align 4
  %215 = call i32 @spin_unlock_irqrestore(i32* %213, i32 %214)
  ret void
}

declare dso_local i32 @uart_get_baud_rate(%struct.uart_port*, %struct.ktermios*, %struct.ktermios*, i32, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i32) #1

declare dso_local i32 @uart_update_timeout(%struct.uart_port*, i32, i32) #1

declare dso_local i32 @mpsc_set_char_length(%struct.mpsc_port_info*, i32) #1

declare dso_local i32 @mpsc_set_stop_bit_length(%struct.mpsc_port_info*, i32) #1

declare dso_local i32 @mpsc_set_parity(%struct.mpsc_port_info*, i32) #1

declare dso_local i32 @mpsc_set_baudrate(%struct.mpsc_port_info*, i32) #1

declare dso_local i32 @mpsc_start_rx(%struct.mpsc_port_info*) #1

declare dso_local i32 @mpsc_stop_rx(%struct.uart_port*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
