; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_lrw.c_lrw_init_table.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_lrw.c_lrw_init_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lrw_table_ctx = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lrw_init_table(%struct.lrw_table_ctx* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.lrw_table_ctx*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_5__, align 4
  %7 = alloca i32, align 4
  store %struct.lrw_table_ctx* %0, %struct.lrw_table_ctx** %4, align 8
  store i32* %1, i32** %5, align 8
  %8 = bitcast %struct.TYPE_5__* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %8, i8 0, i64 4, i1 false)
  %9 = load %struct.lrw_table_ctx*, %struct.lrw_table_ctx** %4, align 8
  %10 = getelementptr inbounds %struct.lrw_table_ctx, %struct.lrw_table_ctx* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %2
  %14 = load %struct.lrw_table_ctx*, %struct.lrw_table_ctx** %4, align 8
  %15 = getelementptr inbounds %struct.lrw_table_ctx, %struct.lrw_table_ctx* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @gf128mul_free_64k(i32 %16)
  br label %18

18:                                               ; preds = %13, %2
  %19 = load i32*, i32** %5, align 8
  %20 = bitcast i32* %19 to %struct.TYPE_5__*
  %21 = call i32 @gf128mul_init_64k_bbe(%struct.TYPE_5__* %20)
  %22 = load %struct.lrw_table_ctx*, %struct.lrw_table_ctx** %4, align 8
  %23 = getelementptr inbounds %struct.lrw_table_ctx, %struct.lrw_table_ctx* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 8
  %24 = load %struct.lrw_table_ctx*, %struct.lrw_table_ctx** %4, align 8
  %25 = getelementptr inbounds %struct.lrw_table_ctx, %struct.lrw_table_ctx* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %18
  %29 = load i32, i32* @ENOMEM, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %3, align 4
  br label %60

31:                                               ; preds = %18
  store i32 0, i32* %7, align 4
  br label %32

32:                                               ; preds = %56, %31
  %33 = load i32, i32* %7, align 4
  %34 = icmp slt i32 %33, 128
  br i1 %34, label %35, label %59

35:                                               ; preds = %32
  %36 = load i32, i32* %7, align 4
  %37 = call i32 @setbit128_bbe(%struct.TYPE_5__* %6, i32 %36)
  %38 = load %struct.lrw_table_ctx*, %struct.lrw_table_ctx** %4, align 8
  %39 = getelementptr inbounds %struct.lrw_table_ctx, %struct.lrw_table_ctx* %38, i32 0, i32 1
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %39, align 8
  %41 = load i32, i32* %7, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i64 %42
  %44 = bitcast %struct.TYPE_5__* %43 to i8*
  %45 = bitcast %struct.TYPE_5__* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %44, i8* align 4 %45, i64 4, i1 false)
  %46 = load %struct.lrw_table_ctx*, %struct.lrw_table_ctx** %4, align 8
  %47 = getelementptr inbounds %struct.lrw_table_ctx, %struct.lrw_table_ctx* %46, i32 0, i32 1
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %47, align 8
  %49 = load i32, i32* %7, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i64 %50
  %52 = load %struct.lrw_table_ctx*, %struct.lrw_table_ctx** %4, align 8
  %53 = getelementptr inbounds %struct.lrw_table_ctx, %struct.lrw_table_ctx* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @gf128mul_64k_bbe(%struct.TYPE_5__* %51, i32 %54)
  br label %56

56:                                               ; preds = %35
  %57 = load i32, i32* %7, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %7, align 4
  br label %32

59:                                               ; preds = %32
  store i32 0, i32* %3, align 4
  br label %60

60:                                               ; preds = %59, %28
  %61 = load i32, i32* %3, align 4
  ret i32 %61
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @gf128mul_free_64k(i32) #2

declare dso_local i32 @gf128mul_init_64k_bbe(%struct.TYPE_5__*) #2

declare dso_local i32 @setbit128_bbe(%struct.TYPE_5__*, i32) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @gf128mul_64k_bbe(%struct.TYPE_5__*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
