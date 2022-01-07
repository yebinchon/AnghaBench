; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/misc/extr_tifm_core.c_tifm_media_type_name.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/misc/extr_tifm_core.c_tifm_media_type_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [14 x i8] c"SmartMedia/xD\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"MemoryStick\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"MMC/SD\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"XD\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"MS\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"SD\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"xd\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"ms\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"sd\00", align 1
@__const.tifm_media_type_name.card_type_name = private unnamed_addr constant [3 x [3 x i8*]] [[3 x i8*] [i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i32 0, i32 0)], [3 x i8*] [i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i32 0, i32 0)], [3 x i8*] [i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i32 0, i32 0)]], align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8, i8)* @tifm_media_type_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @tifm_media_type_name(i8 zeroext %0, i8 zeroext %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  %6 = alloca [3 x [3 x i8*]], align 16
  store i8 %0, i8* %4, align 1
  store i8 %1, i8* %5, align 1
  %7 = bitcast [3 x [3 x i8*]]* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %7, i8* align 16 bitcast ([3 x [3 x i8*]]* @__const.tifm_media_type_name.card_type_name to i8*), i64 72, i1 false)
  %8 = load i8, i8* %5, align 1
  %9 = zext i8 %8 to i32
  %10 = icmp sgt i32 %9, 2
  br i1 %10, label %19, label %11

11:                                               ; preds = %2
  %12 = load i8, i8* %4, align 1
  %13 = zext i8 %12 to i32
  %14 = icmp slt i32 %13, 1
  br i1 %14, label %19, label %15

15:                                               ; preds = %11
  %16 = load i8, i8* %4, align 1
  %17 = zext i8 %16 to i32
  %18 = icmp sgt i32 %17, 3
  br i1 %18, label %19, label %20

19:                                               ; preds = %15, %11, %2
  store i8* null, i8** %3, align 8
  br label %30

20:                                               ; preds = %15
  %21 = load i8, i8* %5, align 1
  %22 = zext i8 %21 to i64
  %23 = getelementptr inbounds [3 x [3 x i8*]], [3 x [3 x i8*]]* %6, i64 0, i64 %22
  %24 = load i8, i8* %4, align 1
  %25 = zext i8 %24 to i32
  %26 = sub nsw i32 %25, 1
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds [3 x i8*], [3 x i8*]* %23, i64 0, i64 %27
  %29 = load i8*, i8** %28, align 8
  store i8* %29, i8** %3, align 8
  br label %30

30:                                               ; preds = %20, %19
  %31 = load i8*, i8** %3, align 8
  ret i8* %31
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
