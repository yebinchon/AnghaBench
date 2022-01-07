; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ehca/extr_ehca_qp.c_check_for_left_cqes.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ehca/extr_ehca_qp.c_check_for_left_cqes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ehca_qp = type { i64, %struct.TYPE_7__*, %struct.TYPE_6__*, %struct.TYPE_8__, %struct.TYPE_8__, i32, i32, i32, i32, %struct.TYPE_5__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_8__ = type { i64, i32, i32, i8* }
%struct.TYPE_5__ = type { i32 }
%struct.ehca_shca = type { i32, i32 }

@EQPT_SRQBASE = common dso_local global i64 0, align 8
@H_SUCCESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [61 x i8] c"disable_and_get_wqe() failed ehca_qp=%p qp_num=%x h_ret=%lli\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ehca_qp*, %struct.ehca_shca*)* @check_for_left_cqes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_for_left_cqes(%struct.ehca_qp* %0, %struct.ehca_shca* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ehca_qp*, align 8
  %5 = alloca %struct.ehca_shca*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.ehca_qp* %0, %struct.ehca_qp** %4, align 8
  store %struct.ehca_shca* %1, %struct.ehca_shca** %5, align 8
  %12 = load %struct.ehca_qp*, %struct.ehca_qp** %4, align 8
  %13 = getelementptr inbounds %struct.ehca_qp, %struct.ehca_qp* %12, i32 0, i32 9
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  store i32 %15, i32* %11, align 4
  %16 = load %struct.ehca_qp*, %struct.ehca_qp** %4, align 8
  %17 = getelementptr inbounds %struct.ehca_qp, %struct.ehca_qp* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @EQPT_SRQBASE, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %92

21:                                               ; preds = %2
  %22 = load %struct.ehca_shca*, %struct.ehca_shca** %5, align 8
  %23 = getelementptr inbounds %struct.ehca_shca, %struct.ehca_shca* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.ehca_qp*, %struct.ehca_qp** %4, align 8
  %26 = getelementptr inbounds %struct.ehca_qp, %struct.ehca_qp* %25, i32 0, i32 8
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.ehca_qp*, %struct.ehca_qp** %4, align 8
  %29 = getelementptr inbounds %struct.ehca_qp, %struct.ehca_qp* %28, i32 0, i32 7
  %30 = call i64 @hipz_h_disable_and_get_wqe(i32 %24, i32 %27, i32* %29, i8** %7, i8** %8, i32 4)
  store i64 %30, i64* %6, align 8
  %31 = load i64, i64* %6, align 8
  %32 = load i64, i64* @H_SUCCESS, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %43

34:                                               ; preds = %21
  %35 = load %struct.ehca_shca*, %struct.ehca_shca** %5, align 8
  %36 = getelementptr inbounds %struct.ehca_shca, %struct.ehca_shca* %35, i32 0, i32 0
  %37 = load %struct.ehca_qp*, %struct.ehca_qp** %4, align 8
  %38 = load i32, i32* %11, align 4
  %39 = load i64, i64* %6, align 8
  %40 = call i32 @ehca_err(i32* %36, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0), %struct.ehca_qp* %37, i32 %38, i64 %39)
  %41 = load i64, i64* %6, align 8
  %42 = call i32 @ehca2ib_return_code(i64 %41)
  store i32 %42, i32* %3, align 4
  br label %194

43:                                               ; preds = %21
  %44 = load %struct.ehca_qp*, %struct.ehca_qp** %4, align 8
  %45 = getelementptr inbounds %struct.ehca_qp, %struct.ehca_qp* %44, i32 0, i32 2
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  %48 = load i64, i64* %10, align 8
  %49 = call i32 @spin_lock_irqsave(i32* %47, i64 %48)
  %50 = load i8*, i8** %7, align 8
  %51 = ptrtoint i8* %50 to i64
  %52 = load %struct.ehca_qp*, %struct.ehca_qp** %4, align 8
  %53 = getelementptr inbounds %struct.ehca_qp, %struct.ehca_qp* %52, i32 0, i32 6
  %54 = load %struct.ehca_qp*, %struct.ehca_qp** %4, align 8
  %55 = getelementptr inbounds %struct.ehca_qp, %struct.ehca_qp* %54, i32 0, i32 4
  %56 = call i32 @calc_left_cqes(i64 %51, i32* %53, %struct.TYPE_8__* %55)
  store i32 %56, i32* %9, align 4
  %57 = load %struct.ehca_qp*, %struct.ehca_qp** %4, align 8
  %58 = getelementptr inbounds %struct.ehca_qp, %struct.ehca_qp* %57, i32 0, i32 2
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 0
  %61 = load i64, i64* %10, align 8
  %62 = call i32 @spin_unlock_irqrestore(i32* %60, i64 %61)
  %63 = load i32, i32* %9, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %43
  %66 = load i32, i32* %9, align 4
  store i32 %66, i32* %3, align 4
  br label %194

