; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/mlx4/extr_en_netdev.c_mlx4_en_auto_moderation.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/mlx4/extr_en_netdev.c_mlx4_en_auto_moderation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_en_priv = type { i64, i32, i64*, i64*, i64, i32, i64, i32, i32*, i64, i32, %struct.mlx4_en_cq*, i32, %struct.TYPE_2__*, i32 }
%struct.mlx4_en_cq = type { i32, i32 }
%struct.TYPE_2__ = type { i64, i64 }

@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i64 0, align 8
@MLX4_EN_RX_RATE_THRESH = common dso_local global i64 0, align 8
@MLX4_EN_AVG_PKT_SMALL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [39 x i8] c"Failed modifying moderation for cq:%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlx4_en_priv*)* @mlx4_en_auto_moderation to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlx4_en_auto_moderation(%struct.mlx4_en_priv* %0) #0 {
  %2 = alloca %struct.mlx4_en_priv*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.mlx4_en_cq*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.mlx4_en_priv* %0, %struct.mlx4_en_priv** %2, align 8
  %14 = load i64, i64* @jiffies, align 8
  %15 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %2, align 8
  %16 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %15, i32 0, i32 9
  %17 = load i64, i64* %16, align 8
  %18 = sub nsw i64 %14, %17
  store i64 %18, i64* %3, align 8
  %19 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %2, align 8
  %20 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %19, i32 0, i32 14
  %21 = load i32, i32* %20, align 8
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %31

23:                                               ; preds = %1
  %24 = load i64, i64* %3, align 8
  %25 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %2, align 8
  %26 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @HZ, align 8
  %29 = mul i64 %27, %28
  %30 = icmp ult i64 %24, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %23, %1
  br label %225

32:                                               ; preds = %23
  store i32 0, i32* %12, align 4
  br label %33

33:                                               ; preds = %218, %32
  %34 = load i32, i32* %12, align 4
  %35 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %2, align 8
  %36 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = icmp slt i32 %34, %37
  br i1 %38, label %39, label %221

39:                                               ; preds = %33
  %40 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %2, align 8
  %41 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %40, i32 0, i32 12
  %42 = call i32 @spin_lock_bh(i32* %41)
  %43 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %2, align 8
  %44 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %43, i32 0, i32 13
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = load i32, i32* %12, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  store i64 %50, i64* %8, align 8
  %51 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %2, align 8
  %52 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %51, i32 0, i32 13
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = load i32, i32* %12, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  store i64 %58, i64* %9, align 8
  %59 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %2, align 8
  %60 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %59, i32 0, i32 12
  %61 = call i32 @spin_unlock_bh(i32* %60)
  %62 = load i64, i64* %8, align 8
  %63 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %2, align 8
  %64 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %63, i32 0, i32 2
  %65 = load i64*, i64** %64, align 8
  %66 = load i32, i32* %12, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i64, i64* %65, i64 %67
  %69 = load i64, i64* %68, align 8
  %70 = sub i64 %62, %69
  store i64 %70, i64* %10, align 8
  %71 = load i64, i64* %10, align 8
  store i64 %71, i64* %5, align 8
  %72 = load i64, i64* %5, align 8
  %73 = load i64, i64* @HZ, align 8
  %74 = mul i64 %72, %73
  %75 = load i64, i64* %3, align 8
  %76 = udiv i64 %74, %75
  store i64 %76, i64* %6, align 8
  %77 = load i64, i64* %5, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %91

79:                                               ; preds = %39
  %80 = load i64, i64* %9, align 8
  %81 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %2, align 8
  %82 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %81, i32 0, i32 3
  %83 = load i64*, i64** %82, align 8
  %84 = load i32, i32* %12, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i64, i64* %83, i64 %85
  %87 = load i64, i64* %86, align 8
  %88 = sub i64 %80, %87
  %89 = load i64, i64* %5, align 8
  %90 = udiv i64 %88, %89
  br label %92

91:                                               ; preds = %39
  br label %92

92:                                               ; preds = %91, %79
  %93 = phi i64 [ %90, %79 ], [ 0, %91 ]
  store i64 %93, i64* %7, align 8
  %94 = load i64, i64* %6, align 8
  %95 = load i64, i64* @MLX4_EN_RX_RATE_THRESH, align 8
  %96 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %2, align 8
  %97 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 8
  %99 = sext i32 %98 to i64
  %100 = udiv i64 %95, %99
  %101 = icmp ugt i64 %94, %100
  br i1 %101, label %102, label %157

102:                                              ; preds = %92
  %103 = load i64, i64* %7, align 8
  %104 = load i64, i64* @MLX4_EN_AVG_PKT_SMALL, align 8
  %105 = icmp ugt i64 %103, %104
  br i1 %105, label %106, label %157

106:                                              ; preds = %102
  %107 = load i64, i64* %6, align 8
  %108 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %2, align 8
  %109 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %108, i32 0, i32 4
  %110 = load i64, i64* %109, align 8
  %111 = icmp ult i64 %107, %110
  br i1 %111, label %112, label %116

112:                                              ; preds = %106
  %113 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %2, align 8
  %114 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %113, i32 0, i32 5
  %115 = load i32, i32* %114, align 8
  store i32 %115, i32* %11, align 4
  br label %156

116:                                              ; preds = %106
  %117 = load i64, i64* %6, align 8
  %118 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %2, align 8
  %119 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %118, i32 0, i32 6
  %120 = load i64, i64* %119, align 8
  %121 = icmp ugt i64 %117, %120
  br i1 %121, label %122, label %126

