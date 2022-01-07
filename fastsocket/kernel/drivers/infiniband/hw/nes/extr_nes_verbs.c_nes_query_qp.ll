; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/nes/extr_nes_verbs.c_nes_query_qp.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/nes/extr_nes_verbs.c_nes_query_qp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_qp = type { i32 }
%struct.ib_qp_attr = type { %struct.TYPE_6__, i64 }
%struct.TYPE_6__ = type { i32, i32, i32, i32 }
%struct.ib_qp_init_attr = type { %struct.TYPE_6__, i32, i32, i32, i32, i32 }
%struct.nes_qp = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32, i32 }

@NES_DBG_QP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@nes_drv_opt = common dso_local global i32 0, align 4
@NES_DRV_OPT_NO_INLINE_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_qp*, %struct.ib_qp_attr*, i32, %struct.ib_qp_init_attr*)* @nes_query_qp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nes_query_qp(%struct.ib_qp* %0, %struct.ib_qp_attr* %1, i32 %2, %struct.ib_qp_init_attr* %3) #0 {
  %5 = alloca %struct.ib_qp*, align 8
  %6 = alloca %struct.ib_qp_attr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ib_qp_init_attr*, align 8
  %9 = alloca %struct.nes_qp*, align 8
  store %struct.ib_qp* %0, %struct.ib_qp** %5, align 8
  store %struct.ib_qp_attr* %1, %struct.ib_qp_attr** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.ib_qp_init_attr* %3, %struct.ib_qp_init_attr** %8, align 8
  %10 = load %struct.ib_qp*, %struct.ib_qp** %5, align 8
  %11 = call %struct.nes_qp* @to_nesqp(%struct.ib_qp* %10)
  store %struct.nes_qp* %11, %struct.nes_qp** %9, align 8
  %12 = load i32, i32* @NES_DBG_QP, align 4
  %13 = call i32 @nes_debug(i32 %12, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %14 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %15 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %14, i32 0, i32 1
  store i64 0, i64* %15, align 8
  %16 = load %struct.nes_qp*, %struct.nes_qp** %9, align 8
  %17 = getelementptr inbounds %struct.nes_qp, %struct.nes_qp* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %21 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 3
  store i32 %19, i32* %22, align 4
  %23 = load %struct.nes_qp*, %struct.nes_qp** %9, align 8
  %24 = getelementptr inbounds %struct.nes_qp, %struct.nes_qp* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %28 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 2
  store i32 %26, i32* %29, align 8
  %30 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %31 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  store i32 1, i32* %32, align 8
  %33 = load i32, i32* @nes_drv_opt, align 4
  %34 = load i32, i32* @NES_DRV_OPT_NO_INLINE_DATA, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %4
  %38 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %39 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 1
  store i32 0, i32* %40, align 4
  br label %45

41:                                               ; preds = %4
  %42 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %43 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 1
  store i32 64, i32* %44, align 4
  br label %45

45:                                               ; preds = %41, %37
  %46 = load %struct.nes_qp*, %struct.nes_qp** %9, align 8
  %47 = getelementptr inbounds %struct.nes_qp, %struct.nes_qp* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 4
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %8, align 8
  %51 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %50, i32 0, i32 5
  store i32 %49, i32* %51, align 4
  %52 = load %struct.nes_qp*, %struct.nes_qp** %9, align 8
  %53 = getelementptr inbounds %struct.nes_qp, %struct.nes_qp* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %8, align 8
  %57 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %56, i32 0, i32 4
  store i32 %55, i32* %57, align 4
  %58 = load %struct.nes_qp*, %struct.nes_qp** %9, align 8
  %59 = getelementptr inbounds %struct.nes_qp, %struct.nes_qp* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %8, align 8
  %63 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %62, i32 0, i32 3
  store i32 %61, i32* %63, align 4
  %64 = load %struct.nes_qp*, %struct.nes_qp** %9, align 8
  %65 = getelementptr inbounds %struct.nes_qp, %struct.nes_qp* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %8, align 8
  %69 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %68, i32 0, i32 2
  store i32 %67, i32* %69, align 4
  %70 = load %struct.nes_qp*, %struct.nes_qp** %9, align 8
  %71 = getelementptr inbounds %struct.nes_qp, %struct.nes_qp* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.nes_qp*, %struct.nes_qp** %9, align 8
  %75 = getelementptr inbounds %struct.nes_qp, %struct.nes_qp* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 0
  store i32 %73, i32* %76, align 4
  %77 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %8, align 8
  %78 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %77, i32 0, i32 1
  store i32 %73, i32* %78, align 4
  %79 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %8, align 8
  %80 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %79, i32 0, i32 0
  %81 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %82 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %81, i32 0, i32 0
  %83 = bitcast %struct.TYPE_6__* %80 to i8*
  %84 = bitcast %struct.TYPE_6__* %82 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %83, i8* align 8 %84, i64 16, i1 false)
  ret i32 0
}

declare dso_local %struct.nes_qp* @to_nesqp(%struct.ib_qp*) #1

declare dso_local i32 @nes_debug(i32, i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
