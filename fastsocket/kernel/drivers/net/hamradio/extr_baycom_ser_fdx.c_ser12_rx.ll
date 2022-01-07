; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/hamradio/extr_baycom_ser_fdx.c_ser12_rx.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/hamradio/extr_baycom_ser_fdx.c_ser12_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.baycom_state = type { i32, %struct.TYPE_6__, %struct.TYPE_4__, i32, i32 }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i64, i32, i64, i64, i8 }
%struct.TYPE_4__ = type { i32 }
%struct.timeval = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.baycom_state*, %struct.timeval*, i8)* @ser12_rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ser12_rx(%struct.net_device* %0, %struct.baycom_state* %1, %struct.timeval* %2, i8 zeroext %3) #0 {
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.baycom_state*, align 8
  %7 = alloca %struct.timeval*, align 8
  %8 = alloca i8, align 1
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store %struct.baycom_state* %1, %struct.baycom_state** %6, align 8
  store %struct.timeval* %2, %struct.timeval** %7, align 8
  store i8 %3, i8* %8, align 1
  %13 = load %struct.baycom_state*, %struct.baycom_state** %6, align 8
  %14 = getelementptr inbounds %struct.baycom_state, %struct.baycom_state* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = ashr i32 %15, 3
  store i32 %16, i32* %10, align 4
  %17 = load %struct.baycom_state*, %struct.baycom_state** %6, align 8
  %18 = getelementptr inbounds %struct.baycom_state, %struct.baycom_state* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = ashr i32 %19, 2
  store i32 %20, i32* %11, align 4
  %21 = load %struct.baycom_state*, %struct.baycom_state** %6, align 8
  %22 = getelementptr inbounds %struct.baycom_state, %struct.baycom_state* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = ashr i32 %23, 1
  store i32 %24, i32* %12, align 4
  %25 = load %struct.timeval*, %struct.timeval** %7, align 8
  %26 = getelementptr inbounds %struct.timeval, %struct.timeval* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = add nsw i32 1000000, %27
  %29 = load %struct.baycom_state*, %struct.baycom_state** %6, align 8
  %30 = getelementptr inbounds %struct.baycom_state, %struct.baycom_state* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = sub nsw i32 %28, %33
  store i32 %34, i32* %9, align 4
  br label %35

35:                                               ; preds = %38, %4
  %36 = load i32, i32* %9, align 4
  %37 = icmp sge i32 %36, 500000
  br i1 %37, label %38, label %41

38:                                               ; preds = %35
  %39 = load i32, i32* %9, align 4
  %40 = sub nsw i32 %39, 1000000
  store i32 %40, i32* %9, align 4
  br label %35

41:                                               ; preds = %35
  br label %42

42:                                               ; preds = %86, %41
  %43 = load i32, i32* %9, align 4
  %44 = load i32, i32* %12, align 4
  %45 = icmp sge i32 %43, %44
  br i1 %45, label %46, label %92

46:                                               ; preds = %42
  %47 = load %struct.baycom_state*, %struct.baycom_state** %6, align 8
  %48 = getelementptr inbounds %struct.baycom_state, %struct.baycom_state* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* %9, align 4
  %51 = sub nsw i32 %50, %49
  store i32 %51, i32* %9, align 4
  %52 = load %struct.baycom_state*, %struct.baycom_state** %6, align 8
  %53 = getelementptr inbounds %struct.baycom_state, %struct.baycom_state* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.baycom_state*, %struct.baycom_state** %6, align 8
  %56 = getelementptr inbounds %struct.baycom_state, %struct.baycom_state* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = add nsw i32 %59, %54
  store i32 %60, i32* %58, align 8
  %61 = load %struct.baycom_state*, %struct.baycom_state** %6, align 8
  %62 = getelementptr inbounds %struct.baycom_state, %struct.baycom_state* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = add nsw i64 %65, -1
  store i64 %66, i64* %64, align 8
  %67 = load %struct.baycom_state*, %struct.baycom_state** %6, align 8
  %68 = getelementptr inbounds %struct.baycom_state, %struct.baycom_state* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = and i32 %70, 1
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %86

73:                                               ; preds = %46
  %74 = load %struct.baycom_state*, %struct.baycom_state** %6, align 8
  %75 = getelementptr inbounds %struct.baycom_state, %struct.baycom_state* %74, i32 0, i32 3
  %76 = load %struct.baycom_state*, %struct.baycom_state** %6, align 8
  %77 = getelementptr inbounds %struct.baycom_state, %struct.baycom_state* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = ashr i32 %79, 1
  %81 = xor i32 %80, 65535
  %82 = call i32 @hdlcdrv_putbits(i32* %75, i32 %81)
  %83 = load %struct.baycom_state*, %struct.baycom_state** %6, align 8
  %84 = getelementptr inbounds %struct.baycom_state, %struct.baycom_state* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 0
  store i32 65536, i32* %85, align 8
  br label %86

