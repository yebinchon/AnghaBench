; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_scsi_debug.c_resp_sas_pcd_m_spg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_scsi_debug.c_resp_sas_pcd_m_spg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.resp_sas_pcd_m_spg.sas_pcd_m_pg = private unnamed_addr constant <{ [90 x i8], [14 x i8] }> <{ [90 x i8] c"Y\01\00d\00\06\00\02\00\00\00\00\10\09\08\00R\22\22 \00\00\00\00Q\11\11\10\00\00\00\01\02\00\00\00\00\00\00\00\88\99\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\10\09\08\00R\22\22 \00\00\00\00Q\11\11\10\00\00\00\01\03\00\00\00\00\00\00\00\88\99", [14 x i8] zeroinitializer }>, align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i32, i32)* @resp_sas_pcd_m_spg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @resp_sas_pcd_m_spg(i8* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [104 x i8], align 16
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = bitcast [104 x i8]* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %12, i8* align 16 getelementptr inbounds (<{ [90 x i8], [14 x i8] }>, <{ [90 x i8], [14 x i8] }>* @__const.resp_sas_pcd_m_spg.sas_pcd_m_pg, i32 0, i32 0, i32 0), i64 104, i1 false)
  %13 = load i32, i32* %8, align 4
  %14 = add nsw i32 %13, 1
  store i32 %14, i32* %10, align 4
  %15 = load i32, i32* %10, align 4
  %16 = add nsw i32 %15, 1
  store i32 %16, i32* %11, align 4
  %17 = load i8*, i8** %5, align 8
  %18 = getelementptr inbounds [104 x i8], [104 x i8]* %9, i64 0, i64 0
  %19 = call i32 @memcpy(i8* %17, i8* %18, i32 104)
  %20 = load i32, i32* %10, align 4
  %21 = ashr i32 %20, 24
  %22 = trunc i32 %21 to i8
  %23 = load i8*, i8** %5, align 8
  %24 = getelementptr inbounds i8, i8* %23, i64 20
  store i8 %22, i8* %24, align 1
  %25 = load i32, i32* %10, align 4
  %26 = ashr i32 %25, 16
  %27 = and i32 %26, 255
  %28 = trunc i32 %27 to i8
  %29 = load i8*, i8** %5, align 8
  %30 = getelementptr inbounds i8, i8* %29, i64 21
  store i8 %28, i8* %30, align 1
  %31 = load i32, i32* %10, align 4
  %32 = ashr i32 %31, 8
  %33 = and i32 %32, 255
  %34 = trunc i32 %33 to i8
  %35 = load i8*, i8** %5, align 8
  %36 = getelementptr inbounds i8, i8* %35, i64 22
  store i8 %34, i8* %36, align 1
  %37 = load i32, i32* %10, align 4
  %38 = and i32 %37, 255
  %39 = trunc i32 %38 to i8
  %40 = load i8*, i8** %5, align 8
  %41 = getelementptr inbounds i8, i8* %40, i64 23
  store i8 %39, i8* %41, align 1
  %42 = load i32, i32* %11, align 4
  %43 = ashr i32 %42, 24
  %44 = trunc i32 %43 to i8
  %45 = load i8*, i8** %5, align 8
  %46 = getelementptr inbounds i8, i8* %45, i64 68
  store i8 %44, i8* %46, align 1
  %47 = load i32, i32* %11, align 4
  %48 = ashr i32 %47, 16
  %49 = and i32 %48, 255
  %50 = trunc i32 %49 to i8
  %51 = load i8*, i8** %5, align 8
  %52 = getelementptr inbounds i8, i8* %51, i64 69
  store i8 %50, i8* %52, align 1
  %53 = load i32, i32* %11, align 4
  %54 = ashr i32 %53, 8
  %55 = and i32 %54, 255
  %56 = trunc i32 %55 to i8
  %57 = load i8*, i8** %5, align 8
  %58 = getelementptr inbounds i8, i8* %57, i64 70
  store i8 %56, i8* %58, align 1
  %59 = load i32, i32* %11, align 4
  %60 = and i32 %59, 255
  %61 = trunc i32 %60 to i8
  %62 = load i8*, i8** %5, align 8
  %63 = getelementptr inbounds i8, i8* %62, i64 71
  store i8 %61, i8* %63, align 1
  %64 = load i32, i32* %6, align 4
  %65 = icmp eq i32 1, %64
  br i1 %65, label %66, label %70

66:                                               ; preds = %4
  %67 = load i8*, i8** %5, align 8
  %68 = getelementptr inbounds i8, i8* %67, i64 4
  %69 = call i32 @memset(i8* %68, i32 0, i32 100)
  br label %70

70:                                               ; preds = %66, %4
  ret i32 104
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #2

declare dso_local i32 @memset(i8*, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
