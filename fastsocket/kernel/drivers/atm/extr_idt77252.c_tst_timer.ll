; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/atm/extr_idt77252.c_tst_timer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/atm/extr_idt77252.c_tst_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.idt77252_dev = type { i64*, i64, i64, i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@TST_SWITCH_WAIT = common dso_local global i32 0, align 4
@SAR_REG_NOW = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@TSTE_OPC_JMP = common dso_local global i64 0, align 8
@TSTE_PUSH_IDLE = common dso_local global i32 0, align 4
@TSTE_MASK = common dso_local global i64 0, align 8
@TST_SWITCH_PENDING = common dso_local global i32 0, align 4
@TSTE_PUSH_ACTIVE = common dso_local global i32 0, align 4
@TSTE_OPC_NULL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @tst_timer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tst_timer(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.idt77252_dev*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  %10 = load i64, i64* %2, align 8
  %11 = inttoptr i64 %10 to %struct.idt77252_dev*
  store %struct.idt77252_dev* %11, %struct.idt77252_dev** %3, align 8
  %12 = load %struct.idt77252_dev*, %struct.idt77252_dev** %3, align 8
  %13 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %12, i32 0, i32 3
  %14 = load i64, i64* %7, align 8
  %15 = call i32 @spin_lock_irqsave(i32* %13, i64 %14)
  %16 = load %struct.idt77252_dev*, %struct.idt77252_dev** %3, align 8
  %17 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %16, i32 0, i32 0
  %18 = load i64*, i64** %17, align 8
  %19 = load %struct.idt77252_dev*, %struct.idt77252_dev** %3, align 8
  %20 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = getelementptr inbounds i64, i64* %18, i64 %21
  %23 = load i64, i64* %22, align 8
  store i64 %23, i64* %4, align 8
  %24 = load %struct.idt77252_dev*, %struct.idt77252_dev** %3, align 8
  %25 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %24, i32 0, i32 0
  %26 = load i64*, i64** %25, align 8
  %27 = load %struct.idt77252_dev*, %struct.idt77252_dev** %3, align 8
  %28 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = xor i64 %29, 1
  %31 = getelementptr inbounds i64, i64* %26, i64 %30
  %32 = load i64, i64* %31, align 8
  store i64 %32, i64* %5, align 8
  %33 = load i32, i32* @TST_SWITCH_WAIT, align 4
  %34 = load %struct.idt77252_dev*, %struct.idt77252_dev** %3, align 8
  %35 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %34, i32 0, i32 5
  %36 = call i64 @test_bit(i32 %33, i32* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %152

38:                                               ; preds = %1
  %39 = load i64, i64* %4, align 8
  %40 = load %struct.idt77252_dev*, %struct.idt77252_dev** %3, align 8
  %41 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %40, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  %43 = add i64 %39, %42
  %44 = sub i64 %43, 2
  store i64 %44, i64* %6, align 8
  %45 = load i32, i32* @SAR_REG_NOW, align 4
  %46 = call i32 @readl(i32 %45)
  %47 = ashr i32 %46, 2
  %48 = sext i32 %47 to i64
  store i64 %48, i64* %8, align 8
  %49 = load i64, i64* %8, align 8
  %50 = load i64, i64* %5, align 8
  %51 = xor i64 %49, %50
  %52 = load %struct.idt77252_dev*, %struct.idt77252_dev** %3, align 8
  %53 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %52, i32 0, i32 2
  %54 = load i64, i64* %53, align 8
  %55 = sub i64 %54, 1
  %56 = xor i64 %55, -1
  %57 = and i64 %51, %56
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %65

59:                                               ; preds = %38
  %60 = load %struct.idt77252_dev*, %struct.idt77252_dev** %3, align 8
  %61 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %60, i32 0, i32 4
  %62 = load i64, i64* @jiffies, align 8
  %63 = add nsw i64 %62, 1
  %64 = call i32 @mod_timer(i32* %61, i64 %63)
  br label %243

65:                                               ; preds = %38
  %66 = load i32, i32* @TST_SWITCH_WAIT, align 4
  %67 = load %struct.idt77252_dev*, %struct.idt77252_dev** %3, align 8
  %68 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %67, i32 0, i32 5
  %69 = call i32 @clear_bit(i32 %66, i32* %68)
  %70 = load %struct.idt77252_dev*, %struct.idt77252_dev** %3, align 8
  %71 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = xor i64 %72, 1
  store i64 %73, i64* %71, align 8
  %74 = load %struct.idt77252_dev*, %struct.idt77252_dev** %3, align 8
  %75 = load i64, i64* %6, align 8
  %76 = load i64, i64* @TSTE_OPC_JMP, align 8
  %77 = load i64, i64* %4, align 8
  %78 = shl i64 %77, 2
  %79 = or i64 %76, %78
  %80 = call i32 @write_sram(%struct.idt77252_dev* %74, i64 %75, i64 %79)
  %81 = load %struct.idt77252_dev*, %struct.idt77252_dev** %3, align 8
  %82 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %81, i32 0, i32 0
  %83 = load i64*, i64** %82, align 8
  %84 = load %struct.idt77252_dev*, %struct.idt77252_dev** %3, align 8
  %85 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = getelementptr inbounds i64, i64* %83, i64 %86
  %88 = load i64, i64* %87, align 8
  store i64 %88, i64* %4, align 8
  %89 = load %struct.idt77252_dev*, %struct.idt77252_dev** %3, align 8
  %90 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %89, i32 0, i32 0
  %91 = load i64*, i64** %90, align 8
  %92 = load %struct.idt77252_dev*, %struct.idt77252_dev** %3, align 8
  %93 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %92, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = xor i64 %94, 1
  %96 = getelementptr inbounds i64, i64* %91, i64 %95
  %97 = load i64, i64* %96, align 8
  store i64 %97, i64* %5, align 8
  store i32 0, i32* %9, align 4
  br label %98

98:                                               ; preds = %148, %65
  %99 = load i32, i32* %9, align 4
  %100 = sext i32 %99 to i64
  %101 = load %struct.idt77252_dev*, %struct.idt77252_dev** %3, align 8
  %102 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %101, i32 0, i32 2
  %103 = load i64, i64* %102, align 8
  %104 = sub i64 %103, 2
  %105 = icmp ult i64 %100, %104
  br i1 %105, label %106, label %151

106:                                              ; preds = %98
  %107 = load %struct.idt77252_dev*, %struct.idt77252_dev** %3, align 8
  %108 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %107, i32 0, i32 6
  %109 = load %struct.TYPE_2__*, %struct.TYPE_2__** %108, align 8
  %110 = load i32, i32* %9, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %109, i64 %111
  %113 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = load i32, i32* @TSTE_PUSH_IDLE, align 4
  %116 = and i32 %114, %115
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %147

118:                                              ; preds = %106
  %119 = load %struct.idt77252_dev*, %struct.idt77252_dev** %3, align 8
  %120 = load i64, i64* %5, align 8
  %121 = load i32, i32* %9, align 4
  %122 = sext i32 %121 to i64
  %123 = add i64 %120, %122
  %124 = load %struct.idt77252_dev*, %struct.idt77252_dev** %3, align 8
  %125 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %124, i32 0, i32 6
  %126 = load %struct.TYPE_2__*, %struct.TYPE_2__** %125, align 8
  %127 = load i32, i32* %9, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %126, i64 %128
  %130 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = sext i32 %131 to i64
  %133 = load i64, i64* @TSTE_MASK, align 8
  %134 = and i64 %132, %133
  %135 = call i32 @write_sram(%struct.idt77252_dev* %119, i64 %123, i64 %134)
  %136 = load i32, i32* @TSTE_PUSH_IDLE, align 4
  %137 = xor i32 %136, -1
  %138 = load %struct.idt77252_dev*, %struct.idt77252_dev** %3, align 8
  %139 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %138, i32 0, i32 6
  %140 = load %struct.TYPE_2__*, %struct.TYPE_2__** %139, align 8
  %141 = load i32, i32* %9, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %140, i64 %142
  %144 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = and i32 %145, %137
  store i32 %146, i32* %144, align 4
  br label %147

147:                                              ; preds = %118, %106
  br label %148

148:                                              ; preds = %147
  %149 = load i32, i32* %9, align 4
  %150 = add nsw i32 %149, 1
  store i32 %150, i32* %9, align 4
  br label %98

151:                                              ; preds = %98
  br label %152

152:                                              ; preds = %151, %1
  %153 = load i32, i32* @TST_SWITCH_PENDING, align 4
  %154 = load %struct.idt77252_dev*, %struct.idt77252_dev** %3, align 8
  %155 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %154, i32 0, i32 5
  %156 = call i64 @test_and_clear_bit(i32 %153, i32* %155)
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %158, label %242

158:                                              ; preds = %152
  store i32 0, i32* %9, align 4
  br label %159

159:                                              ; preds = %219, %158
  %160 = load i32, i32* %9, align 4
  %161 = sext i32 %160 to i64
  %162 = load %struct.idt77252_dev*, %struct.idt77252_dev** %3, align 8
  %163 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %162, i32 0, i32 2
  %164 = load i64, i64* %163, align 8
  %165 = sub i64 %164, 2
  %166 = icmp ult i64 %161, %165
  br i1 %166, label %167, label %222

167:                                              ; preds = %159
  %168 = load %struct.idt77252_dev*, %struct.idt77252_dev** %3, align 8
  %169 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %168, i32 0, i32 6
  %170 = load %struct.TYPE_2__*, %struct.TYPE_2__** %169, align 8
  %171 = load i32, i32* %9, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %170, i64 %172
  %174 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 4
  %176 = load i32, i32* @TSTE_PUSH_ACTIVE, align 4
  %177 = and i32 %175, %176
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %218

179:                                              ; preds = %167
  %180 = load %struct.idt77252_dev*, %struct.idt77252_dev** %3, align 8
  %181 = load i64, i64* %5, align 8
  %182 = load i32, i32* %9, align 4
  %183 = sext i32 %182 to i64
  %184 = add i64 %181, %183
  %185 = load %struct.idt77252_dev*, %struct.idt77252_dev** %3, align 8
  %186 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %185, i32 0, i32 6
  %187 = load %struct.TYPE_2__*, %struct.TYPE_2__** %186, align 8
  %188 = load i32, i32* %9, align 4
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %187, i64 %189
  %191 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 4
  %193 = sext i32 %192 to i64
  %194 = load i64, i64* @TSTE_MASK, align 8
  %195 = and i64 %193, %194
  %196 = call i32 @write_sram(%struct.idt77252_dev* %180, i64 %184, i64 %195)
  %197 = load i32, i32* @TSTE_PUSH_ACTIVE, align 4
  %198 = xor i32 %197, -1
  %199 = load %struct.idt77252_dev*, %struct.idt77252_dev** %3, align 8
  %200 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %199, i32 0, i32 6
  %201 = load %struct.TYPE_2__*, %struct.TYPE_2__** %200, align 8
  %202 = load i32, i32* %9, align 4
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %201, i64 %203
  %205 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 4
  %207 = and i32 %206, %198
  store i32 %207, i32* %205, align 4
  %208 = load i32, i32* @TSTE_PUSH_IDLE, align 4
  %209 = load %struct.idt77252_dev*, %struct.idt77252_dev** %3, align 8
  %210 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %209, i32 0, i32 6
  %211 = load %struct.TYPE_2__*, %struct.TYPE_2__** %210, align 8
  %212 = load i32, i32* %9, align 4
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %211, i64 %213
  %215 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %214, i32 0, i32 0
  %216 = load i32, i32* %215, align 4
  %217 = or i32 %216, %208
  store i32 %217, i32* %215, align 4
  br label %218

218:                                              ; preds = %179, %167
  br label %219

219:                                              ; preds = %218
  %220 = load i32, i32* %9, align 4
  %221 = add nsw i32 %220, 1
  store i32 %221, i32* %9, align 4
  br label %159

222:                                              ; preds = %159
  %223 = load i64, i64* %4, align 8
  %224 = load %struct.idt77252_dev*, %struct.idt77252_dev** %3, align 8
  %225 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %224, i32 0, i32 2
  %226 = load i64, i64* %225, align 8
  %227 = add i64 %223, %226
  %228 = sub i64 %227, 2
  store i64 %228, i64* %6, align 8
  %229 = load %struct.idt77252_dev*, %struct.idt77252_dev** %3, align 8
  %230 = load i64, i64* %6, align 8
  %231 = load i64, i64* @TSTE_OPC_NULL, align 8
  %232 = call i32 @write_sram(%struct.idt77252_dev* %229, i64 %230, i64 %231)
  %233 = load i32, i32* @TST_SWITCH_WAIT, align 4
  %234 = load %struct.idt77252_dev*, %struct.idt77252_dev** %3, align 8
  %235 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %234, i32 0, i32 5
  %236 = call i32 @set_bit(i32 %233, i32* %235)
  %237 = load %struct.idt77252_dev*, %struct.idt77252_dev** %3, align 8
  %238 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %237, i32 0, i32 4
  %239 = load i64, i64* @jiffies, align 8
  %240 = add nsw i64 %239, 1
  %241 = call i32 @mod_timer(i32* %238, i64 %240)
  br label %242

242:                                              ; preds = %222, %152
  br label %243

243:                                              ; preds = %242, %59
  %244 = load %struct.idt77252_dev*, %struct.idt77252_dev** %3, align 8
  %245 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %244, i32 0, i32 3
  %246 = load i64, i64* %7, align 8
  %247 = call i32 @spin_unlock_irqrestore(i32* %245, i64 %246)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @readl(i32) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @write_sram(%struct.idt77252_dev*, i64, i64) #1

declare dso_local i64 @test_and_clear_bit(i32, i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
