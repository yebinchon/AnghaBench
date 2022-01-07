; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_DAC960.c_DAC960_DestroyAuxiliaryStructures.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_DAC960.c_DAC960_DestroyAuxiliaryStructures.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64, i32, i32, %struct.TYPE_10__, i32*, %struct.TYPE_12__*, %struct.TYPE_12__**, i32*, %struct.pci_pool* }
%struct.TYPE_10__ = type { %struct.TYPE_12__**, %struct.TYPE_12__**, %struct.TYPE_12__**, %struct.pci_pool* }
%struct.TYPE_12__ = type { i32, %struct.TYPE_9__, %struct.TYPE_8__ }
%struct.TYPE_9__ = type { i32, i64, i32, i64 }
%struct.TYPE_8__ = type { i32, i64 }
%struct.pci_pool = type { i32 }

@DAC960_V2_Controller = common dso_local global i64 0, align 8
@DAC960_V1_Controller = common dso_local global i64 0, align 8
@DAC960_MaxLogicalDrives = common dso_local global i32 0, align 4
@DAC960_V2_MaxPhysicalDevices = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_11__*)* @DAC960_DestroyAuxiliaryStructures to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @DAC960_DestroyAuxiliaryStructures(%struct.TYPE_11__* %0) #0 {
  %2 = alloca %struct.TYPE_11__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_pool*, align 8
  %5 = alloca %struct.pci_pool*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_12__*, align 8
  %11 = alloca %struct.TYPE_12__*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %2, align 8
  %12 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %12, i32 0, i32 8
  %14 = load %struct.pci_pool*, %struct.pci_pool** %13, align 8
  store %struct.pci_pool* %14, %struct.pci_pool** %4, align 8
  store %struct.pci_pool* null, %struct.pci_pool** %5, align 8
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %10, align 8
  %15 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @DAC960_V2_Controller, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %25

20:                                               ; preds = %1
  %21 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %22 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %21, i32 0, i32 3
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 3
  %24 = load %struct.pci_pool*, %struct.pci_pool** %23, align 8
  store %struct.pci_pool* %24, %struct.pci_pool** %5, align 8
  br label %25

25:                                               ; preds = %20, %1
  %26 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %27 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %26, i32 0, i32 7
  store i32* null, i32** %27, align 8
  store i32 0, i32* %3, align 4
  br label %28

28:                                               ; preds = %116, %25
  %29 = load i32, i32* %3, align 4
  %30 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %31 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = icmp slt i32 %29, %32
  br i1 %33, label %34, label %119

34:                                               ; preds = %28
  %35 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %36 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %35, i32 0, i32 6
  %37 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %36, align 8
  %38 = load i32, i32* %3, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %37, i64 %39
  %41 = load %struct.TYPE_12__*, %struct.TYPE_12__** %40, align 8
  store %struct.TYPE_12__* %41, %struct.TYPE_12__** %11, align 8
  %42 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %43 = icmp eq %struct.TYPE_12__* %42, null
  br i1 %43, label %44, label %45

44:                                               ; preds = %34
  br label %116

45:                                               ; preds = %34
  %46 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %47 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @DAC960_V1_Controller, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %61

51:                                               ; preds = %45
  %52 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %53 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %52, i32 0, i32 2
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = inttoptr i64 %55 to i8*
  store i8* %56, i8** %6, align 8
  %57 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %58 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %57, i32 0, i32 2
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  store i32 %60, i32* %7, align 4
  store i8* null, i8** %8, align 8
  store i32 0, i32* %9, align 4
  br label %80

61:                                               ; preds = %45
  %62 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %63 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 3
  %65 = load i64, i64* %64, align 8
  %66 = inttoptr i64 %65 to i8*
  store i8* %66, i8** %6, align 8
  %67 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %68 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 8
  store i32 %70, i32* %7, align 4
  %71 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %72 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = inttoptr i64 %74 to i8*
  store i8* %75, i8** %8, align 8
  %76 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %77 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  store i32 %79, i32* %9, align 4
  br label %80

80:                                               ; preds = %61, %51
  %81 = load i8*, i8** %6, align 8
  %82 = icmp ne i8* %81, null
  br i1 %82, label %83, label %88

83:                                               ; preds = %80
  %84 = load %struct.pci_pool*, %struct.pci_pool** %4, align 8
  %85 = load i8*, i8** %6, align 8
  %86 = load i32, i32* %7, align 4
  %87 = call i32 @pci_pool_free(%struct.pci_pool* %84, i8* %85, i32 %86)
  br label %88

88:                                               ; preds = %83, %80
  %89 = load i8*, i8** %8, align 8
  %90 = icmp ne i8* %89, null
  br i1 %90, label %91, label %96

91:                                               ; preds = %88
  %92 = load %struct.pci_pool*, %struct.pci_pool** %5, align 8
  %93 = load i8*, i8** %8, align 8
  %94 = load i32, i32* %9, align 4
  %95 = call i32 @pci_pool_free(%struct.pci_pool* %92, i8* %93, i32 %94)
  br label %96

96:                                               ; preds = %91, %88
  %97 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %98 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %101 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 4
  %103 = srem i32 %99, %102
  %104 = icmp eq i32 %103, 1
  br i1 %104, label %105, label %109

105:                                              ; preds = %96
  %106 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %107 = call i32 @kfree(%struct.TYPE_12__* %106)
  %108 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  store %struct.TYPE_12__* %108, %struct.TYPE_12__** %10, align 8
  br label %109