67:                                               ; preds = %43
  %68 = load %struct.ehca_qp*, %struct.ehca_qp** %4, align 8
  %69 = getelementptr inbounds %struct.ehca_qp, %struct.ehca_qp* %68, i32 0, i32 1
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 0
  %72 = load i64, i64* %10, align 8
  %73 = call i32 @spin_lock_irqsave(i32* %71, i64 %72)
  %74 = load i8*, i8** %8, align 8
  %75 = ptrtoint i8* %74 to i64
  %76 = load %struct.ehca_qp*, %struct.ehca_qp** %4, align 8
  %77 = getelementptr inbounds %struct.ehca_qp, %struct.ehca_qp* %76, i32 0, i32 5
  %78 = load %struct.ehca_qp*, %struct.ehca_qp** %4, align 8
  %79 = getelementptr inbounds %struct.ehca_qp, %struct.ehca_qp* %78, i32 0, i32 3
  %80 = call i32 @calc_left_cqes(i64 %75, i32* %77, %struct.TYPE_8__* %79)
  store i32 %80, i32* %9, align 4
  %81 = load %struct.ehca_qp*, %struct.ehca_qp** %4, align 8
  %82 = getelementptr inbounds %struct.ehca_qp, %struct.ehca_qp* %81, i32 0, i32 1
  %83 = load %struct.TYPE_7__*, %struct.TYPE_7__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 0
  %85 = load i64, i64* %10, align 8
  %86 = call i32 @spin_unlock_irqrestore(i32* %84, i64 %85)
  %87 = load i32, i32* %9, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %91

89:                                               ; preds = %67
  %90 = load i32, i32* %9, align 4
  store i32 %90, i32* %3, align 4
  br label %194

91:                                               ; preds = %67
  br label %147

92:                                               ; preds = %2
  %93 = load %struct.ehca_qp*, %struct.ehca_qp** %4, align 8
  %94 = getelementptr inbounds %struct.ehca_qp, %struct.ehca_qp* %93, i32 0, i32 2
  %95 = load %struct.TYPE_6__*, %struct.TYPE_6__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 0
  %97 = load i64, i64* %10, align 8
  %98 = call i32 @spin_lock_irqsave(i32* %96, i64 %97)
  %99 = load %struct.ehca_qp*, %struct.ehca_qp** %4, align 8
  %100 = getelementptr inbounds %struct.ehca_qp, %struct.ehca_qp* %99, i32 0, i32 4
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %100, i32 0, i32 0
  store i64 0, i64* %101, align 8
  %102 = load %struct.ehca_qp*, %struct.ehca_qp** %4, align 8
  %103 = getelementptr inbounds %struct.ehca_qp, %struct.ehca_qp* %102, i32 0, i32 4
  %104 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.ehca_qp*, %struct.ehca_qp** %4, align 8
  %107 = getelementptr inbounds %struct.ehca_qp, %struct.ehca_qp* %106, i32 0, i32 4
  %108 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 8
  %110 = call i8* @next_index(i32 %105, i32 %109)
  %111 = load %struct.ehca_qp*, %struct.ehca_qp** %4, align 8
  %112 = getelementptr inbounds %struct.ehca_qp, %struct.ehca_qp* %111, i32 0, i32 4
  %113 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %112, i32 0, i32 3
  store i8* %110, i8** %113, align 8
  %114 = load %struct.ehca_qp*, %struct.ehca_qp** %4, align 8
  %115 = getelementptr inbounds %struct.ehca_qp, %struct.ehca_qp* %114, i32 0, i32 2
  %116 = load %struct.TYPE_6__*, %struct.TYPE_6__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %116, i32 0, i32 0
  %118 = load i64, i64* %10, align 8
  %119 = call i32 @spin_unlock_irqrestore(i32* %117, i64 %118)
  %120 = load %struct.ehca_qp*, %struct.ehca_qp** %4, align 8
  %121 = getelementptr inbounds %struct.ehca_qp, %struct.ehca_qp* %120, i32 0, i32 1
  %122 = load %struct.TYPE_7__*, %struct.TYPE_7__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %122, i32 0, i32 0
  %124 = load i64, i64* %10, align 8
  %125 = call i32 @spin_lock_irqsave(i32* %123, i64 %124)
  %126 = load %struct.ehca_qp*, %struct.ehca_qp** %4, align 8
  %127 = getelementptr inbounds %struct.ehca_qp, %struct.ehca_qp* %126, i32 0, i32 3
  %128 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %127, i32 0, i32 0
  store i64 0, i64* %128, align 8
  %129 = load %struct.ehca_qp*, %struct.ehca_qp** %4, align 8
  %130 = getelementptr inbounds %struct.ehca_qp, %struct.ehca_qp* %129, i32 0, i32 3
  %131 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %130, i32 0, i32 2
  %132 = load i32, i32* %131, align 4
  %133 = load %struct.ehca_qp*, %struct.ehca_qp** %4, align 8
  %134 = getelementptr inbounds %struct.ehca_qp, %struct.ehca_qp* %133, i32 0, i32 3
  %135 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 8
  %137 = call i8* @next_index(i32 %132, i32 %136)
  %138 = load %struct.ehca_qp*, %struct.ehca_qp** %4, align 8
  %139 = getelementptr inbounds %struct.ehca_qp, %struct.ehca_qp* %138, i32 0, i32 3
  %140 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %139, i32 0, i32 3
  store i8* %137, i8** %140, align 8
  %141 = load %struct.ehca_qp*, %struct.ehca_qp** %4, align 8
  %142 = getelementptr inbounds %struct.ehca_qp, %struct.ehca_qp* %141, i32 0, i32 1
  %143 = load %struct.TYPE_7__*, %struct.TYPE_7__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %143, i32 0, i32 0
  %145 = load i64, i64* %10, align 8
  %146 = call i32 @spin_unlock_irqrestore(i32* %144, i64 %145)
  br label %147

