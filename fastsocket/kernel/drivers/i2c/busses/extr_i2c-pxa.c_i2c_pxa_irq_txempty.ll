; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/i2c/busses/extr_i2c-pxa.c_i2c_pxa_irq_txempty.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/i2c/busses/extr_i2c-pxa.c_i2c_pxa_irq_txempty.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pxa_i2c = type { i32, i64, i32, i32*, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32*, i32 }

@ICR_START = common dso_local global i32 0, align 4
@ICR_STOP = common dso_local global i32 0, align 4
@ICR_ACKNAK = common dso_local global i32 0, align 4
@ICR_TB = common dso_local global i32 0, align 4
@ISR_ALD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"ALD set\00", align 1
@ISR_BED = common dso_local global i32 0, align 4
@BUS_ERROR = common dso_local global i32 0, align 4
@ISR_ACKNAK = common dso_local global i32 0, align 4
@I2C_RETRY = common dso_local global i32 0, align 4
@XFER_NAKED = common dso_local global i32 0, align 4
@ISR_RWM = common dso_local global i32 0, align 4
@ICR_ALDIE = common dso_local global i32 0, align 4
@I2C_M_NOSTART = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pxa_i2c*, i32)* @i2c_pxa_irq_txempty to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i2c_pxa_irq_txempty(%struct.pxa_i2c* %0, i32 %1) #0 {
  %3 = alloca %struct.pxa_i2c*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.pxa_i2c* %0, %struct.pxa_i2c** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.pxa_i2c*, %struct.pxa_i2c** %3, align 8
  %8 = call i32 @_ICR(%struct.pxa_i2c* %7)
  %9 = call i32 @readl(i32 %8)
  %10 = load i32, i32* @ICR_START, align 4
  %11 = load i32, i32* @ICR_STOP, align 4
  %12 = or i32 %10, %11
  %13 = load i32, i32* @ICR_ACKNAK, align 4
  %14 = or i32 %12, %13
  %15 = load i32, i32* @ICR_TB, align 4
  %16 = or i32 %14, %15
  %17 = xor i32 %16, -1
  %18 = and i32 %9, %17
  store i32 %18, i32* %5, align 4
  br label %19