122:                                              ; preds = %116
  %123 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %2, align 8
  %124 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %123, i32 0, i32 7
  %125 = load i32, i32* %124, align 8
  store i32 %125, i32* %11, align 4
  br label %155

126:                                              ; preds = %116
  %127 = load i64, i64* %6, align 8
  %128 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %2, align 8
  %129 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %128, i32 0, i32 4
  %130 = load i64, i64* %129, align 8
  %131 = sub i64 %127, %130
  %132 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %2, align 8
  %133 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %132, i32 0, i32 7
  %134 = load i32, i32* %133, align 8
  %135 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %2, align 8
  %136 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %135, i32 0, i32 5
  %137 = load i32, i32* %136, align 8
  %138 = sub nsw i32 %134, %137
  %139 = sext i32 %138 to i64
  %140 = mul i64 %131, %139
  %141 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %2, align 8
  %142 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %141, i32 0, i32 6
  %143 = load i64, i64* %142, align 8
  %144 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %2, align 8
  %145 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %144, i32 0, i32 4
  %146 = load i64, i64* %145, align 8
  %147 = sub i64 %143, %146
  %148 = udiv i64 %140, %147
  %149 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %2, align 8
  %150 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %149, i32 0, i32 5
  %151 = load i32, i32* %150, align 8
  %152 = sext i32 %151 to i64
  %153 = add i64 %148, %152
  %154 = trunc i64 %153 to i32
  store i32 %154, i32* %11, align 4
  br label %155

155:                                              ; preds = %126, %122
  br label %156

156:                                              ; preds = %155, %112
  br label %161

157:                                              ; preds = %102, %92
  %158 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %2, align 8
  %159 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %158, i32 0, i32 5
  %160 = load i32, i32* %159, align 8
  store i32 %160, i32* %11, align 4
  br label %161

161:                                              ; preds = %157, %156
  %162 = load i32, i32* %11, align 4
  %163 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %2, align 8
  %164 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %163, i32 0, i32 8
  %165 = load i32*, i32** %164, align 8
  %166 = load i32, i32* %12, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds i32, i32* %165, i64 %167
  %169 = load i32, i32* %168, align 4
  %170 = icmp ne i32 %162, %169
  br i1 %170, label %171, label %203

171:                                              ; preds = %161
  %172 = load i32, i32* %11, align 4
  %173 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %2, align 8
  %174 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %173, i32 0, i32 8
  %175 = load i32*, i32** %174, align 8
  %176 = load i32, i32* %12, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds i32, i32* %175, i64 %177
  store i32 %172, i32* %178, align 4
  %179 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %2, align 8
  %180 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %179, i32 0, i32 11
  %181 = load %struct.mlx4_en_cq*, %struct.mlx4_en_cq** %180, align 8
  %182 = load i32, i32* %12, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds %struct.mlx4_en_cq, %struct.mlx4_en_cq* %181, i64 %183
  store %struct.mlx4_en_cq* %184, %struct.mlx4_en_cq** %4, align 8
  %185 = load i32, i32* %11, align 4
  %186 = load %struct.mlx4_en_cq*, %struct.mlx4_en_cq** %4, align 8
  %187 = getelementptr inbounds %struct.mlx4_en_cq, %struct.mlx4_en_cq* %186, i32 0, i32 0
  store i32 %185, i32* %187, align 4
  %188 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %2, align 8
  %189 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %188, i32 0, i32 10
  %190 = load i32, i32* %189, align 8
  %191 = load %struct.mlx4_en_cq*, %struct.mlx4_en_cq** %4, align 8
  %192 = getelementptr inbounds %struct.mlx4_en_cq, %struct.mlx4_en_cq* %191, i32 0, i32 1
  store i32 %190, i32* %192, align 4
  %193 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %2, align 8
  %194 = load %struct.mlx4_en_cq*, %struct.mlx4_en_cq** %4, align 8
  %195 = call i32 @mlx4_en_set_cq_moder(%struct.mlx4_en_priv* %193, %struct.mlx4_en_cq* %194)
  store i32 %195, i32* %13, align 4
  %196 = load i32, i32* %13, align 4
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %198, label %202

198:                                              ; preds = %171
  %199 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %2, align 8
  %200 = load i32, i32* %12, align 4
  %201 = call i32 @en_err(%struct.mlx4_en_priv* %199, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %200)
  br label %202

202:                                              ; preds = %198, %171
  br label %203

203:                                              ; preds = %202, %161
  %204 = load i64, i64* %8, align 8
  %205 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %2, align 8
  %206 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %205, i32 0, i32 2
  %207 = load i64*, i64** %206, align 8
  %208 = load i32, i32* %12, align 4
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds i64, i64* %207, i64 %209
  store i64 %204, i64* %210, align 8
  %211 = load i64, i64* %9, align 8
  %212 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %2, align 8
  %213 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %212, i32 0, i32 3
  %214 = load i64*, i64** %213, align 8
  %215 = load i32, i32* %12, align 4
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds i64, i64* %214, i64 %216
  store i64 %211, i64* %217, align 8
  br label %218

218:                                              ; preds = %203
  %219 = load i32, i32* %12, align 4
  %220 = add nsw i32 %219, 1
  store i32 %220, i32* %12, align 4
  br label %33

221:                                              ; preds = %33
  %222 = load i64, i64* @jiffies, align 8
  %223 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %2, align 8
  %224 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %223, i32 0, i32 9
  store i64 %222, i64* %224, align 8
  br label %225

225:                                              ; preds = %221, %31
  ret void
}

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @mlx4_en_set_cq_moder(%struct.mlx4_en_priv*, %struct.mlx4_en_cq*) #1

declare dso_local i32 @en_err(%struct.mlx4_en_priv*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