86:                                               ; preds = %73, %46
  %87 = load %struct.baycom_state*, %struct.baycom_state** %6, align 8
  %88 = getelementptr inbounds %struct.baycom_state, %struct.baycom_state* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = ashr i32 %90, 1
  store i32 %91, i32* %89, align 8
  br label %42

92:                                               ; preds = %42
  %93 = load %struct.baycom_state*, %struct.baycom_state** %6, align 8
  %94 = getelementptr inbounds %struct.baycom_state, %struct.baycom_state* %93, i32 0, i32 1
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = icmp sle i64 %97, 0
  br i1 %98, label %99, label %158

99:                                               ; preds = %92
  %100 = load %struct.baycom_state*, %struct.baycom_state** %6, align 8
  %101 = getelementptr inbounds %struct.baycom_state, %struct.baycom_state* %100, i32 0, i32 4
  %102 = load i32, i32* %101, align 8
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %128, label %104

104:                                              ; preds = %99
  %105 = load %struct.baycom_state*, %struct.baycom_state** %6, align 8
  %106 = getelementptr inbounds %struct.baycom_state, %struct.baycom_state* %105, i32 0, i32 3
  %107 = load %struct.baycom_state*, %struct.baycom_state** %6, align 8
  %108 = getelementptr inbounds %struct.baycom_state, %struct.baycom_state* %107, i32 0, i32 1
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 1
  %110 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 8
  %112 = sext i32 %111 to i64
  %113 = load %struct.baycom_state*, %struct.baycom_state** %6, align 8
  %114 = getelementptr inbounds %struct.baycom_state, %struct.baycom_state* %113, i32 0, i32 1
  %115 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %114, i32 0, i32 1
  %116 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %115, i32 0, i32 3
  %117 = load i64, i64* %116, align 8
  %118 = add nsw i64 %112, %117
  %119 = load %struct.baycom_state*, %struct.baycom_state** %6, align 8
  %120 = getelementptr inbounds %struct.baycom_state, %struct.baycom_state* %119, i32 0, i32 1
  %121 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %120, i32 0, i32 1
  %122 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %121, i32 0, i32 4
  %123 = load i64, i64* %122, align 8
  %124 = add nsw i64 %118, %123
  %125 = icmp slt i64 %124, 0
  %126 = zext i1 %125 to i32
  %127 = call i32 @hdlcdrv_setdcd(i32* %106, i32 %126)
  br label %128

128:                                              ; preds = %104, %99
  %129 = load %struct.baycom_state*, %struct.baycom_state** %6, align 8
  %130 = getelementptr inbounds %struct.baycom_state, %struct.baycom_state* %129, i32 0, i32 1
  %131 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %130, i32 0, i32 1
  %132 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %131, i32 0, i32 3
  %133 = load i64, i64* %132, align 8
  %134 = load %struct.baycom_state*, %struct.baycom_state** %6, align 8
  %135 = getelementptr inbounds %struct.baycom_state, %struct.baycom_state* %134, i32 0, i32 1
  %136 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %135, i32 0, i32 1
  %137 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %136, i32 0, i32 4
  store i64 %133, i64* %137, align 8
  %138 = load %struct.baycom_state*, %struct.baycom_state** %6, align 8
  %139 = getelementptr inbounds %struct.baycom_state, %struct.baycom_state* %138, i32 0, i32 1
  %140 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %139, i32 0, i32 1
  %141 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %140, i32 0, i32 2
  %142 = load i32, i32* %141, align 8
  %143 = sext i32 %142 to i64
  %144 = load %struct.baycom_state*, %struct.baycom_state** %6, align 8
  %145 = getelementptr inbounds %struct.baycom_state, %struct.baycom_state* %144, i32 0, i32 1
  %146 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %145, i32 0, i32 1
  %147 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %146, i32 0, i32 3
  store i64 %143, i64* %147, align 8
  %148 = load %struct.baycom_state*, %struct.baycom_state** %6, align 8
  %149 = getelementptr inbounds %struct.baycom_state, %struct.baycom_state* %148, i32 0, i32 1
  %150 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %149, i32 0, i32 1
  %151 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %150, i32 0, i32 2
  store i32 2, i32* %151, align 8
  %152 = load %struct.baycom_state*, %struct.baycom_state** %6, align 8
  %153 = getelementptr inbounds %struct.baycom_state, %struct.baycom_state* %152, i32 0, i32 1
  %154 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %153, i32 0, i32 1
  %155 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %154, i32 0, i32 1
  %156 = load i64, i64* %155, align 8
  %157 = add nsw i64 %156, 120
  store i64 %157, i64* %155, align 8
  br label %158

