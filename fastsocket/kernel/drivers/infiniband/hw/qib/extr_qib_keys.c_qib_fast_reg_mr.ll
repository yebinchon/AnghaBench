; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_keys.c_qib_fast_reg_mr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_keys.c_qib_fast_reg_mr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qib_qp = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64, i32 }
%struct.ib_send_wr = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, i64, i64, i64, %struct.TYPE_9__*, i32, i32 }
%struct.TYPE_9__ = type { i64* }
%struct.qib_lkey_table = type { i32, i32* }
%struct.qib_pd = type { i64 }
%struct.qib_mregion = type { i64, i64, i32, i64, %struct.TYPE_13__**, i32, i32, i32 }
%struct.TYPE_13__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i64, i8* }
%struct.TYPE_14__ = type { %struct.qib_lkey_table }

@EINVAL = common dso_local global i32 0, align 4
@ib_qib_lkey_table_size = common dso_local global i32 0, align 4
@QIB_SEGSZ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qib_fast_reg_mr(%struct.qib_qp* %0, %struct.ib_send_wr* %1) #0 {
  %3 = alloca %struct.qib_qp*, align 8
  %4 = alloca %struct.ib_send_wr*, align 8
  %5 = alloca %struct.qib_lkey_table*, align 8
  %6 = alloca %struct.qib_pd*, align 8
  %7 = alloca %struct.qib_mregion*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64*, align 8
  %15 = alloca i64, align 8
  store %struct.qib_qp* %0, %struct.qib_qp** %3, align 8
  store %struct.ib_send_wr* %1, %struct.ib_send_wr** %4, align 8
  %16 = load %struct.qib_qp*, %struct.qib_qp** %3, align 8
  %17 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = call %struct.TYPE_14__* @to_idev(i32 %19)
  %21 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %20, i32 0, i32 0
  store %struct.qib_lkey_table* %21, %struct.qib_lkey_table** %5, align 8
  %22 = load %struct.qib_qp*, %struct.qib_qp** %3, align 8
  %23 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = call %struct.qib_pd* @to_ipd(i64 %25)
  store %struct.qib_pd* %26, %struct.qib_pd** %6, align 8
  %27 = load %struct.ib_send_wr*, %struct.ib_send_wr** %4, align 8
  %28 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  store i32 %31, i32* %8, align 4
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %12, align 4
  %34 = load %struct.qib_lkey_table*, %struct.qib_lkey_table** %5, align 8
  %35 = getelementptr inbounds %struct.qib_lkey_table, %struct.qib_lkey_table* %34, i32 0, i32 0
  %36 = load i64, i64* %13, align 8
  %37 = call i32 @spin_lock_irqsave(i32* %35, i64 %36)
  %38 = load %struct.qib_pd*, %struct.qib_pd** %6, align 8
  %39 = getelementptr inbounds %struct.qib_pd, %struct.qib_pd* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %45, label %42

42:                                               ; preds = %2
  %43 = load i32, i32* %8, align 4
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %42, %2
  br label %204

46:                                               ; preds = %42
  %47 = load %struct.qib_lkey_table*, %struct.qib_lkey_table** %5, align 8
  %48 = getelementptr inbounds %struct.qib_lkey_table, %struct.qib_lkey_table* %47, i32 0, i32 1
  %49 = load i32*, i32** %48, align 8
  %50 = load i32, i32* %8, align 4
  %51 = load i32, i32* @ib_qib_lkey_table_size, align 4
  %52 = sub nsw i32 32, %51
  %53 = ashr i32 %50, %52
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %49, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.qib_lkey_table*, %struct.qib_lkey_table** %5, align 8
  %58 = getelementptr inbounds %struct.qib_lkey_table, %struct.qib_lkey_table* %57, i32 0, i32 0
  %59 = call i32 @lockdep_is_held(i32* %58)
  %60 = call %struct.qib_mregion* @rcu_dereference_protected(i32 %56, i32 %59)
  store %struct.qib_mregion* %60, %struct.qib_mregion** %7, align 8
  %61 = load %struct.qib_mregion*, %struct.qib_mregion** %7, align 8
  %62 = icmp eq %struct.qib_mregion* %61, null
  br i1 %62, label %72, label %63