19:                                               ; preds = %179, %2
  %20 = load i32, i32* %4, align 4
  %21 = load i32, i32* @ISR_ALD, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %19
  %25 = load %struct.pxa_i2c*, %struct.pxa_i2c** %3, align 8
  %26 = call i32 @i2c_pxa_scream_blue_murder(%struct.pxa_i2c* %25, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  br label %230

27:                                               ; preds = %19
  %28 = load i32, i32* %4, align 4
  %29 = load i32, i32* @ISR_BED, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %57

32:                                               ; preds = %27
  %33 = load i32, i32* @BUS_ERROR, align 4
  store i32 %33, i32* %6, align 4
  %34 = load i32, i32* %4, align 4
  %35 = load i32, i32* @ISR_ACKNAK, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %53

38:                                               ; preds = %32
  %39 = load %struct.pxa_i2c*, %struct.pxa_i2c** %3, align 8
  %40 = getelementptr inbounds %struct.pxa_i2c, %struct.pxa_i2c* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %50

43:                                               ; preds = %38
  %44 = load %struct.pxa_i2c*, %struct.pxa_i2c** %3, align 8
  %45 = getelementptr inbounds %struct.pxa_i2c, %struct.pxa_i2c* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %43
  %49 = load i32, i32* @I2C_RETRY, align 4
  store i32 %49, i32* %6, align 4
  br label %52

50:                                               ; preds = %43, %38
  %51 = load i32, i32* @XFER_NAKED, align 4
  store i32 %51, i32* %6, align 4
  br label %52

52:                                               ; preds = %50, %48
  br label %53

53:                                               ; preds = %52, %32
  %54 = load %struct.pxa_i2c*, %struct.pxa_i2c** %3, align 8
  %55 = load i32, i32* %6, align 4
  %56 = call i32 @i2c_pxa_master_complete(%struct.pxa_i2c* %54, i32 %55)
  br label %213

57:                                               ; preds = %27
  %58 = load i32, i32* %4, align 4
  %59 = load i32, i32* @ISR_RWM, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %95

62:                                               ; preds = %57
  %63 = load %struct.pxa_i2c*, %struct.pxa_i2c** %3, align 8
  %64 = getelementptr inbounds %struct.pxa_i2c, %struct.pxa_i2c* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.pxa_i2c*, %struct.pxa_i2c** %3, align 8
  %67 = getelementptr inbounds %struct.pxa_i2c, %struct.pxa_i2c* %66, i32 0, i32 5
  %68 = load %struct.TYPE_2__*, %struct.TYPE_2__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = sub nsw i32 %70, 1
  %72 = icmp eq i32 %65, %71
  br i1 %72, label %73, label %89

73:                                               ; preds = %62
  %74 = load %struct.pxa_i2c*, %struct.pxa_i2c** %3, align 8
  %75 = getelementptr inbounds %struct.pxa_i2c, %struct.pxa_i2c* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = load %struct.pxa_i2c*, %struct.pxa_i2c** %3, align 8
  %78 = getelementptr inbounds %struct.pxa_i2c, %struct.pxa_i2c* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 8
  %80 = sub nsw i32 %79, 1
  %81 = sext i32 %80 to i64
  %82 = icmp eq i64 %76, %81
  br i1 %82, label %83, label %89

83:                                               ; preds = %73
  %84 = load i32, i32* @ICR_STOP, align 4
  %85 = load i32, i32* @ICR_ACKNAK, align 4
  %86 = or i32 %84, %85
  %87 = load i32, i32* %5, align 4
  %88 = or i32 %87, %86
  store i32 %88, i32* %5, align 4
  br label %89

89:                                               ; preds = %83, %73, %62
  %90 = load i32, i32* @ICR_ALDIE, align 4
  %91 = load i32, i32* @ICR_TB, align 4
  %92 = or i32 %90, %91
  %93 = load i32, i32* %5, align 4
  %94 = or i32 %93, %92
  store i32 %94, i32* %5, align 4
  br label %212

95:                                               ; preds = %57
  %96 = load %struct.pxa_i2c*, %struct.pxa_i2c** %3, align 8
  %97 = getelementptr inbounds %struct.pxa_i2c, %struct.pxa_i2c* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = load %struct.pxa_i2c*, %struct.pxa_i2c** %3, align 8
  %100 = getelementptr inbounds %struct.pxa_i2c, %struct.pxa_i2c* %99, i32 0, i32 5
  %101 = load %struct.TYPE_2__*, %struct.TYPE_2__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = icmp slt i32 %98, %103
  br i1 %104, label %105, label %150

105:                                              ; preds = %95
  %106 = load %struct.pxa_i2c*, %struct.pxa_i2c** %3, align 8
  %107 = getelementptr inbounds %struct.pxa_i2c, %struct.pxa_i2c* %106, i32 0, i32 5
  %108 = load %struct.TYPE_2__*, %struct.TYPE_2__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i32 0, i32 1
  %110 = load i32*, i32** %109, align 8
  %111 = load %struct.pxa_i2c*, %struct.pxa_i2c** %3, align 8
  %112 = getelementptr inbounds %struct.pxa_i2c, %struct.pxa_i2c* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %112, align 8
  %115 = sext i32 %113 to i64
  %116 = getelementptr inbounds i32, i32* %110, i64 %115
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.pxa_i2c*, %struct.pxa_i2c** %3, align 8
  %119 = call i32 @_IDBR(%struct.pxa_i2c* %118)
  %120 = call i32 @writel(i32 %117, i32 %119)
  %121 = load i32, i32* @ICR_ALDIE, align 4
  %122 = load i32, i32* @ICR_TB, align 4
  %123 = or i32 %121, %122
  %124 = load i32, i32* %5, align 4
  %125 = or i32 %124, %123
  store i32 %125, i32* %5, align 4
  %126 = load %struct.pxa_i2c*, %struct.pxa_i2c** %3, align 8
  %127 = getelementptr inbounds %struct.pxa_i2c, %struct.pxa_i2c* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = load %struct.pxa_i2c*, %struct.pxa_i2c** %3, align 8
  %130 = getelementptr inbounds %struct.pxa_i2c, %struct.pxa_i2c* %129, i32 0, i32 5
  %131 = load %struct.TYPE_2__*, %struct.TYPE_2__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = icmp eq i32 %128, %133
  br i1 %134, label %135, label %149

135:                                              ; preds = %105
  %136 = load %struct.pxa_i2c*, %struct.pxa_i2c** %3, align 8
  %137 = getelementptr inbounds %struct.pxa_i2c, %struct.pxa_i2c* %136, i32 0, i32 1
  %138 = load i64, i64* %137, align 8
  %139 = load %struct.pxa_i2c*, %struct.pxa_i2c** %3, align 8
  %140 = getelementptr inbounds %struct.pxa_i2c, %struct.pxa_i2c* %139, i32 0, i32 2
  %141 = load i32, i32* %140, align 8
  %142 = sub nsw i32 %141, 1
  %143 = sext i32 %142 to i64
  %144 = icmp eq i64 %138, %143
  br i1 %144, label %145, label %149

145:                                              ; preds = %135
  %146 = load i32, i32* @ICR_STOP, align 4
  %147 = load i32, i32* %5, align 4
  %148 = or i32 %147, %146
  store i32 %148, i32* %5, align 4
  br label %149

149:                                              ; preds = %145, %135, %105
  br label %211

150:                                              ; preds = %95
  %151 = load %struct.pxa_i2c*, %struct.pxa_i2c** %3, align 8
  %152 = getelementptr inbounds %struct.pxa_i2c, %struct.pxa_i2c* %151, i32 0, i32 1
  %153 = load i64, i64* %152, align 8
  %154 = load %struct.pxa_i2c*, %struct.pxa_i2c** %3, align 8
  %155 = getelementptr inbounds %struct.pxa_i2c, %struct.pxa_i2c* %154, i32 0, i32 2
  %156 = load i32, i32* %155, align 8
  %157 = sub nsw i32 %156, 1
  %158 = sext i32 %157 to i64
  %159 = icmp slt i64 %153, %158
  br i1 %159, label %160, label %197

160:                                              ; preds = %150
  %161 = load %struct.pxa_i2c*, %struct.pxa_i2c** %3, align 8
  %162 = getelementptr inbounds %struct.pxa_i2c, %struct.pxa_i2c* %161, i32 0, i32 0
  store i32 0, i32* %162, align 8
  %163 = load %struct.pxa_i2c*, %struct.pxa_i2c** %3, align 8
  %164 = getelementptr inbounds %struct.pxa_i2c, %struct.pxa_i2c* %163, i32 0, i32 1
  %165 = load i64, i64* %164, align 8
  %166 = add nsw i64 %165, 1
  store i64 %166, i64* %164, align 8
  %167 = load %struct.pxa_i2c*, %struct.pxa_i2c** %3, align 8
  %168 = getelementptr inbounds %struct.pxa_i2c, %struct.pxa_i2c* %167, i32 0, i32 5
  %169 = load %struct.TYPE_2__*, %struct.TYPE_2__** %168, align 8
  %170 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %169, i32 1
  store %struct.TYPE_2__* %170, %struct.TYPE_2__** %168, align 8
  %171 = load %struct.pxa_i2c*, %struct.pxa_i2c** %3, align 8
  %172 = getelementptr inbounds %struct.pxa_i2c, %struct.pxa_i2c* %171, i32 0, i32 5
  %173 = load %struct.TYPE_2__*, %struct.TYPE_2__** %172, align 8
  %174 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %173, i32 0, i32 2
  %175 = load i32, i32* %174, align 8
  %176 = load i32, i32* @I2C_M_NOSTART, align 4
  %177 = and i32 %175, %176
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %180

179:                                              ; preds = %160
  br label %19

180:                                              ; preds = %160
  %181 = load %struct.pxa_i2c*, %struct.pxa_i2c** %3, align 8
  %182 = getelementptr inbounds %struct.pxa_i2c, %struct.pxa_i2c* %181, i32 0, i32 5
  %183 = load %struct.TYPE_2__*, %struct.TYPE_2__** %182, align 8
  %184 = call i32 @i2c_pxa_addr_byte(%struct.TYPE_2__* %183)
  %185 = load %struct.pxa_i2c*, %struct.pxa_i2c** %3, align 8
  %186 = call i32 @_IDBR(%struct.pxa_i2c* %185)
  %187 = call i32 @writel(i32 %184, i32 %186)
  %188 = load i32, i32* @ICR_ALDIE, align 4
  %189 = xor i32 %188, -1
  %190 = load i32, i32* %5, align 4
  %191 = and i32 %190, %189
  store i32 %191, i32* %5, align 4
  %192 = load i32, i32* @ICR_START, align 4
  %193 = load i32, i32* @ICR_TB, align 4
  %194 = or i32 %192, %193
  %195 = load i32, i32* %5, align 4
  %196 = or i32 %195, %194
  store i32 %196, i32* %5, align 4
  br label %210

197:                                              ; preds = %150
  %198 = load %struct.pxa_i2c*, %struct.pxa_i2c** %3, align 8
  %199 = getelementptr inbounds %struct.pxa_i2c, %struct.pxa_i2c* %198, i32 0, i32 5
  %200 = load %struct.TYPE_2__*, %struct.TYPE_2__** %199, align 8
  %201 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %200, i32 0, i32 0
  %202 = load i32, i32* %201, align 8
  %203 = icmp eq i32 %202, 0
  br i1 %203, label %204, label %207

204:                                              ; preds = %197
  %205 = load %struct.pxa_i2c*, %struct.pxa_i2c** %3, align 8
  %206 = call i32 @i2c_pxa_reset(%struct.pxa_i2c* %205)
  br label %207

207:                                              ; preds = %204, %197
  %208 = load %struct.pxa_i2c*, %struct.pxa_i2c** %3, align 8
  %209 = call i32 @i2c_pxa_master_complete(%struct.pxa_i2c* %208, i32 0)
  br label %210

210:                                              ; preds = %207, %180
  br label %211

211:                                              ; preds = %210, %149
  br label %212

212:                                              ; preds = %211, %89
  br label %213

213:                                              ; preds = %212, %53
  %214 = load i32, i32* %5, align 4
  %215 = load %struct.pxa_i2c*, %struct.pxa_i2c** %3, align 8
  %216 = getelementptr inbounds %struct.pxa_i2c, %struct.pxa_i2c* %215, i32 0, i32 3
  %217 = load i32*, i32** %216, align 8
  %218 = load %struct.pxa_i2c*, %struct.pxa_i2c** %3, align 8
  %219 = getelementptr inbounds %struct.pxa_i2c, %struct.pxa_i2c* %218, i32 0, i32 4
  %220 = load i32, i32* %219, align 8
  %221 = sub nsw i32 %220, 1
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds i32, i32* %217, i64 %222
  store i32 %214, i32* %223, align 4
  %224 = load i32, i32* %5, align 4
  %225 = load %struct.pxa_i2c*, %struct.pxa_i2c** %3, align 8
  %226 = call i32 @_ICR(%struct.pxa_i2c* %225)
  %227 = call i32 @writel(i32 %224, i32 %226)
  %228 = load %struct.pxa_i2c*, %struct.pxa_i2c** %3, align 8
  %229 = call i32 @show_state(%struct.pxa_i2c* %228)
  br label %230

230:                                              ; preds = %213, %24
  ret void
}

declare dso_local i32 @readl(i32) #1

declare dso_local i32 @_ICR(%struct.pxa_i2c*) #1

declare dso_local i32 @i2c_pxa_scream_blue_murder(%struct.pxa_i2c*, i8*) #1

declare dso_local i32 @i2c_pxa_master_complete(%struct.pxa_i2c*, i32) #1

declare dso_local i32 @writel(i32, i32) #1

declare dso_local i32 @_IDBR(%struct.pxa_i2c*) #1

declare dso_local i32 @i2c_pxa_addr_byte(%struct.TYPE_2__*) #1

declare dso_local i32 @i2c_pxa_reset(%struct.pxa_i2c*) #1

declare dso_local i32 @show_state(%struct.pxa_i2c*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
