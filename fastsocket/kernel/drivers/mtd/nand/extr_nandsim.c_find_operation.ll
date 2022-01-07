; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/nand/extr_nandsim.c_find_operation.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/nand/extr_nandsim.c_find_operation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32* }
%struct.nandsim = type { i32, i64, i32, i32*, i32*, i32, i32 }

@NS_OPER_NUM = common dso_local global i32 0, align 4
@ops = common dso_local global %struct.TYPE_2__* null, align 8
@STATE_ADDR_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [67 x i8] c"find_operation: operation found, index: %d, state: %s, nxstate %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [61 x i8] c"find_operation: no operation found, try again with state %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"find_operation: no operations found\0A\00", align 1
@.str.3 = private unnamed_addr constant [66 x i8] c"find_operation: BUG, operation must be known if address is input\0A\00", align 1
@.str.4 = private unnamed_addr constant [42 x i8] c"find_operation: there is still ambiguity\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nandsim*, i64)* @find_operation to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @find_operation(%struct.nandsim* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nandsim*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.nandsim* %0, %struct.nandsim** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %7, align 4
  br label %11

11:                                               ; preds = %122, %2
  %12 = load i32, i32* %7, align 4
  %13 = load i32, i32* @NS_OPER_NUM, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %125

15:                                               ; preds = %11
  store i32 1, i32* %10, align 4
  %16 = load %struct.nandsim*, %struct.nandsim** %4, align 8
  %17 = getelementptr inbounds %struct.nandsim, %struct.nandsim* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ops, align 8
  %20 = load i32, i32* %7, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = and i32 %18, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %15
  br label %122

28:                                               ; preds = %15
  %29 = load i64, i64* %5, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %48

31:                                               ; preds = %28
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ops, align 8
  %33 = load i32, i32* %7, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 1
  %37 = load i32*, i32** %36, align 8
  %38 = load %struct.nandsim*, %struct.nandsim** %4, align 8
  %39 = getelementptr inbounds %struct.nandsim, %struct.nandsim* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = getelementptr inbounds i32, i32* %37, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @STATE_ADDR_MASK, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %31
  br label %122

47:                                               ; preds = %31
  br label %68

48:                                               ; preds = %28
  %49 = load %struct.nandsim*, %struct.nandsim** %4, align 8
  %50 = getelementptr inbounds %struct.nandsim, %struct.nandsim* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = call i64 @NS_STATE(i32 %51)
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ops, align 8
  %54 = load i32, i32* %7, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 1
  %58 = load i32*, i32** %57, align 8
  %59 = load %struct.nandsim*, %struct.nandsim** %4, align 8
  %60 = getelementptr inbounds %struct.nandsim, %struct.nandsim* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = getelementptr inbounds i32, i32* %58, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = call i64 @NS_STATE(i32 %63)
  %65 = icmp ne i64 %52, %64
  br i1 %65, label %66, label %67

66:                                               ; preds = %48
  br label %122

67:                                               ; preds = %48
  br label %68

68:                                               ; preds = %67, %47
  store i32 0, i32* %8, align 4
  br label %69

69:                                               ; preds = %111, %68
  %70 = load i32, i32* %8, align 4
  %71 = sext i32 %70 to i64
  %72 = load %struct.nandsim*, %struct.nandsim** %4, align 8
  %73 = getelementptr inbounds %struct.nandsim, %struct.nandsim* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = icmp ult i64 %71, %74
  br i1 %75, label %76, label %114

76:                                               ; preds = %69
  %77 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ops, align 8
  %78 = load i32, i32* %7, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 1
  %82 = load i32*, i32** %81, align 8
  %83 = load i32, i32* %8, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i32, i32* %82, i64 %84
  %86 = load i32, i32* %85, align 4
  %87 = call i64 @NS_STATE(i32 %86)
  %88 = load %struct.nandsim*, %struct.nandsim** %4, align 8
  %89 = getelementptr inbounds %struct.nandsim, %struct.nandsim* %88, i32 0, i32 3
  %90 = load i32*, i32** %89, align 8
  %91 = load i32, i32* %8, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i32, i32* %90, i64 %92
  %94 = load i32, i32* %93, align 4
  %95 = call i64 @NS_STATE(i32 %94)
  %96 = icmp ne i64 %87, %95
  br i1 %96, label %97, label %110

97:                                               ; preds = %76
  %98 = load %struct.nandsim*, %struct.nandsim** %4, align 8
  %99 = getelementptr inbounds %struct.nandsim, %struct.nandsim* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ops, align 8
  %102 = load i32, i32* %9, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i64 %103
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = and i32 %100, %106
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %110

109:                                              ; preds = %97
  store i32 0, i32* %10, align 4
  br label %114