109:                                              ; preds = %105, %96
  %110 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %111 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %110, i32 0, i32 6
  %112 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %111, align 8
  %113 = load i32, i32* %3, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %112, i64 %114
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %115, align 8
  br label %116

116:                                              ; preds = %109, %44
  %117 = load i32, i32* %3, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %3, align 4
  br label %28

119:                                              ; preds = %28
  %120 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %121 = call i32 @kfree(%struct.TYPE_12__* %120)
  %122 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %123 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %122, i32 0, i32 5
  %124 = load %struct.TYPE_12__*, %struct.TYPE_12__** %123, align 8
  %125 = icmp ne %struct.TYPE_12__* %124, null
  br i1 %125, label %126, label %135

126:                                              ; preds = %119
  %127 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %128 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %127, i32 0, i32 5
  %129 = load %struct.TYPE_12__*, %struct.TYPE_12__** %128, align 8
  %130 = call i32 @kfree(%struct.TYPE_12__* %129)
  %131 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %132 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %131, i32 0, i32 5
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %132, align 8
  %133 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %134 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %133, i32 0, i32 4
  store i32* null, i32** %134, align 8
  br label %135

135:                                              ; preds = %126, %119
  %136 = load %struct.pci_pool*, %struct.pci_pool** %4, align 8
  %137 = icmp ne %struct.pci_pool* %136, null
  br i1 %137, label %138, label %141

138:                                              ; preds = %135
  %139 = load %struct.pci_pool*, %struct.pci_pool** %4, align 8
  %140 = call i32 @pci_pool_destroy(%struct.pci_pool* %139)
  br label %141

141:                                              ; preds = %138, %135
  %142 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %143 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %142, i32 0, i32 0
  %144 = load i64, i64* %143, align 8
  %145 = load i64, i64* @DAC960_V1_Controller, align 8
  %146 = icmp eq i64 %144, %145
  br i1 %146, label %147, label %148

147:                                              ; preds = %141
  br label %220

148:                                              ; preds = %141
  %149 = load %struct.pci_pool*, %struct.pci_pool** %5, align 8
  %150 = icmp ne %struct.pci_pool* %149, null
  br i1 %150, label %151, label %154

151:                                              ; preds = %148
  %152 = load %struct.pci_pool*, %struct.pci_pool** %5, align 8
  %153 = call i32 @pci_pool_destroy(%struct.pci_pool* %152)
  br label %154

154:                                              ; preds = %151, %148
  store i32 0, i32* %3, align 4
  br label %155

155:                                              ; preds = %176, %154
  %156 = load i32, i32* %3, align 4
  %157 = load i32, i32* @DAC960_MaxLogicalDrives, align 4
  %158 = icmp slt i32 %156, %157
  br i1 %158, label %159, label %179

159:                                              ; preds = %155
  %160 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %161 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %160, i32 0, i32 3
  %162 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %161, i32 0, i32 2
  %163 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %162, align 8
  %164 = load i32, i32* %3, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %163, i64 %165
  %167 = load %struct.TYPE_12__*, %struct.TYPE_12__** %166, align 8
  %168 = call i32 @kfree(%struct.TYPE_12__* %167)
  %169 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %170 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %169, i32 0, i32 3
  %171 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %170, i32 0, i32 2
  %172 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %171, align 8
  %173 = load i32, i32* %3, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %172, i64 %174
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %175, align 8
  br label %176

176:                                              ; preds = %159
  %177 = load i32, i32* %3, align 4
  %178 = add nsw i32 %177, 1
  store i32 %178, i32* %3, align 4
  br label %155

179:                                              ; preds = %155
  store i32 0, i32* %3, align 4
  br label %180

180:                                              ; preds = %217, %179
  %181 = load i32, i32* %3, align 4
  %182 = load i32, i32* @DAC960_V2_MaxPhysicalDevices, align 4
  %183 = icmp slt i32 %181, %182
  br i1 %183, label %184, label %220

184:                                              ; preds = %180
  %185 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %186 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %185, i32 0, i32 3
  %187 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %186, i32 0, i32 1
  %188 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %187, align 8
  %189 = load i32, i32* %3, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %188, i64 %190
  %192 = load %struct.TYPE_12__*, %struct.TYPE_12__** %191, align 8
  %193 = call i32 @kfree(%struct.TYPE_12__* %192)
  %194 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %195 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %194, i32 0, i32 3
  %196 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %195, i32 0, i32 1
  %197 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %196, align 8
  %198 = load i32, i32* %3, align 4
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %197, i64 %199
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %200, align 8
  %201 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %202 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %201, i32 0, i32 3
  %203 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %202, i32 0, i32 0
  %204 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %203, align 8
  %205 = load i32, i32* %3, align 4
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %204, i64 %206
  %208 = load %struct.TYPE_12__*, %struct.TYPE_12__** %207, align 8
  %209 = call i32 @kfree(%struct.TYPE_12__* %208)
  %210 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %211 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %210, i32 0, i32 3
  %212 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %211, i32 0, i32 0
  %213 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %212, align 8
  %214 = load i32, i32* %3, align 4
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %213, i64 %215
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %216, align 8
  br label %217

217:                                              ; preds = %184
  %218 = load i32, i32* %3, align 4
  %219 = add nsw i32 %218, 1
  store i32 %219, i32* %3, align 4
  br label %180

220:                                              ; preds = %147, %180
  ret void
}

declare dso_local i32 @pci_pool_free(%struct.pci_pool*, i8*, i32) #1

declare dso_local i32 @kfree(%struct.TYPE_12__*) #1

declare dso_local i32 @pci_pool_destroy(%struct.pci_pool*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
