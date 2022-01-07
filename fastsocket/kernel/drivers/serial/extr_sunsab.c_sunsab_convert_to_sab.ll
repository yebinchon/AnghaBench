; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_sunsab.c_sunsab_convert_to_sab.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_sunsab.c_sunsab_convert_to_sab.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_sunsab_port = type { i8, i32, i32, i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }

@CSIZE = common dso_local global i32 0, align 4
@SAB82532_DAFO_CHL5 = common dso_local global i8 0, align 1
@SAB82532_DAFO_CHL6 = common dso_local global i8 0, align 1
@SAB82532_DAFO_CHL7 = common dso_local global i8 0, align 1
@SAB82532_DAFO_CHL8 = common dso_local global i8 0, align 1
@CSTOPB = common dso_local global i32 0, align 4
@SAB82532_DAFO_STOP = common dso_local global i8 0, align 1
@PARENB = common dso_local global i32 0, align 4
@SAB82532_DAFO_PARE = common dso_local global i8 0, align 1
@PARODD = common dso_local global i32 0, align 4
@SAB82532_DAFO_PAR_ODD = common dso_local global i8 0, align 1
@SAB82532_DAFO_PAR_EVEN = common dso_local global i8 0, align 1
@SAB82532_ISR0_TCD = common dso_local global i32 0, align 4
@SAB82532_ISR0_TIME = common dso_local global i32 0, align 4
@SAB82532_ISR0_RFO = common dso_local global i32 0, align 4
@SAB82532_ISR0_RPF = common dso_local global i32 0, align 4
@SAB82532_ISR0_CDSC = common dso_local global i32 0, align 4
@SAB82532_ISR1_CSC = common dso_local global i32 0, align 4
@SAB82532_ISR1_ALLS = common dso_local global i32 0, align 4
@SAB82532_ISR1_XPR = common dso_local global i32 0, align 4
@INPCK = common dso_local global i32 0, align 4
@SAB82532_ISR0_PERR = common dso_local global i32 0, align 4
@SAB82532_ISR0_FERR = common dso_local global i32 0, align 4
@BRKINT = common dso_local global i32 0, align 4
@PARMRK = common dso_local global i32 0, align 4
@SAB82532_ISR1_BRK = common dso_local global i32 0, align 4
@IGNPAR = common dso_local global i32 0, align 4
@IGNBRK = common dso_local global i32 0, align 4
@CREAD = common dso_local global i32 0, align 4
@SAB82532_MODE_RAC = common dso_local global i32 0, align 4
@SAB82532_REGS_PENDING = common dso_local global i32 0, align 4
@SAB82532_XPR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_sunsab_port*, i32, i32, i32, i32)* @sunsab_convert_to_sab to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sunsab_convert_to_sab(%struct.uart_sunsab_port* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.uart_sunsab_port*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8, align 1
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.uart_sunsab_port* %0, %struct.uart_sunsab_port** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %15 = load i32, i32* %7, align 4
  %16 = load i32, i32* @CSIZE, align 4
  %17 = and i32 %15, %16
  switch i32 %17, label %26 [
    i32 131, label %18
    i32 130, label %20
    i32 129, label %22
    i32 128, label %24
  ]

18:                                               ; preds = %5
  %19 = load i8, i8* @SAB82532_DAFO_CHL5, align 1
  store i8 %19, i8* %11, align 1
  store i32 7, i32* %12, align 4
  br label %28

20:                                               ; preds = %5
  %21 = load i8, i8* @SAB82532_DAFO_CHL6, align 1
  store i8 %21, i8* %11, align 1
  store i32 8, i32* %12, align 4
  br label %28

22:                                               ; preds = %5
  %23 = load i8, i8* @SAB82532_DAFO_CHL7, align 1
  store i8 %23, i8* %11, align 1
  store i32 9, i32* %12, align 4
  br label %28

24:                                               ; preds = %5
  %25 = load i8, i8* @SAB82532_DAFO_CHL8, align 1
  store i8 %25, i8* %11, align 1
  store i32 10, i32* %12, align 4
  br label %28

26:                                               ; preds = %5
  %27 = load i8, i8* @SAB82532_DAFO_CHL5, align 1
  store i8 %27, i8* %11, align 1
  store i32 7, i32* %12, align 4
  br label %28

28:                                               ; preds = %26, %24, %22, %20, %18
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* @CSTOPB, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %42

33:                                               ; preds = %28
  %34 = load i8, i8* @SAB82532_DAFO_STOP, align 1
  %35 = zext i8 %34 to i32
  %36 = load i8, i8* %11, align 1
  %37 = zext i8 %36 to i32
  %38 = or i32 %37, %35
  %39 = trunc i32 %38 to i8
  store i8 %39, i8* %11, align 1
  %40 = load i32, i32* %12, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %12, align 4
  br label %42

42:                                               ; preds = %33, %28
  %43 = load i32, i32* %7, align 4
  %44 = load i32, i32* @PARENB, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %56

47:                                               ; preds = %42
  %48 = load i8, i8* @SAB82532_DAFO_PARE, align 1
  %49 = zext i8 %48 to i32
  %50 = load i8, i8* %11, align 1
  %51 = zext i8 %50 to i32
  %52 = or i32 %51, %49
  %53 = trunc i32 %52 to i8
  store i8 %53, i8* %11, align 1
  %54 = load i32, i32* %12, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %12, align 4
  br label %56

56:                                               ; preds = %47, %42
  %57 = load i32, i32* %7, align 4
  %58 = load i32, i32* @PARODD, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %68

61:                                               ; preds = %56
  %62 = load i8, i8* @SAB82532_DAFO_PAR_ODD, align 1
  %63 = zext i8 %62 to i32
  %64 = load i8, i8* %11, align 1
  %65 = zext i8 %64 to i32
  %66 = or i32 %65, %63
  %67 = trunc i32 %66 to i8
  store i8 %67, i8* %11, align 1
  br label %75

68:                                               ; preds = %56
  %69 = load i8, i8* @SAB82532_DAFO_PAR_EVEN, align 1
  %70 = zext i8 %69 to i32
  %71 = load i8, i8* %11, align 1
  %72 = zext i8 %71 to i32
  %73 = or i32 %72, %70
  %74 = trunc i32 %73 to i8
  store i8 %74, i8* %11, align 1
  br label %75

75:                                               ; preds = %68, %61
  %76 = load i8, i8* %11, align 1
  %77 = load %struct.uart_sunsab_port*, %struct.uart_sunsab_port** %6, align 8
  %78 = getelementptr inbounds %struct.uart_sunsab_port, %struct.uart_sunsab_port* %77, i32 0, i32 0
  store i8 %76, i8* %78, align 4
  %79 = load i32, i32* %9, align 4
  %80 = call i32 @calc_ebrg(i32 %79, i32* %13, i32* %14)
  %81 = load i32, i32* %13, align 4
  %82 = load i32, i32* %14, align 4
  %83 = shl i32 %82, 6
  %84 = or i32 %81, %83
  %85 = load %struct.uart_sunsab_port*, %struct.uart_sunsab_port** %6, align 8
  %86 = getelementptr inbounds %struct.uart_sunsab_port, %struct.uart_sunsab_port* %85, i32 0, i32 1
  store i32 %84, i32* %86, align 4
  %87 = load i32, i32* %9, align 4
  %88 = udiv i32 10000000, %87
  %89 = load %struct.uart_sunsab_port*, %struct.uart_sunsab_port** %6, align 8
  %90 = getelementptr inbounds %struct.uart_sunsab_port, %struct.uart_sunsab_port* %89, i32 0, i32 2
  store i32 %88, i32* %90, align 4
  %91 = load %struct.uart_sunsab_port*, %struct.uart_sunsab_port** %6, align 8
  %92 = getelementptr inbounds %struct.uart_sunsab_port, %struct.uart_sunsab_port* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 4
  %94 = ashr i32 %93, 2
  %95 = load %struct.uart_sunsab_port*, %struct.uart_sunsab_port** %6, align 8
  %96 = getelementptr inbounds %struct.uart_sunsab_port, %struct.uart_sunsab_port* %95, i32 0, i32 3
  store i32 %94, i32* %96, align 4
  %97 = load i32, i32* @SAB82532_ISR0_TCD, align 4
  %98 = load i32, i32* @SAB82532_ISR0_TIME, align 4
  %99 = or i32 %97, %98
  %100 = load i32, i32* @SAB82532_ISR0_RFO, align 4
  %101 = or i32 %99, %100
  %102 = load i32, i32* @SAB82532_ISR0_RPF, align 4
  %103 = or i32 %101, %102
  %104 = load i32, i32* @SAB82532_ISR0_CDSC, align 4
  %105 = or i32 %103, %104
  %106 = load %struct.uart_sunsab_port*, %struct.uart_sunsab_port** %6, align 8
  %107 = getelementptr inbounds %struct.uart_sunsab_port, %struct.uart_sunsab_port* %106, i32 0, i32 6
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i32 0, i32 0
  store i32 %105, i32* %108, align 4
  %109 = load i32, i32* @SAB82532_ISR1_CSC, align 4
  %110 = load i32, i32* @SAB82532_ISR1_ALLS, align 4
  %111 = or i32 %109, %110
  %112 = load i32, i32* @SAB82532_ISR1_XPR, align 4
  %113 = or i32 %111, %112
  %114 = shl i32 %113, 8
  %115 = load %struct.uart_sunsab_port*, %struct.uart_sunsab_port** %6, align 8
  %116 = getelementptr inbounds %struct.uart_sunsab_port, %struct.uart_sunsab_port* %115, i32 0, i32 6
  %117 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = or i32 %118, %114
  store i32 %119, i32* %117, align 4
  %120 = load i32, i32* %8, align 4
  %121 = load i32, i32* @INPCK, align 4
  %122 = and i32 %120, %121
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %133

124:                                              ; preds = %75
  %125 = load i32, i32* @SAB82532_ISR0_PERR, align 4
  %126 = load i32, i32* @SAB82532_ISR0_FERR, align 4
  %127 = or i32 %125, %126
  %128 = load %struct.uart_sunsab_port*, %struct.uart_sunsab_port** %6, align 8
  %129 = getelementptr inbounds %struct.uart_sunsab_port, %struct.uart_sunsab_port* %128, i32 0, i32 6
  %130 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = or i32 %131, %127
  store i32 %132, i32* %130, align 4
  br label %133

133:                                              ; preds = %124, %75
  %134 = load i32, i32* %8, align 4
  %135 = load i32, i32* @BRKINT, align 4
  %136 = load i32, i32* @PARMRK, align 4
  %137 = or i32 %135, %136
  %138 = and i32 %134, %137
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %148

140:                                              ; preds = %133
  %141 = load i32, i32* @SAB82532_ISR1_BRK, align 4
  %142 = shl i32 %141, 8
  %143 = load %struct.uart_sunsab_port*, %struct.uart_sunsab_port** %6, align 8
  %144 = getelementptr inbounds %struct.uart_sunsab_port, %struct.uart_sunsab_port* %143, i32 0, i32 6
  %145 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = or i32 %146, %142
  store i32 %147, i32* %145, align 4
  br label %148

148:                                              ; preds = %140, %133
  %149 = load %struct.uart_sunsab_port*, %struct.uart_sunsab_port** %6, align 8
  %150 = getelementptr inbounds %struct.uart_sunsab_port, %struct.uart_sunsab_port* %149, i32 0, i32 6
  %151 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %150, i32 0, i32 1
  store i32 0, i32* %151, align 4
  %152 = load i32, i32* %8, align 4
  %153 = load i32, i32* @IGNPAR, align 4
  %154 = and i32 %152, %153
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %165

156:                                              ; preds = %148
  %157 = load i32, i32* @SAB82532_ISR0_PERR, align 4
  %158 = load i32, i32* @SAB82532_ISR0_FERR, align 4
  %159 = or i32 %157, %158
  %160 = load %struct.uart_sunsab_port*, %struct.uart_sunsab_port** %6, align 8
  %161 = getelementptr inbounds %struct.uart_sunsab_port, %struct.uart_sunsab_port* %160, i32 0, i32 6
  %162 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %161, i32 0, i32 1
  %163 = load i32, i32* %162, align 4
  %164 = or i32 %163, %159
  store i32 %164, i32* %162, align 4
  br label %165

165:                                              ; preds = %156, %148
  %166 = load i32, i32* %8, align 4
  %167 = load i32, i32* @IGNBRK, align 4
  %168 = and i32 %166, %167
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %190

170:                                              ; preds = %165
  %171 = load i32, i32* @SAB82532_ISR1_BRK, align 4
  %172 = shl i32 %171, 8
  %173 = load %struct.uart_sunsab_port*, %struct.uart_sunsab_port** %6, align 8
  %174 = getelementptr inbounds %struct.uart_sunsab_port, %struct.uart_sunsab_port* %173, i32 0, i32 6
  %175 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %174, i32 0, i32 1
  %176 = load i32, i32* %175, align 4
  %177 = or i32 %176, %172
  store i32 %177, i32* %175, align 4
  %178 = load i32, i32* %8, align 4
  %179 = load i32, i32* @IGNPAR, align 4
  %180 = and i32 %178, %179
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %189

182:                                              ; preds = %170
  %183 = load i32, i32* @SAB82532_ISR0_RFO, align 4
  %184 = load %struct.uart_sunsab_port*, %struct.uart_sunsab_port** %6, align 8
  %185 = getelementptr inbounds %struct.uart_sunsab_port, %struct.uart_sunsab_port* %184, i32 0, i32 6
  %186 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %185, i32 0, i32 1
  %187 = load i32, i32* %186, align 4
  %188 = or i32 %187, %183
  store i32 %188, i32* %186, align 4
  br label %189

189:                                              ; preds = %182, %170
  br label %190

190:                                              ; preds = %189, %165
  %191 = load i32, i32* %7, align 4
  %192 = load i32, i32* @CREAD, align 4
  %193 = and i32 %191, %192
  %194 = icmp eq i32 %193, 0
  br i1 %194, label %195, label %204

195:                                              ; preds = %190
  %196 = load i32, i32* @SAB82532_ISR0_RPF, align 4
  %197 = load i32, i32* @SAB82532_ISR0_TCD, align 4
  %198 = or i32 %196, %197
  %199 = load %struct.uart_sunsab_port*, %struct.uart_sunsab_port** %6, align 8
  %200 = getelementptr inbounds %struct.uart_sunsab_port, %struct.uart_sunsab_port* %199, i32 0, i32 6
  %201 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %200, i32 0, i32 1
  %202 = load i32, i32* %201, align 4
  %203 = or i32 %202, %198
  store i32 %203, i32* %201, align 4
  br label %204

204:                                              ; preds = %195, %190
  %205 = load %struct.uart_sunsab_port*, %struct.uart_sunsab_port** %6, align 8
  %206 = getelementptr inbounds %struct.uart_sunsab_port, %struct.uart_sunsab_port* %205, i32 0, i32 6
  %207 = load i32, i32* %7, align 4
  %208 = load %struct.uart_sunsab_port*, %struct.uart_sunsab_port** %6, align 8
  %209 = getelementptr inbounds %struct.uart_sunsab_port, %struct.uart_sunsab_port* %208, i32 0, i32 6
  %210 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %209, i32 0, i32 2
  %211 = load i32, i32* %210, align 4
  %212 = load i32, i32* %10, align 4
  %213 = mul i32 16, %212
  %214 = udiv i32 %211, %213
  %215 = call i32 @uart_update_timeout(%struct.TYPE_2__* %206, i32 %207, i32 %214)
  %216 = load i32, i32* @SAB82532_MODE_RAC, align 4
  %217 = load %struct.uart_sunsab_port*, %struct.uart_sunsab_port** %6, align 8
  %218 = getelementptr inbounds %struct.uart_sunsab_port, %struct.uart_sunsab_port* %217, i32 0, i32 5
  %219 = load i32, i32* %218, align 4
  %220 = or i32 %219, %216
  store i32 %220, i32* %218, align 4
  %221 = load i32, i32* @SAB82532_REGS_PENDING, align 4
  %222 = load %struct.uart_sunsab_port*, %struct.uart_sunsab_port** %6, align 8
  %223 = getelementptr inbounds %struct.uart_sunsab_port, %struct.uart_sunsab_port* %222, i32 0, i32 4
  %224 = call i32 @set_bit(i32 %221, i32* %223)
  %225 = load i32, i32* @SAB82532_XPR, align 4
  %226 = load %struct.uart_sunsab_port*, %struct.uart_sunsab_port** %6, align 8
  %227 = getelementptr inbounds %struct.uart_sunsab_port, %struct.uart_sunsab_port* %226, i32 0, i32 4
  %228 = call i64 @test_bit(i32 %225, i32* %227)
  %229 = icmp ne i64 %228, 0
  br i1 %229, label %230, label %233

230:                                              ; preds = %204
  %231 = load %struct.uart_sunsab_port*, %struct.uart_sunsab_port** %6, align 8
  %232 = call i32 @sunsab_tx_idle(%struct.uart_sunsab_port* %231)
  br label %233

233:                                              ; preds = %230, %204
  ret void
}

declare dso_local i32 @calc_ebrg(i32, i32*, i32*) #1

declare dso_local i32 @uart_update_timeout(%struct.TYPE_2__*, i32, i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @sunsab_tx_idle(%struct.uart_sunsab_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
