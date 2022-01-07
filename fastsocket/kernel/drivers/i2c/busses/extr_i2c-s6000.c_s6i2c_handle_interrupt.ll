; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/i2c/busses/extr_i2c-s6000.c_s6i2c_handle_interrupt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/i2c/busses/extr_i2c-s6000.c_s6i2c_handle_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s6i2c_if = type { i64, i64, i64, i64, i64, i32, %struct.i2c_msg*, %struct.TYPE_2__ }
%struct.i2c_msg = type { i32, i32*, i64 }
%struct.TYPE_2__ = type { i32 }

@S6_I2C_INTRSTAT = common dso_local global i32 0, align 4
@S6_I2C_INTR_TXABRT = common dso_local global i32 0, align 4
@S6_I2C_CLRTXABRT = common dso_local global i32 0, align 4
@S6_I2C_INTRMASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"s6i2c: spurious I2C irq: %04x\0A\00", align 1
@S6_I2C_STATUS = common dso_local global i32 0, align 4
@S6_I2C_STATUS_TFNF = common dso_local global i32 0, align 4
@I2C_M_RD = common dso_local global i32 0, align 4
@S6_I2C_DATACMD = common dso_local global i32 0, align 4
@S6_I2C_DATACMD_READ = common dso_local global i32 0, align 4
@S6_I2C_STATUS_RFNE = common dso_local global i32 0, align 4
@S6_I2C_INTR_RXFULL = common dso_local global i32 0, align 4
@S6_I2C_INTR_TXEMPTY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.s6i2c_if*)* @s6i2c_handle_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @s6i2c_handle_interrupt(%struct.s6i2c_if* %0) #0 {
  %2 = alloca %struct.s6i2c_if*, align 8
  %3 = alloca %struct.i2c_msg*, align 8
  %4 = alloca %struct.i2c_msg*, align 8
  store %struct.s6i2c_if* %0, %struct.s6i2c_if** %2, align 8
  %5 = load %struct.s6i2c_if*, %struct.s6i2c_if** %2, align 8
  %6 = load i32, i32* @S6_I2C_INTRSTAT, align 4
  %7 = call i32 @i2c_rd16(%struct.s6i2c_if* %5, i32 %6)
  %8 = load i32, i32* @S6_I2C_INTR_TXABRT, align 4
  %9 = shl i32 1, %8
  %10 = and i32 %7, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %22

12:                                               ; preds = %1
  %13 = load %struct.s6i2c_if*, %struct.s6i2c_if** %2, align 8
  %14 = load i32, i32* @S6_I2C_CLRTXABRT, align 4
  %15 = call i32 @i2c_rd16(%struct.s6i2c_if* %13, i32 %14)
  %16 = load %struct.s6i2c_if*, %struct.s6i2c_if** %2, align 8
  %17 = load i32, i32* @S6_I2C_INTRMASK, align 4
  %18 = call i32 @i2c_wr16(%struct.s6i2c_if* %16, i32 %17, i32 0)
  %19 = load %struct.s6i2c_if*, %struct.s6i2c_if** %2, align 8
  %20 = getelementptr inbounds %struct.s6i2c_if, %struct.s6i2c_if* %19, i32 0, i32 5
  %21 = call i32 @complete(i32* %20)
  br label %232

22:                                               ; preds = %1
  %23 = load %struct.s6i2c_if*, %struct.s6i2c_if** %2, align 8
  %24 = getelementptr inbounds %struct.s6i2c_if, %struct.s6i2c_if* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.s6i2c_if*, %struct.s6i2c_if** %2, align 8
  %27 = getelementptr inbounds %struct.s6i2c_if, %struct.s6i2c_if* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = icmp uge i64 %25, %28
  br i1 %29, label %30, label %41

30:                                               ; preds = %22
  %31 = load %struct.s6i2c_if*, %struct.s6i2c_if** %2, align 8
  %32 = getelementptr inbounds %struct.s6i2c_if, %struct.s6i2c_if* %31, i32 0, i32 7
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load %struct.s6i2c_if*, %struct.s6i2c_if** %2, align 8
  %35 = load i32, i32* @S6_I2C_INTRSTAT, align 4
  %36 = call i32 @i2c_rd16(%struct.s6i2c_if* %34, i32 %35)
  %37 = call i32 @dev_err(i32* %33, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %36)
  %38 = load %struct.s6i2c_if*, %struct.s6i2c_if** %2, align 8
  %39 = load i32, i32* @S6_I2C_INTRMASK, align 4
  %40 = call i32 @i2c_wr16(%struct.s6i2c_if* %38, i32 %39, i32 0)
  br label %232

41:                                               ; preds = %22
  br label %42

