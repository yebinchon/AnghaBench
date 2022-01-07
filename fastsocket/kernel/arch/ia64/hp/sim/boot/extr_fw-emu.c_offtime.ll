; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/hp/sim/boot/extr_fw-emu.c_offtime.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/hp/sim/boot/extr_fw-emu.c_offtime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64, i64, i64, i64, i64 }

@__const.offtime.__mon_yday = private unnamed_addr constant [2 x [13 x i16]] [[13 x i16] [i16 0, i16 31, i16 59, i16 90, i16 120, i16 151, i16 181, i16 212, i16 243, i16 273, i16 304, i16 334, i16 365], [13 x i16] [i16 0, i16 31, i16 60, i16 91, i16 121, i16 152, i16 182, i16 213, i16 244, i16 274, i16 305, i16 335, i16 366]], align 16
@SECS_PER_DAY = common dso_local global i64 0, align 8
@SECS_PER_HOUR = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @offtime(i64 %0, %struct.TYPE_3__* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca [2 x [13 x i16]], align 16
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i16*, align 8
  %10 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %4, align 8
  %11 = bitcast [2 x [13 x i16]]* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %11, i8* align 16 bitcast ([2 x [13 x i16]]* @__const.offtime.__mon_yday to i8*), i64 52, i1 false)
  %12 = load i64, i64* %3, align 8
  %13 = load i64, i64* @SECS_PER_DAY, align 8
  %14 = udiv i64 %12, %13
  store i64 %14, i64* %6, align 8
  %15 = load i64, i64* %3, align 8
  %16 = load i64, i64* @SECS_PER_DAY, align 8
  %17 = urem i64 %15, %16
  store i64 %17, i64* %7, align 8
  br label %18

18:                                               ; preds = %21, %2
  %19 = load i64, i64* %7, align 8
  %20 = icmp slt i64 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %18
  %22 = load i64, i64* @SECS_PER_DAY, align 8
  %23 = load i64, i64* %7, align 8
  %24 = add i64 %23, %22
  store i64 %24, i64* %7, align 8
  %25 = load i64, i64* %6, align 8
  %26 = add nsw i64 %25, -1
  store i64 %26, i64* %6, align 8
  br label %18

27:                                               ; preds = %18
  br label %28

28:                                               ; preds = %32, %27
  %29 = load i64, i64* %7, align 8
  %30 = load i64, i64* @SECS_PER_DAY, align 8
  %31 = icmp uge i64 %29, %30
  br i1 %31, label %32, label %38

32:                                               ; preds = %28
  %33 = load i64, i64* @SECS_PER_DAY, align 8
  %34 = load i64, i64* %7, align 8
  %35 = sub i64 %34, %33
  store i64 %35, i64* %7, align 8
  %36 = load i64, i64* %6, align 8
  %37 = add nsw i64 %36, 1
  store i64 %37, i64* %6, align 8
  br label %28

38:                                               ; preds = %28
  %39 = load i64, i64* %7, align 8
  %40 = load i64, i64* @SECS_PER_HOUR, align 8
  %41 = sdiv i64 %39, %40
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  store i64 %41, i64* %43, align 8
  %44 = load i64, i64* @SECS_PER_HOUR, align 8
  %45 = load i64, i64* %7, align 8
  %46 = srem i64 %45, %44
  store i64 %46, i64* %7, align 8
  %47 = load i64, i64* %7, align 8
  %48 = sdiv i64 %47, 60
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 1
  store i64 %48, i64* %50, align 8
  %51 = load i64, i64* %7, align 8
  %52 = srem i64 %51, 60
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 2
  store i64 %52, i64* %54, align 8
  store i64 1970, i64* %8, align 8
  br label %55

55:                                               ; preds = %81, %38
  %56 = load i64, i64* %6, align 8
  %57 = icmp slt i64 %56, 0
  br i1 %57, label %79, label %58