110:                                              ; preds = %97, %76
  br label %111

111:                                              ; preds = %110
  %112 = load i32, i32* %8, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %8, align 4
  br label %69

114:                                              ; preds = %109, %69
  %115 = load i32, i32* %10, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %121

117:                                              ; preds = %114
  %118 = load i32, i32* %7, align 4
  store i32 %118, i32* %9, align 4
  %119 = load i32, i32* %6, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %6, align 4
  br label %121

121:                                              ; preds = %117, %114
  br label %122

122:                                              ; preds = %121, %66, %46, %27
  %123 = load i32, i32* %7, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %7, align 4
  br label %11

125:                                              ; preds = %11
  %126 = load i32, i32* %6, align 4
  %127 = icmp eq i32 %126, 1
  br i1 %127, label %128, label %191

128:                                              ; preds = %125
  %129 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ops, align 8
  %130 = load i32, i32* %9, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %129, i64 %131
  %133 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %132, i32 0, i32 1
  %134 = load i32*, i32** %133, align 8
  %135 = getelementptr inbounds i32, i32* %134, i64 0
  %136 = load %struct.nandsim*, %struct.nandsim** %4, align 8
  %137 = getelementptr inbounds %struct.nandsim, %struct.nandsim* %136, i32 0, i32 4
  store i32* %135, i32** %137, align 8
  %138 = load i64, i64* %5, align 8
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %148

140:                                              ; preds = %128
  %141 = load %struct.nandsim*, %struct.nandsim** %4, align 8
  %142 = getelementptr inbounds %struct.nandsim, %struct.nandsim* %141, i32 0, i32 1
  %143 = load i64, i64* %142, align 8
  %144 = sub i64 %143, 1
  %145 = trunc i64 %144 to i32
  %146 = load %struct.nandsim*, %struct.nandsim** %4, align 8
  %147 = getelementptr inbounds %struct.nandsim, %struct.nandsim* %146, i32 0, i32 5
  store i32 %145, i32* %147, align 8
  br label %155

148:                                              ; preds = %128
  %149 = load %struct.nandsim*, %struct.nandsim** %4, align 8
  %150 = getelementptr inbounds %struct.nandsim, %struct.nandsim* %149, i32 0, i32 1
  %151 = load i64, i64* %150, align 8
  %152 = trunc i64 %151 to i32
  %153 = load %struct.nandsim*, %struct.nandsim** %4, align 8
  %154 = getelementptr inbounds %struct.nandsim, %struct.nandsim* %153, i32 0, i32 5
  store i32 %152, i32* %154, align 8
  br label %155

155:                                              ; preds = %148, %140
  %156 = load %struct.nandsim*, %struct.nandsim** %4, align 8
  %157 = getelementptr inbounds %struct.nandsim, %struct.nandsim* %156, i32 0, i32 1
  store i64 0, i64* %157, align 8
  %158 = load %struct.nandsim*, %struct.nandsim** %4, align 8
  %159 = getelementptr inbounds %struct.nandsim, %struct.nandsim* %158, i32 0, i32 4
  %160 = load i32*, i32** %159, align 8
  %161 = load %struct.nandsim*, %struct.nandsim** %4, align 8
  %162 = getelementptr inbounds %struct.nandsim, %struct.nandsim* %161, i32 0, i32 5
  %163 = load i32, i32* %162, align 8
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds i32, i32* %160, i64 %164
  %166 = load i32, i32* %165, align 4
  %167 = load %struct.nandsim*, %struct.nandsim** %4, align 8
  %168 = getelementptr inbounds %struct.nandsim, %struct.nandsim* %167, i32 0, i32 2
  store i32 %166, i32* %168, align 8
  %169 = load %struct.nandsim*, %struct.nandsim** %4, align 8
  %170 = getelementptr inbounds %struct.nandsim, %struct.nandsim* %169, i32 0, i32 4
  %171 = load i32*, i32** %170, align 8
  %172 = load %struct.nandsim*, %struct.nandsim** %4, align 8
  %173 = getelementptr inbounds %struct.nandsim, %struct.nandsim* %172, i32 0, i32 5
  %174 = load i32, i32* %173, align 8
  %175 = add nsw i32 %174, 1
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds i32, i32* %171, i64 %176
  %178 = load i32, i32* %177, align 4
  %179 = load %struct.nandsim*, %struct.nandsim** %4, align 8
  %180 = getelementptr inbounds %struct.nandsim, %struct.nandsim* %179, i32 0, i32 6
  store i32 %178, i32* %180, align 4
  %181 = load i32, i32* %9, align 4
  %182 = load %struct.nandsim*, %struct.nandsim** %4, align 8
  %183 = getelementptr inbounds %struct.nandsim, %struct.nandsim* %182, i32 0, i32 2
  %184 = load i32, i32* %183, align 8
  %185 = call i32 @get_state_name(i32 %184)
  %186 = load %struct.nandsim*, %struct.nandsim** %4, align 8
  %187 = getelementptr inbounds %struct.nandsim, %struct.nandsim* %186, i32 0, i32 6
  %188 = load i32, i32* %187, align 4
  %189 = call i32 @get_state_name(i32 %188)
  %190 = call i32 (i8*, ...) @NS_DBG(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str, i64 0, i64 0), i32 %181, i32 %185, i32 %189)
  store i32 0, i32* %3, align 4
  br label %233

