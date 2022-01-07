; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ipath/extr_ipath_keys.c_ipath_rkey_ok.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ipath/extr_ipath_keys.c_ipath_rkey_ok.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipath_qp = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i32 }
%struct.ipath_sge_state = type { i32, i32*, %struct.ipath_sge }
%struct.ipath_sge = type { i32, i32, i32, i32, i8*, %struct.ipath_mregion* }
%struct.ipath_mregion = type { i32, i64, i64, i32, i32, %struct.TYPE_6__**, i64 }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64, i8* }
%struct.ipath_ibdev = type { %struct.ipath_lkey_table }
%struct.ipath_lkey_table = type { %struct.ipath_mregion** }
%struct.ipath_pd = type { i64 }

@ib_ipath_lkey_table_size = common dso_local global i32 0, align 4
@IPATH_SEGSZ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ipath_rkey_ok(%struct.ipath_qp* %0, %struct.ipath_sge_state* %1, i32 %2, i64 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.ipath_qp*, align 8
  %8 = alloca %struct.ipath_sge_state*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.ipath_ibdev*, align 8
  %14 = alloca %struct.ipath_lkey_table*, align 8
  %15 = alloca %struct.ipath_sge*, align 8
  %16 = alloca %struct.ipath_mregion*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  %21 = alloca %struct.ipath_pd*, align 8
  store %struct.ipath_qp* %0, %struct.ipath_qp** %7, align 8
  store %struct.ipath_sge_state* %1, %struct.ipath_sge_state** %8, align 8
  store i32 %2, i32* %9, align 4
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %22 = load %struct.ipath_qp*, %struct.ipath_qp** %7, align 8
  %23 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = call %struct.ipath_ibdev* @to_idev(i32 %25)
  store %struct.ipath_ibdev* %26, %struct.ipath_ibdev** %13, align 8
  %27 = load %struct.ipath_ibdev*, %struct.ipath_ibdev** %13, align 8
  %28 = getelementptr inbounds %struct.ipath_ibdev, %struct.ipath_ibdev* %27, i32 0, i32 0
  store %struct.ipath_lkey_table* %28, %struct.ipath_lkey_table** %14, align 8
  %29 = load %struct.ipath_sge_state*, %struct.ipath_sge_state** %8, align 8
  %30 = getelementptr inbounds %struct.ipath_sge_state, %struct.ipath_sge_state* %29, i32 0, i32 2
  store %struct.ipath_sge* %30, %struct.ipath_sge** %15, align 8
  %31 = load i32, i32* %11, align 4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %61

33:                                               ; preds = %6
  %34 = load %struct.ipath_qp*, %struct.ipath_qp** %7, align 8
  %35 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = call %struct.ipath_pd* @to_ipd(i64 %37)
  store %struct.ipath_pd* %38, %struct.ipath_pd** %21, align 8
  %39 = load %struct.ipath_pd*, %struct.ipath_pd** %21, align 8
  %40 = getelementptr inbounds %struct.ipath_pd, %struct.ipath_pd* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %33
  store i32 0, i32* %20, align 4
  br label %232

44:                                               ; preds = %33
  %45 = load %struct.ipath_sge*, %struct.ipath_sge** %15, align 8
  %46 = getelementptr inbounds %struct.ipath_sge, %struct.ipath_sge* %45, i32 0, i32 5
  store %struct.ipath_mregion* null, %struct.ipath_mregion** %46, align 8
  %47 = load i64, i64* %10, align 8
  %48 = inttoptr i64 %47 to i8*
  %49 = load %struct.ipath_sge*, %struct.ipath_sge** %15, align 8
  %50 = getelementptr inbounds %struct.ipath_sge, %struct.ipath_sge* %49, i32 0, i32 4
  store i8* %48, i8** %50, align 8
  %51 = load i32, i32* %9, align 4
  %52 = load %struct.ipath_sge*, %struct.ipath_sge** %15, align 8
  %53 = getelementptr inbounds %struct.ipath_sge, %struct.ipath_sge* %52, i32 0, i32 0
  store i32 %51, i32* %53, align 8
  %54 = load i32, i32* %9, align 4
  %55 = load %struct.ipath_sge*, %struct.ipath_sge** %15, align 8
  %56 = getelementptr inbounds %struct.ipath_sge, %struct.ipath_sge* %55, i32 0, i32 1
  store i32 %54, i32* %56, align 4
  %57 = load %struct.ipath_sge_state*, %struct.ipath_sge_state** %8, align 8
  %58 = getelementptr inbounds %struct.ipath_sge_state, %struct.ipath_sge_state* %57, i32 0, i32 1
  store i32* null, i32** %58, align 8
  %59 = load %struct.ipath_sge_state*, %struct.ipath_sge_state** %8, align 8
  %60 = getelementptr inbounds %struct.ipath_sge_state, %struct.ipath_sge_state* %59, i32 0, i32 0
  store i32 1, i32* %60, align 8
  store i32 1, i32* %20, align 4
  br label %232

61:                                               ; preds = %6
  %62 = load %struct.ipath_lkey_table*, %struct.ipath_lkey_table** %14, align 8
  %63 = getelementptr inbounds %struct.ipath_lkey_table, %struct.ipath_lkey_table* %62, i32 0, i32 0
  %64 = load %struct.ipath_mregion**, %struct.ipath_mregion*** %63, align 8
  %65 = load i32, i32* %11, align 4
  %66 = load i32, i32* @ib_ipath_lkey_table_size, align 4
  %67 = sub nsw i32 32, %66
  %68 = ashr i32 %65, %67
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.ipath_mregion*, %struct.ipath_mregion** %64, i64 %69
  %71 = load %struct.ipath_mregion*, %struct.ipath_mregion** %70, align 8
  store %struct.ipath_mregion* %71, %struct.ipath_mregion** %16, align 8
  %72 = load %struct.ipath_mregion*, %struct.ipath_mregion** %16, align 8
  %73 = icmp eq %struct.ipath_mregion* %72, null
  br i1 %73, label %89, label %74

74:                                               ; preds = %61
  %75 = load %struct.ipath_mregion*, %struct.ipath_mregion** %16, align 8
  %76 = getelementptr inbounds %struct.ipath_mregion, %struct.ipath_mregion* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* %11, align 4
  %79 = icmp ne i32 %77, %78
  br i1 %79, label %89, label %80

80:                                               ; preds = %74
  %81 = load %struct.ipath_qp*, %struct.ipath_qp** %7, align 8
  %82 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load %struct.ipath_mregion*, %struct.ipath_mregion** %16, align 8
  %86 = getelementptr inbounds %struct.ipath_mregion, %struct.ipath_mregion* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = icmp ne i64 %84, %87
  br label %89

89:                                               ; preds = %80, %74, %61
  %90 = phi i1 [ true, %74 ], [ true, %61 ], [ %88, %80 ]
  %91 = zext i1 %90 to i32
  %92 = call i64 @unlikely(i32 %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %89
  store i32 0, i32* %20, align 4
  br label %232

95:                                               ; preds = %89
  %96 = load i64, i64* %10, align 8
  %97 = load %struct.ipath_mregion*, %struct.ipath_mregion** %16, align 8
  %98 = getelementptr inbounds %struct.ipath_mregion, %struct.ipath_mregion* %97, i32 0, i32 2
  %99 = load i64, i64* %98, align 8
  %100 = sub nsw i64 %96, %99
  store i64 %100, i64* %19, align 8
  %101 = load i64, i64* %10, align 8
  %102 = load %struct.ipath_mregion*, %struct.ipath_mregion** %16, align 8
  %103 = getelementptr inbounds %struct.ipath_mregion, %struct.ipath_mregion* %102, i32 0, i32 2
  %104 = load i64, i64* %103, align 8
  %105 = icmp slt i64 %101, %104
  br i1 %105, label %123, label %106

106:                                              ; preds = %95
  %107 = load i64, i64* %19, align 8
  %108 = load i32, i32* %9, align 4
  %109 = sext i32 %108 to i64
  %110 = add i64 %107, %109
  %111 = load %struct.ipath_mregion*, %struct.ipath_mregion** %16, align 8
  %112 = getelementptr inbounds %struct.ipath_mregion, %struct.ipath_mregion* %111, i32 0, i32 3
  %113 = load i32, i32* %112, align 8
  %114 = sext i32 %113 to i64
  %115 = icmp ugt i64 %110, %114
  br i1 %115, label %123, label %116

116:                                              ; preds = %106
  %117 = load %struct.ipath_mregion*, %struct.ipath_mregion** %16, align 8
  %118 = getelementptr inbounds %struct.ipath_mregion, %struct.ipath_mregion* %117, i32 0, i32 4
  %119 = load i32, i32* %118, align 4
  %120 = load i32, i32* %12, align 4
  %121 = and i32 %119, %120
  %122 = icmp eq i32 %121, 0
  br label %123

123:                                              ; preds = %116, %106, %95
  %124 = phi i1 [ true, %106 ], [ true, %95 ], [ %122, %116 ]
  %125 = zext i1 %124 to i32
  %126 = call i64 @unlikely(i32 %125)
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %129

128:                                              ; preds = %123
  store i32 0, i32* %20, align 4
  br label %232

129:                                              ; preds = %123
  %130 = load %struct.ipath_mregion*, %struct.ipath_mregion** %16, align 8
  %131 = getelementptr inbounds %struct.ipath_mregion, %struct.ipath_mregion* %130, i32 0, i32 6
  %132 = load i64, i64* %131, align 8
  %133 = load i64, i64* %19, align 8
  %134 = add i64 %133, %132
  store i64 %134, i64* %19, align 8
  store i32 0, i32* %18, align 4
  store i32 0, i32* %17, align 4
  br label %135

135:                                              ; preds = %177, %129
  %136 = load i64, i64* %19, align 8
  %137 = load %struct.ipath_mregion*, %struct.ipath_mregion** %16, align 8
  %138 = getelementptr inbounds %struct.ipath_mregion, %struct.ipath_mregion* %137, i32 0, i32 5
  %139 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %138, align 8
  %140 = load i32, i32* %18, align 4
  %141 = zext i32 %140 to i64
  %142 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %139, i64 %141
  %143 = load %struct.TYPE_6__*, %struct.TYPE_6__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %143, i32 0, i32 0
  %145 = load %struct.TYPE_5__*, %struct.TYPE_5__** %144, align 8
  %146 = load i32, i32* %17, align 4
  %147 = zext i32 %146 to i64
  %148 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %145, i64 %147
  %149 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %148, i32 0, i32 0
  %150 = load i64, i64* %149, align 8
  %151 = icmp uge i64 %136, %150
  br i1 %151, label %152, label %178

152:                                              ; preds = %135
  %153 = load %struct.ipath_mregion*, %struct.ipath_mregion** %16, align 8
  %154 = getelementptr inbounds %struct.ipath_mregion, %struct.ipath_mregion* %153, i32 0, i32 5
  %155 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %154, align 8
  %156 = load i32, i32* %18, align 4
  %157 = zext i32 %156 to i64
  %158 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %155, i64 %157
  %159 = load %struct.TYPE_6__*, %struct.TYPE_6__** %158, align 8
  %160 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %159, i32 0, i32 0
  %161 = load %struct.TYPE_5__*, %struct.TYPE_5__** %160, align 8
  %162 = load i32, i32* %17, align 4
  %163 = zext i32 %162 to i64
  %164 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %161, i64 %163
  %165 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %164, i32 0, i32 0
  %166 = load i64, i64* %165, align 8
  %167 = load i64, i64* %19, align 8
  %168 = sub i64 %167, %166
  store i64 %168, i64* %19, align 8
  %169 = load i32, i32* %17, align 4
  %170 = add i32 %169, 1
  store i32 %170, i32* %17, align 4
  %171 = load i32, i32* %17, align 4
  %172 = load i32, i32* @IPATH_SEGSZ, align 4
  %173 = icmp uge i32 %171, %172
  br i1 %173, label %174, label %177

174:                                              ; preds = %152
  %175 = load i32, i32* %18, align 4
  %176 = add i32 %175, 1
  store i32 %176, i32* %18, align 4
  store i32 0, i32* %17, align 4
  br label %177

177:                                              ; preds = %174, %152
  br label %135

178:                                              ; preds = %135
  %179 = load %struct.ipath_mregion*, %struct.ipath_mregion** %16, align 8
  %180 = load %struct.ipath_sge*, %struct.ipath_sge** %15, align 8
  %181 = getelementptr inbounds %struct.ipath_sge, %struct.ipath_sge* %180, i32 0, i32 5
  store %struct.ipath_mregion* %179, %struct.ipath_mregion** %181, align 8
  %182 = load %struct.ipath_mregion*, %struct.ipath_mregion** %16, align 8
  %183 = getelementptr inbounds %struct.ipath_mregion, %struct.ipath_mregion* %182, i32 0, i32 5
  %184 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %183, align 8
  %185 = load i32, i32* %18, align 4
  %186 = zext i32 %185 to i64
  %187 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %184, i64 %186
  %188 = load %struct.TYPE_6__*, %struct.TYPE_6__** %187, align 8
  %189 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %188, i32 0, i32 0
  %190 = load %struct.TYPE_5__*, %struct.TYPE_5__** %189, align 8
  %191 = load i32, i32* %17, align 4
  %192 = zext i32 %191 to i64
  %193 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %190, i64 %192
  %194 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %193, i32 0, i32 1
  %195 = load i8*, i8** %194, align 8
  %196 = load i64, i64* %19, align 8
  %197 = getelementptr i8, i8* %195, i64 %196
  %198 = load %struct.ipath_sge*, %struct.ipath_sge** %15, align 8
  %199 = getelementptr inbounds %struct.ipath_sge, %struct.ipath_sge* %198, i32 0, i32 4
  store i8* %197, i8** %199, align 8
  %200 = load %struct.ipath_mregion*, %struct.ipath_mregion** %16, align 8
  %201 = getelementptr inbounds %struct.ipath_mregion, %struct.ipath_mregion* %200, i32 0, i32 5
  %202 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %201, align 8
  %203 = load i32, i32* %18, align 4
  %204 = zext i32 %203 to i64
  %205 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %202, i64 %204
  %206 = load %struct.TYPE_6__*, %struct.TYPE_6__** %205, align 8
  %207 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %206, i32 0, i32 0
  %208 = load %struct.TYPE_5__*, %struct.TYPE_5__** %207, align 8
  %209 = load i32, i32* %17, align 4
  %210 = zext i32 %209 to i64
  %211 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %208, i64 %210
  %212 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %211, i32 0, i32 0
  %213 = load i64, i64* %212, align 8
  %214 = load i64, i64* %19, align 8
  %215 = sub i64 %213, %214
  %216 = trunc i64 %215 to i32
  %217 = load %struct.ipath_sge*, %struct.ipath_sge** %15, align 8
  %218 = getelementptr inbounds %struct.ipath_sge, %struct.ipath_sge* %217, i32 0, i32 0
  store i32 %216, i32* %218, align 8
  %219 = load i32, i32* %9, align 4
  %220 = load %struct.ipath_sge*, %struct.ipath_sge** %15, align 8
  %221 = getelementptr inbounds %struct.ipath_sge, %struct.ipath_sge* %220, i32 0, i32 1
  store i32 %219, i32* %221, align 4
  %222 = load i32, i32* %18, align 4
  %223 = load %struct.ipath_sge*, %struct.ipath_sge** %15, align 8
  %224 = getelementptr inbounds %struct.ipath_sge, %struct.ipath_sge* %223, i32 0, i32 2
  store i32 %222, i32* %224, align 8
  %225 = load i32, i32* %17, align 4
  %226 = load %struct.ipath_sge*, %struct.ipath_sge** %15, align 8
  %227 = getelementptr inbounds %struct.ipath_sge, %struct.ipath_sge* %226, i32 0, i32 3
  store i32 %225, i32* %227, align 4
  %228 = load %struct.ipath_sge_state*, %struct.ipath_sge_state** %8, align 8
  %229 = getelementptr inbounds %struct.ipath_sge_state, %struct.ipath_sge_state* %228, i32 0, i32 1
  store i32* null, i32** %229, align 8
  %230 = load %struct.ipath_sge_state*, %struct.ipath_sge_state** %8, align 8
  %231 = getelementptr inbounds %struct.ipath_sge_state, %struct.ipath_sge_state* %230, i32 0, i32 0
  store i32 1, i32* %231, align 8
  store i32 1, i32* %20, align 4
  br label %232

232:                                              ; preds = %178, %128, %94, %44, %43
  %233 = load i32, i32* %20, align 4
  ret i32 %233
}

declare dso_local %struct.ipath_ibdev* @to_idev(i32) #1

declare dso_local %struct.ipath_pd* @to_ipd(i64) #1

declare dso_local i64 @unlikely(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
