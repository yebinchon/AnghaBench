; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mm/extr_alignment.c_do_alignment_t32_to_handler.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mm/extr_alignment.c_do_alignment_t32_to_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_regs = type { i32 }
%union.offset_union = type { i32 }

@do_alignment_ldmstm = common dso_local global i8* null, align 8
@__const.do_alignment_t32_to_handler.subset = private unnamed_addr constant [2 x i32] [i32 -382926848, i32 -390266880], align 4
@do_alignment_ldrdstrd = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i64*, %struct.pt_regs*, %union.offset_union*)* @do_alignment_t32_to_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @do_alignment_t32_to_handler(i64* %0, %struct.pt_regs* %1, %union.offset_union* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca %struct.pt_regs*, align 8
  %7 = alloca %union.offset_union*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca [2 x i32], align 4
  store i64* %0, i64** %5, align 8
  store %struct.pt_regs* %1, %struct.pt_regs** %6, align 8
  store %union.offset_union* %2, %union.offset_union** %7, align 8
  %13 = load i64*, i64** %5, align 8
  %14 = load i64, i64* %13, align 8
  store i64 %14, i64* %8, align 8
  %15 = load i64, i64* %8, align 8
  %16 = lshr i64 %15, 16
  %17 = and i64 %16, 65535
  %18 = trunc i64 %17 to i32
  store i32 %18, i32* %9, align 4
  %19 = load i64, i64* %8, align 8
  %20 = and i64 %19, 65535
  %21 = trunc i64 %20 to i32
  store i32 %21, i32* %10, align 4
  %22 = load %union.offset_union*, %union.offset_union** %7, align 8
  %23 = bitcast %union.offset_union* %22 to i32*
  store i32 0, i32* %23, align 4
  %24 = load i32, i32* %9, align 4
  %25 = and i32 %24, 65504
  switch i32 %25, label %64 [
    i32 59520, label %26
    i32 59552, label %26
    i32 59648, label %26
    i32 59680, label %26
    i32 63552, label %28
    i32 59488, label %56
    i32 59744, label %56
    i32 59616, label %56
    i32 59872, label %56
    i32 59712, label %62
    i32 59840, label %62
  ]

26:                                               ; preds = %3, %3, %3, %3
  %27 = load i8*, i8** @do_alignment_ldmstm, align 8
  store i8* %27, i8** %4, align 8
  br label %66

28:                                               ; preds = %3
  %29 = load i64, i64* %8, align 8
  %30 = call i32 @RN_BITS(i64 %29)
  %31 = icmp eq i32 %30, 13
  br i1 %31, label %32, label %55

32:                                               ; preds = %28
  %33 = load i32, i32* %10, align 4
  %34 = and i32 %33, 2559
  %35 = icmp eq i32 %34, 2308
  br i1 %35, label %36, label %55

36:                                               ; preds = %32
  %37 = load i64, i64* %8, align 8
  %38 = call i32 @LDST_L_BIT(i64 %37)
  %39 = icmp ne i32 %38, 0
  %40 = xor i1 %39, true
  %41 = xor i1 %40, true
  %42 = zext i1 %41 to i32
  store i32 %42, i32* %11, align 4
  %43 = bitcast [2 x i32]* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %43, i8* align 4 bitcast ([2 x i32]* @__const.do_alignment_t32_to_handler.subset to i8*), i64 8, i1 false)
  %44 = load i32, i32* %11, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = load i64, i64* %8, align 8
  %49 = call i32 @RD_BITS(i64 %48)
  %50 = shl i32 1, %49
  %51 = or i32 %47, %50
  %52 = sext i32 %51 to i64
  %53 = load i64*, i64** %5, align 8
  store i64 %52, i64* %53, align 8
  %54 = load i8*, i8** @do_alignment_ldmstm, align 8
  store i8* %54, i8** %4, align 8
  br label %66

55:                                               ; preds = %32, %28
  br label %65

56:                                               ; preds = %3, %3, %3, %3
  %57 = load i32, i32* %10, align 4
  %58 = and i32 %57, 255
  %59 = shl i32 %58, 2
  %60 = load %union.offset_union*, %union.offset_union** %7, align 8
  %61 = bitcast %union.offset_union* %60 to i32*
  store i32 %59, i32* %61, align 4
  br label %62

62:                                               ; preds = %3, %3, %56
  %63 = load i8*, i8** @do_alignment_ldrdstrd, align 8
  store i8* %63, i8** %4, align 8
  br label %66

64:                                               ; preds = %3
  br label %65

65:                                               ; preds = %64, %55
  store i8* null, i8** %4, align 8
  br label %66

66:                                               ; preds = %65, %62, %36, %26
  %67 = load i8*, i8** %4, align 8
  ret i8* %67
}

declare dso_local i32 @RN_BITS(i64) #1

declare dso_local i32 @LDST_L_BIT(i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @RD_BITS(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