158:                                              ; preds = %128, %92
  %159 = load %struct.baycom_state*, %struct.baycom_state** %6, align 8
  %160 = getelementptr inbounds %struct.baycom_state, %struct.baycom_state* %159, i32 0, i32 1
  %161 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %160, i32 0, i32 1
  %162 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %161, i32 0, i32 5
  %163 = load i8, i8* %162, align 8
  %164 = zext i8 %163 to i32
  %165 = load i8, i8* %8, align 1
  %166 = zext i8 %165 to i32
  %167 = icmp ne i32 %164, %166
  br i1 %167, label %168, label %218

168:                                              ; preds = %158
  %169 = load i8, i8* %8, align 1
  %170 = load %struct.baycom_state*, %struct.baycom_state** %6, align 8
  %171 = getelementptr inbounds %struct.baycom_state, %struct.baycom_state* %170, i32 0, i32 1
  %172 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %171, i32 0, i32 1
  %173 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %172, i32 0, i32 5
  store i8 %169, i8* %173, align 8
  %174 = load %struct.baycom_state*, %struct.baycom_state** %6, align 8
  %175 = getelementptr inbounds %struct.baycom_state, %struct.baycom_state* %174, i32 0, i32 1
  %176 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 8
  %178 = or i32 %177, 65536
  store i32 %178, i32* %176, align 8
  %179 = load i32, i32* %9, align 4
  %180 = icmp sgt i32 %179, 0
  br i1 %180, label %181, label %189

181:                                              ; preds = %168
  %182 = load i32, i32* %10, align 4
  %183 = load %struct.baycom_state*, %struct.baycom_state** %6, align 8
  %184 = getelementptr inbounds %struct.baycom_state, %struct.baycom_state* %183, i32 0, i32 1
  %185 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %184, i32 0, i32 1
  %186 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 8
  %188 = add nsw i32 %187, %182
  store i32 %188, i32* %186, align 8
  br label %198

189:                                              ; preds = %168
  %190 = load i32, i32* %10, align 4
  %191 = sub nsw i32 1000000, %190
  %192 = load %struct.baycom_state*, %struct.baycom_state** %6, align 8
  %193 = getelementptr inbounds %struct.baycom_state, %struct.baycom_state* %192, i32 0, i32 1
  %194 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %193, i32 0, i32 1
  %195 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 8
  %197 = add nsw i32 %196, %191
  store i32 %197, i32* %195, align 8
  br label %198

198:                                              ; preds = %189, %181
  %199 = load i32, i32* %9, align 4
  %200 = call i32 @abs(i32 %199) #3
  %201 = load i32, i32* %11, align 4
  %202 = icmp sgt i32 %200, %201
  br i1 %202, label %203, label %210

203:                                              ; preds = %198
  %204 = load %struct.baycom_state*, %struct.baycom_state** %6, align 8
  %205 = getelementptr inbounds %struct.baycom_state, %struct.baycom_state* %204, i32 0, i32 1
  %206 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %205, i32 0, i32 1
  %207 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %206, i32 0, i32 2
  %208 = load i32, i32* %207, align 8
  %209 = add nsw i32 %208, 4
  store i32 %209, i32* %207, align 8
  br label %217

210:                                              ; preds = %198
  %211 = load %struct.baycom_state*, %struct.baycom_state** %6, align 8
  %212 = getelementptr inbounds %struct.baycom_state, %struct.baycom_state* %211, i32 0, i32 1
  %213 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %212, i32 0, i32 1
  %214 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %213, i32 0, i32 2
  %215 = load i32, i32* %214, align 8
  %216 = add nsw i32 %215, -1
  store i32 %216, i32* %214, align 8
  br label %217

217:                                              ; preds = %210, %203
  br label %218

218:                                              ; preds = %217, %158
  br label %219

219:                                              ; preds = %226, %218
  %220 = load %struct.baycom_state*, %struct.baycom_state** %6, align 8
  %221 = getelementptr inbounds %struct.baycom_state, %struct.baycom_state* %220, i32 0, i32 1
  %222 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %221, i32 0, i32 1
  %223 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %222, i32 0, i32 0
  %224 = load i32, i32* %223, align 8
  %225 = icmp sge i32 %224, 1000000
  br i1 %225, label %226, label %233

226:                                              ; preds = %219
  %227 = load %struct.baycom_state*, %struct.baycom_state** %6, align 8
  %228 = getelementptr inbounds %struct.baycom_state, %struct.baycom_state* %227, i32 0, i32 1
  %229 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %228, i32 0, i32 1
  %230 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %229, i32 0, i32 0
  %231 = load i32, i32* %230, align 8
  %232 = sub nsw i32 %231, 1000000
  store i32 %232, i32* %230, align 8
  br label %219

233:                                              ; preds = %219
  ret void
}

declare dso_local i32 @hdlcdrv_putbits(i32*, i32) #1

declare dso_local i32 @hdlcdrv_setdcd(i32*, i32) #1

; Function Attrs: nounwind readnone
declare dso_local i32 @abs(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