58:                                               ; preds = %55
  %59 = load i64, i64* %6, align 8
  %60 = load i64, i64* %8, align 8
  %61 = srem i64 %60, 4
  %62 = icmp eq i64 %61, 0
  br i1 %62, label %63, label %73

63:                                               ; preds = %58
  %64 = load i64, i64* %8, align 8
  %65 = srem i64 %64, 100
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %71, label %67

67:                                               ; preds = %63
  %68 = load i64, i64* %8, align 8
  %69 = srem i64 %68, 400
  %70 = icmp eq i64 %69, 0
  br label %71

71:                                               ; preds = %67, %63
  %72 = phi i1 [ true, %63 ], [ %70, %67 ]
  br label %73

73:                                               ; preds = %71, %58
  %74 = phi i1 [ false, %58 ], [ %72, %71 ]
  %75 = zext i1 %74 to i64
  %76 = select i1 %74, i32 366, i32 365
  %77 = sext i32 %76 to i64
  %78 = icmp sge i64 %59, %77
  br label %79

79:                                               ; preds = %73, %55
  %80 = phi i1 [ true, %55 ], [ %78, %73 ]
  br i1 %80, label %81, label %165

81:                                               ; preds = %79
  %82 = load i64, i64* %8, align 8
  %83 = load i64, i64* %6, align 8
  %84 = sdiv i64 %83, 365
  %85 = add nsw i64 %82, %84
  %86 = load i64, i64* %6, align 8
  %87 = srem i64 %86, 365
  %88 = icmp slt i64 %87, 0
  %89 = zext i1 %88 to i32
  %90 = sext i32 %89 to i64
  %91 = sub nsw i64 %85, %90
  store i64 %91, i64* %10, align 8
  %92 = load i64, i64* %10, align 8
  %93 = load i64, i64* %8, align 8
  %94 = sub nsw i64 %92, %93
  %95 = mul nsw i64 %94, 365
  %96 = load i64, i64* %10, align 8
  %97 = sub nsw i64 %96, 1
  %98 = sdiv i64 %97, 4
  %99 = load i64, i64* %10, align 8
  %100 = sub nsw i64 %99, 1
  %101 = srem i64 %100, 4
  %102 = icmp slt i64 %101, 0
  %103 = zext i1 %102 to i32
  %104 = sext i32 %103 to i64
  %105 = sub nsw i64 %98, %104
  %106 = load i64, i64* %10, align 8
  %107 = sub nsw i64 %106, 1
  %108 = sdiv i64 %107, 100
  %109 = load i64, i64* %10, align 8
  %110 = sub nsw i64 %109, 1
  %111 = srem i64 %110, 100
  %112 = icmp slt i64 %111, 0
  %113 = zext i1 %112 to i32
  %114 = sext i32 %113 to i64
  %115 = sub nsw i64 %108, %114
  %116 = sub nsw i64 %105, %115
  %117 = load i64, i64* %10, align 8
  %118 = sub nsw i64 %117, 1
  %119 = sdiv i64 %118, 400
  %120 = load i64, i64* %10, align 8
  %121 = sub nsw i64 %120, 1
  %122 = srem i64 %121, 400
  %123 = icmp slt i64 %122, 0
  %124 = zext i1 %123 to i32
  %125 = sext i32 %124 to i64
  %126 = sub nsw i64 %119, %125
  %127 = add nsw i64 %116, %126
  %128 = add nsw i64 %95, %127
  %129 = load i64, i64* %8, align 8
  %130 = sub nsw i64 %129, 1
  %131 = sdiv i64 %130, 4
  %132 = load i64, i64* %8, align 8
  %133 = sub nsw i64 %132, 1
  %134 = srem i64 %133, 4
  %135 = icmp slt i64 %134, 0
  %136 = zext i1 %135 to i32
  %137 = sext i32 %136 to i64
  %138 = sub nsw i64 %131, %137
  %139 = load i64, i64* %8, align 8
  %140 = sub nsw i64 %139, 1
  %141 = sdiv i64 %140, 100
  %142 = load i64, i64* %8, align 8
  %143 = sub nsw i64 %142, 1
  %144 = srem i64 %143, 100
  %145 = icmp slt i64 %144, 0
  %146 = zext i1 %145 to i32
  %147 = sext i32 %146 to i64
  %148 = sub nsw i64 %141, %147
  %149 = sub nsw i64 %138, %148
  %150 = load i64, i64* %8, align 8
  %151 = sub nsw i64 %150, 1
  %152 = sdiv i64 %151, 400
  %153 = load i64, i64* %8, align 8
  %154 = sub nsw i64 %153, 1
  %155 = srem i64 %154, 400
  %156 = icmp slt i64 %155, 0
  %157 = zext i1 %156 to i32
  %158 = sext i32 %157 to i64
  %159 = sub nsw i64 %152, %158
  %160 = add nsw i64 %149, %159
  %161 = sub nsw i64 %128, %160
  %162 = load i64, i64* %6, align 8
  %163 = sub nsw i64 %162, %161
  store i64 %163, i64* %6, align 8
  %164 = load i64, i64* %10, align 8
  store i64 %164, i64* %8, align 8
  br label %55

