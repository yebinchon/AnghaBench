; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ehea/extr_ehea_main.c_ehea_purge_sq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ehea/extr_ehea_main.c_ehea_purge_sq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ehea_qp = type { %struct.ehea_qp_init_attr }
%struct.ehea_qp_init_attr = type { i32 }
%struct.ehea_swqe = type { i32 }

@EHEA_SWQE_PURGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ehea_qp*)* @ehea_purge_sq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ehea_purge_sq(%struct.ehea_qp* %0) #0 {
  %2 = alloca %struct.ehea_qp*, align 8
  %3 = alloca %struct.ehea_qp, align 4
  %4 = alloca %struct.ehea_qp_init_attr*, align 8
  %5 = alloca %struct.ehea_swqe*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ehea_qp* %0, %struct.ehea_qp** %2, align 8
  %8 = load %struct.ehea_qp*, %struct.ehea_qp** %2, align 8
  %9 = bitcast %struct.ehea_qp* %3 to i8*
  %10 = bitcast %struct.ehea_qp* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %9, i8* align 4 %10, i64 4, i1 false)
  %11 = getelementptr inbounds %struct.ehea_qp, %struct.ehea_qp* %3, i32 0, i32 0
  store %struct.ehea_qp_init_attr* %11, %struct.ehea_qp_init_attr** %4, align 8
  store i32 0, i32* %7, align 4
  br label %12

12:                                               ; preds = %25, %1
  %13 = load i32, i32* %7, align 4
  %14 = load %struct.ehea_qp_init_attr*, %struct.ehea_qp_init_attr** %4, align 8
  %15 = getelementptr inbounds %struct.ehea_qp_init_attr, %struct.ehea_qp_init_attr* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp slt i32 %13, %16
  br i1 %17, label %18, label %28

18:                                               ; preds = %12
  %19 = call %struct.ehea_swqe* @ehea_get_swqe(%struct.ehea_qp* %3, i32* %6)
  store %struct.ehea_swqe* %19, %struct.ehea_swqe** %5, align 8
  %20 = load i32, i32* @EHEA_SWQE_PURGE, align 4
  %21 = load %struct.ehea_swqe*, %struct.ehea_swqe** %5, align 8
  %22 = getelementptr inbounds %struct.ehea_swqe, %struct.ehea_swqe* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = or i32 %23, %20
  store i32 %24, i32* %22, align 4
  br label %25

25:                                               ; preds = %18
  %26 = load i32, i32* %7, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %7, align 4
  br label %12

28:                                               ; preds = %12
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local %struct.ehea_swqe* @ehea_get_swqe(%struct.ehea_qp*, i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
