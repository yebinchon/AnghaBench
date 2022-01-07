; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/paride/extr_pg.c_pg_identify.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/paride/extr_pg.c_pg_identify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pg = type { i64, i32 }

@.str = private unnamed_addr constant [7 x i8] c"master\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"slave\00", align 1
@__const.pg_identify.ms = private unnamed_addr constant [2 x i8*] [i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0)], align 16
@ATAPI_IDENTIFY = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@PG_TMO = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [15 x i8] c"%s: %s %s, %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pg*, i32)* @pg_identify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pg_identify(%struct.pg* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pg*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [2 x i8*], align 16
  %8 = alloca [10 x i8], align 1
  %9 = alloca [18 x i8], align 16
  %10 = alloca [12 x i8], align 1
  %11 = alloca [36 x i8], align 16
  store %struct.pg* %0, %struct.pg** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = bitcast [2 x i8*]* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %12, i8* align 16 bitcast ([2 x i8*]* @__const.pg_identify.ms to i8*), i64 16, i1 false)
  %13 = getelementptr inbounds [12 x i8], [12 x i8]* %10, i64 0, i64 0
  %14 = load i32, i32* @ATAPI_IDENTIFY, align 4
  %15 = trunc i32 %14 to i8
  store i8 %15, i8* %13, align 1
  %16 = getelementptr inbounds i8, i8* %13, i64 1
  store i8 0, i8* %16, align 1
  %17 = getelementptr inbounds i8, i8* %16, i64 1
  store i8 0, i8* %17, align 1
  %18 = getelementptr inbounds i8, i8* %17, i64 1
  store i8 0, i8* %18, align 1
  %19 = getelementptr inbounds i8, i8* %18, i64 1
  store i8 36, i8* %19, align 1
  %20 = getelementptr inbounds i8, i8* %19, i64 1
  store i8 0, i8* %20, align 1
  %21 = getelementptr inbounds i8, i8* %20, i64 1
  store i8 0, i8* %21, align 1
  %22 = getelementptr inbounds i8, i8* %21, i64 1
  store i8 0, i8* %22, align 1
  %23 = getelementptr inbounds i8, i8* %22, i64 1
  store i8 0, i8* %23, align 1
  %24 = getelementptr inbounds i8, i8* %23, i64 1
  store i8 0, i8* %24, align 1
  %25 = getelementptr inbounds i8, i8* %24, i64 1
  store i8 0, i8* %25, align 1
  %26 = getelementptr inbounds i8, i8* %25, i64 1
  store i8 0, i8* %26, align 1
  %27 = load %struct.pg*, %struct.pg** %4, align 8
  %28 = getelementptr inbounds [12 x i8], [12 x i8]* %10, i64 0, i64 0
  %29 = load i64, i64* @jiffies, align 8
  %30 = load i64, i64* @PG_TMO, align 8
  %31 = add nsw i64 %29, %30
  %32 = call i32 @pg_command(%struct.pg* %27, i8* %28, i32 36, i64 %31)
  store i32 %32, i32* %6, align 4
  %33 = load i32, i32* %6, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %70

36:                                               ; preds = %2
  %37 = load %struct.pg*, %struct.pg** %4, align 8
  %38 = getelementptr inbounds [36 x i8], [36 x i8]* %11, i64 0, i64 0
  %39 = load i64, i64* @jiffies, align 8
  %40 = load i64, i64* @PG_TMO, align 8
  %41 = add nsw i64 %39, %40
  %42 = call i32 @pg_completion(%struct.pg* %37, i8* %38, i64 %41)
  store i32 %42, i32* %6, align 4
  %43 = load i32, i32* %6, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %36
  store i32 -1, i32* %3, align 4
  br label %70

46:                                               ; preds = %36
  %47 = load i32, i32* %5, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %69

49:                                               ; preds = %46
  %50 = getelementptr inbounds [36 x i8], [36 x i8]* %11, i64 0, i64 0
  %51 = getelementptr inbounds i8, i8* %50, i64 8
  %52 = getelementptr inbounds [10 x i8], [10 x i8]* %8, i64 0, i64 0
  %53 = call i32 @xs(i8* %51, i8* %52, i32 8)
  %54 = getelementptr inbounds [36 x i8], [36 x i8]* %11, i64 0, i64 0
  %55 = getelementptr inbounds i8, i8* %54, i64 16
  %56 = getelementptr inbounds [18 x i8], [18 x i8]* %9, i64 0, i64 0
  %57 = call i32 @xs(i8* %55, i8* %56, i32 16)
  %58 = load %struct.pg*, %struct.pg** %4, align 8
  %59 = getelementptr inbounds %struct.pg, %struct.pg* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = getelementptr inbounds [10 x i8], [10 x i8]* %8, i64 0, i64 0
  %62 = getelementptr inbounds [18 x i8], [18 x i8]* %9, i64 0, i64 0
  %63 = load %struct.pg*, %struct.pg** %4, align 8
  %64 = getelementptr inbounds %struct.pg, %struct.pg* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = getelementptr inbounds [2 x i8*], [2 x i8*]* %7, i64 0, i64 %65
  %67 = load i8*, i8** %66, align 8
  %68 = call i32 @printk(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i32 %60, i8* %61, i8* %62, i8* %67)
  br label %69

69:                                               ; preds = %49, %46
  store i32 0, i32* %3, align 4
  br label %70

70:                                               ; preds = %69, %45, %35
  %71 = load i32, i32* %3, align 4
  ret i32 %71
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @pg_command(%struct.pg*, i8*, i32, i64) #2

declare dso_local i32 @pg_completion(%struct.pg*, i8*, i64) #2

declare dso_local i32 @xs(i8*, i8*, i32) #2

declare dso_local i32 @printk(i8*, i32, i8*, i8*, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
