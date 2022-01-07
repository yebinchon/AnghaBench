; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ipath/extr_ipath_keys.c_ipath_lkey_ok.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ipath/extr_ipath_keys.c_ipath_lkey_ok.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipath_qp = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64, i32 }
%struct.ipath_sge = type { i64, i64, i32, i32, i8*, %struct.ipath_mregion* }
%struct.ipath_mregion = type { i32, i64, i64, i64, i32, %struct.TYPE_7__**, i64 }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64, i8* }
%struct.ib_sge = type { i32, i64, i64 }
%struct.ipath_lkey_table = type { %struct.ipath_mregion** }
%struct.ipath_pd = type { i64 }
%struct.TYPE_8__ = type { %struct.ipath_lkey_table }

@ib_ipath_lkey_table_size = common dso_local global i32 0, align 4
@IPATH_SEGSZ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ipath_lkey_ok(%struct.ipath_qp* %0, %struct.ipath_sge* %1, %struct.ib_sge* %2, i32 %3) #0 {
  %5 = alloca %struct.ipath_qp*, align 8
  %6 = alloca %struct.ipath_sge*, align 8
  %7 = alloca %struct.ib_sge*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ipath_lkey_table*, align 8
  %10 = alloca %struct.ipath_mregion*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.ipath_pd*, align 8
  store %struct.ipath_qp* %0, %struct.ipath_qp** %5, align 8
  store %struct.ipath_sge* %1, %struct.ipath_sge** %6, align 8
  store %struct.ib_sge* %2, %struct.ib_sge** %7, align 8
  store i32 %3, i32* %8, align 4
  %16 = load %struct.ipath_qp*, %struct.ipath_qp** %5, align 8
  %17 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = call %struct.TYPE_8__* @to_idev(i32 %19)
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 0
  store %struct.ipath_lkey_table* %21, %struct.ipath_lkey_table** %9, align 8
  %22 = load %struct.ib_sge*, %struct.ib_sge** %7, align 8
  %23 = getelementptr inbounds %struct.ib_sge, %struct.ib_sge* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %56

26:                                               ; preds = %4
  %27 = load %struct.ipath_qp*, %struct.ipath_qp** %5, align 8
  %28 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = call %struct.ipath_pd* @to_ipd(i64 %30)
  store %struct.ipath_pd* %31, %struct.ipath_pd** %15, align 8
  %32 = load %struct.ipath_pd*, %struct.ipath_pd** %15, align 8
  %33 = getelementptr inbounds %struct.ipath_pd, %struct.ipath_pd* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %26
  store i32 0, i32* %14, align 4
  br label %233

37:                                               ; preds = %26
  %38 = load %struct.ipath_sge*, %struct.ipath_sge** %6, align 8
  %39 = getelementptr inbounds %struct.ipath_sge, %struct.ipath_sge* %38, i32 0, i32 5
  store %struct.ipath_mregion* null, %struct.ipath_mregion** %39, align 8
  %40 = load %struct.ib_sge*, %struct.ib_sge** %7, align 8
  %41 = getelementptr inbounds %struct.ib_sge, %struct.ib_sge* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = inttoptr i64 %42 to i8*
  %44 = load %struct.ipath_sge*, %struct.ipath_sge** %6, align 8
  %45 = getelementptr inbounds %struct.ipath_sge, %struct.ipath_sge* %44, i32 0, i32 4
  store i8* %43, i8** %45, align 8
  %46 = load %struct.ib_sge*, %struct.ib_sge** %7, align 8
  %47 = getelementptr inbounds %struct.ib_sge, %struct.ib_sge* %46, i32 0, i32 2
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.ipath_sge*, %struct.ipath_sge** %6, align 8
  %50 = getelementptr inbounds %struct.ipath_sge, %struct.ipath_sge* %49, i32 0, i32 0
  store i64 %48, i64* %50, align 8
  %51 = load %struct.ib_sge*, %struct.ib_sge** %7, align 8
  %52 = getelementptr inbounds %struct.ib_sge, %struct.ib_sge* %51, i32 0, i32 2
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.ipath_sge*, %struct.ipath_sge** %6, align 8
  %55 = getelementptr inbounds %struct.ipath_sge, %struct.ipath_sge* %54, i32 0, i32 1
  store i64 %53, i64* %55, align 8
  store i32 1, i32* %14, align 4
  br label %233

