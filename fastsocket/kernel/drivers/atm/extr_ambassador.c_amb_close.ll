; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/atm/extr_ambassador.c_amb_close.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/atm/extr_ambassador.c_amb_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atm_vcc = type { i64, i32, %struct.TYPE_28__, i32 }
%struct.TYPE_28__ = type { %struct.TYPE_27__, %struct.TYPE_25__ }
%struct.TYPE_27__ = type { i64 }
%struct.TYPE_25__ = type { i64 }
%struct.TYPE_24__ = type { i32, %struct.TYPE_21__*, %struct.atm_vcc**, %struct.TYPE_31__* }
%struct.TYPE_21__ = type { i64 }
%struct.TYPE_31__ = type { i64, i64 }
%struct.TYPE_23__ = type { %struct.TYPE_29__ }
%struct.TYPE_29__ = type { i8 }
%struct.TYPE_22__ = type { %struct.TYPE_33__, i8* }
%struct.TYPE_33__ = type { %struct.TYPE_32__, %struct.TYPE_30__, %struct.TYPE_26__ }
%struct.TYPE_32__ = type { i8* }
%struct.TYPE_30__ = type { i8*, i8* }
%struct.TYPE_26__ = type { i8*, i8* }

@DBG_VCC = common dso_local global i32 0, align 4
@DBG_FLOW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"amb_close\00", align 1
@ATM_VF_READY = common dso_local global i32 0, align 4
@ATM_NONE = common dso_local global i64 0, align 8
@SRB_MODIFY_VC_RATE = common dso_local global i64 0, align 8
@SRB_CLOSE_VC = common dso_local global i64 0, align 8
@SRB_MODIFY_VC_FLAGS = common dso_local global i64 0, align 8
@SRB_FLAGS_SHIFT = common dso_local global i64 0, align 8
@KERN_ERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"%s vcc=%p rxer[vci]=%p\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"arghhh! we're going to die!\00", align 1
@rx_lats = common dso_local global i64 0, align 8
@ATM_VF_ADDR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.atm_vcc*)* @amb_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @amb_close(%struct.atm_vcc* %0) #0 {
  %2 = alloca %struct.atm_vcc*, align 8
  %3 = alloca %struct.TYPE_24__*, align 8
  %4 = alloca %struct.TYPE_23__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_22__, align 8
  %7 = alloca %struct.TYPE_22__, align 8
  %8 = alloca i8, align 1
  store %struct.atm_vcc* %0, %struct.atm_vcc** %2, align 8
  %9 = load %struct.atm_vcc*, %struct.atm_vcc** %2, align 8
  %10 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %9, i32 0, i32 3
  %11 = load i32, i32* %10, align 8
  %12 = call %struct.TYPE_24__* @AMB_DEV(i32 %11)
  store %struct.TYPE_24__* %12, %struct.TYPE_24__** %3, align 8
  %13 = load %struct.atm_vcc*, %struct.atm_vcc** %2, align 8
  %14 = call %struct.TYPE_23__* @AMB_VCC(%struct.atm_vcc* %13)
  store %struct.TYPE_23__* %14, %struct.TYPE_23__** %4, align 8
  %15 = load %struct.atm_vcc*, %struct.atm_vcc** %2, align 8
  %16 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  store i64 %17, i64* %5, align 8
  %18 = load i32, i32* @DBG_VCC, align 4
  %19 = load i32, i32* @DBG_FLOW, align 4
  %20 = or i32 %18, %19
  %21 = call i32 @PRINTD(i32 %20, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %22 = load i32, i32* @ATM_VF_READY, align 4
  %23 = load %struct.atm_vcc*, %struct.atm_vcc** %2, align 8
  %24 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %23, i32 0, i32 1
  %25 = call i32 @clear_bit(i32 %22, i32* %24)
  %26 = load %struct.atm_vcc*, %struct.atm_vcc** %2, align 8
  %27 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %26, i32 0, i32 2
  %28 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @ATM_NONE, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %83

33:                                               ; preds = %1
  %34 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %34, i32 0, i32 0
  %36 = call i32 @mutex_lock(i32* %35)
  %37 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %37, i32 0, i32 2
  %39 = load %struct.atm_vcc**, %struct.atm_vcc*** %38, align 8
  %40 = load i64, i64* %5, align 8
  %41 = getelementptr inbounds %struct.atm_vcc*, %struct.atm_vcc** %39, i64 %40
  %42 = load %struct.atm_vcc*, %struct.atm_vcc** %41, align 8
  %43 = icmp ne %struct.atm_vcc* %42, null
  br i1 %43, label %44, label %57

44:                                               ; preds = %33
  %45 = load i64, i64* @SRB_MODIFY_VC_RATE, align 8
  %46 = call i8* @cpu_to_be32(i64 %45)
  %47 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %6, i32 0, i32 1
  store i8* %46, i8** %47, align 8
  %48 = load i64, i64* %5, align 8
  %49 = call i8* @cpu_to_be32(i64 %48)
  %50 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %6, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %50, i32 0, i32 2
  %52 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %51, i32 0, i32 1
  store i8* %49, i8** %52, align 8
  %53 = call i8* @cpu_to_be32(i64 0)
  %54 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %6, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %54, i32 0, i32 2
  %56 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %55, i32 0, i32 0
  store i8* %53, i8** %56, align 8
  br label %66

57:                                               ; preds = %33
  %58 = load i64, i64* @SRB_CLOSE_VC, align 8
  %59 = call i8* @cpu_to_be32(i64 %58)
  %60 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %6, i32 0, i32 1
  store i8* %59, i8** %60, align 8
  %61 = load i64, i64* %5, align 8
  %62 = call i8* @cpu_to_be32(i64 %61)
  %63 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %6, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %64, i32 0, i32 0
  store i8* %62, i8** %65, align 8
  br label %66

66:                                               ; preds = %57, %44
  %67 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %68 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %67, i32 0, i32 3
  %69 = load %struct.TYPE_31__*, %struct.TYPE_31__** %68, align 8
  %70 = load i64, i64* %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %69, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %71, i32 0, i32 1
  store i64 0, i64* %72, align 8
  br label %73

73:                                               ; preds = %77, %66
  %74 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %75 = call i64 @command_do(%struct.TYPE_24__* %74, %struct.TYPE_22__* %6)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %73
  %78 = call i32 (...) @schedule()
  br label %73

79:                                               ; preds = %73
  %80 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %81 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %80, i32 0, i32 0
  %82 = call i32 @mutex_unlock(i32* %81)
  br label %83

83:                                               ; preds = %79, %1
  %84 = load %struct.atm_vcc*, %struct.atm_vcc** %2, align 8
  %85 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %84, i32 0, i32 2
  %86 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* @ATM_NONE, align 8
  %90 = icmp ne i64 %88, %89
  br i1 %90, label %91, label %204

91:                                               ; preds = %83
  %92 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %93 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %93, i32 0, i32 0
  %95 = load i8, i8* %94, align 1
  store i8 %95, i8* %8, align 1
  %96 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %97 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %96, i32 0, i32 0
  %98 = call i32 @mutex_lock(i32* %97)
  %99 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %100 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %99, i32 0, i32 3
  %101 = load %struct.TYPE_31__*, %struct.TYPE_31__** %100, align 8
  %102 = load i64, i64* %5, align 8
  %103 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %101, i64 %102
  %104 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %103, i32 0, i32 1
  %105 = load i64, i64* %104, align 8
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %129

107:                                              ; preds = %91
  %108 = load i64, i64* @SRB_MODIFY_VC_FLAGS, align 8
  %109 = call i8* @cpu_to_be32(i64 %108)
  %110 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %7, i32 0, i32 1
  store i8* %109, i8** %110, align 8
  %111 = load i64, i64* %5, align 8
  %112 = call i8* @cpu_to_be32(i64 %111)
  %113 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %7, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %113, i32 0, i32 1
  %115 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %114, i32 0, i32 1
  store i8* %112, i8** %115, align 8
  %116 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %117 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %116, i32 0, i32 3
  %118 = load %struct.TYPE_31__*, %struct.TYPE_31__** %117, align 8
  %119 = load i64, i64* %5, align 8
  %120 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %118, i64 %119
  %121 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = load i64, i64* @SRB_FLAGS_SHIFT, align 8
  %124 = shl i64 %122, %123
  %125 = call i8* @cpu_to_be32(i64 %124)
  %126 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %7, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %126, i32 0, i32 1
  %128 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %127, i32 0, i32 0
  store i8* %125, i8** %128, align 8
  br label %138

129:                                              ; preds = %91
  %130 = load i64, i64* @SRB_CLOSE_VC, align 8
  %131 = call i8* @cpu_to_be32(i64 %130)
  %132 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %7, i32 0, i32 1
  store i8* %131, i8** %132, align 8
  %133 = load i64, i64* %5, align 8
  %134 = call i8* @cpu_to_be32(i64 %133)
  %135 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %7, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %136, i32 0, i32 0
  store i8* %134, i8** %137, align 8
  br label %138

138:                                              ; preds = %129, %107
  %139 = load %struct.atm_vcc*, %struct.atm_vcc** %2, align 8
  %140 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %141 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %140, i32 0, i32 2
  %142 = load %struct.atm_vcc**, %struct.atm_vcc*** %141, align 8
  %143 = load i64, i64* %5, align 8
  %144 = getelementptr inbounds %struct.atm_vcc*, %struct.atm_vcc** %142, i64 %143
  %145 = load %struct.atm_vcc*, %struct.atm_vcc** %144, align 8
  %146 = icmp ne %struct.atm_vcc* %139, %145
  br i1 %146, label %147, label %157

147:                                              ; preds = %138
  %148 = load i32, i32* @KERN_ERR, align 4
  %149 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %150 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %151 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %150, i32 0, i32 2
  %152 = load %struct.atm_vcc**, %struct.atm_vcc*** %151, align 8
  %153 = load i64, i64* %5, align 8
  %154 = getelementptr inbounds %struct.atm_vcc*, %struct.atm_vcc** %152, i64 %153
  %155 = load %struct.atm_vcc*, %struct.atm_vcc** %154, align 8
  %156 = call i32 @PRINTK(i32 %148, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), %struct.TYPE_23__* %149, %struct.atm_vcc* %155)
  br label %157