63:                                               ; preds = %46
  %64 = load %struct.qib_qp*, %struct.qib_qp** %3, align 8
  %65 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load %struct.qib_mregion*, %struct.qib_mregion** %7, align 8
  %69 = getelementptr inbounds %struct.qib_mregion, %struct.qib_mregion* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %67, %70
  br label %72

72:                                               ; preds = %63, %46
  %73 = phi i1 [ true, %46 ], [ %71, %63 ]
  %74 = zext i1 %73 to i32
  %75 = call i64 @unlikely(i32 %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %72
  br label %204

78:                                               ; preds = %72
  %79 = load %struct.ib_send_wr*, %struct.ib_send_wr** %4, align 8
  %80 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = load %struct.qib_mregion*, %struct.qib_mregion** %7, align 8
  %85 = getelementptr inbounds %struct.qib_mregion, %struct.qib_mregion* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = icmp ugt i64 %83, %86
  br i1 %87, label %88, label %89

88:                                               ; preds = %78
  br label %204

89:                                               ; preds = %78
  %90 = load %struct.ib_send_wr*, %struct.ib_send_wr** %4, align 8
  %91 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %92, i32 0, i32 2
  %94 = load i64, i64* %93, align 8
  %95 = shl i64 1, %94
  store i64 %95, i64* %15, align 8
  %96 = load %struct.ib_send_wr*, %struct.ib_send_wr** %4, align 8
  %97 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %98, i32 0, i32 3
  %100 = load i64, i64* %99, align 8
  %101 = load i64, i64* %15, align 8
  %102 = load %struct.ib_send_wr*, %struct.ib_send_wr** %4, align 8
  %103 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %104, i32 0, i32 1
  %106 = load i64, i64* %105, align 8
  %107 = mul i64 %101, %106
  %108 = icmp ugt i64 %100, %107
  br i1 %108, label %109, label %110

109:                                              ; preds = %89
  br label %204

110:                                              ; preds = %89
  %111 = load %struct.ib_send_wr*, %struct.ib_send_wr** %4, align 8
  %112 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %113, i32 0, i32 6
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.qib_mregion*, %struct.qib_mregion** %7, align 8
  %117 = getelementptr inbounds %struct.qib_mregion, %struct.qib_mregion* %116, i32 0, i32 7
  store i32 %115, i32* %117, align 8
  %118 = load %struct.ib_send_wr*, %struct.ib_send_wr** %4, align 8
  %119 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %120, i32 0, i32 6
  %122 = load i32, i32* %121, align 4
  %123 = load %struct.qib_mregion*, %struct.qib_mregion** %7, align 8
  %124 = getelementptr inbounds %struct.qib_mregion, %struct.qib_mregion* %123, i32 0, i32 6
  store i32 %122, i32* %124, align 4
  %125 = load i32, i32* %8, align 4
  %126 = load %struct.qib_mregion*, %struct.qib_mregion** %7, align 8
  %127 = getelementptr inbounds %struct.qib_mregion, %struct.qib_mregion* %126, i32 0, i32 2
  store i32 %125, i32* %127, align 8
  %128 = load %struct.ib_send_wr*, %struct.ib_send_wr** %4, align 8
  %129 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %130, i32 0, i32 3
  %132 = load i64, i64* %131, align 8
  %133 = load %struct.qib_mregion*, %struct.qib_mregion** %7, align 8
  %134 = getelementptr inbounds %struct.qib_mregion, %struct.qib_mregion* %133, i32 0, i32 3
  store i64 %132, i64* %134, align 8
  %135 = load %struct.ib_send_wr*, %struct.ib_send_wr** %4, align 8
  %136 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %137, i32 0, i32 5
  %139 = load i32, i32* %138, align 8
  %140 = load %struct.qib_mregion*, %struct.qib_mregion** %7, align 8
  %141 = getelementptr inbounds %struct.qib_mregion, %struct.qib_mregion* %140, i32 0, i32 5
  store i32 %139, i32* %141, align 8
  %142 = load %struct.ib_send_wr*, %struct.ib_send_wr** %4, align 8
  %143 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %142, i32 0, i32 0
  %144 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %144, i32 0, i32 4
  %146 = load %struct.TYPE_9__*, %struct.TYPE_9__** %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %146, i32 0, i32 0
  %148 = load i64*, i64** %147, align 8
  store i64* %148, i64** %14, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %9, align 4
  br label %149

149:                                              ; preds = %200, %110
  %150 = load i32, i32* %9, align 4
  %151 = zext i32 %150 to i64
  %152 = load %struct.ib_send_wr*, %struct.ib_send_wr** %4, align 8
  %153 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %152, i32 0, i32 0
  %154 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %153, i32 0, i32 0
  %155 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %154, i32 0, i32 1
  %156 = load i64, i64* %155, align 8
  %157 = icmp ult i64 %151, %156
  br i1 %157, label %158, label %203

158:                                              ; preds = %149
  %159 = load i64*, i64** %14, align 8
  %160 = load i32, i32* %9, align 4
  %161 = zext i32 %160 to i64
  %162 = getelementptr inbounds i64, i64* %159, i64 %161
  %163 = load i64, i64* %162, align 8
  %164 = inttoptr i64 %163 to i8*
  %165 = load %struct.qib_mregion*, %struct.qib_mregion** %7, align 8
  %166 = getelementptr inbounds %struct.qib_mregion, %struct.qib_mregion* %165, i32 0, i32 4
  %167 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %166, align 8
  %168 = load i32, i32* %11, align 4
  %169 = zext i32 %168 to i64
  %170 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %167, i64 %169
  %171 = load %struct.TYPE_13__*, %struct.TYPE_13__** %170, align 8
  %172 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %171, i32 0, i32 0
  %173 = load %struct.TYPE_12__*, %struct.TYPE_12__** %172, align 8
  %174 = load i32, i32* %10, align 4
  %175 = zext i32 %174 to i64
  %176 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %173, i64 %175
  %177 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %176, i32 0, i32 1
  store i8* %164, i8** %177, align 8
  %178 = load i64, i64* %15, align 8
  %179 = load %struct.qib_mregion*, %struct.qib_mregion** %7, align 8
  %180 = getelementptr inbounds %struct.qib_mregion, %struct.qib_mregion* %179, i32 0, i32 4
  %181 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %180, align 8
  %182 = load i32, i32* %11, align 4
  %183 = zext i32 %182 to i64
  %184 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %181, i64 %183
  %185 = load %struct.TYPE_13__*, %struct.TYPE_13__** %184, align 8
  %186 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %185, i32 0, i32 0
  %187 = load %struct.TYPE_12__*, %struct.TYPE_12__** %186, align 8
  %188 = load i32, i32* %10, align 4
  %189 = zext i32 %188 to i64
  %190 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %187, i64 %189
  %191 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %190, i32 0, i32 0
  store i64 %178, i64* %191, align 8
  %192 = load i32, i32* %10, align 4
  %193 = add i32 %192, 1
  store i32 %193, i32* %10, align 4
  %194 = load i32, i32* @QIB_SEGSZ, align 4
  %195 = icmp eq i32 %193, %194
  br i1 %195, label %196, label %199

196:                                              ; preds = %158
  %197 = load i32, i32* %11, align 4
  %198 = add i32 %197, 1
  store i32 %198, i32* %11, align 4
  store i32 0, i32* %10, align 4
  br label %199

199:                                              ; preds = %196, %158
  br label %200

200:                                              ; preds = %199
  %201 = load i32, i32* %9, align 4
  %202 = add i32 %201, 1
  store i32 %202, i32* %9, align 4
  br label %149

203:                                              ; preds = %149
  store i32 0, i32* %12, align 4
  br label %204

204:                                              ; preds = %203, %109, %88, %77, %45
  %205 = load %struct.qib_lkey_table*, %struct.qib_lkey_table** %5, align 8
  %206 = getelementptr inbounds %struct.qib_lkey_table, %struct.qib_lkey_table* %205, i32 0, i32 0
  %207 = load i64, i64* %13, align 8
  %208 = call i32 @spin_unlock_irqrestore(i32* %206, i64 %207)
  %209 = load i32, i32* %12, align 4
  ret i32 %209
}

declare dso_local %struct.TYPE_14__* @to_idev(i32) #1

declare dso_local %struct.qib_pd* @to_ipd(i64) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local %struct.qib_mregion* @rcu_dereference_protected(i32, i32) #1

declare dso_local i32 @lockdep_is_held(i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
