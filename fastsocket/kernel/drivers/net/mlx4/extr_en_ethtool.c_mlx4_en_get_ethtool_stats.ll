; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/mlx4/extr_en_ethtool.c_mlx4_en_get_ethtool_stats.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/mlx4/extr_en_ethtool.c_mlx4_en_get_ethtool_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_stats = type { i32 }
%struct.mlx4_en_priv = type { i32, i32, i32, i32, %struct.TYPE_4__*, %struct.TYPE_3__*, i32, i32, i32 }
%struct.TYPE_4__ = type { i64, i64 }
%struct.TYPE_3__ = type { i64, i64 }

@NUM_MAIN_STATS = common dso_local global i32 0, align 4
@NUM_PORT_STATS = common dso_local global i32 0, align 4
@NUM_PKT_STATS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.ethtool_stats*, i64*)* @mlx4_en_get_ethtool_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlx4_en_get_ethtool_stats(%struct.net_device* %0, %struct.ethtool_stats* %1, i64* %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_stats*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca %struct.mlx4_en_priv*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_stats* %1, %struct.ethtool_stats** %5, align 8
  store i64* %2, i64** %6, align 8
  %11 = load %struct.net_device*, %struct.net_device** %4, align 8
  %12 = call %struct.mlx4_en_priv* @netdev_priv(%struct.net_device* %11)
  store %struct.mlx4_en_priv* %12, %struct.mlx4_en_priv** %7, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %10, align 4
  %13 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %7, align 8
  %14 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %13, i32 0, i32 3
  %15 = call i32 @spin_lock_bh(i32* %14)
  %16 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %7, align 8
  %17 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %84, label %20

20:                                               ; preds = %3
  store i32 0, i32* %9, align 4
  br label %21

21:                                               ; preds = %38, %20
  %22 = load i32, i32* %9, align 4
  %23 = load i32, i32* @NUM_MAIN_STATS, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %41

25:                                               ; preds = %21
  %26 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %7, align 8
  %27 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %26, i32 0, i32 7
  %28 = bitcast i32* %27 to i64*
  %29 = load i32, i32* %9, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i64, i64* %28, i64 %30
  %32 = load i64, i64* %31, align 4
  %33 = load i64*, i64** %6, align 8
  %34 = load i32, i32* %8, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %8, align 4
  %36 = sext i32 %34 to i64
  %37 = getelementptr inbounds i64, i64* %33, i64 %36
  store i64 %32, i64* %37, align 8
  br label %38

38:                                               ; preds = %25
  %39 = load i32, i32* %9, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %9, align 4
  br label %21

41:                                               ; preds = %21
  store i32 0, i32* %9, align 4
  br label %42

42:                                               ; preds = %59, %41
  %43 = load i32, i32* %9, align 4
  %44 = load i32, i32* @NUM_PORT_STATS, align 4
  %45 = icmp slt i32 %43, %44
  br i1 %45, label %46, label %62

46:                                               ; preds = %42
  %47 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %7, align 8
  %48 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %47, i32 0, i32 6
  %49 = bitcast i32* %48 to i64*
  %50 = load i32, i32* %9, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i64, i64* %49, i64 %51
  %53 = load i64, i64* %52, align 8
  %54 = load i64*, i64** %6, align 8
  %55 = load i32, i32* %8, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %8, align 4
  %57 = sext i32 %55 to i64
  %58 = getelementptr inbounds i64, i64* %54, i64 %57
  store i64 %53, i64* %58, align 8
  br label %59

59:                                               ; preds = %46
  %60 = load i32, i32* %9, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %9, align 4
  br label %42

62:                                               ; preds = %42
  store i32 0, i32* %9, align 4
  br label %63

63:                                               ; preds = %80, %62
  %64 = load i32, i32* %9, align 4
  %65 = load i32, i32* @NUM_PKT_STATS, align 4
  %66 = icmp slt i32 %64, %65
  br i1 %66, label %67, label %83

67:                                               ; preds = %63
  %68 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %7, align 8
  %69 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %68, i32 0, i32 8
  %70 = bitcast i32* %69 to i64*
  %71 = load i32, i32* %9, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i64, i64* %70, i64 %72
  %74 = load i64, i64* %73, align 8
  %75 = load i64*, i64** %6, align 8
  %76 = load i32, i32* %8, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %8, align 4
  %78 = sext i32 %76 to i64
  %79 = getelementptr inbounds i64, i64* %75, i64 %78
  store i64 %74, i64* %79, align 8
  br label %80

80:                                               ; preds = %67
  %81 = load i32, i32* %9, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %9, align 4
  br label %63

83:                                               ; preds = %63
  br label %149

84:                                               ; preds = %3
  store i32 0, i32* %9, align 4
  br label %85

85:                                               ; preds = %113, %84
  %86 = load i32, i32* %9, align 4
  %87 = load i32, i32* @NUM_MAIN_STATS, align 4
  %88 = icmp slt i32 %86, %87
  br i1 %88, label %89, label %116

89:                                               ; preds = %85
  %90 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %7, align 8
  %91 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = load i32, i32* %10, align 4
  %94 = ashr i32 %92, %93
  %95 = and i32 %94, 1
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %110

97:                                               ; preds = %89
  %98 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %7, align 8
  %99 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %98, i32 0, i32 7
  %100 = bitcast i32* %99 to i64*
  %101 = load i32, i32* %9, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i64, i64* %100, i64 %102
  %104 = load i64, i64* %103, align 4
  %105 = load i64*, i64** %6, align 8
  %106 = load i32, i32* %8, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %8, align 4
  %108 = sext i32 %106 to i64
  %109 = getelementptr inbounds i64, i64* %105, i64 %108
  store i64 %104, i64* %109, align 8
  br label %110

110:                                              ; preds = %97, %89
  %111 = load i32, i32* %10, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %10, align 4
  br label %113

113:                                              ; preds = %110
  %114 = load i32, i32* %9, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %9, align 4
  br label %85

116:                                              ; preds = %85
  store i32 0, i32* %9, align 4
  br label %117

117:                                              ; preds = %145, %116
  %118 = load i32, i32* %9, align 4
  %119 = load i32, i32* @NUM_PORT_STATS, align 4
  %120 = icmp slt i32 %118, %119
  br i1 %120, label %121, label %148

121:                                              ; preds = %117
  %122 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %7, align 8
  %123 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = load i32, i32* %10, align 4
  %126 = ashr i32 %124, %125
  %127 = and i32 %126, 1
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %142

129:                                              ; preds = %121
  %130 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %7, align 8
  %131 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %130, i32 0, i32 6
  %132 = bitcast i32* %131 to i64*
  %133 = load i32, i32* %9, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i64, i64* %132, i64 %134
  %136 = load i64, i64* %135, align 8
  %137 = load i64*, i64** %6, align 8
  %138 = load i32, i32* %8, align 4
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %8, align 4
  %140 = sext i32 %138 to i64
  %141 = getelementptr inbounds i64, i64* %137, i64 %140
  store i64 %136, i64* %141, align 8
  br label %142

142:                                              ; preds = %129, %121
  %143 = load i32, i32* %10, align 4
  %144 = add nsw i32 %143, 1
  store i32 %144, i32* %10, align 4
  br label %145

145:                                              ; preds = %142
  %146 = load i32, i32* %9, align 4
  %147 = add nsw i32 %146, 1
  store i32 %147, i32* %9, align 4
  br label %117

148:                                              ; preds = %117
  br label %149

149:                                              ; preds = %148, %83
  store i32 0, i32* %9, align 4
  br label %150

150:                                              ; preds = %183, %149
  %151 = load i32, i32* %9, align 4
  %152 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %7, align 8
  %153 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 4
  %155 = icmp slt i32 %151, %154
  br i1 %155, label %156, label %186

156:                                              ; preds = %150
  %157 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %7, align 8
  %158 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %157, i32 0, i32 5
  %159 = load %struct.TYPE_3__*, %struct.TYPE_3__** %158, align 8
  %160 = load i32, i32* %9, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %159, i64 %161
  %163 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %162, i32 0, i32 0
  %164 = load i64, i64* %163, align 8
  %165 = load i64*, i64** %6, align 8
  %166 = load i32, i32* %8, align 4
  %167 = add nsw i32 %166, 1
  store i32 %167, i32* %8, align 4
  %168 = sext i32 %166 to i64
  %169 = getelementptr inbounds i64, i64* %165, i64 %168
  store i64 %164, i64* %169, align 8
  %170 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %7, align 8
  %171 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %170, i32 0, i32 5
  %172 = load %struct.TYPE_3__*, %struct.TYPE_3__** %171, align 8
  %173 = load i32, i32* %9, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %172, i64 %174
  %176 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %175, i32 0, i32 1
  %177 = load i64, i64* %176, align 8
  %178 = load i64*, i64** %6, align 8
  %179 = load i32, i32* %8, align 4
  %180 = add nsw i32 %179, 1
  store i32 %180, i32* %8, align 4
  %181 = sext i32 %179 to i64
  %182 = getelementptr inbounds i64, i64* %178, i64 %181
  store i64 %177, i64* %182, align 8
  br label %183

183:                                              ; preds = %156
  %184 = load i32, i32* %9, align 4
  %185 = add nsw i32 %184, 1
  store i32 %185, i32* %9, align 4
  br label %150

186:                                              ; preds = %150
  store i32 0, i32* %9, align 4
  br label %187

187:                                              ; preds = %220, %186
  %188 = load i32, i32* %9, align 4
  %189 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %7, align 8
  %190 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %189, i32 0, i32 2
  %191 = load i32, i32* %190, align 8
  %192 = icmp slt i32 %188, %191
  br i1 %192, label %193, label %223

193:                                              ; preds = %187
  %194 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %7, align 8
  %195 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %194, i32 0, i32 4
  %196 = load %struct.TYPE_4__*, %struct.TYPE_4__** %195, align 8
  %197 = load i32, i32* %9, align 4
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %196, i64 %198
  %200 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %199, i32 0, i32 0
  %201 = load i64, i64* %200, align 8
  %202 = load i64*, i64** %6, align 8
  %203 = load i32, i32* %8, align 4
  %204 = add nsw i32 %203, 1
  store i32 %204, i32* %8, align 4
  %205 = sext i32 %203 to i64
  %206 = getelementptr inbounds i64, i64* %202, i64 %205
  store i64 %201, i64* %206, align 8
  %207 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %7, align 8
  %208 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %207, i32 0, i32 4
  %209 = load %struct.TYPE_4__*, %struct.TYPE_4__** %208, align 8
  %210 = load i32, i32* %9, align 4
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %209, i64 %211
  %213 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %212, i32 0, i32 1
  %214 = load i64, i64* %213, align 8
  %215 = load i64*, i64** %6, align 8
  %216 = load i32, i32* %8, align 4
  %217 = add nsw i32 %216, 1
  store i32 %217, i32* %8, align 4
  %218 = sext i32 %216 to i64
  %219 = getelementptr inbounds i64, i64* %215, i64 %218
  store i64 %214, i64* %219, align 8
  br label %220

220:                                              ; preds = %193
  %221 = load i32, i32* %9, align 4
  %222 = add nsw i32 %221, 1
  store i32 %222, i32* %9, align 4
  br label %187

223:                                              ; preds = %187
  %224 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %7, align 8
  %225 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %224, i32 0, i32 3
  %226 = call i32 @spin_unlock_bh(i32* %225)
  ret void
}

declare dso_local %struct.mlx4_en_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