157:                                              ; preds = %147, %138
  %158 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %159 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %158, i32 0, i32 2
  %160 = load %struct.atm_vcc**, %struct.atm_vcc*** %159, align 8
  %161 = load i64, i64* %5, align 8
  %162 = getelementptr inbounds %struct.atm_vcc*, %struct.atm_vcc** %160, i64 %161
  store %struct.atm_vcc* null, %struct.atm_vcc** %162, align 8
  br label %163

163:                                              ; preds = %167, %157
  %164 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %165 = call i64 @command_do(%struct.TYPE_24__* %164, %struct.TYPE_22__* %7)
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %167, label %169

167:                                              ; preds = %163
  %168 = call i32 (...) @schedule()
  br label %163

169:                                              ; preds = %163
  %170 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %171 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %170, i32 0, i32 1
  %172 = load %struct.TYPE_21__*, %struct.TYPE_21__** %171, align 8
  %173 = load i8, i8* %8, align 1
  %174 = zext i8 %173 to i64
  %175 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %172, i64 %174
  %176 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %175, i32 0, i32 0
  %177 = load i64, i64* %176, align 8
  %178 = sub nsw i64 %177, 1
  store i64 %178, i64* %176, align 8
  %179 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %180 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %179, i32 0, i32 1
  %181 = load %struct.TYPE_21__*, %struct.TYPE_21__** %180, align 8
  %182 = load i8, i8* %8, align 1
  %183 = zext i8 %182 to i64
  %184 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %181, i64 %183
  %185 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %184, i32 0, i32 0
  %186 = load i64, i64* %185, align 8
  %187 = load i64, i64* @rx_lats, align 8
  %188 = icmp eq i64 %186, %187
  br i1 %188, label %189, label %200

