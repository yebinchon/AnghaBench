; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/mlx4/extr_en_rx.c_mlx4_en_activate_rx_rings.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/mlx4/extr_en_rx.c_mlx4_en_activate_rx_rings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_en_priv = type { i32, i32, %struct.mlx4_en_rx_ring*, %struct.TYPE_4__* }
%struct.mlx4_en_rx_ring = type { i32, i32, i32, i32, i64, i64, i64, i32, i64, i64 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@DS_SIZE = common dso_local global i32 0, align 4
@TXBB_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Failed initializing ring allocator\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx4_en_activate_rx_rings(%struct.mlx4_en_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mlx4_en_priv*, align 8
  %4 = alloca %struct.mlx4_en_rx_ring*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.mlx4_en_priv* %0, %struct.mlx4_en_priv** %3, align 8
  %9 = load i32, i32* @DS_SIZE, align 4
  %10 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %11 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = mul nsw i32 %9, %12
  %14 = sext i32 %13 to i64
  %15 = add i64 4, %14
  %16 = trunc i64 %15 to i32
  %17 = call i32 @roundup_pow_of_two(i32 %16)
  store i32 %17, i32* %8, align 4
  store i32 0, i32* %6, align 4
  br label %18

18:                                               ; preds = %126, %1
  %19 = load i32, i32* %6, align 4
  %20 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %21 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = icmp slt i32 %19, %22
  br i1 %23, label %24, label %129

24:                                               ; preds = %18
  %25 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %26 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %25, i32 0, i32 2
  %27 = load %struct.mlx4_en_rx_ring*, %struct.mlx4_en_rx_ring** %26, align 8
  %28 = load i32, i32* %6, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.mlx4_en_rx_ring, %struct.mlx4_en_rx_ring* %27, i64 %29
  store %struct.mlx4_en_rx_ring* %30, %struct.mlx4_en_rx_ring** %4, align 8
  %31 = load %struct.mlx4_en_rx_ring*, %struct.mlx4_en_rx_ring** %4, align 8
  %32 = getelementptr inbounds %struct.mlx4_en_rx_ring, %struct.mlx4_en_rx_ring* %31, i32 0, i32 9
  store i64 0, i64* %32, align 8
  %33 = load %struct.mlx4_en_rx_ring*, %struct.mlx4_en_rx_ring** %4, align 8
  %34 = getelementptr inbounds %struct.mlx4_en_rx_ring, %struct.mlx4_en_rx_ring* %33, i32 0, i32 8
  store i64 0, i64* %34, align 8
  %35 = load %struct.mlx4_en_rx_ring*, %struct.mlx4_en_rx_ring** %4, align 8
  %36 = getelementptr inbounds %struct.mlx4_en_rx_ring, %struct.mlx4_en_rx_ring* %35, i32 0, i32 4
  store i64 0, i64* %36, align 8
  %37 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %38 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %37, i32 0, i32 3
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %38, align 8
  %40 = load i32, i32* %6, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.mlx4_en_rx_ring*, %struct.mlx4_en_rx_ring** %4, align 8
  %47 = getelementptr inbounds %struct.mlx4_en_rx_ring, %struct.mlx4_en_rx_ring* %46, i32 0, i32 7
  store i32 %45, i32* %47, align 8
  %48 = load i32, i32* %8, align 4
  %49 = load %struct.mlx4_en_rx_ring*, %struct.mlx4_en_rx_ring** %4, align 8
  %50 = getelementptr inbounds %struct.mlx4_en_rx_ring, %struct.mlx4_en_rx_ring* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 8
  %51 = load %struct.mlx4_en_rx_ring*, %struct.mlx4_en_rx_ring** %4, align 8
  %52 = getelementptr inbounds %struct.mlx4_en_rx_ring, %struct.mlx4_en_rx_ring* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* @TXBB_SIZE, align 4
  %55 = icmp sle i32 %53, %54
  br i1 %55, label %56, label %62

56:                                               ; preds = %24
  %57 = load i32, i32* @TXBB_SIZE, align 4
  %58 = load %struct.mlx4_en_rx_ring*, %struct.mlx4_en_rx_ring** %4, align 8
  %59 = getelementptr inbounds %struct.mlx4_en_rx_ring, %struct.mlx4_en_rx_ring* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = add nsw i32 %60, %57
  store i32 %61, i32* %59, align 4
  br label %62

62:                                               ; preds = %56, %24
  %63 = load %struct.mlx4_en_rx_ring*, %struct.mlx4_en_rx_ring** %4, align 8
  %64 = getelementptr inbounds %struct.mlx4_en_rx_ring, %struct.mlx4_en_rx_ring* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = call i64 @ffs(i32 %65)
  %67 = sub nsw i64 %66, 1
  %68 = load %struct.mlx4_en_rx_ring*, %struct.mlx4_en_rx_ring** %4, align 8
  %69 = getelementptr inbounds %struct.mlx4_en_rx_ring, %struct.mlx4_en_rx_ring* %68, i32 0, i32 6
  store i64 %67, i64* %69, align 8
  %70 = load %struct.mlx4_en_rx_ring*, %struct.mlx4_en_rx_ring** %4, align 8
  %71 = getelementptr inbounds %struct.mlx4_en_rx_ring, %struct.mlx4_en_rx_ring* %70, i32 0, i32 3
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.mlx4_en_rx_ring*, %struct.mlx4_en_rx_ring** %4, align 8
  %74 = getelementptr inbounds %struct.mlx4_en_rx_ring, %struct.mlx4_en_rx_ring* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = mul nsw i32 %72, %75
  %77 = load %struct.mlx4_en_rx_ring*, %struct.mlx4_en_rx_ring** %4, align 8
  %78 = getelementptr inbounds %struct.mlx4_en_rx_ring, %struct.mlx4_en_rx_ring* %77, i32 0, i32 2
  store i32 %76, i32* %78, align 8
  %79 = load %struct.mlx4_en_rx_ring*, %struct.mlx4_en_rx_ring** %4, align 8
  %80 = getelementptr inbounds %struct.mlx4_en_rx_ring, %struct.mlx4_en_rx_ring* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.mlx4_en_rx_ring*, %struct.mlx4_en_rx_ring** %4, align 8
  %83 = getelementptr inbounds %struct.mlx4_en_rx_ring, %struct.mlx4_en_rx_ring* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 8
  %85 = call i32 @memset(i32 %81, i32 0, i32 %84)
  %86 = load %struct.mlx4_en_rx_ring*, %struct.mlx4_en_rx_ring** %4, align 8
  %87 = call i32 @mlx4_en_update_rx_prod_db(%struct.mlx4_en_rx_ring* %86)
  store i32 0, i32* %5, align 4
  br label %88

88:                                               ; preds = %99, %62
  %89 = load i32, i32* %5, align 4
  %90 = load %struct.mlx4_en_rx_ring*, %struct.mlx4_en_rx_ring** %4, align 8
  %91 = getelementptr inbounds %struct.mlx4_en_rx_ring, %struct.mlx4_en_rx_ring* %90, i32 0, i32 3
  %92 = load i32, i32* %91, align 4
  %93 = icmp slt i32 %89, %92
  br i1 %93, label %94, label %102

94:                                               ; preds = %88
  %95 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %96 = load %struct.mlx4_en_rx_ring*, %struct.mlx4_en_rx_ring** %4, align 8
  %97 = load i32, i32* %5, align 4
  %98 = call i32 @mlx4_en_init_rx_desc(%struct.mlx4_en_priv* %95, %struct.mlx4_en_rx_ring* %96, i32 %97)
  br label %99

99:                                               ; preds = %94
  %100 = load i32, i32* %5, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %5, align 4
  br label %88

102:                                              ; preds = %88
  %103 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %104 = load %struct.mlx4_en_rx_ring*, %struct.mlx4_en_rx_ring** %4, align 8
  %105 = call i32 @mlx4_en_init_allocator(%struct.mlx4_en_priv* %103, %struct.mlx4_en_rx_ring* %104)
  store i32 %105, i32* %7, align 4
  %106 = load i32, i32* %7, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %125

108:                                              ; preds = %102
  %109 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %110 = call i32 @en_err(%struct.mlx4_en_priv* %109, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %111 = load %struct.mlx4_en_rx_ring*, %struct.mlx4_en_rx_ring** %4, align 8
  %112 = getelementptr inbounds %struct.mlx4_en_rx_ring, %struct.mlx4_en_rx_ring* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = load i32, i32* @TXBB_SIZE, align 4
  %115 = icmp sle i32 %113, %114
  br i1 %115, label %116, label %122

116:                                              ; preds = %108
  %117 = load i32, i32* @TXBB_SIZE, align 4
  %118 = load %struct.mlx4_en_rx_ring*, %struct.mlx4_en_rx_ring** %4, align 8
  %119 = getelementptr inbounds %struct.mlx4_en_rx_ring, %struct.mlx4_en_rx_ring* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = sub nsw i32 %120, %117
  store i32 %121, i32* %119, align 4
  br label %122

122:                                              ; preds = %116, %108
  %123 = load i32, i32* %6, align 4
  %124 = add nsw i32 %123, -1
  store i32 %124, i32* %6, align 4
  br label %185

125:                                              ; preds = %102
  br label %126

126:                                              ; preds = %125
  %127 = load i32, i32* %6, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %6, align 4
  br label %18

129:                                              ; preds = %18
  %130 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %131 = call i32 @mlx4_en_fill_rx_buffers(%struct.mlx4_en_priv* %130)
  store i32 %131, i32* %7, align 4
  %132 = load i32, i32* %7, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %135

134:                                              ; preds = %129
  br label %161

135:                                              ; preds = %129
  store i32 0, i32* %6, align 4
  br label %136

136:                                              ; preds = %157, %135
  %137 = load i32, i32* %6, align 4
  %138 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %139 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  %141 = icmp slt i32 %137, %140
  br i1 %141, label %142, label %160

142:                                              ; preds = %136
  %143 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %144 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %143, i32 0, i32 2
  %145 = load %struct.mlx4_en_rx_ring*, %struct.mlx4_en_rx_ring** %144, align 8
  %146 = load i32, i32* %6, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds %struct.mlx4_en_rx_ring, %struct.mlx4_en_rx_ring* %145, i64 %147
  store %struct.mlx4_en_rx_ring* %148, %struct.mlx4_en_rx_ring** %4, align 8
  %149 = load %struct.mlx4_en_rx_ring*, %struct.mlx4_en_rx_ring** %4, align 8
  %150 = getelementptr inbounds %struct.mlx4_en_rx_ring, %struct.mlx4_en_rx_ring* %149, i32 0, i32 4
  %151 = load i64, i64* %150, align 8
  %152 = sub nsw i64 %151, 1
  %153 = load %struct.mlx4_en_rx_ring*, %struct.mlx4_en_rx_ring** %4, align 8
  %154 = getelementptr inbounds %struct.mlx4_en_rx_ring, %struct.mlx4_en_rx_ring* %153, i32 0, i32 5
  store i64 %152, i64* %154, align 8
  %155 = load %struct.mlx4_en_rx_ring*, %struct.mlx4_en_rx_ring** %4, align 8
  %156 = call i32 @mlx4_en_update_rx_prod_db(%struct.mlx4_en_rx_ring* %155)
  br label %157

157:                                              ; preds = %142
  %158 = load i32, i32* %6, align 4
  %159 = add nsw i32 %158, 1
  store i32 %159, i32* %6, align 4
  br label %136

160:                                              ; preds = %136
  store i32 0, i32* %2, align 4
  br label %224

161:                                              ; preds = %134
  store i32 0, i32* %6, align 4
  br label %162

162:                                              ; preds = %177, %161
  %163 = load i32, i32* %6, align 4
  %164 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %165 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %164, i32 0, i32 1
  %166 = load i32, i32* %165, align 4
  %167 = icmp slt i32 %163, %166
  br i1 %167, label %168, label %180

168:                                              ; preds = %162
  %169 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %170 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %171 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %170, i32 0, i32 2
  %172 = load %struct.mlx4_en_rx_ring*, %struct.mlx4_en_rx_ring** %171, align 8
  %173 = load i32, i32* %6, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds %struct.mlx4_en_rx_ring, %struct.mlx4_en_rx_ring* %172, i64 %174
  %176 = call i32 @mlx4_en_free_rx_buf(%struct.mlx4_en_priv* %169, %struct.mlx4_en_rx_ring* %175)
  br label %177

177:                                              ; preds = %168
  %178 = load i32, i32* %6, align 4
  %179 = add nsw i32 %178, 1
  store i32 %179, i32* %6, align 4
  br label %162

180:                                              ; preds = %162
  %181 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %182 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %181, i32 0, i32 1
  %183 = load i32, i32* %182, align 4
  %184 = sub nsw i32 %183, 1
  store i32 %184, i32* %6, align 4
  br label %185

185:                                              ; preds = %180, %122
  br label %186

186:                                              ; preds = %211, %185
  %187 = load i32, i32* %6, align 4
  %188 = icmp sge i32 %187, 0
  br i1 %188, label %189, label %222

189:                                              ; preds = %186
  %190 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %191 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %190, i32 0, i32 2
  %192 = load %struct.mlx4_en_rx_ring*, %struct.mlx4_en_rx_ring** %191, align 8
  %193 = load i32, i32* %6, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds %struct.mlx4_en_rx_ring, %struct.mlx4_en_rx_ring* %192, i64 %194
  %196 = getelementptr inbounds %struct.mlx4_en_rx_ring, %struct.mlx4_en_rx_ring* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 8
  %198 = load i32, i32* @TXBB_SIZE, align 4
  %199 = icmp sle i32 %197, %198
  br i1 %199, label %200, label %211

200:                                              ; preds = %189
  %201 = load i32, i32* @TXBB_SIZE, align 4
  %202 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %203 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %202, i32 0, i32 2
  %204 = load %struct.mlx4_en_rx_ring*, %struct.mlx4_en_rx_ring** %203, align 8
  %205 = load i32, i32* %6, align 4
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds %struct.mlx4_en_rx_ring, %struct.mlx4_en_rx_ring* %204, i64 %206
  %208 = getelementptr inbounds %struct.mlx4_en_rx_ring, %struct.mlx4_en_rx_ring* %207, i32 0, i32 1
  %209 = load i32, i32* %208, align 4
  %210 = sub nsw i32 %209, %201
  store i32 %210, i32* %208, align 4
  br label %211

211:                                              ; preds = %200, %189
  %212 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %213 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %214 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %213, i32 0, i32 2
  %215 = load %struct.mlx4_en_rx_ring*, %struct.mlx4_en_rx_ring** %214, align 8
  %216 = load i32, i32* %6, align 4
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds %struct.mlx4_en_rx_ring, %struct.mlx4_en_rx_ring* %215, i64 %217
  %219 = call i32 @mlx4_en_destroy_allocator(%struct.mlx4_en_priv* %212, %struct.mlx4_en_rx_ring* %218)
  %220 = load i32, i32* %6, align 4
  %221 = add nsw i32 %220, -1
  store i32 %221, i32* %6, align 4
  br label %186

222:                                              ; preds = %186
  %223 = load i32, i32* %7, align 4
  store i32 %223, i32* %2, align 4
  br label %224

224:                                              ; preds = %222, %160
  %225 = load i32, i32* %2, align 4
  ret i32 %225
}

declare dso_local i32 @roundup_pow_of_two(i32) #1

declare dso_local i64 @ffs(i32) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @mlx4_en_update_rx_prod_db(%struct.mlx4_en_rx_ring*) #1

declare dso_local i32 @mlx4_en_init_rx_desc(%struct.mlx4_en_priv*, %struct.mlx4_en_rx_ring*, i32) #1

declare dso_local i32 @mlx4_en_init_allocator(%struct.mlx4_en_priv*, %struct.mlx4_en_rx_ring*) #1

declare dso_local i32 @en_err(%struct.mlx4_en_priv*, i8*) #1

declare dso_local i32 @mlx4_en_fill_rx_buffers(%struct.mlx4_en_priv*) #1

declare dso_local i32 @mlx4_en_free_rx_buf(%struct.mlx4_en_priv*, %struct.mlx4_en_rx_ring*) #1

declare dso_local i32 @mlx4_en_destroy_allocator(%struct.mlx4_en_priv*, %struct.mlx4_en_rx_ring*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