56:                                               ; preds = %4
  %57 = load %struct.ipath_lkey_table*, %struct.ipath_lkey_table** %9, align 8
  %58 = getelementptr inbounds %struct.ipath_lkey_table, %struct.ipath_lkey_table* %57, i32 0, i32 0
  %59 = load %struct.ipath_mregion**, %struct.ipath_mregion*** %58, align 8
  %60 = load %struct.ib_sge*, %struct.ib_sge** %7, align 8
  %61 = getelementptr inbounds %struct.ib_sge, %struct.ib_sge* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* @ib_ipath_lkey_table_size, align 4
  %64 = sub nsw i32 32, %63
  %65 = ashr i32 %62, %64
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.ipath_mregion*, %struct.ipath_mregion** %59, i64 %66
  %68 = load %struct.ipath_mregion*, %struct.ipath_mregion** %67, align 8
  store %struct.ipath_mregion* %68, %struct.ipath_mregion** %10, align 8
  %69 = load %struct.ipath_mregion*, %struct.ipath_mregion** %10, align 8
  %70 = icmp eq %struct.ipath_mregion* %69, null
  br i1 %70, label %88, label %71

71:                                               ; preds = %56
  %72 = load %struct.ipath_mregion*, %struct.ipath_mregion** %10, align 8
  %73 = getelementptr inbounds %struct.ipath_mregion, %struct.ipath_mregion* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.ib_sge*, %struct.ib_sge** %7, align 8
  %76 = getelementptr inbounds %struct.ib_sge, %struct.ib_sge* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = icmp ne i32 %74, %77
  br i1 %78, label %88, label %79

79:                                               ; preds = %71
  %80 = load %struct.ipath_qp*, %struct.ipath_qp** %5, align 8
  %81 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load %struct.ipath_mregion*, %struct.ipath_mregion** %10, align 8
  %85 = getelementptr inbounds %struct.ipath_mregion, %struct.ipath_mregion* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = icmp ne i64 %83, %86
  br label %88

