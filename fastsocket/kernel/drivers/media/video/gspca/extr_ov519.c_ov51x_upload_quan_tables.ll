; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_ov519.c_ov51x_upload_quan_tables.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_ov519.c_ov51x_upload_quan_tables.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sd = type { i64 }

@__const.ov51x_upload_quan_tables.yQuanTable511 = private unnamed_addr constant [64 x i8] c"\00\01\01\02\02\03\03\04\01\01\01\02\02\03\04\04\01\01\02\02\03\04\04\04\02\02\02\03\04\04\04\04\02\02\03\04\04\05\05\05\03\03\04\04\05\05\05\05\03\04\04\04\05\05\05\05\04\04\04\04\05\05\05\05", align 16
@__const.ov51x_upload_quan_tables.uvQuanTable511 = private unnamed_addr constant [64 x i8] c"\00\02\02\03\04\04\04\04\02\02\02\04\04\04\04\04\02\02\03\04\04\04\04\04\03\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04", align 16
@__const.ov51x_upload_quan_tables.yQuanTable518 = private unnamed_addr constant [32 x i8] c"\05\04\05\06\06\07\07\07\05\05\05\05\06\07\07\07\06\06\06\06\07\07\07\08\07\07\06\07\07\07\08\08", align 16
@__const.ov51x_upload_quan_tables.uvQuanTable518 = private unnamed_addr constant [32 x i8] c"\06\06\06\07\07\07\07\07\06\06\06\07\07\07\07\07\06\06\06\07\07\07\07\08\07\07\07\07\07\07\08\08", align 16
@R51x_COMP_LUT_BEGIN = common dso_local global i32 0, align 4
@D_PROBE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Uploading quantization tables\00", align 1
@BRIDGE_OV511 = common dso_local global i64 0, align 8
@BRIDGE_OV511PLUS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sd*)* @ov51x_upload_quan_tables to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ov51x_upload_quan_tables(%struct.sd* %0) #0 {
  %2 = alloca %struct.sd*, align 8
  %3 = alloca [64 x i8], align 16
  %4 = alloca [64 x i8], align 16
  %5 = alloca [32 x i8], align 16
  %6 = alloca [32 x i8], align 16
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8, align 1
  %10 = alloca i8, align 1
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.sd* %0, %struct.sd** %2, align 8
  %14 = bitcast [64 x i8]* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %14, i8* align 16 getelementptr inbounds ([64 x i8], [64 x i8]* @__const.ov51x_upload_quan_tables.yQuanTable511, i32 0, i32 0), i64 64, i1 false)
  %15 = bitcast [64 x i8]* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %15, i8* align 16 getelementptr inbounds ([64 x i8], [64 x i8]* @__const.ov51x_upload_quan_tables.uvQuanTable511, i32 0, i32 0), i64 64, i1 false)
  %16 = bitcast [32 x i8]* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %16, i8* align 16 getelementptr inbounds ([32 x i8], [32 x i8]* @__const.ov51x_upload_quan_tables.yQuanTable518, i32 0, i32 0), i64 32, i1 false)
  %17 = bitcast [32 x i8]* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %17, i8* align 16 getelementptr inbounds ([32 x i8], [32 x i8]* @__const.ov51x_upload_quan_tables.uvQuanTable518, i32 0, i32 0), i64 32, i1 false)
  %18 = load i32, i32* @R51x_COMP_LUT_BEGIN, align 4
  store i32 %18, i32* %13, align 4
  %19 = load i32, i32* @D_PROBE, align 4
  %20 = call i32 @PDEBUG(i32 %19, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %21 = load %struct.sd*, %struct.sd** %2, align 8
  %22 = getelementptr inbounds %struct.sd, %struct.sd* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @BRIDGE_OV511, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %32, label %26

26:                                               ; preds = %1
  %27 = load %struct.sd*, %struct.sd** %2, align 8
  %28 = getelementptr inbounds %struct.sd, %struct.sd* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @BRIDGE_OV511PLUS, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %26, %1
  %33 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  store i8* %33, i8** %7, align 8
  %34 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 0
  store i8* %34, i8** %8, align 8
  store i32 32, i32* %12, align 4
  br label %38

35:                                               ; preds = %26
  %36 = getelementptr inbounds [32 x i8], [32 x i8]* %5, i64 0, i64 0
  store i8* %36, i8** %7, align 8
  %37 = getelementptr inbounds [32 x i8], [32 x i8]* %6, i64 0, i64 0
  store i8* %37, i8** %8, align 8
  store i32 16, i32* %12, align 4
  br label %38

38:                                               ; preds = %35, %32
  store i32 0, i32* %11, align 4
  br label %39

39:                                               ; preds = %98, %38
  %40 = load i32, i32* %11, align 4
  %41 = load i32, i32* %12, align 4
  %42 = icmp slt i32 %40, %41
  br i1 %42, label %43, label %101

43:                                               ; preds = %39
  %44 = load i8*, i8** %7, align 8
  %45 = getelementptr inbounds i8, i8* %44, i32 1
  store i8* %45, i8** %7, align 8
  %46 = load i8, i8* %44, align 1
  store i8 %46, i8* %9, align 1
  %47 = load i8*, i8** %7, align 8
  %48 = getelementptr inbounds i8, i8* %47, i32 1
  store i8* %48, i8** %7, align 8
  %49 = load i8, i8* %47, align 1
  store i8 %49, i8* %10, align 1
  %50 = load i8, i8* %9, align 1
  %51 = zext i8 %50 to i32
  %52 = and i32 %51, 15
  %53 = trunc i32 %52 to i8
  store i8 %53, i8* %9, align 1
  %54 = load i8, i8* %10, align 1
  %55 = zext i8 %54 to i32
  %56 = and i32 %55, 15
  %57 = trunc i32 %56 to i8
  store i8 %57, i8* %10, align 1
  %58 = load i8, i8* %10, align 1
  %59 = zext i8 %58 to i32
  %60 = shl i32 %59, 4
  %61 = load i8, i8* %9, align 1
  %62 = zext i8 %61 to i32
  %63 = or i32 %62, %60
  %64 = trunc i32 %63 to i8
  store i8 %64, i8* %9, align 1
  %65 = load %struct.sd*, %struct.sd** %2, align 8
  %66 = load i32, i32* %13, align 4
  %67 = load i8, i8* %9, align 1
  %68 = call i32 @reg_w(%struct.sd* %65, i32 %66, i8 zeroext %67)
  %69 = load i8*, i8** %8, align 8
  %70 = getelementptr inbounds i8, i8* %69, i32 1
  store i8* %70, i8** %8, align 8
  %71 = load i8, i8* %69, align 1
  store i8 %71, i8* %9, align 1
  %72 = load i8*, i8** %8, align 8
  %73 = getelementptr inbounds i8, i8* %72, i32 1
  store i8* %73, i8** %8, align 8
  %74 = load i8, i8* %72, align 1
  store i8 %74, i8* %10, align 1
  %75 = load i8, i8* %9, align 1
  %76 = zext i8 %75 to i32
  %77 = and i32 %76, 15
  %78 = trunc i32 %77 to i8
  store i8 %78, i8* %9, align 1
  %79 = load i8, i8* %10, align 1
  %80 = zext i8 %79 to i32
  %81 = and i32 %80, 15
  %82 = trunc i32 %81 to i8
  store i8 %82, i8* %10, align 1
  %83 = load i8, i8* %10, align 1
  %84 = zext i8 %83 to i32
  %85 = shl i32 %84, 4
  %86 = load i8, i8* %9, align 1
  %87 = zext i8 %86 to i32
  %88 = or i32 %87, %85
  %89 = trunc i32 %88 to i8
  store i8 %89, i8* %9, align 1
  %90 = load %struct.sd*, %struct.sd** %2, align 8
  %91 = load i32, i32* %13, align 4
  %92 = load i32, i32* %12, align 4
  %93 = add nsw i32 %91, %92
  %94 = load i8, i8* %9, align 1
  %95 = call i32 @reg_w(%struct.sd* %90, i32 %93, i8 zeroext %94)
  %96 = load i32, i32* %13, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %13, align 4
  br label %98

98:                                               ; preds = %43
  %99 = load i32, i32* %11, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %11, align 4
  br label %39

101:                                              ; preds = %39
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @PDEBUG(i32, i8*) #2

declare dso_local i32 @reg_w(%struct.sd*, i32, i8 zeroext) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