191:                                              ; preds = %125
  %192 = load i32, i32* %6, align 4
  %193 = icmp eq i32 %192, 0
  br i1 %193, label %194, label %215

194:                                              ; preds = %191
  %195 = load %struct.nandsim*, %struct.nandsim** %4, align 8
  %196 = getelementptr inbounds %struct.nandsim, %struct.nandsim* %195, i32 0, i32 1
  %197 = load i64, i64* %196, align 8
  %198 = icmp ne i64 %197, 0
  br i1 %198, label %199, label %209

199:                                              ; preds = %194
  %200 = load %struct.nandsim*, %struct.nandsim** %4, align 8
  %201 = getelementptr inbounds %struct.nandsim, %struct.nandsim* %200, i32 0, i32 2
  %202 = load i32, i32* %201, align 8
  %203 = call i32 @get_state_name(i32 %202)
  %204 = call i32 (i8*, ...) @NS_DBG(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i64 0, i64 0), i32 %203)
  %205 = load %struct.nandsim*, %struct.nandsim** %4, align 8
  %206 = getelementptr inbounds %struct.nandsim, %struct.nandsim* %205, i32 0, i32 1
  store i64 0, i64* %206, align 8
  %207 = load %struct.nandsim*, %struct.nandsim** %4, align 8
  %208 = call i32 @find_operation(%struct.nandsim* %207, i64 0)
  store i32 %208, i32* %3, align 4
  br label %233

209:                                              ; preds = %194
  %210 = call i32 (i8*, ...) @NS_DBG(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0))
  %211 = load %struct.nandsim*, %struct.nandsim** %4, align 8
  %212 = load %struct.nandsim*, %struct.nandsim** %4, align 8
  %213 = call i32 @NS_STATUS_FAILED(%struct.nandsim* %212)
  %214 = call i32 @switch_to_ready_state(%struct.nandsim* %211, i32 %213)
  store i32 -2, i32* %3, align 4
  br label %233

215:                                              ; preds = %191
  %216 = load i64, i64* %5, align 8
  %217 = icmp ne i64 %216, 0
  br i1 %217, label %218, label %220

218:                                              ; preds = %215
  %219 = call i32 (i8*, ...) @NS_DBG(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.3, i64 0, i64 0))
  store i32 -2, i32* %3, align 4
  br label %233

220:                                              ; preds = %215
  %221 = call i32 (i8*, ...) @NS_DBG(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.4, i64 0, i64 0))
  %222 = load %struct.nandsim*, %struct.nandsim** %4, align 8
  %223 = getelementptr inbounds %struct.nandsim, %struct.nandsim* %222, i32 0, i32 2
  %224 = load i32, i32* %223, align 8
  %225 = load %struct.nandsim*, %struct.nandsim** %4, align 8
  %226 = getelementptr inbounds %struct.nandsim, %struct.nandsim* %225, i32 0, i32 3
  %227 = load i32*, i32** %226, align 8
  %228 = load %struct.nandsim*, %struct.nandsim** %4, align 8
  %229 = getelementptr inbounds %struct.nandsim, %struct.nandsim* %228, i32 0, i32 1
  %230 = load i64, i64* %229, align 8
  %231 = add i64 %230, 1
  store i64 %231, i64* %229, align 8
  %232 = getelementptr inbounds i32, i32* %227, i64 %230
  store i32 %224, i32* %232, align 4
  store i32 -1, i32* %3, align 4
  br label %233

233:                                              ; preds = %220, %218, %209, %199, %155
  %234 = load i32, i32* %3, align 4
  ret i32 %234
}

declare dso_local i64 @NS_STATE(i32) #1

declare dso_local i32 @NS_DBG(i8*, ...) #1

declare dso_local i32 @get_state_name(i32) #1

declare dso_local i32 @switch_to_ready_state(%struct.nandsim*, i32) #1

declare dso_local i32 @NS_STATUS_FAILED(%struct.nandsim*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
