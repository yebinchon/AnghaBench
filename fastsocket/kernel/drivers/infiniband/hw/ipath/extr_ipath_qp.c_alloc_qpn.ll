; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ipath/extr_ipath_qp.c_alloc_qpn.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ipath/extr_ipath_qp.c_alloc_qpn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipath_qp_table = type { i32, i32, %struct.qpn_map* }
%struct.qpn_map = type { i32, i32 }

@IB_QPT_SMI = common dso_local global i32 0, align 4
@IB_QPT_GSI = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@QPN_MAX = common dso_local global i32 0, align 4
@BITS_PER_PAGE_MASK = common dso_local global i32 0, align 4
@BITS_PER_PAGE = common dso_local global i32 0, align 4
@QPNMAP_ENTRIES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ipath_qp_table*, i32)* @alloc_qpn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alloc_qpn(%struct.ipath_qp_table* %0, i32 %1) #0 {
  %3 = alloca %struct.ipath_qp_table*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.qpn_map*, align 8
  %10 = alloca i32, align 4
  store %struct.ipath_qp_table* %0, %struct.ipath_qp_table** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 -1, i32* %10, align 4
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* @IB_QPT_SMI, align 4
  %13 = icmp eq i32 %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  store i32 0, i32* %10, align 4
  br label %21

15:                                               ; preds = %2
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* @IB_QPT_GSI, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %15
  store i32 1, i32* %10, align 4
  br label %20

20:                                               ; preds = %19, %15
  br label %21

21:                                               ; preds = %20, %14
  %22 = load i32, i32* %10, align 4
  %23 = icmp ne i32 %22, -1
  br i1 %23, label %24, label %68

