; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_s921_core.c_s921_isdb_tune.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_s921_core.c_s921_isdb_tune.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s921_isdb_t = type { i32 (i32, i32, i32)*, i32 }
%struct.s921_isdb_t_tune_params = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@c_table = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.s921_isdb_t*, %struct.s921_isdb_t_tune_params*)* @s921_isdb_tune to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s921_isdb_tune(%struct.s921_isdb_t* %0, %struct.s921_isdb_t_tune_params* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.s921_isdb_t*, align 8
  %5 = alloca %struct.s921_isdb_t_tune_params*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.s921_isdb_t* %0, %struct.s921_isdb_t** %4, align 8
  store %struct.s921_isdb_t_tune_params* %1, %struct.s921_isdb_t_tune_params** %5, align 8
  %8 = load %struct.s921_isdb_t_tune_params*, %struct.s921_isdb_t_tune_params** %5, align 8
  %9 = getelementptr inbounds %struct.s921_isdb_t_tune_params, %struct.s921_isdb_t_tune_params* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = sub nsw i32 %10, 473143000
  %12 = sdiv i32 %11, 6000000
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* %7, align 4
  %14 = icmp sgt i32 %13, 48
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %222

18:                                               ; preds = %2
  %19 = load %struct.s921_isdb_t*, %struct.s921_isdb_t** %4, align 8
  %20 = getelementptr inbounds %struct.s921_isdb_t, %struct.s921_isdb_t* %19, i32 0, i32 0
  %21 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %20, align 8
  %22 = load %struct.s921_isdb_t*, %struct.s921_isdb_t** %4, align 8
  %23 = getelementptr inbounds %struct.s921_isdb_t, %struct.s921_isdb_t* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = call i32 %21(i32 %24, i32 71, i32 96)
  %26 = load %struct.s921_isdb_t*, %struct.s921_isdb_t** %4, align 8
  %27 = getelementptr inbounds %struct.s921_isdb_t, %struct.s921_isdb_t* %26, i32 0, i32 0
  %28 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %27, align 8
  %29 = load %struct.s921_isdb_t*, %struct.s921_isdb_t** %4, align 8
  %30 = getelementptr inbounds %struct.s921_isdb_t, %struct.s921_isdb_t* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = call i32 %28(i32 %31, i32 104, i32 0)
  store i32 %32, i32* %6, align 4
  %33 = load i32, i32* %6, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %18
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %3, align 4
  br label %222

38:                                               ; preds = %18
  %39 = load %struct.s921_isdb_t*, %struct.s921_isdb_t** %4, align 8
  %40 = getelementptr inbounds %struct.s921_isdb_t, %struct.s921_isdb_t* %39, i32 0, i32 0
  %41 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %40, align 8
  %42 = load %struct.s921_isdb_t*, %struct.s921_isdb_t** %4, align 8
  %43 = getelementptr inbounds %struct.s921_isdb_t, %struct.s921_isdb_t* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = call i32 %41(i32 %44, i32 105, i32 137)
  store i32 %45, i32* %6, align 4
  %46 = load i32, i32* %6, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %38
  %49 = load i32, i32* @EINVAL, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %3, align 4
  br label %222

51:                                               ; preds = %38
  %52 = load %struct.s921_isdb_t*, %struct.s921_isdb_t** %4, align 8
  %53 = getelementptr inbounds %struct.s921_isdb_t, %struct.s921_isdb_t* %52, i32 0, i32 0
  %54 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %53, align 8
  %55 = load %struct.s921_isdb_t*, %struct.s921_isdb_t** %4, align 8
  %56 = getelementptr inbounds %struct.s921_isdb_t, %struct.s921_isdb_t* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = call i32 %54(i32 %57, i32 240, i32 72)
  store i32 %58, i32* %6, align 4
  %59 = load i32, i32* %6, align 4
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %51
  %62 = load i32, i32* @EINVAL, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %3, align 4
  br label %222

64:                                               ; preds = %51
  %65 = load %struct.s921_isdb_t*, %struct.s921_isdb_t** %4, align 8
  %66 = getelementptr inbounds %struct.s921_isdb_t, %struct.s921_isdb_t* %65, i32 0, i32 0
  %67 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %66, align 8
  %68 = load %struct.s921_isdb_t*, %struct.s921_isdb_t** %4, align 8
  %69 = getelementptr inbounds %struct.s921_isdb_t, %struct.s921_isdb_t* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = call i32 %67(i32 %70, i32 241, i32 25)
  store i32 %71, i32* %6, align 4
  %72 = load i32, i32* %6, align 4
  %73 = icmp slt i32 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %64
  %75 = load i32, i32* @EINVAL, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %3, align 4
  br label %222

77:                                               ; preds = %64
  %78 = load %struct.s921_isdb_t*, %struct.s921_isdb_t** %4, align 8
  %79 = getelementptr inbounds %struct.s921_isdb_t, %struct.s921_isdb_t* %78, i32 0, i32 0
  %80 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %79, align 8
  %81 = load %struct.s921_isdb_t*, %struct.s921_isdb_t** %4, align 8
  %82 = getelementptr inbounds %struct.s921_isdb_t, %struct.s921_isdb_t* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 8
  %84 = load i32*, i32** @c_table, align 8
  %85 = load i32, i32* %7, align 4
  %86 = mul nsw i32 %85, 3
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i32, i32* %84, i64 %87
  %89 = load i32, i32* %88, align 4
  %90 = call i32 %80(i32 %83, i32 242, i32 %89)
  store i32 %90, i32* %6, align 4
  %91 = load i32, i32* %6, align 4
  %92 = icmp slt i32 %91, 0
  br i1 %92, label %93, label %96

93:                                               ; preds = %77
  %94 = load i32, i32* @EINVAL, align 4
  %95 = sub nsw i32 0, %94
  store i32 %95, i32* %3, align 4
  br label %222

96:                                               ; preds = %77
  %97 = load %struct.s921_isdb_t*, %struct.s921_isdb_t** %4, align 8
  %98 = getelementptr inbounds %struct.s921_isdb_t, %struct.s921_isdb_t* %97, i32 0, i32 0
  %99 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %98, align 8
  %100 = load %struct.s921_isdb_t*, %struct.s921_isdb_t** %4, align 8
  %101 = getelementptr inbounds %struct.s921_isdb_t, %struct.s921_isdb_t* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 8
  %103 = load i32*, i32** @c_table, align 8
  %104 = load i32, i32* %7, align 4
  %105 = mul nsw i32 %104, 3
  %106 = add nsw i32 %105, 1
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i32, i32* %103, i64 %107
  %109 = load i32, i32* %108, align 4
  %110 = call i32 %99(i32 %102, i32 243, i32 %109)
  store i32 %110, i32* %6, align 4
  %111 = load i32, i32* %6, align 4
  %112 = icmp slt i32 %111, 0
  br i1 %112, label %113, label %116

113:                                              ; preds = %96
  %114 = load i32, i32* @EINVAL, align 4
  %115 = sub nsw i32 0, %114
  store i32 %115, i32* %3, align 4
  br label %222

116:                                              ; preds = %96
  %117 = load %struct.s921_isdb_t*, %struct.s921_isdb_t** %4, align 8
  %118 = getelementptr inbounds %struct.s921_isdb_t, %struct.s921_isdb_t* %117, i32 0, i32 0
  %119 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %118, align 8
  %120 = load %struct.s921_isdb_t*, %struct.s921_isdb_t** %4, align 8
  %121 = getelementptr inbounds %struct.s921_isdb_t, %struct.s921_isdb_t* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 8
  %123 = load i32*, i32** @c_table, align 8
  %124 = load i32, i32* %7, align 4
  %125 = mul nsw i32 %124, 3
  %126 = add nsw i32 %125, 2
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i32, i32* %123, i64 %127
  %129 = load i32, i32* %128, align 4
  %130 = call i32 %119(i32 %122, i32 244, i32 %129)
  store i32 %130, i32* %6, align 4
  %131 = load i32, i32* %6, align 4
  %132 = icmp slt i32 %131, 0
  br i1 %132, label %133, label %136

133:                                              ; preds = %116
  %134 = load i32, i32* @EINVAL, align 4
  %135 = sub nsw i32 0, %134
  store i32 %135, i32* %3, align 4
  br label %222

136:                                              ; preds = %116
  %137 = load %struct.s921_isdb_t*, %struct.s921_isdb_t** %4, align 8
  %138 = getelementptr inbounds %struct.s921_isdb_t, %struct.s921_isdb_t* %137, i32 0, i32 0
  %139 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %138, align 8
  %140 = load %struct.s921_isdb_t*, %struct.s921_isdb_t** %4, align 8
  %141 = getelementptr inbounds %struct.s921_isdb_t, %struct.s921_isdb_t* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 8
  %143 = call i32 %139(i32 %142, i32 245, i32 174)
  store i32 %143, i32* %6, align 4
  %144 = load i32, i32* %6, align 4
  %145 = icmp slt i32 %144, 0
  br i1 %145, label %146, label %149

146:                                              ; preds = %136
  %147 = load i32, i32* @EINVAL, align 4
  %148 = sub nsw i32 0, %147
  store i32 %148, i32* %3, align 4
  br label %222

149:                                              ; preds = %136
  %150 = load %struct.s921_isdb_t*, %struct.s921_isdb_t** %4, align 8
  %151 = getelementptr inbounds %struct.s921_isdb_t, %struct.s921_isdb_t* %150, i32 0, i32 0
  %152 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %151, align 8
  %153 = load %struct.s921_isdb_t*, %struct.s921_isdb_t** %4, align 8
  %154 = getelementptr inbounds %struct.s921_isdb_t, %struct.s921_isdb_t* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 8
  %156 = call i32 %152(i32 %155, i32 246, i32 183)
  store i32 %156, i32* %6, align 4
  %157 = load i32, i32* %6, align 4
  %158 = icmp slt i32 %157, 0
  br i1 %158, label %159, label %162

159:                                              ; preds = %149
  %160 = load i32, i32* @EINVAL, align 4
  %161 = sub nsw i32 0, %160
  store i32 %161, i32* %3, align 4
  br label %222

162:                                              ; preds = %149
  %163 = load %struct.s921_isdb_t*, %struct.s921_isdb_t** %4, align 8
  %164 = getelementptr inbounds %struct.s921_isdb_t, %struct.s921_isdb_t* %163, i32 0, i32 0
  %165 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %164, align 8
  %166 = load %struct.s921_isdb_t*, %struct.s921_isdb_t** %4, align 8
  %167 = getelementptr inbounds %struct.s921_isdb_t, %struct.s921_isdb_t* %166, i32 0, i32 1
  %168 = load i32, i32* %167, align 8
  %169 = call i32 %165(i32 %168, i32 247, i32 186)
  store i32 %169, i32* %6, align 4
  %170 = load i32, i32* %6, align 4
  %171 = icmp slt i32 %170, 0
  br i1 %171, label %172, label %175

172:                                              ; preds = %162
  %173 = load i32, i32* @EINVAL, align 4
  %174 = sub nsw i32 0, %173
  store i32 %174, i32* %3, align 4
  br label %222

175:                                              ; preds = %162
  %176 = load %struct.s921_isdb_t*, %struct.s921_isdb_t** %4, align 8
  %177 = getelementptr inbounds %struct.s921_isdb_t, %struct.s921_isdb_t* %176, i32 0, i32 0
  %178 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %177, align 8
  %179 = load %struct.s921_isdb_t*, %struct.s921_isdb_t** %4, align 8
  %180 = getelementptr inbounds %struct.s921_isdb_t, %struct.s921_isdb_t* %179, i32 0, i32 1
  %181 = load i32, i32* %180, align 8
  %182 = call i32 %178(i32 %181, i32 248, i32 215)
  store i32 %182, i32* %6, align 4
  %183 = load i32, i32* %6, align 4
  %184 = icmp slt i32 %183, 0
  br i1 %184, label %185, label %188

185:                                              ; preds = %175
  %186 = load i32, i32* @EINVAL, align 4
  %187 = sub nsw i32 0, %186
  store i32 %187, i32* %3, align 4
  br label %222

188:                                              ; preds = %175
  %189 = load %struct.s921_isdb_t*, %struct.s921_isdb_t** %4, align 8
  %190 = getelementptr inbounds %struct.s921_isdb_t, %struct.s921_isdb_t* %189, i32 0, i32 0
  %191 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %190, align 8
  %192 = load %struct.s921_isdb_t*, %struct.s921_isdb_t** %4, align 8
  %193 = getelementptr inbounds %struct.s921_isdb_t, %struct.s921_isdb_t* %192, i32 0, i32 1
  %194 = load i32, i32* %193, align 8
  %195 = call i32 %191(i32 %194, i32 104, i32 10)
  store i32 %195, i32* %6, align 4
  %196 = load i32, i32* %6, align 4
  %197 = icmp slt i32 %196, 0
  br i1 %197, label %198, label %201

198:                                              ; preds = %188
  %199 = load i32, i32* @EINVAL, align 4
  %200 = sub nsw i32 0, %199
  store i32 %200, i32* %3, align 4
  br label %222

201:                                              ; preds = %188
  %202 = load %struct.s921_isdb_t*, %struct.s921_isdb_t** %4, align 8
  %203 = getelementptr inbounds %struct.s921_isdb_t, %struct.s921_isdb_t* %202, i32 0, i32 0
  %204 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %203, align 8
  %205 = load %struct.s921_isdb_t*, %struct.s921_isdb_t** %4, align 8
  %206 = getelementptr inbounds %struct.s921_isdb_t, %struct.s921_isdb_t* %205, i32 0, i32 1
  %207 = load i32, i32* %206, align 8
  %208 = call i32 %204(i32 %207, i32 105, i32 9)
  store i32 %208, i32* %6, align 4
  %209 = load i32, i32* %6, align 4
  %210 = icmp slt i32 %209, 0
  br i1 %210, label %211, label %214

211:                                              ; preds = %201
  %212 = load i32, i32* @EINVAL, align 4
  %213 = sub nsw i32 0, %212
  store i32 %213, i32* %3, align 4
  br label %222

214:                                              ; preds = %201
  %215 = load %struct.s921_isdb_t*, %struct.s921_isdb_t** %4, align 8
  %216 = getelementptr inbounds %struct.s921_isdb_t, %struct.s921_isdb_t* %215, i32 0, i32 0
  %217 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %216, align 8
  %218 = load %struct.s921_isdb_t*, %struct.s921_isdb_t** %4, align 8
  %219 = getelementptr inbounds %struct.s921_isdb_t, %struct.s921_isdb_t* %218, i32 0, i32 1
  %220 = load i32, i32* %219, align 8
  %221 = call i32 %217(i32 %220, i32 1, i32 64)
  store i32 0, i32* %3, align 4
  br label %222

222:                                              ; preds = %214, %211, %198, %185, %172, %159, %146, %133, %113, %93, %74, %61, %48, %35, %15
  %223 = load i32, i32* %3, align 4
  ret i32 %223
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
