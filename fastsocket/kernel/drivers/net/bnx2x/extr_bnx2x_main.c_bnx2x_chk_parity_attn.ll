; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_main.c_bnx2x_chk_parity_attn.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_main.c_bnx2x_chk_parity_attn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { i32 }
%struct.attn_route = type { i8**, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@MISC_REG_AEU_AFTER_INVERT_1_FUNC_0 = common dso_local global i64 0, align 8
@MISC_REG_AEU_AFTER_INVERT_2_FUNC_0 = common dso_local global i64 0, align 8
@MISC_REG_AEU_AFTER_INVERT_3_FUNC_0 = common dso_local global i64 0, align 8
@MISC_REG_AEU_AFTER_INVERT_4_FUNC_0 = common dso_local global i64 0, align 8
@MISC_REG_AEU_AFTER_INVERT_5_FUNC_0 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bnx2x_chk_parity_attn(%struct.bnx2x* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.bnx2x*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.attn_route, align 8
  %8 = alloca i32, align 4
  store %struct.bnx2x* %0, %struct.bnx2x** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = bitcast %struct.attn_route* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %9, i8 0, i64 16, i1 false)
  %10 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %11 = call i32 @BP_PORT(%struct.bnx2x* %10)
  store i32 %11, i32* %8, align 4
  %12 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %13 = load i64, i64* @MISC_REG_AEU_AFTER_INVERT_1_FUNC_0, align 8
  %14 = load i32, i32* %8, align 4
  %15 = mul nsw i32 %14, 4
  %16 = sext i32 %15 to i64
  %17 = add nsw i64 %13, %16
  %18 = call i8* @REG_RD(%struct.bnx2x* %12, i64 %17)
  %19 = getelementptr inbounds %struct.attn_route, %struct.attn_route* %7, i32 0, i32 0
  %20 = load i8**, i8*** %19, align 8
  %21 = getelementptr inbounds i8*, i8** %20, i64 0
  store i8* %18, i8** %21, align 8
  %22 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %23 = load i64, i64* @MISC_REG_AEU_AFTER_INVERT_2_FUNC_0, align 8
  %24 = load i32, i32* %8, align 4
  %25 = mul nsw i32 %24, 4
  %26 = sext i32 %25 to i64
  %27 = add nsw i64 %23, %26
  %28 = call i8* @REG_RD(%struct.bnx2x* %22, i64 %27)
  %29 = getelementptr inbounds %struct.attn_route, %struct.attn_route* %7, i32 0, i32 0
  %30 = load i8**, i8*** %29, align 8
  %31 = getelementptr inbounds i8*, i8** %30, i64 1
  store i8* %28, i8** %31, align 8
  %32 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %33 = load i64, i64* @MISC_REG_AEU_AFTER_INVERT_3_FUNC_0, align 8
  %34 = load i32, i32* %8, align 4
  %35 = mul nsw i32 %34, 4
  %36 = sext i32 %35 to i64
  %37 = add nsw i64 %33, %36
  %38 = call i8* @REG_RD(%struct.bnx2x* %32, i64 %37)
  %39 = getelementptr inbounds %struct.attn_route, %struct.attn_route* %7, i32 0, i32 0
  %40 = load i8**, i8*** %39, align 8
  %41 = getelementptr inbounds i8*, i8** %40, i64 2
  store i8* %38, i8** %41, align 8
  %42 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %43 = load i64, i64* @MISC_REG_AEU_AFTER_INVERT_4_FUNC_0, align 8
  %44 = load i32, i32* %8, align 4
  %45 = mul nsw i32 %44, 4
  %46 = sext i32 %45 to i64
  %47 = add nsw i64 %43, %46
  %48 = call i8* @REG_RD(%struct.bnx2x* %42, i64 %47)
  %49 = getelementptr inbounds %struct.attn_route, %struct.attn_route* %7, i32 0, i32 0
  %50 = load i8**, i8*** %49, align 8
  %51 = getelementptr inbounds i8*, i8** %50, i64 3
  store i8* %48, i8** %51, align 8
  %52 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %53 = call i32 @CHIP_IS_E1x(%struct.bnx2x* %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %66, label %55

55:                                               ; preds = %3
  %56 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %57 = load i64, i64* @MISC_REG_AEU_AFTER_INVERT_5_FUNC_0, align 8
  %58 = load i32, i32* %8, align 4
  %59 = mul nsw i32 %58, 4
  %60 = sext i32 %59 to i64
  %61 = add nsw i64 %57, %60
  %62 = call i8* @REG_RD(%struct.bnx2x* %56, i64 %61)
  %63 = getelementptr inbounds %struct.attn_route, %struct.attn_route* %7, i32 0, i32 0
  %64 = load i8**, i8*** %63, align 8
  %65 = getelementptr inbounds i8*, i8** %64, i64 4
  store i8* %62, i8** %65, align 8
  br label %66

66:                                               ; preds = %55, %3
  %67 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %68 = load i32*, i32** %5, align 8
  %69 = load i32, i32* %6, align 4
  %70 = getelementptr inbounds %struct.attn_route, %struct.attn_route* %7, i32 0, i32 0
  %71 = load i8**, i8*** %70, align 8
  %72 = call i32 @bnx2x_parity_attn(%struct.bnx2x* %67, i32* %68, i32 %69, i8** %71)
  ret i32 %72
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @BP_PORT(%struct.bnx2x*) #2

declare dso_local i8* @REG_RD(%struct.bnx2x*, i64) #2

declare dso_local i32 @CHIP_IS_E1x(%struct.bnx2x*) #2

declare dso_local i32 @bnx2x_parity_attn(%struct.bnx2x*, i32*, i32, i8**) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
