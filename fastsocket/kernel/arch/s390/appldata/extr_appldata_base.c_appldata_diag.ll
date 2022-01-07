; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/s390/appldata/extr_appldata_base.c_appldata_diag.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/s390/appldata/extr_appldata_base.c_appldata_diag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.appldata_product_id = type { i32, i32, i32, i8, i8, i32 }

@__const.appldata_diag.id = private unnamed_addr constant %struct.appldata_product_id { i32 54739, i32 62198, i32 61681, i8 0, i8 0, i32 211 }, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @appldata_diag(i8 signext %0, i32 %1, i64 %2, i32 %3, i8* %4) #0 {
  %6 = alloca i8, align 1
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca %struct.appldata_product_id, align 4
  store i8 %0, i8* %6, align 1
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  store i8* %4, i8** %10, align 8
  %12 = bitcast %struct.appldata_product_id* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %12, i8* align 4 bitcast (%struct.appldata_product_id* @__const.appldata_diag.id to i8*), i64 20, i1 false)
  %13 = load i8, i8* %6, align 1
  %14 = getelementptr inbounds %struct.appldata_product_id, %struct.appldata_product_id* %11, i32 0, i32 3
  store i8 %13, i8* %14, align 4
  %15 = load i8*, i8** %10, align 8
  %16 = getelementptr inbounds i8, i8* %15, i64 0
  %17 = load i8, i8* %16, align 1
  %18 = sext i8 %17 to i32
  %19 = shl i32 %18, 8
  %20 = load i8*, i8** %10, align 8
  %21 = getelementptr inbounds i8, i8* %20, i64 1
  %22 = load i8, i8* %21, align 1
  %23 = sext i8 %22 to i32
  %24 = or i32 %19, %23
  %25 = trunc i32 %24 to i8
  %26 = getelementptr inbounds %struct.appldata_product_id, %struct.appldata_product_id* %11, i32 0, i32 4
  store i8 %25, i8* %26, align 1
  %27 = load i32, i32* %7, align 4
  %28 = load i64, i64* %8, align 8
  %29 = inttoptr i64 %28 to i8*
  %30 = load i32, i32* %9, align 4
  %31 = call i32 @appldata_asm(%struct.appldata_product_id* %11, i32 %27, i8* %29, i32 %30)
  ret i32 %31
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @appldata_asm(%struct.appldata_product_id*, i32, i8*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
