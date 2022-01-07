; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_qp.c_alloc_qpn.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_qp.c_alloc_qpn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qib_devdata = type { i32 }
%struct.qib_qpn_table = type { i32, i32, i32, i32, %struct.qpn_map*, i32 }
%struct.qpn_map = type { i32 }

@IB_QPT_SMI = common dso_local global i32 0, align 4
@IB_QPT_GSI = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@QPN_MAX = common dso_local global i32 0, align 4
@BITS_PER_PAGE_MASK = common dso_local global i32 0, align 4
@BITS_PER_PAGE = common dso_local global i32 0, align 4
@QPNMAP_ENTRIES = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qib_devdata*, %struct.qib_qpn_table*, i32, i32)* @alloc_qpn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alloc_qpn(%struct.qib_devdata* %0, %struct.qib_qpn_table* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.qib_devdata*, align 8
  %6 = alloca %struct.qib_qpn_table*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.qpn_map*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.qib_devdata* %0, %struct.qib_devdata** %5, align 8
  store %struct.qib_qpn_table* %1, %struct.qib_qpn_table** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %16 = load i32, i32* %7, align 4
  %17 = load i32, i32* @IB_QPT_SMI, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %23, label %19

19:                                               ; preds = %4
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* @IB_QPT_GSI, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %56

23:                                               ; preds = %19, %4
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* @IB_QPT_GSI, align 4
  %26 = icmp eq i32 %24, %25
  %27 = zext i1 %26 to i32
  store i32 %27, i32* %14, align 4
  %28 = load i32, i32* %14, align 4
  %29 = load i32, i32* %8, align 4
  %30 = sub nsw i32 %29, 1
  %31 = mul nsw i32 2, %30
  %32 = add nsw i32 %28, %31
  %33 = shl i32 1, %32
  store i32 %33, i32* %15, align 4
  %34 = load %struct.qib_qpn_table*, %struct.qib_qpn_table** %6, align 8
  %35 = getelementptr inbounds %struct.qib_qpn_table, %struct.qib_qpn_table* %34, i32 0, i32 5
  %36 = call i32 @spin_lock(i32* %35)
  %37 = load %struct.qib_qpn_table*, %struct.qib_qpn_table** %6, align 8
  %38 = getelementptr inbounds %struct.qib_qpn_table, %struct.qib_qpn_table* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* %15, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %23
  %44 = load i32, i32* @EINVAL, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %14, align 4
  br label %52

46:                                               ; preds = %23
  %47 = load i32, i32* %15, align 4
  %48 = load %struct.qib_qpn_table*, %struct.qib_qpn_table** %6, align 8
  %49 = getelementptr inbounds %struct.qib_qpn_table, %struct.qib_qpn_table* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = or i32 %50, %47
  store i32 %51, i32* %49, align 8
  br label %52

52:                                               ; preds = %46, %43
  %53 = load %struct.qib_qpn_table*, %struct.qib_qpn_table** %6, align 8
  %54 = getelementptr inbounds %struct.qib_qpn_table, %struct.qib_qpn_table* %53, i32 0, i32 5
  %55 = call i32 @spin_unlock(i32* %54)
  br label %216

56:                                               ; preds = %19
  %57 = load %struct.qib_qpn_table*, %struct.qib_qpn_table** %6, align 8
  %58 = getelementptr inbounds %struct.qib_qpn_table, %struct.qib_qpn_table* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = add nsw i32 %59, 2
  store i32 %60, i32* %12, align 4
  %61 = load i32, i32* %12, align 4
  %62 = load i32, i32* @QPN_MAX, align 4
  %63 = icmp sge i32 %61, %62
  br i1 %63, label %64, label %65

64:                                               ; preds = %56
  store i32 2, i32* %12, align 4
  br label %65

65:                                               ; preds = %64, %56
  %66 = load %struct.qib_qpn_table*, %struct.qib_qpn_table** %6, align 8
  %67 = getelementptr inbounds %struct.qib_qpn_table, %struct.qib_qpn_table* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %88

70:                                               ; preds = %65
  %71 = load i32, i32* %12, align 4
  %72 = load %struct.qib_qpn_table*, %struct.qib_qpn_table** %6, align 8
  %73 = getelementptr inbounds %struct.qib_qpn_table, %struct.qib_qpn_table* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 8
  %75 = and i32 %71, %74
  %76 = ashr i32 %75, 1
  %77 = load %struct.qib_devdata*, %struct.qib_devdata** %5, align 8
  %78 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = icmp sge i32 %76, %79
  br i1 %80, label %81, label %88

81:                                               ; preds = %70
  %82 = load i32, i32* %12, align 4
  %83 = load %struct.qib_qpn_table*, %struct.qib_qpn_table** %6, align 8
  %84 = getelementptr inbounds %struct.qib_qpn_table, %struct.qib_qpn_table* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 8
  %86 = or i32 %82, %85
  %87 = add nsw i32 %86, 2
  store i32 %87, i32* %12, align 4
  br label %88

88:                                               ; preds = %81, %70, %65
  %89 = load i32, i32* %12, align 4
  %90 = load i32, i32* @BITS_PER_PAGE_MASK, align 4
  %91 = and i32 %89, %90
  store i32 %91, i32* %10, align 4
  %92 = load %struct.qib_qpn_table*, %struct.qib_qpn_table** %6, align 8
  %93 = getelementptr inbounds %struct.qib_qpn_table, %struct.qib_qpn_table* %92, i32 0, i32 4
  %94 = load %struct.qpn_map*, %struct.qpn_map** %93, align 8
  %95 = load i32, i32* %12, align 4
  %96 = load i32, i32* @BITS_PER_PAGE, align 4
  %97 = sdiv i32 %95, %96
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds %struct.qpn_map, %struct.qpn_map* %94, i64 %98
  store %struct.qpn_map* %99, %struct.qpn_map** %13, align 8
  %100 = load %struct.qib_qpn_table*, %struct.qib_qpn_table** %6, align 8
  %101 = getelementptr inbounds %struct.qib_qpn_table, %struct.qib_qpn_table* %100, i32 0, i32 3
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* %10, align 4
  %104 = icmp ne i32 %103, 0
  %105 = xor i1 %104, true
  %106 = zext i1 %105 to i32
  %107 = sub nsw i32 %102, %106
  store i32 %107, i32* %11, align 4
  store i32 0, i32* %9, align 4
  br label %108

108:                                              ; preds = %208, %88
  %109 = load %struct.qpn_map*, %struct.qpn_map** %13, align 8
  %110 = getelementptr inbounds %struct.qpn_map, %struct.qpn_map* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = icmp ne i32 %111, 0
  %113 = xor i1 %112, true
  %114 = zext i1 %113 to i32
  %115 = call i64 @unlikely(i32 %114)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %131

117:                                              ; preds = %108
  %118 = load %struct.qib_qpn_table*, %struct.qib_qpn_table** %6, align 8
  %119 = load %struct.qpn_map*, %struct.qpn_map** %13, align 8
  %120 = call i32 @get_map_page(%struct.qib_qpn_table* %118, %struct.qpn_map* %119)
  %121 = load %struct.qpn_map*, %struct.qpn_map** %13, align 8
  %122 = getelementptr inbounds %struct.qpn_map, %struct.qpn_map* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = icmp ne i32 %123, 0
  %125 = xor i1 %124, true
  %126 = zext i1 %125 to i32
  %127 = call i64 @unlikely(i32 %126)
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %130

129:                                              ; preds = %117
  br label %213

130:                                              ; preds = %117
  br label %131

131:                                              ; preds = %130, %108
  br label %132

132:                                              ; preds = %164, %131
  %133 = load i32, i32* %10, align 4
  %134 = load %struct.qpn_map*, %struct.qpn_map** %13, align 8
  %135 = getelementptr inbounds %struct.qpn_map, %struct.qpn_map* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = call i32 @test_and_set_bit(i32 %133, i32 %136)
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %144, label %139

139:                                              ; preds = %132
  %140 = load i32, i32* %12, align 4
  %141 = load %struct.qib_qpn_table*, %struct.qib_qpn_table** %6, align 8
  %142 = getelementptr inbounds %struct.qib_qpn_table, %struct.qib_qpn_table* %141, i32 0, i32 1
  store i32 %140, i32* %142, align 4
  %143 = load i32, i32* %12, align 4
  store i32 %143, i32* %14, align 4
  br label %216

144:                                              ; preds = %132
  %145 = load %struct.qib_qpn_table*, %struct.qib_qpn_table** %6, align 8
  %146 = load %struct.qpn_map*, %struct.qpn_map** %13, align 8
  %147 = load i32, i32* %10, align 4
  %148 = load %struct.qib_devdata*, %struct.qib_devdata** %5, align 8
  %149 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  %151 = call i32 @find_next_offset(%struct.qib_qpn_table* %145, %struct.qpn_map* %146, i32 %147, i32 %150)
  store i32 %151, i32* %10, align 4
  %152 = load %struct.qib_qpn_table*, %struct.qib_qpn_table** %6, align 8
  %153 = load %struct.qpn_map*, %struct.qpn_map** %13, align 8
  %154 = load i32, i32* %10, align 4
  %155 = call i32 @mk_qpn(%struct.qib_qpn_table* %152, %struct.qpn_map* %153, i32 %154)
  store i32 %155, i32* %12, align 4
  br label %156

156:                                              ; preds = %144
  %157 = load i32, i32* %10, align 4
  %158 = load i32, i32* @BITS_PER_PAGE, align 4
  %159 = icmp slt i32 %157, %158
  br i1 %159, label %160, label %164

160:                                              ; preds = %156
  %161 = load i32, i32* %12, align 4
  %162 = load i32, i32* @QPN_MAX, align 4
  %163 = icmp slt i32 %161, %162
  br label %164

164:                                              ; preds = %160, %156
  %165 = phi i1 [ false, %156 ], [ %163, %160 ]
  br i1 %165, label %132, label %166

166:                                              ; preds = %164
  %167 = load i32, i32* %9, align 4
  %168 = add nsw i32 %167, 1
  store i32 %168, i32* %9, align 4
  %169 = load i32, i32* %11, align 4
  %170 = icmp sgt i32 %168, %169
  br i1 %170, label %171, label %188

171:                                              ; preds = %166
  %172 = load %struct.qib_qpn_table*, %struct.qib_qpn_table** %6, align 8
  %173 = getelementptr inbounds %struct.qib_qpn_table, %struct.qib_qpn_table* %172, i32 0, i32 3
  %174 = load i32, i32* %173, align 4
  %175 = load i32, i32* @QPNMAP_ENTRIES, align 4
  %176 = icmp eq i32 %174, %175
  br i1 %176, label %177, label %178

177:                                              ; preds = %171
  br label %213

178:                                              ; preds = %171
  %179 = load %struct.qib_qpn_table*, %struct.qib_qpn_table** %6, align 8
  %180 = getelementptr inbounds %struct.qib_qpn_table, %struct.qib_qpn_table* %179, i32 0, i32 4
  %181 = load %struct.qpn_map*, %struct.qpn_map** %180, align 8
  %182 = load %struct.qib_qpn_table*, %struct.qib_qpn_table** %6, align 8
  %183 = getelementptr inbounds %struct.qib_qpn_table, %struct.qib_qpn_table* %182, i32 0, i32 3
  %184 = load i32, i32* %183, align 4
  %185 = add nsw i32 %184, 1
  store i32 %185, i32* %183, align 4
  %186 = sext i32 %184 to i64
  %187 = getelementptr inbounds %struct.qpn_map, %struct.qpn_map* %181, i64 %186
  store %struct.qpn_map* %187, %struct.qpn_map** %13, align 8
  store i32 0, i32* %10, align 4
  br label %208

188:                                              ; preds = %166
  %189 = load %struct.qpn_map*, %struct.qpn_map** %13, align 8
  %190 = load %struct.qib_qpn_table*, %struct.qib_qpn_table** %6, align 8
  %191 = getelementptr inbounds %struct.qib_qpn_table, %struct.qib_qpn_table* %190, i32 0, i32 4
  %192 = load %struct.qpn_map*, %struct.qpn_map** %191, align 8
  %193 = load %struct.qib_qpn_table*, %struct.qib_qpn_table** %6, align 8
  %194 = getelementptr inbounds %struct.qib_qpn_table, %struct.qib_qpn_table* %193, i32 0, i32 3
  %195 = load i32, i32* %194, align 4
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds %struct.qpn_map, %struct.qpn_map* %192, i64 %196
  %198 = icmp ult %struct.qpn_map* %189, %197
  br i1 %198, label %199, label %202

199:                                              ; preds = %188
  %200 = load %struct.qpn_map*, %struct.qpn_map** %13, align 8
  %201 = getelementptr inbounds %struct.qpn_map, %struct.qpn_map* %200, i32 1
  store %struct.qpn_map* %201, %struct.qpn_map** %13, align 8
  store i32 0, i32* %10, align 4
  br label %207

202:                                              ; preds = %188
  %203 = load %struct.qib_qpn_table*, %struct.qib_qpn_table** %6, align 8
  %204 = getelementptr inbounds %struct.qib_qpn_table, %struct.qib_qpn_table* %203, i32 0, i32 4
  %205 = load %struct.qpn_map*, %struct.qpn_map** %204, align 8
  %206 = getelementptr inbounds %struct.qpn_map, %struct.qpn_map* %205, i64 0
  store %struct.qpn_map* %206, %struct.qpn_map** %13, align 8
  store i32 2, i32* %10, align 4
  br label %207

207:                                              ; preds = %202, %199
  br label %208

208:                                              ; preds = %207, %178
  %209 = load %struct.qib_qpn_table*, %struct.qib_qpn_table** %6, align 8
  %210 = load %struct.qpn_map*, %struct.qpn_map** %13, align 8
  %211 = load i32, i32* %10, align 4
  %212 = call i32 @mk_qpn(%struct.qib_qpn_table* %209, %struct.qpn_map* %210, i32 %211)
  store i32 %212, i32* %12, align 4
  br label %108

213:                                              ; preds = %177, %129
  %214 = load i32, i32* @ENOMEM, align 4
  %215 = sub nsw i32 0, %214
  store i32 %215, i32* %14, align 4
  br label %216

216:                                              ; preds = %213, %139, %52
  %217 = load i32, i32* %14, align 4
  ret i32 %217
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @get_map_page(%struct.qib_qpn_table*, %struct.qpn_map*) #1

declare dso_local i32 @test_and_set_bit(i32, i32) #1

declare dso_local i32 @find_next_offset(%struct.qib_qpn_table*, %struct.qpn_map*, i32, i32) #1

declare dso_local i32 @mk_qpn(%struct.qib_qpn_table*, %struct.qpn_map*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
