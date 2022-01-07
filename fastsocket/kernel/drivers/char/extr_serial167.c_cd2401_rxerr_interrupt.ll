; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_serial167.c_cd2401_rxerr_interrupt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_serial167.c_cd2401_rxerr_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cyclades_port = type { i64, i8, i8, i32, i32 }
%struct.tty_struct = type { i32 }

@BASE_ADDR = common dso_local global i64 0, align 8
@CyLICR = common dso_local global i64 0, align 8
@cy_port = common dso_local global %struct.cyclades_port* null, align 8
@jiffies = common dso_local global i32 0, align 4
@CyRISR = common dso_local global i64 0, align 8
@CyTIMEOUT = common dso_local global i8 0, align 1
@CyNOTRANS = common dso_local global i8 0, align 1
@CyREOIR = common dso_local global i64 0, align 8
@IRQ_HANDLED = common dso_local global i32 0, align 4
@CyRFOC = common dso_local global i64 0, align 8
@CyRDR = common dso_local global i64 0, align 8
@CyBREAK = common dso_local global i8 0, align 1
@TTY_BREAK = common dso_local global i32 0, align 4
@ASYNC_SAK = common dso_local global i32 0, align 4
@CyFRAME = common dso_local global i8 0, align 1
@TTY_FRAME = common dso_local global i32 0, align 4
@CyPARITY = common dso_local global i8 0, align 1
@TTY_PARITY = common dso_local global i32 0, align 4
@CyOVERRUN = common dso_local global i8 0, align 1
@TTY_OVERRUN = common dso_local global i32 0, align 4
@TTY_NORMAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @cd2401_rxerr_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cd2401_rxerr_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.tty_struct*, align 8
  %7 = alloca %struct.cyclades_port*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8, align 1
  %10 = alloca i8, align 1
  %11 = alloca i32, align 4
  %12 = alloca i8, align 1
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %13 = load i64, i64* @BASE_ADDR, align 8
  %14 = inttoptr i64 %13 to i8*
  store i8* %14, i8** %8, align 8
  %15 = load i8*, i8** %8, align 8
  %16 = load i64, i64* @CyLICR, align 8
  %17 = getelementptr inbounds i8, i8* %15, i64 %16
  %18 = load volatile i8, i8* %17, align 1
  %19 = zext i8 %18 to i32
  %20 = ashr i32 %19, 2
  store i32 %20, i32* %11, align 4
  %21 = load %struct.cyclades_port*, %struct.cyclades_port** @cy_port, align 8
  %22 = load i32, i32* %11, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.cyclades_port, %struct.cyclades_port* %21, i64 %23
  store %struct.cyclades_port* %24, %struct.cyclades_port** %7, align 8
  %25 = load i32, i32* @jiffies, align 4
  %26 = load %struct.cyclades_port*, %struct.cyclades_port** %7, align 8
  %27 = getelementptr inbounds %struct.cyclades_port, %struct.cyclades_port* %26, i32 0, i32 4
  store i32 %25, i32* %27, align 8
  %28 = load i8*, i8** %8, align 8
  %29 = load i64, i64* @CyRISR, align 8
  %30 = getelementptr inbounds i8, i8* %28, i64 %29
  %31 = load volatile i8, i8* %30, align 1
  store i8 %31, i8* %9, align 1
  %32 = zext i8 %31 to i32
  %33 = load i8, i8* @CyTIMEOUT, align 1
  %34 = zext i8 %33 to i32
  %35 = and i32 %32, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %2
  %38 = load i8, i8* @CyNOTRANS, align 1
  %39 = load i8*, i8** %8, align 8
  %40 = load i64, i64* @CyREOIR, align 8
  %41 = getelementptr inbounds i8, i8* %39, i64 %40
  store volatile i8 %38, i8* %41, align 1
  %42 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %42, i32* %3, align 4
  br label %216

43:                                               ; preds = %2
  %44 = load i8*, i8** %8, align 8
  %45 = load i64, i64* @CyRFOC, align 8
  %46 = getelementptr inbounds i8, i8* %44, i64 %45
  %47 = load volatile i8, i8* %46, align 1
  store i8 %47, i8* %10, align 1
  %48 = zext i8 %47 to i32
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %43
  %51 = load i8*, i8** %8, align 8
  %52 = load i64, i64* @CyRDR, align 8
  %53 = getelementptr inbounds i8, i8* %51, i64 %52
  %54 = load volatile i8, i8* %53, align 1
  store i8 %54, i8* %12, align 1
  br label %56

55:                                               ; preds = %43
  store i8 0, i8* %12, align 1
  br label %56

56:                                               ; preds = %55, %50
  %57 = load %struct.cyclades_port*, %struct.cyclades_port** %7, align 8
  %58 = getelementptr inbounds %struct.cyclades_port, %struct.cyclades_port* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = icmp eq i64 %59, 0
  br i1 %60, label %61, label %76

