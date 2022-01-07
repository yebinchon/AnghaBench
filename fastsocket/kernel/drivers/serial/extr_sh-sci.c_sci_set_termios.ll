; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_sh-sci.c_sci_set_termios.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_sh-sci.c_sci_set_termios.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32, i64 }
%struct.ktermios = type { i32 }

@SCxSR = common dso_local global i32 0, align 4
@SCSCR = common dso_local global i32 0, align 4
@PORT_SCI = common dso_local global i64 0, align 8
@SCFCR = common dso_local global i32 0, align 4
@SCFCR_RFRST = common dso_local global i32 0, align 4
@SCFCR_TFRST = common dso_local global i32 0, align 4
@SCSMR = common dso_local global i32 0, align 4
@CSIZE = common dso_local global i32 0, align 4
@CS7 = common dso_local global i32 0, align 4
@PARENB = common dso_local global i32 0, align 4
@PARODD = common dso_local global i32 0, align 4
@CSTOPB = common dso_local global i32 0, align 4
@SCBRR = common dso_local global i32 0, align 4
@CRTSCTS = common dso_local global i32 0, align 4
@SCFCR_MCE = common dso_local global i32 0, align 4
@CREAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_port*, %struct.ktermios*, %struct.ktermios*)* @sci_set_termios to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sci_set_termios(%struct.uart_port* %0, %struct.ktermios* %1, %struct.ktermios* %2) #0 {
  %4 = alloca %struct.uart_port*, align 8
  %5 = alloca %struct.ktermios*, align 8
  %6 = alloca %struct.ktermios*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.uart_port* %0, %struct.uart_port** %4, align 8
  store %struct.ktermios* %1, %struct.ktermios** %5, align 8
  store %struct.ktermios* %2, %struct.ktermios** %6, align 8
  store i32 -1, i32* %10, align 4
  %11 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %12 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %13 = load %struct.ktermios*, %struct.ktermios** %6, align 8
  %14 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %15 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = sdiv i32 %16, 16
  %18 = call i32 @uart_get_baud_rate(%struct.uart_port* %11, %struct.ktermios* %12, %struct.ktermios* %13, i32 0, i32 %17)
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* %8, align 4
  %20 = call i64 @likely(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %3
  %23 = load i32, i32* %8, align 4
  %24 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %25 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @SCBRR_VALUE(i32 %23, i32 %26)
  store i32 %27, i32* %10, align 4
  br label %28

28:                                               ; preds = %22, %3
  br label %29

29:                                               ; preds = %33, %28
  %30 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %31 = load i32, i32* @SCxSR, align 4
  %32 = call i32 @sci_in(%struct.uart_port* %30, i32 %31)
  store i32 %32, i32* %7, align 4
  br label %33

33:                                               ; preds = %29
  %34 = load i32, i32* %7, align 4
  %35 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %36 = call i32 @SCxSR_TEND(%struct.uart_port* %35)
  %37 = and i32 %34, %36
  %38 = icmp ne i32 %37, 0
  %39 = xor i1 %38, true
  br i1 %39, label %29, label %40

40:                                               ; preds = %33
  %41 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %42 = load i32, i32* @SCSCR, align 4
  %43 = call i32 @sci_out(%struct.uart_port* %41, i32 %42, i32 0)
  %44 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %45 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @PORT_SCI, align 8
  %48 = icmp ne i64 %46, %47
  br i1 %48, label %49, label %56

49:                                               ; preds = %40
  %50 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %51 = load i32, i32* @SCFCR, align 4
  %52 = load i32, i32* @SCFCR_RFRST, align 4
  %53 = load i32, i32* @SCFCR_TFRST, align 4
  %54 = or i32 %52, %53
  %55 = call i32 @sci_out(%struct.uart_port* %50, i32 %51, i32 %54)
  br label %56

56:                                               ; preds = %49, %40
  %57 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %58 = load i32, i32* @SCSMR, align 4
  %59 = call i32 @sci_in(%struct.uart_port* %57, i32 %58)
  %60 = and i32 %59, 3
  store i32 %60, i32* %9, align 4
  %61 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %62 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @CSIZE, align 4
  %65 = and i32 %63, %64
  %66 = load i32, i32* @CS7, align 4
  %67 = icmp eq i32 %65, %66
  br i1 %67, label %68, label %71

68:                                               ; preds = %56
  %69 = load i32, i32* %9, align 4
  %70 = or i32 %69, 64
  store i32 %70, i32* %9, align 4
  br label %71

71:                                               ; preds = %68, %56
  %72 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %73 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @PARENB, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %71
  %79 = load i32, i32* %9, align 4
  %80 = or i32 %79, 32
  store i32 %80, i32* %9, align 4
  br label %81

81:                                               ; preds = %78, %71
  %82 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %83 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* @PARODD, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %91

88:                                               ; preds = %81
  %89 = load i32, i32* %9, align 4
  %90 = or i32 %89, 48
  store i32 %90, i32* %9, align 4
  br label %91

91:                                               ; preds = %88, %81
  %92 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %93 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* @CSTOPB, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %101

98:                                               ; preds = %91
  %99 = load i32, i32* %9, align 4
  %100 = or i32 %99, 8
  store i32 %100, i32* %9, align 4
  br label %101

101:                                              ; preds = %98, %91
  %102 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %103 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %104 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* %8, align 4
  %107 = call i32 @uart_update_timeout(%struct.uart_port* %102, i32 %105, i32 %106)
  %108 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %109 = load i32, i32* @SCSMR, align 4
  %110 = load i32, i32* %9, align 4
  %111 = call i32 @sci_out(%struct.uart_port* %108, i32 %109, i32 %110)
  %112 = load i32, i32* %10, align 4
  %113 = icmp sgt i32 %112, 0
  br i1 %113, label %114, label %147

114:                                              ; preds = %101
  %115 = load i32, i32* %10, align 4
  %116 = icmp sge i32 %115, 256
  br i1 %116, label %117, label %128

117:                                              ; preds = %114
  %118 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %119 = load i32, i32* @SCSMR, align 4
  %120 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %121 = load i32, i32* @SCSMR, align 4
  %122 = call i32 @sci_in(%struct.uart_port* %120, i32 %121)
  %123 = and i32 %122, -4
  %124 = or i32 %123, 1
  %125 = call i32 @sci_out(%struct.uart_port* %118, i32 %119, i32 %124)
  %126 = load i32, i32* %10, align 4
  %127 = ashr i32 %126, 2
  store i32 %127, i32* %10, align 4
  br label %136

128:                                              ; preds = %114
  %129 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %130 = load i32, i32* @SCSMR, align 4
  %131 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %132 = load i32, i32* @SCSMR, align 4
  %133 = call i32 @sci_in(%struct.uart_port* %131, i32 %132)
  %134 = and i32 %133, -4
  %135 = call i32 @sci_out(%struct.uart_port* %129, i32 %130, i32 %134)
  br label %136

136:                                              ; preds = %128, %117
  %137 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %138 = load i32, i32* @SCBRR, align 4
  %139 = load i32, i32* %10, align 4
  %140 = call i32 @sci_out(%struct.uart_port* %137, i32 %138, i32 %139)
  %141 = load i32, i32* %8, align 4
  %142 = sub i32 %141, 1
  %143 = add i32 1000000, %142
  %144 = load i32, i32* %8, align 4
  %145 = udiv i32 %143, %144
  %146 = call i32 @udelay(i32 %145)
  br label %147

147:                                              ; preds = %136, %101
  %148 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %149 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %150 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 4
  %152 = call i32 @sci_init_pins(%struct.uart_port* %148, i32 %151)
  %153 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %154 = load i32, i32* @SCFCR, align 4
  %155 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %156 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 4
  %158 = load i32, i32* @CRTSCTS, align 4
  %159 = and i32 %157, %158
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %163

161:                                              ; preds = %147
  %162 = load i32, i32* @SCFCR_MCE, align 4
  br label %164

163:                                              ; preds = %147
  br label %164

164:                                              ; preds = %163, %161
  %165 = phi i32 [ %162, %161 ], [ 0, %163 ]
  %166 = call i32 @sci_out(%struct.uart_port* %153, i32 %154, i32 %165)
  %167 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %168 = load i32, i32* @SCSCR, align 4
  %169 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %170 = call i32 @SCSCR_INIT(%struct.uart_port* %169)
  %171 = call i32 @sci_out(%struct.uart_port* %167, i32 %168, i32 %170)
  %172 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %173 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 4
  %175 = load i32, i32* @CREAD, align 4
  %176 = and i32 %174, %175
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %181

178:                                              ; preds = %164
  %179 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %180 = call i32 @sci_start_rx(%struct.uart_port* %179, i32 0)
  br label %181

181:                                              ; preds = %178, %164
  ret void
}

declare dso_local i32 @uart_get_baud_rate(%struct.uart_port*, %struct.ktermios*, %struct.ktermios*, i32, i32) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @SCBRR_VALUE(i32, i32) #1

declare dso_local i32 @sci_in(%struct.uart_port*, i32) #1

declare dso_local i32 @SCxSR_TEND(%struct.uart_port*) #1

declare dso_local i32 @sci_out(%struct.uart_port*, i32, i32) #1

declare dso_local i32 @uart_update_timeout(%struct.uart_port*, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @sci_init_pins(%struct.uart_port*, i32) #1

declare dso_local i32 @SCSCR_INIT(%struct.uart_port*) #1

declare dso_local i32 @sci_start_rx(%struct.uart_port*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