24:                                               ; preds = %21
  %25 = load %struct.ipath_qp_table*, %struct.ipath_qp_table** %3, align 8
  %26 = getelementptr inbounds %struct.ipath_qp_table, %struct.ipath_qp_table* %25, i32 0, i32 2
  %27 = load %struct.qpn_map*, %struct.qpn_map** %26, align 8
  %28 = getelementptr inbounds %struct.qpn_map, %struct.qpn_map* %27, i64 0
  store %struct.qpn_map* %28, %struct.qpn_map** %9, align 8
  %29 = load %struct.qpn_map*, %struct.qpn_map** %9, align 8
  %30 = getelementptr inbounds %struct.qpn_map, %struct.qpn_map* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = icmp ne i32 %31, 0
  %33 = xor i1 %32, true
  %34 = zext i1 %33 to i32
  %35 = call i64 @unlikely(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %53

37:                                               ; preds = %24
  %38 = load %struct.ipath_qp_table*, %struct.ipath_qp_table** %3, align 8
  %39 = load %struct.qpn_map*, %struct.qpn_map** %9, align 8
  %40 = call i32 @get_map_page(%struct.ipath_qp_table* %38, %struct.qpn_map* %39)
  %41 = load %struct.qpn_map*, %struct.qpn_map** %9, align 8
  %42 = getelementptr inbounds %struct.qpn_map, %struct.qpn_map* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = icmp ne i32 %43, 0
  %45 = xor i1 %44, true
  %46 = zext i1 %45 to i32
  %47 = call i64 @unlikely(i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %37
  %50 = load i32, i32* @ENOMEM, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %10, align 4
  br label %211

52:                                               ; preds = %37
  br label %53

53:                                               ; preds = %52, %24
  %54 = load i32, i32* %10, align 4
  %55 = load %struct.qpn_map*, %struct.qpn_map** %9, align 8
  %56 = getelementptr inbounds %struct.qpn_map, %struct.qpn_map* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @test_and_set_bit(i32 %54, i32 %57)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %64, label %60

60:                                               ; preds = %53
  %61 = load %struct.qpn_map*, %struct.qpn_map** %9, align 8
  %62 = getelementptr inbounds %struct.qpn_map, %struct.qpn_map* %61, i32 0, i32 0
  %63 = call i32 @atomic_dec(i32* %62)
  br label %67

64:                                               ; preds = %53
  %65 = load i32, i32* @EBUSY, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %10, align 4
  br label %67

67:                                               ; preds = %64, %60
  br label %211

68:                                               ; preds = %21
  %69 = load %struct.ipath_qp_table*, %struct.ipath_qp_table** %3, align 8
  %70 = getelementptr inbounds %struct.ipath_qp_table, %struct.ipath_qp_table* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %8, align 4
  %73 = load i32, i32* %8, align 4
  %74 = load i32, i32* @QPN_MAX, align 4
  %75 = icmp sge i32 %73, %74
  br i1 %75, label %76, label %77

76:                                               ; preds = %68
  store i32 2, i32* %8, align 4
  br label %77

77:                                               ; preds = %76, %68
  %78 = load i32, i32* %8, align 4
  %79 = load i32, i32* @BITS_PER_PAGE_MASK, align 4
  %80 = and i32 %78, %79
  store i32 %80, i32* %6, align 4
  %81 = load %struct.ipath_qp_table*, %struct.ipath_qp_table** %3, align 8
  %82 = getelementptr inbounds %struct.ipath_qp_table, %struct.ipath_qp_table* %81, i32 0, i32 2
  %83 = load %struct.qpn_map*, %struct.qpn_map** %82, align 8
  %84 = load i32, i32* %8, align 4
  %85 = load i32, i32* @BITS_PER_PAGE, align 4
  %86 = sdiv i32 %84, %85
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.qpn_map, %struct.qpn_map* %83, i64 %87
  store %struct.qpn_map* %88, %struct.qpn_map** %9, align 8
  %89 = load %struct.ipath_qp_table*, %struct.ipath_qp_table** %3, align 8
  %90 = getelementptr inbounds %struct.ipath_qp_table, %struct.ipath_qp_table* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* %6, align 4
  %93 = icmp ne i32 %92, 0
  %94 = xor i1 %93, true
  %95 = zext i1 %94 to i32
  %96 = sub nsw i32 %91, %95
  store i32 %96, i32* %7, align 4
  store i32 0, i32* %5, align 4
  br label %97

97:                                               ; preds = %203, %77
  %98 = load %struct.qpn_map*, %struct.qpn_map** %9, align 8
  %99 = getelementptr inbounds %struct.qpn_map, %struct.qpn_map* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = icmp ne i32 %100, 0
  %102 = xor i1 %101, true
  %103 = zext i1 %102 to i32
  %104 = call i64 @unlikely(i32 %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %120

106:                                              ; preds = %97
  %107 = load %struct.ipath_qp_table*, %struct.ipath_qp_table** %3, align 8
  %108 = load %struct.qpn_map*, %struct.qpn_map** %9, align 8
  %109 = call i32 @get_map_page(%struct.ipath_qp_table* %107, %struct.qpn_map* %108)
  %110 = load %struct.qpn_map*, %struct.qpn_map** %9, align 8
  %111 = getelementptr inbounds %struct.qpn_map, %struct.qpn_map* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = icmp ne i32 %112, 0
  %114 = xor i1 %113, true
  %115 = zext i1 %114 to i32
  %116 = call i64 @unlikely(i32 %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %119

118:                                              ; preds = %106
  br label %208

119:                                              ; preds = %106
  br label %120

120:                                              ; preds = %119, %97
  %121 = load %struct.qpn_map*, %struct.qpn_map** %9, align 8
  %122 = getelementptr inbounds %struct.qpn_map, %struct.qpn_map* %121, i32 0, i32 0
  %123 = call i32 @atomic_read(i32* %122)
  %124 = call i64 @likely(i32 %123)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %161

126:                                              ; preds = %120
  br label %127

127:                                              ; preds = %158, %126
  %128 = load i32, i32* %6, align 4
  %129 = load %struct.qpn_map*, %struct.qpn_map** %9, align 8
  %130 = getelementptr inbounds %struct.qpn_map, %struct.qpn_map* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  %132 = call i32 @test_and_set_bit(i32 %128, i32 %131)
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %142, label %134

134:                                              ; preds = %127
  %135 = load %struct.qpn_map*, %struct.qpn_map** %9, align 8
  %136 = getelementptr inbounds %struct.qpn_map, %struct.qpn_map* %135, i32 0, i32 0
  %137 = call i32 @atomic_dec(i32* %136)
  %138 = load i32, i32* %8, align 4
  %139 = load %struct.ipath_qp_table*, %struct.ipath_qp_table** %3, align 8
  %140 = getelementptr inbounds %struct.ipath_qp_table, %struct.ipath_qp_table* %139, i32 0, i32 0
  store i32 %138, i32* %140, align 8
  %141 = load i32, i32* %8, align 4
  store i32 %141, i32* %10, align 4
  br label %211

142:                                              ; preds = %127
  %143 = load %struct.qpn_map*, %struct.qpn_map** %9, align 8
  %144 = load i32, i32* %6, align 4
  %145 = call i32 @find_next_offset(%struct.qpn_map* %143, i32 %144)
  store i32 %145, i32* %6, align 4
  %146 = load %struct.ipath_qp_table*, %struct.ipath_qp_table** %3, align 8
  %147 = load %struct.qpn_map*, %struct.qpn_map** %9, align 8
  %148 = load i32, i32* %6, align 4
  %149 = call i32 @mk_qpn(%struct.ipath_qp_table* %146, %struct.qpn_map* %147, i32 %148)
  store i32 %149, i32* %8, align 4
  br label %150

150:                                              ; preds = %142
  %151 = load i32, i32* %6, align 4
  %152 = load i32, i32* @BITS_PER_PAGE, align 4
  %153 = icmp slt i32 %151, %152
  br i1 %153, label %154, label %158

154:                                              ; preds = %150
  %155 = load i32, i32* %8, align 4
  %156 = load i32, i32* @QPN_MAX, align 4
  %157 = icmp slt i32 %155, %156
  br label %158

158:                                              ; preds = %154, %150
  %159 = phi i1 [ false, %150 ], [ %157, %154 ]
  br i1 %159, label %127, label %160

160:                                              ; preds = %158
  br label %161

161:                                              ; preds = %160, %120
  %162 = load i32, i32* %5, align 4
  %163 = add nsw i32 %162, 1
  store i32 %163, i32* %5, align 4
  %164 = load i32, i32* %7, align 4
  %165 = icmp sgt i32 %163, %164
  br i1 %165, label %166, label %183

166:                                              ; preds = %161
  %167 = load %struct.ipath_qp_table*, %struct.ipath_qp_table** %3, align 8
  %168 = getelementptr inbounds %struct.ipath_qp_table, %struct.ipath_qp_table* %167, i32 0, i32 1
  %169 = load i32, i32* %168, align 4
  %170 = load i32, i32* @QPNMAP_ENTRIES, align 4
  %171 = icmp eq i32 %169, %170
  br i1 %171, label %172, label %173

172:                                              ; preds = %166
  br label %208

173:                                              ; preds = %166
  %174 = load %struct.ipath_qp_table*, %struct.ipath_qp_table** %3, align 8
  %175 = getelementptr inbounds %struct.ipath_qp_table, %struct.ipath_qp_table* %174, i32 0, i32 2
  %176 = load %struct.qpn_map*, %struct.qpn_map** %175, align 8
  %177 = load %struct.ipath_qp_table*, %struct.ipath_qp_table** %3, align 8
  %178 = getelementptr inbounds %struct.ipath_qp_table, %struct.ipath_qp_table* %177, i32 0, i32 1
  %179 = load i32, i32* %178, align 4
  %180 = add nsw i32 %179, 1
  store i32 %180, i32* %178, align 4
  %181 = sext i32 %179 to i64
  %182 = getelementptr inbounds %struct.qpn_map, %struct.qpn_map* %176, i64 %181
  store %struct.qpn_map* %182, %struct.qpn_map** %9, align 8
  store i32 0, i32* %6, align 4
  br label %203

183:                                              ; preds = %161
  %184 = load %struct.qpn_map*, %struct.qpn_map** %9, align 8
  %185 = load %struct.ipath_qp_table*, %struct.ipath_qp_table** %3, align 8
  %186 = getelementptr inbounds %struct.ipath_qp_table, %struct.ipath_qp_table* %185, i32 0, i32 2
  %187 = load %struct.qpn_map*, %struct.qpn_map** %186, align 8
  %188 = load %struct.ipath_qp_table*, %struct.ipath_qp_table** %3, align 8
  %189 = getelementptr inbounds %struct.ipath_qp_table, %struct.ipath_qp_table* %188, i32 0, i32 1
  %190 = load i32, i32* %189, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds %struct.qpn_map, %struct.qpn_map* %187, i64 %191
  %193 = icmp ult %struct.qpn_map* %184, %192
  br i1 %193, label %194, label %197

194:                                              ; preds = %183
  %195 = load %struct.qpn_map*, %struct.qpn_map** %9, align 8
  %196 = getelementptr inbounds %struct.qpn_map, %struct.qpn_map* %195, i32 1
  store %struct.qpn_map* %196, %struct.qpn_map** %9, align 8
  store i32 0, i32* %6, align 4
  br label %202

197:                                              ; preds = %183
  %198 = load %struct.ipath_qp_table*, %struct.ipath_qp_table** %3, align 8
  %199 = getelementptr inbounds %struct.ipath_qp_table, %struct.ipath_qp_table* %198, i32 0, i32 2
  %200 = load %struct.qpn_map*, %struct.qpn_map** %199, align 8
  %201 = getelementptr inbounds %struct.qpn_map, %struct.qpn_map* %200, i64 0
  store %struct.qpn_map* %201, %struct.qpn_map** %9, align 8
  store i32 2, i32* %6, align 4
  br label %202

202:                                              ; preds = %197, %194
  br label %203

203:                                              ; preds = %202, %173
  %204 = load %struct.ipath_qp_table*, %struct.ipath_qp_table** %3, align 8
  %205 = load %struct.qpn_map*, %struct.qpn_map** %9, align 8
  %206 = load i32, i32* %6, align 4
  %207 = call i32 @mk_qpn(%struct.ipath_qp_table* %204, %struct.qpn_map* %205, i32 %206)
  store i32 %207, i32* %8, align 4
  br label %97

208:                                              ; preds = %172, %118
  %209 = load i32, i32* @ENOMEM, align 4
  %210 = sub nsw i32 0, %209
  store i32 %210, i32* %10, align 4
  br label %211

211:                                              ; preds = %208, %134, %67, %49
  %212 = load i32, i32* %10, align 4
  ret i32 %212
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @get_map_page(%struct.ipath_qp_table*, %struct.qpn_map*) #1

declare dso_local i32 @test_and_set_bit(i32, i32) #1

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @find_next_offset(%struct.qpn_map*, i32) #1

declare dso_local i32 @mk_qpn(%struct.ipath_qp_table*, %struct.qpn_map*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