88:                                               ; preds = %79, %71, %56
  %89 = phi i1 [ true, %71 ], [ true, %56 ], [ %87, %79 ]
  %90 = zext i1 %89 to i32
  %91 = call i64 @unlikely(i32 %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %88
  store i32 0, i32* %14, align 4
  br label %233

94:                                               ; preds = %88
  %95 = load %struct.ib_sge*, %struct.ib_sge** %7, align 8
  %96 = getelementptr inbounds %struct.ib_sge, %struct.ib_sge* %95, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = load %struct.ipath_mregion*, %struct.ipath_mregion** %10, align 8
  %99 = getelementptr inbounds %struct.ipath_mregion, %struct.ipath_mregion* %98, i32 0, i32 2
  %100 = load i64, i64* %99, align 8
  %101 = sub i64 %97, %100
  store i64 %101, i64* %13, align 8
  %102 = load %struct.ib_sge*, %struct.ib_sge** %7, align 8
  %103 = getelementptr inbounds %struct.ib_sge, %struct.ib_sge* %102, i32 0, i32 1
  %104 = load i64, i64* %103, align 8
  %105 = load %struct.ipath_mregion*, %struct.ipath_mregion** %10, align 8
  %106 = getelementptr inbounds %struct.ipath_mregion, %struct.ipath_mregion* %105, i32 0, i32 2
  %107 = load i64, i64* %106, align 8
  %108 = icmp ult i64 %104, %107
  br i1 %108, label %127, label %109

109:                                              ; preds = %94
  %110 = load i64, i64* %13, align 8
  %111 = load %struct.ib_sge*, %struct.ib_sge** %7, align 8
  %112 = getelementptr inbounds %struct.ib_sge, %struct.ib_sge* %111, i32 0, i32 2
  %113 = load i64, i64* %112, align 8
  %114 = add i64 %110, %113
  %115 = load %struct.ipath_mregion*, %struct.ipath_mregion** %10, align 8
  %116 = getelementptr inbounds %struct.ipath_mregion, %struct.ipath_mregion* %115, i32 0, i32 3
  %117 = load i64, i64* %116, align 8
  %118 = icmp ugt i64 %114, %117
  br i1 %118, label %127, label %119

119:                                              ; preds = %109
  %120 = load %struct.ipath_mregion*, %struct.ipath_mregion** %10, align 8
  %121 = getelementptr inbounds %struct.ipath_mregion, %struct.ipath_mregion* %120, i32 0, i32 4
  %122 = load i32, i32* %121, align 8
  %123 = load i32, i32* %8, align 4
  %124 = and i32 %122, %123
  %125 = load i32, i32* %8, align 4
  %126 = icmp ne i32 %124, %125
  br label %127

127:                                              ; preds = %119, %109, %94
  %128 = phi i1 [ true, %109 ], [ true, %94 ], [ %126, %119 ]
  %129 = zext i1 %128 to i32
  %130 = call i64 @unlikely(i32 %129)
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %133

132:                                              ; preds = %127
  store i32 0, i32* %14, align 4
  br label %233

133:                                              ; preds = %127
  %134 = load %struct.ipath_mregion*, %struct.ipath_mregion** %10, align 8
  %135 = getelementptr inbounds %struct.ipath_mregion, %struct.ipath_mregion* %134, i32 0, i32 6
  %136 = load i64, i64* %135, align 8
  %137 = load i64, i64* %13, align 8
  %138 = add i64 %137, %136
  store i64 %138, i64* %13, align 8
  store i32 0, i32* %12, align 4
  store i32 0, i32* %11, align 4
  br label %139

139:                                              ; preds = %181, %133
  %140 = load i64, i64* %13, align 8
  %141 = load %struct.ipath_mregion*, %struct.ipath_mregion** %10, align 8
  %142 = getelementptr inbounds %struct.ipath_mregion, %struct.ipath_mregion* %141, i32 0, i32 5
  %143 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %142, align 8
  %144 = load i32, i32* %12, align 4
  %145 = zext i32 %144 to i64
  %146 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %143, i64 %145
  %147 = load %struct.TYPE_7__*, %struct.TYPE_7__** %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %147, i32 0, i32 0
  %149 = load %struct.TYPE_6__*, %struct.TYPE_6__** %148, align 8
  %150 = load i32, i32* %11, align 4
  %151 = zext i32 %150 to i64
  %152 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %149, i64 %151
  %153 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %152, i32 0, i32 0
  %154 = load i64, i64* %153, align 8
  %155 = icmp uge i64 %140, %154
  br i1 %155, label %156, label %182

156:                                              ; preds = %139
  %157 = load %struct.ipath_mregion*, %struct.ipath_mregion** %10, align 8
  %158 = getelementptr inbounds %struct.ipath_mregion, %struct.ipath_mregion* %157, i32 0, i32 5
  %159 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %158, align 8
  %160 = load i32, i32* %12, align 4
  %161 = zext i32 %160 to i64
  %162 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %159, i64 %161
  %163 = load %struct.TYPE_7__*, %struct.TYPE_7__** %162, align 8
  %164 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %163, i32 0, i32 0
  %165 = load %struct.TYPE_6__*, %struct.TYPE_6__** %164, align 8
  %166 = load i32, i32* %11, align 4
  %167 = zext i32 %166 to i64
  %168 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %165, i64 %167
  %169 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %168, i32 0, i32 0
  %170 = load i64, i64* %169, align 8
  %171 = load i64, i64* %13, align 8
  %172 = sub i64 %171, %170
  store i64 %172, i64* %13, align 8
  %173 = load i32, i32* %11, align 4
  %174 = add i32 %173, 1
  store i32 %174, i32* %11, align 4
  %175 = load i32, i32* %11, align 4
  %176 = load i32, i32* @IPATH_SEGSZ, align 4
  %177 = icmp uge i32 %175, %176
  br i1 %177, label %178, label %181

178:                                              ; preds = %156
  %179 = load i32, i32* %12, align 4
  %180 = add i32 %179, 1
  store i32 %180, i32* %12, align 4
  store i32 0, i32* %11, align 4
  br label %181

181:                                              ; preds = %178, %156
  br label %139

182:                                              ; preds = %139
  %183 = load %struct.ipath_mregion*, %struct.ipath_mregion** %10, align 8
  %184 = load %struct.ipath_sge*, %struct.ipath_sge** %6, align 8
  %185 = getelementptr inbounds %struct.ipath_sge, %struct.ipath_sge* %184, i32 0, i32 5
  store %struct.ipath_mregion* %183, %struct.ipath_mregion** %185, align 8
  %186 = load %struct.ipath_mregion*, %struct.ipath_mregion** %10, align 8
  %187 = getelementptr inbounds %struct.ipath_mregion, %struct.ipath_mregion* %186, i32 0, i32 5
  %188 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %187, align 8
  %189 = load i32, i32* %12, align 4
  %190 = zext i32 %189 to i64
  %191 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %188, i64 %190
  %192 = load %struct.TYPE_7__*, %struct.TYPE_7__** %191, align 8
  %193 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %192, i32 0, i32 0
  %194 = load %struct.TYPE_6__*, %struct.TYPE_6__** %193, align 8
  %195 = load i32, i32* %11, align 4
  %196 = zext i32 %195 to i64
  %197 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %194, i64 %196
  %198 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %197, i32 0, i32 1
  %199 = load i8*, i8** %198, align 8
  %200 = load i64, i64* %13, align 8
  %201 = getelementptr i8, i8* %199, i64 %200
  %202 = load %struct.ipath_sge*, %struct.ipath_sge** %6, align 8
  %203 = getelementptr inbounds %struct.ipath_sge, %struct.ipath_sge* %202, i32 0, i32 4
  store i8* %201, i8** %203, align 8
  %204 = load %struct.ipath_mregion*, %struct.ipath_mregion** %10, align 8
  %205 = getelementptr inbounds %struct.ipath_mregion, %struct.ipath_mregion* %204, i32 0, i32 5
  %206 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %205, align 8
  %207 = load i32, i32* %12, align 4
  %208 = zext i32 %207 to i64
  %209 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %206, i64 %208
  %210 = load %struct.TYPE_7__*, %struct.TYPE_7__** %209, align 8
  %211 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %210, i32 0, i32 0
  %212 = load %struct.TYPE_6__*, %struct.TYPE_6__** %211, align 8
  %213 = load i32, i32* %11, align 4
  %214 = zext i32 %213 to i64
  %215 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %212, i64 %214
  %216 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %215, i32 0, i32 0
  %217 = load i64, i64* %216, align 8
  %218 = load i64, i64* %13, align 8
  %219 = sub i64 %217, %218
  %220 = load %struct.ipath_sge*, %struct.ipath_sge** %6, align 8
  %221 = getelementptr inbounds %struct.ipath_sge, %struct.ipath_sge* %220, i32 0, i32 0
  store i64 %219, i64* %221, align 8
  %222 = load %struct.ib_sge*, %struct.ib_sge** %7, align 8
  %223 = getelementptr inbounds %struct.ib_sge, %struct.ib_sge* %222, i32 0, i32 2
  %224 = load i64, i64* %223, align 8
  %225 = load %struct.ipath_sge*, %struct.ipath_sge** %6, align 8
  %226 = getelementptr inbounds %struct.ipath_sge, %struct.ipath_sge* %225, i32 0, i32 1
  store i64 %224, i64* %226, align 8
  %227 = load i32, i32* %12, align 4
  %228 = load %struct.ipath_sge*, %struct.ipath_sge** %6, align 8
  %229 = getelementptr inbounds %struct.ipath_sge, %struct.ipath_sge* %228, i32 0, i32 2
  store i32 %227, i32* %229, align 8
  %230 = load i32, i32* %11, align 4
  %231 = load %struct.ipath_sge*, %struct.ipath_sge** %6, align 8
  %232 = getelementptr inbounds %struct.ipath_sge, %struct.ipath_sge* %231, i32 0, i32 3
  store i32 %230, i32* %232, align 4
  store i32 1, i32* %14, align 4
  br label %233

233:                                              ; preds = %182, %132, %93, %37, %36
  %234 = load i32, i32* %14, align 4
  ret i32 %234
}

declare dso_local %struct.TYPE_8__* @to_idev(i32) #1

declare dso_local %struct.ipath_pd* @to_ipd(i64) #1

declare dso_local i64 @unlikely(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