61:                                               ; preds = %56
  %62 = load i8, i8* %10, align 1
  %63 = zext i8 %62 to i32
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %61
  br label %69

66:                                               ; preds = %61
  %67 = load i8, i8* @CyNOTRANS, align 1
  %68 = zext i8 %67 to i32
  br label %69

69:                                               ; preds = %66, %65
  %70 = phi i32 [ 0, %65 ], [ %68, %66 ]
  %71 = trunc i32 %70 to i8
  %72 = load i8*, i8** %8, align 8
  %73 = load i64, i64* @CyREOIR, align 8
  %74 = getelementptr inbounds i8, i8* %72, i64 %73
  store volatile i8 %71, i8* %74, align 1
  %75 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %75, i32* %3, align 4
  br label %216

76:                                               ; preds = %56
  %77 = load %struct.cyclades_port*, %struct.cyclades_port** %7, align 8
  %78 = getelementptr inbounds %struct.cyclades_port, %struct.cyclades_port* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = inttoptr i64 %79 to %struct.tty_struct*
  store %struct.tty_struct* %80, %struct.tty_struct** %6, align 8
  %81 = load i8, i8* %9, align 1
  %82 = zext i8 %81 to i32
  %83 = load %struct.cyclades_port*, %struct.cyclades_port** %7, align 8
  %84 = getelementptr inbounds %struct.cyclades_port, %struct.cyclades_port* %83, i32 0, i32 1
  %85 = load i8, i8* %84, align 8
  %86 = zext i8 %85 to i32
  %87 = and i32 %82, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %104

89:                                               ; preds = %76
  %90 = load i8, i8* %10, align 1
  %91 = zext i8 %90 to i32
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %89
  br label %97

94:                                               ; preds = %89
  %95 = load i8, i8* @CyNOTRANS, align 1
  %96 = zext i8 %95 to i32
  br label %97

97:                                               ; preds = %94, %93
  %98 = phi i32 [ 0, %93 ], [ %96, %94 ]
  %99 = trunc i32 %98 to i8
  %100 = load i8*, i8** %8, align 8
  %101 = load i64, i64* @CyREOIR, align 8
  %102 = getelementptr inbounds i8, i8* %100, i64 %101
  store volatile i8 %99, i8* %102, align 1
  %103 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %103, i32* %3, align 4
  br label %216

104:                                              ; preds = %76
  %105 = load %struct.tty_struct*, %struct.tty_struct** %6, align 8
  %106 = call i64 @tty_buffer_request_room(%struct.tty_struct* %105, i32 1)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %197

108:                                              ; preds = %104
  %109 = load i8, i8* %9, align 1
  %110 = zext i8 %109 to i32
  %111 = load %struct.cyclades_port*, %struct.cyclades_port** %7, align 8
  %112 = getelementptr inbounds %struct.cyclades_port, %struct.cyclades_port* %111, i32 0, i32 2
  %113 = load i8, i8* %112, align 1
  %114 = zext i8 %113 to i32
  %115 = and i32 %110, %114
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %191

117:                                              ; preds = %108
  %118 = load i8, i8* %9, align 1
  %119 = zext i8 %118 to i32
  %120 = load i8, i8* @CyBREAK, align 1
  %121 = zext i8 %120 to i32
  %122 = and i32 %119, %121
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %139

124:                                              ; preds = %117
  %125 = load %struct.tty_struct*, %struct.tty_struct** %6, align 8
  %126 = load i8, i8* %12, align 1
  %127 = load i32, i32* @TTY_BREAK, align 4
  %128 = call i32 @tty_insert_flip_char(%struct.tty_struct* %125, i8 signext %126, i32 %127)
  %129 = load %struct.cyclades_port*, %struct.cyclades_port** %7, align 8
  %130 = getelementptr inbounds %struct.cyclades_port, %struct.cyclades_port* %129, i32 0, i32 3
  %131 = load i32, i32* %130, align 4
  %132 = load i32, i32* @ASYNC_SAK, align 4
  %133 = and i32 %131, %132
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %138

135:                                              ; preds = %124
  %136 = load %struct.tty_struct*, %struct.tty_struct** %6, align 8
  %137 = call i32 @do_SAK(%struct.tty_struct* %136)
  br label %138

138:                                              ; preds = %135, %124
  br label %190

139:                                              ; preds = %117
  %140 = load i8, i8* %9, align 1
  %141 = zext i8 %140 to i32
  %142 = load i8, i8* @CyFRAME, align 1
  %143 = zext i8 %142 to i32
  %144 = and i32 %141, %143
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %151