147:                                              ; preds = %92, %91
  %148 = load %struct.ehca_qp*, %struct.ehca_qp** %4, align 8
  %149 = getelementptr inbounds %struct.ehca_qp, %struct.ehca_qp* %148, i32 0, i32 4
  %150 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %149, i32 0, i32 0
  %151 = load i64, i64* %150, align 8
  %152 = icmp eq i64 %151, 0
  br i1 %152, label %153, label %193

153:                                              ; preds = %147
  %154 = load %struct.ehca_qp*, %struct.ehca_qp** %4, align 8
  %155 = getelementptr inbounds %struct.ehca_qp, %struct.ehca_qp* %154, i32 0, i32 3
  %156 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %155, i32 0, i32 0
  %157 = load i64, i64* %156, align 8
  %158 = icmp eq i64 %157, 0
  br i1 %158, label %159, label %193

159:                                              ; preds = %153
  %160 = load %struct.ehca_qp*, %struct.ehca_qp** %4, align 8
  %161 = getelementptr inbounds %struct.ehca_qp, %struct.ehca_qp* %160, i32 0, i32 2
  %162 = load %struct.TYPE_6__*, %struct.TYPE_6__** %161, align 8
  %163 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %162, i32 0, i32 0
  %164 = load i64, i64* %10, align 8
  %165 = call i32 @spin_lock_irqsave(i32* %163, i64 %164)
  %166 = load %struct.ehca_qp*, %struct.ehca_qp** %4, align 8
  %167 = call i32 @ehca_add_to_err_list(%struct.ehca_qp* %166, i32 1)
  %168 = load %struct.ehca_qp*, %struct.ehca_qp** %4, align 8
  %169 = getelementptr inbounds %struct.ehca_qp, %struct.ehca_qp* %168, i32 0, i32 2
  %170 = load %struct.TYPE_6__*, %struct.TYPE_6__** %169, align 8
  %171 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %170, i32 0, i32 0
  %172 = load i64, i64* %10, align 8
  %173 = call i32 @spin_unlock_irqrestore(i32* %171, i64 %172)
  %174 = load %struct.ehca_qp*, %struct.ehca_qp** %4, align 8
  %175 = call i64 @HAS_RQ(%struct.ehca_qp* %174)
  %176 = icmp ne i64 %175, 0
  br i1 %176, label %177, label %192

177:                                              ; preds = %159
  %178 = load %struct.ehca_qp*, %struct.ehca_qp** %4, align 8
  %179 = getelementptr inbounds %struct.ehca_qp, %struct.ehca_qp* %178, i32 0, i32 1
  %180 = load %struct.TYPE_7__*, %struct.TYPE_7__** %179, align 8
  %181 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %180, i32 0, i32 0
  %182 = load i64, i64* %10, align 8
  %183 = call i32 @spin_lock_irqsave(i32* %181, i64 %182)
  %184 = load %struct.ehca_qp*, %struct.ehca_qp** %4, align 8
  %185 = call i32 @ehca_add_to_err_list(%struct.ehca_qp* %184, i32 0)
  %186 = load %struct.ehca_qp*, %struct.ehca_qp** %4, align 8
  %187 = getelementptr inbounds %struct.ehca_qp, %struct.ehca_qp* %186, i32 0, i32 1
  %188 = load %struct.TYPE_7__*, %struct.TYPE_7__** %187, align 8
  %189 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %188, i32 0, i32 0
  %190 = load i64, i64* %10, align 8
  %191 = call i32 @spin_unlock_irqrestore(i32* %189, i64 %190)
  br label %192

192:                                              ; preds = %177, %159
  br label %193

193:                                              ; preds = %192, %153, %147
  store i32 0, i32* %3, align 4
  br label %194

194:                                              ; preds = %193, %89, %65, %34
  %195 = load i32, i32* %3, align 4
  ret i32 %195
}

declare dso_local i64 @hipz_h_disable_and_get_wqe(i32, i32, i32*, i8**, i8**, i32) #1

declare dso_local i32 @ehca_err(i32*, i8*, %struct.ehca_qp*, i32, i64) #1

declare dso_local i32 @ehca2ib_return_code(i64) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @calc_left_cqes(i64, i32*, %struct.TYPE_8__*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i8* @next_index(i32, i32) #1

declare dso_local i32 @ehca_add_to_err_list(%struct.ehca_qp*, i32) #1

declare dso_local i64 @HAS_RQ(%struct.ehca_qp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