42:                                               ; preds = %108, %41
  %43 = load %struct.s6i2c_if*, %struct.s6i2c_if** %2, align 8
  %44 = getelementptr inbounds %struct.s6i2c_if, %struct.s6i2c_if* %43, i32 0, i32 2
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.s6i2c_if*, %struct.s6i2c_if** %2, align 8
  %47 = getelementptr inbounds %struct.s6i2c_if, %struct.s6i2c_if* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = icmp ult i64 %45, %48
  br i1 %49, label %50, label %58

50:                                               ; preds = %42
  %51 = load %struct.s6i2c_if*, %struct.s6i2c_if** %2, align 8
  %52 = load i32, i32* @S6_I2C_STATUS, align 4
  %53 = call i32 @i2c_rd16(%struct.s6i2c_if* %51, i32 %52)
  %54 = load i32, i32* @S6_I2C_STATUS_TFNF, align 4
  %55 = shl i32 1, %54
  %56 = and i32 %53, %55
  %57 = icmp ne i32 %56, 0
  br label %58

58:                                               ; preds = %50, %42
  %59 = phi i1 [ false, %42 ], [ %57, %50 ]
  br i1 %59, label %60, label %109

60:                                               ; preds = %58
  %61 = load %struct.s6i2c_if*, %struct.s6i2c_if** %2, align 8
  %62 = getelementptr inbounds %struct.s6i2c_if, %struct.s6i2c_if* %61, i32 0, i32 6
  %63 = load %struct.i2c_msg*, %struct.i2c_msg** %62, align 8
  %64 = load %struct.s6i2c_if*, %struct.s6i2c_if** %2, align 8
  %65 = getelementptr inbounds %struct.s6i2c_if, %struct.s6i2c_if* %64, i32 0, i32 2
  %66 = load i64, i64* %65, align 8
  %67 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %63, i64 %66
  store %struct.i2c_msg* %67, %struct.i2c_msg** %3, align 8
  %68 = load %struct.i2c_msg*, %struct.i2c_msg** %3, align 8
  %69 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* @I2C_M_RD, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %86, label %74

74:                                               ; preds = %60
  %75 = load %struct.s6i2c_if*, %struct.s6i2c_if** %2, align 8
  %76 = load i32, i32* @S6_I2C_DATACMD, align 4
  %77 = load %struct.i2c_msg*, %struct.i2c_msg** %3, align 8
  %78 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %77, i32 0, i32 1
  %79 = load i32*, i32** %78, align 8
  %80 = load %struct.s6i2c_if*, %struct.s6i2c_if** %2, align 8
  %81 = getelementptr inbounds %struct.s6i2c_if, %struct.s6i2c_if* %80, i32 0, i32 3
  %82 = load i64, i64* %81, align 8
  %83 = getelementptr inbounds i32, i32* %79, i64 %82
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @i2c_wr16(%struct.s6i2c_if* %75, i32 %76, i32 %84)
  br label %92

86:                                               ; preds = %60
  %87 = load %struct.s6i2c_if*, %struct.s6i2c_if** %2, align 8
  %88 = load i32, i32* @S6_I2C_DATACMD, align 4
  %89 = load i32, i32* @S6_I2C_DATACMD_READ, align 4
  %90 = shl i32 1, %89
  %91 = call i32 @i2c_wr16(%struct.s6i2c_if* %87, i32 %88, i32 %90)
  br label %92

92:                                               ; preds = %86, %74
  %93 = load %struct.s6i2c_if*, %struct.s6i2c_if** %2, align 8
  %94 = getelementptr inbounds %struct.s6i2c_if, %struct.s6i2c_if* %93, i32 0, i32 3
  %95 = load i64, i64* %94, align 8
  %96 = add i64 %95, 1
  store i64 %96, i64* %94, align 8
  %97 = load %struct.i2c_msg*, %struct.i2c_msg** %3, align 8
  %98 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %97, i32 0, i32 2
  %99 = load i64, i64* %98, align 8
  %100 = icmp uge i64 %96, %99
  br i1 %100, label %101, label %108

101:                                              ; preds = %92
  %102 = load %struct.s6i2c_if*, %struct.s6i2c_if** %2, align 8
  %103 = getelementptr inbounds %struct.s6i2c_if, %struct.s6i2c_if* %102, i32 0, i32 3
  store i64 0, i64* %103, align 8
  %104 = load %struct.s6i2c_if*, %struct.s6i2c_if** %2, align 8
  %105 = getelementptr inbounds %struct.s6i2c_if, %struct.s6i2c_if* %104, i32 0, i32 2
  %106 = load i64, i64* %105, align 8
  %107 = add i64 %106, 1
  store i64 %107, i64* %105, align 8
  br label %108

