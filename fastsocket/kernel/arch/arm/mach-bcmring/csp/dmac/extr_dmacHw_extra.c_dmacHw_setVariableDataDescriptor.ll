; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-bcmring/csp/dmac/extr_dmacHw_extra.c_dmacHw_setVariableDataDescriptor.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-bcmring/csp/dmac/extr_dmacHw_extra.c_dmacHw_setVariableDataDescriptor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.TYPE_14__ = type { i32, i32, i32, i32 }
%struct.TYPE_11__ = type { %struct.TYPE_10__, i32, i64, i64, i64 }
%struct.TYPE_10__ = type { i32, i64 }
%struct.TYPE_12__ = type { i32, i64, %struct.TYPE_11__*, %struct.TYPE_11__*, %struct.TYPE_11__* }

@dmacHw_TRANSFER_TYPE_PERIPHERAL_TO_MEM = common dso_local global i64 0, align 8
@dmacHw_REG_CTL_TTFC_PM_PERI = common dso_local global i64 0, align 8
@dmacHw_REG_CTL_LLP_DST_EN = common dso_local global i64 0, align 8
@dmacHw_REG_CTL_LLP_SRC_EN = common dso_local global i64 0, align 8
@dmacHw_REG_CTL_INT_EN = common dso_local global i64 0, align 8
@dmacHw_DESC_FREE = common dso_local global i32 0, align 4
@dmacHw_FREE_USER_MEMORY = common dso_local global i32 0, align 4
@pHead = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dmacHw_setVariableDataDescriptor(i32 %0, %struct.TYPE_13__* %1, i8* %2, i64 %3, i8* (i32)* %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_13__*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8* (i32)*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_14__*, align 8
  %17 = alloca %struct.TYPE_11__*, align 8
  %18 = alloca %struct.TYPE_11__*, align 8
  %19 = alloca %struct.TYPE_12__*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i32, align 4
  store i32 %0, i32* %9, align 4
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %10, align 8
  store i8* %2, i8** %11, align 8
  store i64 %3, i64* %12, align 8
  store i8* (i32)* %4, i8* (i32)** %13, align 8
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  %23 = load i32, i32* %9, align 4
  %24 = call %struct.TYPE_14__* @dmacHw_HANDLE_TO_CBLK(i32 %23)
  store %struct.TYPE_14__* %24, %struct.TYPE_14__** %16, align 8
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %17, align 8
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %18, align 8
  %25 = load i8*, i8** %11, align 8
  %26 = call %struct.TYPE_12__* @dmacHw_GET_DESC_RING(i8* %25)
  store %struct.TYPE_12__* %26, %struct.TYPE_12__** %19, align 8
  %27 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %28 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @dmacHw_TRANSFER_TYPE_PERIPHERAL_TO_MEM, align 8
  %31 = icmp eq i64 %29, %30
  %32 = zext i1 %31 to i32
  %33 = call i32 @dmacHw_ASSERT(i32 %32)
  %34 = load i32, i32* %15, align 4
  %35 = load %struct.TYPE_12__*, %struct.TYPE_12__** %19, align 8
  %36 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = icmp sgt i32 %34, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %7
  store i32 -1, i32* %8, align 4
  br label %215

40:                                               ; preds = %7
  %41 = load %struct.TYPE_12__*, %struct.TYPE_12__** %19, align 8
  %42 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %41, i32 0, i32 2
  %43 = load %struct.TYPE_11__*, %struct.TYPE_11__** %42, align 8
  store %struct.TYPE_11__* %43, %struct.TYPE_11__** %18, align 8
  %44 = load %struct.TYPE_12__*, %struct.TYPE_12__** %19, align 8
  %45 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %44, i32 0, i32 3
  %46 = load %struct.TYPE_11__*, %struct.TYPE_11__** %45, align 8
  store %struct.TYPE_11__* %46, %struct.TYPE_11__** %17, align 8
  %47 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %48 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %51 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %50, i32 0, i32 2
  %52 = load i64, i64* %51, align 8
  %53 = or i64 %49, %52
  %54 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %55 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %54, i32 0, i32 3
  %56 = load i64, i64* %55, align 8
  %57 = or i64 %53, %56
  %58 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %59 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %58, i32 0, i32 4
  %60 = load i64, i64* %59, align 8
  %61 = or i64 %57, %60
  %62 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %63 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %62, i32 0, i32 5
  %64 = load i64, i64* %63, align 8
  %65 = or i64 %61, %64
  %66 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %67 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %66, i32 0, i32 6
  %68 = load i64, i64* %67, align 8
  %69 = or i64 %65, %68
  %70 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %71 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %70, i32 0, i32 7
  %72 = load i64, i64* %71, align 8
  %73 = or i64 %69, %72
  %74 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %75 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %74, i32 0, i32 8
  %76 = load i64, i64* %75, align 8
  %77 = or i64 %73, %76
  %78 = load i64, i64* @dmacHw_REG_CTL_TTFC_PM_PERI, align 8
  %79 = or i64 %77, %78
  %80 = load i64, i64* @dmacHw_REG_CTL_LLP_DST_EN, align 8
  %81 = or i64 %79, %80
  %82 = load i64, i64* @dmacHw_REG_CTL_LLP_SRC_EN, align 8
  %83 = or i64 %81, %82
  %84 = load i64, i64* @dmacHw_REG_CTL_INT_EN, align 8
  %85 = or i64 %83, %84
  store i64 %85, i64* %21, align 8
  store i32 0, i32* %22, align 4
  br label %86

86:                                               ; preds = %163, %40
  %87 = load i32, i32* %22, align 4
  %88 = load i32, i32* %15, align 4
  %89 = icmp slt i32 %87, %88
  br i1 %89, label %90, label %166

90:                                               ; preds = %86
  %91 = load %struct.TYPE_12__*, %struct.TYPE_12__** %19, align 8
  %92 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %91, i32 0, i32 3
  %93 = load %struct.TYPE_11__*, %struct.TYPE_11__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = load i32, i32* @dmacHw_DESC_FREE, align 4
  %98 = and i32 %96, %97
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %111, label %100

100:                                              ; preds = %90
  %101 = load %struct.TYPE_12__*, %struct.TYPE_12__** %19, align 8
  %102 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %101, i32 0, i32 3
  %103 = load %struct.TYPE_11__*, %struct.TYPE_11__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %103, i32 0, i32 4
  %105 = load i64, i64* %104, align 8
  %106 = inttoptr i64 %105 to %struct.TYPE_11__*
  %107 = load %struct.TYPE_12__*, %struct.TYPE_12__** %19, align 8
  %108 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %107, i32 0, i32 4
  %109 = load %struct.TYPE_11__*, %struct.TYPE_11__** %108, align 8
  %110 = icmp eq %struct.TYPE_11__* %106, %109
  br i1 %110, label %111, label %112

111:                                              ; preds = %100, %90
  br label %166

112:                                              ; preds = %100
  %113 = load i64, i64* %12, align 8
  %114 = load %struct.TYPE_12__*, %struct.TYPE_12__** %19, align 8
  %115 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %114, i32 0, i32 3
  %116 = load %struct.TYPE_11__*, %struct.TYPE_11__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %116, i32 0, i32 3
  store i64 %113, i64* %117, align 8
  %118 = load i8* (i32)*, i8* (i32)** %13, align 8
  %119 = icmp ne i8* (i32)* %118, null
  br i1 %119, label %120, label %138

120:                                              ; preds = %112
  %121 = load i8* (i32)*, i8* (i32)** %13, align 8
  %122 = load i32, i32* %14, align 4
  %123 = call i8* %121(i32 %122)
  %124 = ptrtoint i8* %123 to i64
  store i64 %124, i64* %20, align 8
  %125 = load i64, i64* %20, align 8
  %126 = icmp eq i64 %125, 0
  br i1 %126, label %127, label %132

127:                                              ; preds = %120
  %128 = load i32, i32* %22, align 4
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %130, label %131

130:                                              ; preds = %127
  store i32 -1, i32* %8, align 4
  br label %215

131:                                              ; preds = %127
  br label %166

132:                                              ; preds = %120
  %133 = load i64, i64* %20, align 8
  %134 = load %struct.TYPE_12__*, %struct.TYPE_12__** %19, align 8
  %135 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %134, i32 0, i32 3
  %136 = load %struct.TYPE_11__*, %struct.TYPE_11__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %136, i32 0, i32 2
  store i64 %133, i64* %137, align 8
  br label %138

138:                                              ; preds = %132, %112
  %139 = load i64, i64* %21, align 8
  %140 = load %struct.TYPE_12__*, %struct.TYPE_12__** %19, align 8
  %141 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %140, i32 0, i32 3
  %142 = load %struct.TYPE_11__*, %struct.TYPE_11__** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %142, i32 0, i32 0
  %144 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %143, i32 0, i32 1
  store i64 %139, i64* %144, align 8
  %145 = load i32, i32* @dmacHw_FREE_USER_MEMORY, align 4
  %146 = load %struct.TYPE_12__*, %struct.TYPE_12__** %19, align 8
  %147 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %146, i32 0, i32 3
  %148 = load %struct.TYPE_11__*, %struct.TYPE_11__** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %148, i32 0, i32 1
  store i32 %145, i32* %149, align 8
  %150 = load %struct.TYPE_12__*, %struct.TYPE_12__** %19, align 8
  %151 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %150, i32 0, i32 3
  %152 = load %struct.TYPE_11__*, %struct.TYPE_11__** %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %152, i32 0, i32 0
  %154 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %153, i32 0, i32 0
  store i32 0, i32* %154, align 8
  %155 = load %struct.TYPE_12__*, %struct.TYPE_12__** %19, align 8
  %156 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %155, i32 0, i32 3
  %157 = load %struct.TYPE_11__*, %struct.TYPE_11__** %156, align 8
  %158 = load %struct.TYPE_12__*, %struct.TYPE_12__** %19, align 8
  %159 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %158, i32 0, i32 2
  store %struct.TYPE_11__* %157, %struct.TYPE_11__** %159, align 8
  %160 = load %struct.TYPE_12__*, %struct.TYPE_12__** %19, align 8
  %161 = load i32, i32* @pHead, align 4
  %162 = call i32 @dmacHw_NEXT_DESC(%struct.TYPE_12__* %160, i32 %161)
  br label %163

163:                                              ; preds = %138
  %164 = load i32, i32* %22, align 4
  %165 = add nsw i32 %164, 1
  store i32 %165, i32* %22, align 4
  br label %86

166:                                              ; preds = %131, %111, %86
  %167 = load i64, i64* @dmacHw_REG_CTL_LLP_DST_EN, align 8
  %168 = load i64, i64* @dmacHw_REG_CTL_LLP_SRC_EN, align 8
  %169 = or i64 %167, %168
  %170 = xor i64 %169, -1
  %171 = load %struct.TYPE_12__*, %struct.TYPE_12__** %19, align 8
  %172 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %171, i32 0, i32 2
  %173 = load %struct.TYPE_11__*, %struct.TYPE_11__** %172, align 8
  %174 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %173, i32 0, i32 0
  %175 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %174, i32 0, i32 1
  %176 = load i64, i64* %175, align 8
  %177 = and i64 %176, %170
  store i64 %177, i64* %175, align 8
  %178 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %179 = load %struct.TYPE_11__*, %struct.TYPE_11__** %17, align 8
  %180 = icmp ne %struct.TYPE_11__* %178, %179
  br i1 %180, label %181, label %190

181:                                              ; preds = %166
  %182 = load i64, i64* @dmacHw_REG_CTL_LLP_DST_EN, align 8
  %183 = load i64, i64* @dmacHw_REG_CTL_LLP_SRC_EN, align 8
  %184 = or i64 %182, %183
  %185 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %186 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %185, i32 0, i32 0
  %187 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %186, i32 0, i32 1
  %188 = load i64, i64* %187, align 8
  %189 = or i64 %188, %184
  store i64 %189, i64* %187, align 8
  br label %190

190:                                              ; preds = %181, %166
  %191 = load %struct.TYPE_14__*, %struct.TYPE_14__** %16, align 8
  %192 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %191, i32 0, i32 0
  store i32 1, i32* %192, align 4
  %193 = load %struct.TYPE_14__*, %struct.TYPE_14__** %16, align 8
  %194 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %193, i32 0, i32 1
  %195 = load i32, i32* %194, align 4
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %213, label %197

197:                                              ; preds = %190
  %198 = load %struct.TYPE_14__*, %struct.TYPE_14__** %16, align 8
  %199 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %198, i32 0, i32 3
  %200 = load i32, i32* %199, align 4
  %201 = load %struct.TYPE_14__*, %struct.TYPE_14__** %16, align 8
  %202 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %201, i32 0, i32 2
  %203 = load i32, i32* %202, align 4
  %204 = load %struct.TYPE_11__*, %struct.TYPE_11__** %17, align 8
  %205 = ptrtoint %struct.TYPE_11__* %204 to i64
  %206 = load %struct.TYPE_12__*, %struct.TYPE_12__** %19, align 8
  %207 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %206, i32 0, i32 1
  %208 = load i64, i64* %207, align 8
  %209 = sub nsw i64 %205, %208
  %210 = call i32 @dmacHw_SET_LLP(i32 %200, i32 %203, i64 %209)
  %211 = load %struct.TYPE_14__*, %struct.TYPE_14__** %16, align 8
  %212 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %211, i32 0, i32 1
  store i32 1, i32* %212, align 4
  br label %213

213:                                              ; preds = %197, %190
  %214 = load i32, i32* %22, align 4
  store i32 %214, i32* %8, align 4
  br label %215

215:                                              ; preds = %213, %130, %39
  %216 = load i32, i32* %8, align 4
  ret i32 %216
}

declare dso_local %struct.TYPE_14__* @dmacHw_HANDLE_TO_CBLK(i32) #1

declare dso_local %struct.TYPE_12__* @dmacHw_GET_DESC_RING(i8*) #1

declare dso_local i32 @dmacHw_ASSERT(i32) #1

declare dso_local i32 @dmacHw_NEXT_DESC(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @dmacHw_SET_LLP(i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