165:                                              ; preds = %79
  %166 = load i64, i64* %8, align 8
  %167 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %168 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %167, i32 0, i32 3
  store i64 %166, i64* %168, align 8
  %169 = load i64, i64* %8, align 8
  %170 = srem i64 %169, 4
  %171 = icmp eq i64 %170, 0
  br i1 %171, label %172, label %182

172:                                              ; preds = %165
  %173 = load i64, i64* %8, align 8
  %174 = srem i64 %173, 100
  %175 = icmp ne i64 %174, 0
  br i1 %175, label %180, label %176

176:                                              ; preds = %172
  %177 = load i64, i64* %8, align 8
  %178 = srem i64 %177, 400
  %179 = icmp eq i64 %178, 0
  br label %180

180:                                              ; preds = %176, %172
  %181 = phi i1 [ true, %172 ], [ %179, %176 ]
  br label %182

182:                                              ; preds = %180, %165
  %183 = phi i1 [ false, %165 ], [ %181, %180 ]
  %184 = zext i1 %183 to i32
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds [2 x [13 x i16]], [2 x [13 x i16]]* %5, i64 0, i64 %185
  %187 = getelementptr inbounds [13 x i16], [13 x i16]* %186, i64 0, i64 0
  store i16* %187, i16** %9, align 8
  store i64 11, i64* %8, align 8
  br label %188

188:                                              ; preds = %197, %182
  %189 = load i64, i64* %6, align 8
  %190 = load i16*, i16** %9, align 8
  %191 = load i64, i64* %8, align 8
  %192 = getelementptr inbounds i16, i16* %190, i64 %191
  %193 = load i16, i16* %192, align 2
  %194 = zext i16 %193 to i64
  %195 = icmp slt i64 %189, %194
  br i1 %195, label %196, label %200

196:                                              ; preds = %188
  br label %197

197:                                              ; preds = %196
  %198 = load i64, i64* %8, align 8
  %199 = add nsw i64 %198, -1
  store i64 %199, i64* %8, align 8
  br label %188

200:                                              ; preds = %188
  %201 = load i16*, i16** %9, align 8
  %202 = load i64, i64* %8, align 8
  %203 = getelementptr inbounds i16, i16* %201, i64 %202
  %204 = load i16, i16* %203, align 2
  %205 = zext i16 %204 to i64
  %206 = load i64, i64* %6, align 8
  %207 = sub nsw i64 %206, %205
  store i64 %207, i64* %6, align 8
  %208 = load i64, i64* %8, align 8
  %209 = add nsw i64 %208, 1
  %210 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %211 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %210, i32 0, i32 4
  store i64 %209, i64* %211, align 8
  %212 = load i64, i64* %6, align 8
  %213 = add nsw i64 %212, 1
  %214 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %215 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %214, i32 0, i32 5
  store i64 %213, i64* %215, align 8
  ret i32 1
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