108:                                              ; preds = %101, %92
  br label %42

109:                                              ; preds = %58
  br label %110

110:                                              ; preds = %177, %109
  %111 = load %struct.s6i2c_if*, %struct.s6i2c_if** %2, align 8
  %112 = getelementptr inbounds %struct.s6i2c_if, %struct.s6i2c_if* %111, i32 0, i32 6
  %113 = load %struct.i2c_msg*, %struct.i2c_msg** %112, align 8
  %114 = load %struct.s6i2c_if*, %struct.s6i2c_if** %2, align 8
  %115 = getelementptr inbounds %struct.s6i2c_if, %struct.s6i2c_if* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %113, i64 %116
  store %struct.i2c_msg* %117, %struct.i2c_msg** %4, align 8
  %118 = load %struct.i2c_msg*, %struct.i2c_msg** %4, align 8
  %119 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = load i32, i32* @I2C_M_RD, align 4
  %122 = and i32 %120, %121
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %139, label %124

124:                                              ; preds = %110
  %125 = load %struct.s6i2c_if*, %struct.s6i2c_if** %2, align 8
  %126 = getelementptr inbounds %struct.s6i2c_if, %struct.s6i2c_if* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = load %struct.s6i2c_if*, %struct.s6i2c_if** %2, align 8
  %129 = getelementptr inbounds %struct.s6i2c_if, %struct.s6i2c_if* %128, i32 0, i32 2
  %130 = load i64, i64* %129, align 8
  %131 = icmp ult i64 %127, %130
  br i1 %131, label %132, label %137

132:                                              ; preds = %124
  %133 = load %struct.s6i2c_if*, %struct.s6i2c_if** %2, align 8
  %134 = getelementptr inbounds %struct.s6i2c_if, %struct.s6i2c_if* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = add i64 %135, 1
  store i64 %136, i64* %134, align 8
  br label %138

137:                                              ; preds = %124
  br label %185

138:                                              ; preds = %132
  br label %176

139:                                              ; preds = %110
  %140 = load %struct.s6i2c_if*, %struct.s6i2c_if** %2, align 8
  %141 = load i32, i32* @S6_I2C_STATUS, align 4
  %142 = call i32 @i2c_rd16(%struct.s6i2c_if* %140, i32 %141)
  %143 = load i32, i32* @S6_I2C_STATUS_RFNE, align 4
  %144 = shl i32 1, %143
  %145 = and i32 %142, %144
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %174

147:                                              ; preds = %139
  %148 = load %struct.s6i2c_if*, %struct.s6i2c_if** %2, align 8
  %149 = load i32, i32* @S6_I2C_DATACMD, align 4
  %150 = call i32 @i2c_rd16(%struct.s6i2c_if* %148, i32 %149)
  %151 = load %struct.i2c_msg*, %struct.i2c_msg** %4, align 8
  %152 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %151, i32 0, i32 1
  %153 = load i32*, i32** %152, align 8
  %154 = load %struct.s6i2c_if*, %struct.s6i2c_if** %2, align 8
  %155 = getelementptr inbounds %struct.s6i2c_if, %struct.s6i2c_if* %154, i32 0, i32 4
  %156 = load i64, i64* %155, align 8
  %157 = getelementptr inbounds i32, i32* %153, i64 %156
  store i32 %150, i32* %157, align 4
  %158 = load %struct.s6i2c_if*, %struct.s6i2c_if** %2, align 8
  %159 = getelementptr inbounds %struct.s6i2c_if, %struct.s6i2c_if* %158, i32 0, i32 4
  %160 = load i64, i64* %159, align 8
  %161 = add i64 %160, 1
  store i64 %161, i64* %159, align 8
  %162 = load %struct.i2c_msg*, %struct.i2c_msg** %4, align 8
  %163 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %162, i32 0, i32 2
  %164 = load i64, i64* %163, align 8
  %165 = icmp uge i64 %161, %164
  br i1 %165, label %166, label %173

166:                                              ; preds = %147
  %167 = load %struct.s6i2c_if*, %struct.s6i2c_if** %2, align 8
  %168 = getelementptr inbounds %struct.s6i2c_if, %struct.s6i2c_if* %167, i32 0, i32 4
  store i64 0, i64* %168, align 8
  %169 = load %struct.s6i2c_if*, %struct.s6i2c_if** %2, align 8
  %170 = getelementptr inbounds %struct.s6i2c_if, %struct.s6i2c_if* %169, i32 0, i32 0
  %171 = load i64, i64* %170, align 8
  %172 = add i64 %171, 1
  store i64 %172, i64* %170, align 8
  br label %173

173:                                              ; preds = %166, %147
  br label %175