189:                                              ; preds = %169
  %190 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %191 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %190, i32 0, i32 1
  %192 = load %struct.TYPE_21__*, %struct.TYPE_21__** %191, align 8
  %193 = load i8, i8* %8, align 1
  %194 = zext i8 %193 to i64
  %195 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %192, i64 %194
  %196 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %195, i32 0, i32 0
  store i64 0, i64* %196, align 8
  %197 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %198 = load i8, i8* %8, align 1
  %199 = call i32 @drain_rx_pool(%struct.TYPE_24__* %197, i8 zeroext %198)
  br label %200

200:                                              ; preds = %189, %169
  %201 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %202 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %201, i32 0, i32 0
  %203 = call i32 @mutex_unlock(i32* %202)
  br label %204

204:                                              ; preds = %200, %83
  %205 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %206 = call i32 @kfree(%struct.TYPE_23__* %205)
  %207 = load i32, i32* @ATM_VF_ADDR, align 4
  %208 = load %struct.atm_vcc*, %struct.atm_vcc** %2, align 8
  %209 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %208, i32 0, i32 1
  %210 = call i32 @clear_bit(i32 %207, i32* %209)
  ret void
}

declare dso_local %struct.TYPE_24__* @AMB_DEV(i32) #1

declare dso_local %struct.TYPE_23__* @AMB_VCC(%struct.atm_vcc*) #1

declare dso_local i32 @PRINTD(i32, i8*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i8* @cpu_to_be32(i64) #1

declare dso_local i64 @command_do(%struct.TYPE_24__*, %struct.TYPE_22__*) #1

declare dso_local i32 @schedule(...) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @PRINTK(i32, i8*, i8*, %struct.TYPE_23__*, %struct.atm_vcc*) #1

declare dso_local i32 @drain_rx_pool(%struct.TYPE_24__*, i8 zeroext) #1

declare dso_local i32 @kfree(%struct.TYPE_23__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
