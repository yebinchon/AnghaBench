; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/igb/extr_igb_main.c_igb_request_msix.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/igb/extr_igb_main.c_igb_request_msix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.igb_adapter = type { i32, i8*, %struct.igb_adapter**, %struct.TYPE_10__*, %struct.TYPE_9__, %struct.TYPE_7__, i64, %struct.e1000_hw, %struct.net_device* }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.e1000_hw = type { i64 }
%struct.net_device = type { i8* }
%struct.igb_q_vector = type { i32, i8*, %struct.igb_q_vector**, %struct.TYPE_10__*, %struct.TYPE_9__, %struct.TYPE_7__, i64, %struct.e1000_hw, %struct.net_device* }

@igb_msix_other = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"%s-TxRx-%u\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"%s-tx-%u\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"%s-rx-%u\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"%s-unused\00", align 1
@igb_msix_ring = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.igb_adapter*)* @igb_request_msix to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @igb_request_msix(%struct.igb_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.igb_adapter*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.e1000_hw*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.igb_q_vector*, align 8
  store %struct.igb_adapter* %0, %struct.igb_adapter** %3, align 8
  %11 = load %struct.igb_adapter*, %struct.igb_adapter** %3, align 8
  %12 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %11, i32 0, i32 8
  %13 = load %struct.net_device*, %struct.net_device** %12, align 8
  store %struct.net_device* %13, %struct.net_device** %4, align 8
  %14 = load %struct.igb_adapter*, %struct.igb_adapter** %3, align 8
  %15 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %14, i32 0, i32 7
  store %struct.e1000_hw* %15, %struct.e1000_hw** %5, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %16 = load %struct.igb_adapter*, %struct.igb_adapter** %3, align 8
  %17 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %16, i32 0, i32 3
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %19 = load i32, i32* %8, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @igb_msix_other, align 4
  %25 = load %struct.net_device*, %struct.net_device** %4, align 8
  %26 = getelementptr inbounds %struct.net_device, %struct.net_device* %25, i32 0, i32 0
  %27 = load i8*, i8** %26, align 8
  %28 = load %struct.igb_adapter*, %struct.igb_adapter** %3, align 8
  %29 = bitcast %struct.igb_adapter* %28 to %struct.igb_q_vector*
  %30 = call i32 @request_irq(i32 %23, i32 %24, i32 0, i8* %27, %struct.igb_q_vector* %29)
  store i32 %30, i32* %7, align 4
  %31 = load i32, i32* %7, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %1
  br label %203

34:                                               ; preds = %1
  store i32 0, i32* %6, align 4
  br label %35

35:                                               ; preds = %154, %34
  %36 = load i32, i32* %6, align 4
  %37 = load %struct.igb_adapter*, %struct.igb_adapter** %3, align 8
  %38 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = icmp slt i32 %36, %39
  br i1 %40, label %41, label %157

41:                                               ; preds = %35
  %42 = load %struct.igb_adapter*, %struct.igb_adapter** %3, align 8
  %43 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %42, i32 0, i32 2
  %44 = load %struct.igb_adapter**, %struct.igb_adapter*** %43, align 8
  %45 = load i32, i32* %6, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.igb_adapter*, %struct.igb_adapter** %44, i64 %46
  %48 = load %struct.igb_adapter*, %struct.igb_adapter** %47, align 8
  %49 = bitcast %struct.igb_adapter* %48 to %struct.igb_q_vector*
  store %struct.igb_q_vector* %49, %struct.igb_q_vector** %10, align 8
  %50 = load i32, i32* %8, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %8, align 4
  %52 = load %struct.e1000_hw*, %struct.e1000_hw** %5, align 8
  %53 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i32, i32* %8, align 4
  %56 = call i64 @E1000_EITR(i32 %55)
  %57 = add nsw i64 %54, %56
  %58 = load %struct.igb_q_vector*, %struct.igb_q_vector** %10, align 8
  %59 = getelementptr inbounds %struct.igb_q_vector, %struct.igb_q_vector* %58, i32 0, i32 6
  store i64 %57, i64* %59, align 8
  %60 = load %struct.igb_q_vector*, %struct.igb_q_vector** %10, align 8
  %61 = getelementptr inbounds %struct.igb_q_vector, %struct.igb_q_vector* %60, i32 0, i32 4
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 0
  %63 = load %struct.TYPE_8__*, %struct.TYPE_8__** %62, align 8
  %64 = icmp ne %struct.TYPE_8__* %63, null
  br i1 %64, label %65, label %85

65:                                               ; preds = %41
  %66 = load %struct.igb_q_vector*, %struct.igb_q_vector** %10, align 8
  %67 = getelementptr inbounds %struct.igb_q_vector, %struct.igb_q_vector* %66, i32 0, i32 5
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 0
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %68, align 8
  %70 = icmp ne %struct.TYPE_6__* %69, null
  br i1 %70, label %71, label %85

71:                                               ; preds = %65
  %72 = load %struct.igb_q_vector*, %struct.igb_q_vector** %10, align 8
  %73 = getelementptr inbounds %struct.igb_q_vector, %struct.igb_q_vector* %72, i32 0, i32 1
  %74 = load i8*, i8** %73, align 8
  %75 = load %struct.net_device*, %struct.net_device** %4, align 8
  %76 = getelementptr inbounds %struct.net_device, %struct.net_device* %75, i32 0, i32 0
  %77 = load i8*, i8** %76, align 8
  %78 = load %struct.igb_q_vector*, %struct.igb_q_vector** %10, align 8
  %79 = getelementptr inbounds %struct.igb_q_vector, %struct.igb_q_vector* %78, i32 0, i32 4
  %80 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %79, i32 0, i32 0
  %81 = load %struct.TYPE_8__*, %struct.TYPE_8__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = call i32 (i8*, i8*, i8*, ...) @sprintf(i8* %74, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8* %77, i32 %83)
  br label %135

85:                                               ; preds = %65, %41
  %86 = load %struct.igb_q_vector*, %struct.igb_q_vector** %10, align 8
  %87 = getelementptr inbounds %struct.igb_q_vector, %struct.igb_q_vector* %86, i32 0, i32 5
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 0
  %89 = load %struct.TYPE_6__*, %struct.TYPE_6__** %88, align 8
  %90 = icmp ne %struct.TYPE_6__* %89, null
  br i1 %90, label %91, label %105

91:                                               ; preds = %85
  %92 = load %struct.igb_q_vector*, %struct.igb_q_vector** %10, align 8
  %93 = getelementptr inbounds %struct.igb_q_vector, %struct.igb_q_vector* %92, i32 0, i32 1
  %94 = load i8*, i8** %93, align 8
  %95 = load %struct.net_device*, %struct.net_device** %4, align 8
  %96 = getelementptr inbounds %struct.net_device, %struct.net_device* %95, i32 0, i32 0
  %97 = load i8*, i8** %96, align 8
  %98 = load %struct.igb_q_vector*, %struct.igb_q_vector** %10, align 8
  %99 = getelementptr inbounds %struct.igb_q_vector, %struct.igb_q_vector* %98, i32 0, i32 5
  %100 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %99, i32 0, i32 0
  %101 = load %struct.TYPE_6__*, %struct.TYPE_6__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = call i32 (i8*, i8*, i8*, ...) @sprintf(i8* %94, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* %97, i32 %103)
  br label %134

105:                                              ; preds = %85
  %106 = load %struct.igb_q_vector*, %struct.igb_q_vector** %10, align 8
  %107 = getelementptr inbounds %struct.igb_q_vector, %struct.igb_q_vector* %106, i32 0, i32 4
  %108 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %107, i32 0, i32 0
  %109 = load %struct.TYPE_8__*, %struct.TYPE_8__** %108, align 8
  %110 = icmp ne %struct.TYPE_8__* %109, null
  br i1 %110, label %111, label %125

111:                                              ; preds = %105
  %112 = load %struct.igb_q_vector*, %struct.igb_q_vector** %10, align 8
  %113 = getelementptr inbounds %struct.igb_q_vector, %struct.igb_q_vector* %112, i32 0, i32 1
  %114 = load i8*, i8** %113, align 8
  %115 = load %struct.net_device*, %struct.net_device** %4, align 8
  %116 = getelementptr inbounds %struct.net_device, %struct.net_device* %115, i32 0, i32 0
  %117 = load i8*, i8** %116, align 8
  %118 = load %struct.igb_q_vector*, %struct.igb_q_vector** %10, align 8
  %119 = getelementptr inbounds %struct.igb_q_vector, %struct.igb_q_vector* %118, i32 0, i32 4
  %120 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %119, i32 0, i32 0
  %121 = load %struct.TYPE_8__*, %struct.TYPE_8__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = call i32 (i8*, i8*, i8*, ...) @sprintf(i8* %114, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8* %117, i32 %123)
  br label %133

125:                                              ; preds = %105
  %126 = load %struct.igb_q_vector*, %struct.igb_q_vector** %10, align 8
  %127 = getelementptr inbounds %struct.igb_q_vector, %struct.igb_q_vector* %126, i32 0, i32 1
  %128 = load i8*, i8** %127, align 8
  %129 = load %struct.net_device*, %struct.net_device** %4, align 8
  %130 = getelementptr inbounds %struct.net_device, %struct.net_device* %129, i32 0, i32 0
  %131 = load i8*, i8** %130, align 8
  %132 = call i32 (i8*, i8*, i8*, ...) @sprintf(i8* %128, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i8* %131)
  br label %133

133:                                              ; preds = %125, %111
  br label %134

134:                                              ; preds = %133, %91
  br label %135

135:                                              ; preds = %134, %71
  %136 = load %struct.igb_adapter*, %struct.igb_adapter** %3, align 8
  %137 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %136, i32 0, i32 3
  %138 = load %struct.TYPE_10__*, %struct.TYPE_10__** %137, align 8
  %139 = load i32, i32* %8, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %138, i64 %140
  %142 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = load i32, i32* @igb_msix_ring, align 4
  %145 = load %struct.igb_q_vector*, %struct.igb_q_vector** %10, align 8
  %146 = getelementptr inbounds %struct.igb_q_vector, %struct.igb_q_vector* %145, i32 0, i32 1
  %147 = load i8*, i8** %146, align 8
  %148 = load %struct.igb_q_vector*, %struct.igb_q_vector** %10, align 8
  %149 = call i32 @request_irq(i32 %143, i32 %144, i32 0, i8* %147, %struct.igb_q_vector* %148)
  store i32 %149, i32* %7, align 4
  %150 = load i32, i32* %7, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %153

152:                                              ; preds = %135
  br label %161

153:                                              ; preds = %135
  br label %154

154:                                              ; preds = %153
  %155 = load i32, i32* %6, align 4
  %156 = add nsw i32 %155, 1
  store i32 %156, i32* %6, align 4
  br label %35

157:                                              ; preds = %35
  %158 = load %struct.igb_adapter*, %struct.igb_adapter** %3, align 8
  %159 = bitcast %struct.igb_adapter* %158 to %struct.igb_q_vector*
  %160 = call i32 @igb_configure_msix(%struct.igb_q_vector* %159)
  store i32 0, i32* %2, align 4
  br label %205

161:                                              ; preds = %152
  %162 = load %struct.igb_adapter*, %struct.igb_adapter** %3, align 8
  %163 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %162, i32 0, i32 3
  %164 = load %struct.TYPE_10__*, %struct.TYPE_10__** %163, align 8
  %165 = load i32, i32* %9, align 4
  %166 = add nsw i32 %165, 1
  store i32 %166, i32* %9, align 4
  %167 = sext i32 %165 to i64
  %168 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %164, i64 %167
  %169 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 4
  %171 = load %struct.igb_adapter*, %struct.igb_adapter** %3, align 8
  %172 = bitcast %struct.igb_adapter* %171 to %struct.igb_q_vector*
  %173 = call i32 @free_irq(i32 %170, %struct.igb_q_vector* %172)
  %174 = load i32, i32* %8, align 4
  %175 = add nsw i32 %174, -1
  store i32 %175, i32* %8, align 4
  store i32 0, i32* %6, align 4
  br label %176

176:                                              ; preds = %199, %161
  %177 = load i32, i32* %6, align 4
  %178 = load i32, i32* %8, align 4
  %179 = icmp slt i32 %177, %178
  br i1 %179, label %180, label %202

180:                                              ; preds = %176
  %181 = load %struct.igb_adapter*, %struct.igb_adapter** %3, align 8
  %182 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %181, i32 0, i32 3
  %183 = load %struct.TYPE_10__*, %struct.TYPE_10__** %182, align 8
  %184 = load i32, i32* %9, align 4
  %185 = add nsw i32 %184, 1
  store i32 %185, i32* %9, align 4
  %186 = sext i32 %184 to i64
  %187 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %183, i64 %186
  %188 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 4
  %190 = load %struct.igb_adapter*, %struct.igb_adapter** %3, align 8
  %191 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %190, i32 0, i32 2
  %192 = load %struct.igb_adapter**, %struct.igb_adapter*** %191, align 8
  %193 = load i32, i32* %6, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds %struct.igb_adapter*, %struct.igb_adapter** %192, i64 %194
  %196 = load %struct.igb_adapter*, %struct.igb_adapter** %195, align 8
  %197 = bitcast %struct.igb_adapter* %196 to %struct.igb_q_vector*
  %198 = call i32 @free_irq(i32 %189, %struct.igb_q_vector* %197)
  br label %199

199:                                              ; preds = %180
  %200 = load i32, i32* %6, align 4
  %201 = add nsw i32 %200, 1
  store i32 %201, i32* %6, align 4
  br label %176

202:                                              ; preds = %176
  br label %203

203:                                              ; preds = %202, %33
  %204 = load i32, i32* %7, align 4
  store i32 %204, i32* %2, align 4
  br label %205

205:                                              ; preds = %203, %157
  %206 = load i32, i32* %2, align 4
  ret i32 %206
}

declare dso_local i32 @request_irq(i32, i32, i32, i8*, %struct.igb_q_vector*) #1

declare dso_local i64 @E1000_EITR(i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i8*, ...) #1

declare dso_local i32 @igb_configure_msix(%struct.igb_q_vector*) #1

declare dso_local i32 @free_irq(i32, %struct.igb_q_vector*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