174:                                              ; preds = %139
  br label %185

175:                                              ; preds = %173
  br label %176

176:                                              ; preds = %175, %138
  br label %177

177:                                              ; preds = %176
  %178 = load %struct.s6i2c_if*, %struct.s6i2c_if** %2, align 8
  %179 = getelementptr inbounds %struct.s6i2c_if, %struct.s6i2c_if* %178, i32 0, i32 0
  %180 = load i64, i64* %179, align 8
  %181 = load %struct.s6i2c_if*, %struct.s6i2c_if** %2, align 8
  %182 = getelementptr inbounds %struct.s6i2c_if, %struct.s6i2c_if* %181, i32 0, i32 1
  %183 = load i64, i64* %182, align 8
  %184 = icmp ult i64 %180, %183
  br i1 %184, label %110, label %185

185:                                              ; preds = %177, %174, %137
  %186 = load %struct.s6i2c_if*, %struct.s6i2c_if** %2, align 8
  %187 = getelementptr inbounds %struct.s6i2c_if, %struct.s6i2c_if* %186, i32 0, i32 0
  %188 = load i64, i64* %187, align 8
  %189 = load %struct.s6i2c_if*, %struct.s6i2c_if** %2, align 8
  %190 = getelementptr inbounds %struct.s6i2c_if, %struct.s6i2c_if* %189, i32 0, i32 1
  %191 = load i64, i64* %190, align 8
  %192 = icmp uge i64 %188, %191
  br i1 %192, label %193, label %202

193:                                              ; preds = %185
  %194 = load %struct.s6i2c_if*, %struct.s6i2c_if** %2, align 8
  %195 = load i32, i32* @S6_I2C_INTRMASK, align 4
  %196 = load i32, i32* @S6_I2C_INTR_TXABRT, align 4
  %197 = shl i32 1, %196
  %198 = call i32 @i2c_wr16(%struct.s6i2c_if* %194, i32 %195, i32 %197)
  %199 = load %struct.s6i2c_if*, %struct.s6i2c_if** %2, align 8
  %200 = getelementptr inbounds %struct.s6i2c_if, %struct.s6i2c_if* %199, i32 0, i32 5
  %201 = call i32 @complete(i32* %200)
  br label %232

202:                                              ; preds = %185
  %203 = load %struct.s6i2c_if*, %struct.s6i2c_if** %2, align 8
  %204 = getelementptr inbounds %struct.s6i2c_if, %struct.s6i2c_if* %203, i32 0, i32 2
  %205 = load i64, i64* %204, align 8
  %206 = load %struct.s6i2c_if*, %struct.s6i2c_if** %2, align 8
  %207 = getelementptr inbounds %struct.s6i2c_if, %struct.s6i2c_if* %206, i32 0, i32 1
  %208 = load i64, i64* %207, align 8
  %209 = icmp uge i64 %205, %208
  br i1 %209, label %210, label %219

210:                                              ; preds = %202
  %211 = load %struct.s6i2c_if*, %struct.s6i2c_if** %2, align 8
  %212 = load i32, i32* @S6_I2C_INTRMASK, align 4
  %213 = load i32, i32* @S6_I2C_INTR_TXABRT, align 4
  %214 = shl i32 1, %213
  %215 = load i32, i32* @S6_I2C_INTR_RXFULL, align 4
  %216 = shl i32 1, %215
  %217 = or i32 %214, %216
  %218 = call i32 @i2c_wr16(%struct.s6i2c_if* %211, i32 %212, i32 %217)
  br label %231

219:                                              ; preds = %202
  %220 = load %struct.s6i2c_if*, %struct.s6i2c_if** %2, align 8
  %221 = load i32, i32* @S6_I2C_INTRMASK, align 4
  %222 = load i32, i32* @S6_I2C_INTR_TXABRT, align 4
  %223 = shl i32 1, %222
  %224 = load i32, i32* @S6_I2C_INTR_TXEMPTY, align 4
  %225 = shl i32 1, %224
  %226 = or i32 %223, %225
  %227 = load i32, i32* @S6_I2C_INTR_RXFULL, align 4
  %228 = shl i32 1, %227
  %229 = or i32 %226, %228
  %230 = call i32 @i2c_wr16(%struct.s6i2c_if* %220, i32 %221, i32 %229)
  br label %231

231:                                              ; preds = %219, %210
  br label %232

232:                                              ; preds = %12, %30, %231, %193
  ret void
}

declare dso_local i32 @i2c_rd16(%struct.s6i2c_if*, i32) #1

declare dso_local i32 @i2c_wr16(%struct.s6i2c_if*, i32, i32) #1

declare dso_local i32 @complete(i32*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