146:                                              ; preds = %139
  %147 = load %struct.tty_struct*, %struct.tty_struct** %6, align 8
  %148 = load i8, i8* %12, align 1
  %149 = load i32, i32* @TTY_FRAME, align 4
  %150 = call i32 @tty_insert_flip_char(%struct.tty_struct* %147, i8 signext %148, i32 %149)
  br label %189

151:                                              ; preds = %139
  %152 = load i8, i8* %9, align 1
  %153 = zext i8 %152 to i32
  %154 = load i8, i8* @CyPARITY, align 1
  %155 = zext i8 %154 to i32
  %156 = and i32 %153, %155
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %163

158:                                              ; preds = %151
  %159 = load %struct.tty_struct*, %struct.tty_struct** %6, align 8
  %160 = load i8, i8* %12, align 1
  %161 = load i32, i32* @TTY_PARITY, align 4
  %162 = call i32 @tty_insert_flip_char(%struct.tty_struct* %159, i8 signext %160, i32 %161)
  br label %188

163:                                              ; preds = %151
  %164 = load i8, i8* %9, align 1
  %165 = zext i8 %164 to i32
  %166 = load i8, i8* @CyOVERRUN, align 1
  %167 = zext i8 %166 to i32
  %168 = and i32 %165, %167
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %183

170:                                              ; preds = %163
  %171 = load %struct.tty_struct*, %struct.tty_struct** %6, align 8
  %172 = load i32, i32* @TTY_OVERRUN, align 4
  %173 = call i32 @tty_insert_flip_char(%struct.tty_struct* %171, i8 signext 0, i32 %172)
  %174 = load %struct.tty_struct*, %struct.tty_struct** %6, align 8
  %175 = call i64 @tty_buffer_request_room(%struct.tty_struct* %174, i32 1)
  %176 = icmp ne i64 %175, 0
  br i1 %176, label %177, label %182

177:                                              ; preds = %170
  %178 = load %struct.tty_struct*, %struct.tty_struct** %6, align 8
  %179 = load i8, i8* %12, align 1
  %180 = load i32, i32* @TTY_FRAME, align 4
  %181 = call i32 @tty_insert_flip_char(%struct.tty_struct* %178, i8 signext %179, i32 %180)
  br label %182

182:                                              ; preds = %177, %170
  br label %187

183:                                              ; preds = %163
  %184 = load %struct.tty_struct*, %struct.tty_struct** %6, align 8
  %185 = load i32, i32* @TTY_NORMAL, align 4
  %186 = call i32 @tty_insert_flip_char(%struct.tty_struct* %184, i8 signext 0, i32 %185)
  br label %187

187:                                              ; preds = %183, %182
  br label %188

188:                                              ; preds = %187, %158
  br label %189

189:                                              ; preds = %188, %146
  br label %190

190:                                              ; preds = %189, %138
  br label %196

191:                                              ; preds = %108
  %192 = load %struct.tty_struct*, %struct.tty_struct** %6, align 8
  %193 = load i8, i8* %12, align 1
  %194 = load i32, i32* @TTY_NORMAL, align 4
  %195 = call i32 @tty_insert_flip_char(%struct.tty_struct* %192, i8 signext %193, i32 %194)
  br label %196

196:                                              ; preds = %191, %190
  br label %198

197:                                              ; preds = %104
  br label %198

198:                                              ; preds = %197, %196
  br label %199

199:                                              ; preds = %198
  %200 = load %struct.tty_struct*, %struct.tty_struct** %6, align 8
  %201 = call i32 @tty_schedule_flip(%struct.tty_struct* %200)
  %202 = load i8, i8* %10, align 1
  %203 = zext i8 %202 to i32
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %205, label %206

205:                                              ; preds = %199
  br label %209

206:                                              ; preds = %199
  %207 = load i8, i8* @CyNOTRANS, align 1
  %208 = zext i8 %207 to i32
  br label %209

209:                                              ; preds = %206, %205
  %210 = phi i32 [ 0, %205 ], [ %208, %206 ]
  %211 = trunc i32 %210 to i8
  %212 = load i8*, i8** %8, align 8
  %213 = load i64, i64* @CyREOIR, align 8
  %214 = getelementptr inbounds i8, i8* %212, i64 %213
  store volatile i8 %211, i8* %214, align 1
  %215 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %215, i32* %3, align 4
  br label %216

216:                                              ; preds = %209, %97, %69, %37
  %217 = load i32, i32* %3, align 4
  ret i32 %217
}

declare dso_local i64 @tty_buffer_request_room(%struct.tty_struct*, i32) #1

declare dso_local i32 @tty_insert_flip_char(%struct.tty_struct*, i8 signext, i32) #1

declare dso_local i32 @do_SAK(%struct.tty_struct*) #1

declare dso_local i32 @tty_schedule_flip(%struct.tty_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
