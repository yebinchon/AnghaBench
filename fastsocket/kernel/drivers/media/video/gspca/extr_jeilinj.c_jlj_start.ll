; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_jeilinj.c_jlj_start.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_jeilinj.c_jlj_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jlj_command = type { i32, i64, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.gspca_dev = type { i32 }

@__const.jlj_start.start_commands = private unnamed_addr constant [27 x %struct.jlj_command] [%struct.jlj_command { i32 113, i64 0, i32 0, %struct.TYPE_2__ zeroinitializer }, %struct.jlj_command { i32 112, i64 0, i32 0, %struct.TYPE_2__ zeroinitializer }, %struct.jlj_command { i32 149, i64 1, i32 0, %struct.TYPE_2__ zeroinitializer }, %struct.jlj_command { i32 113, i64 0, i32 0, %struct.TYPE_2__ zeroinitializer }, %struct.jlj_command { i32 112, i64 0, i32 0, %struct.TYPE_2__ zeroinitializer }, %struct.jlj_command { i32 149, i64 1, i32 0, %struct.TYPE_2__ zeroinitializer }, %struct.jlj_command { i32 113, i64 0, i32 0, %struct.TYPE_2__ zeroinitializer }, %struct.jlj_command { i32 112, i64 0, i32 0, %struct.TYPE_2__ zeroinitializer }, %struct.jlj_command { i32 149, i64 1, i32 0, %struct.TYPE_2__ zeroinitializer }, %struct.jlj_command { i32 148, i64 0, i32 0, %struct.TYPE_2__ zeroinitializer }, %struct.jlj_command { i32 222, i64 0, i32 0, %struct.TYPE_2__ zeroinitializer }, %struct.jlj_command { i32 148, i64 0, i32 0, %struct.TYPE_2__ zeroinitializer }, %struct.jlj_command { i32 221, i64 0, i32 0, %struct.TYPE_2__ zeroinitializer }, %struct.jlj_command { i32 148, i64 0, i32 0, %struct.TYPE_2__ zeroinitializer }, %struct.jlj_command { i32 227, i64 0, i32 0, %struct.TYPE_2__ zeroinitializer }, %struct.jlj_command { i32 148, i64 0, i32 0, %struct.TYPE_2__ zeroinitializer }, %struct.jlj_command { i32 228, i64 0, i32 0, %struct.TYPE_2__ zeroinitializer }, %struct.jlj_command { i32 148, i64 0, i32 0, %struct.TYPE_2__ zeroinitializer }, %struct.jlj_command { i32 229, i64 0, i32 0, %struct.TYPE_2__ zeroinitializer }, %struct.jlj_command { i32 148, i64 0, i32 0, %struct.TYPE_2__ zeroinitializer }, %struct.jlj_command { i32 230, i64 0, i32 0, %struct.TYPE_2__ zeroinitializer }, %struct.jlj_command { i32 148, i64 0, i32 0, %struct.TYPE_2__ zeroinitializer }, %struct.jlj_command { i32 170, i64 0, i32 0, %struct.TYPE_2__ zeroinitializer }, %struct.jlj_command { i32 113, i64 0, i32 0, %struct.TYPE_2__ zeroinitializer }, %struct.jlj_command { i32 112, i64 0, i32 0, %struct.TYPE_2__ zeroinitializer }, %struct.jlj_command { i32 113, i64 0, i32 0, %struct.TYPE_2__ zeroinitializer }, %struct.jlj_command { i32 112, i64 0, i32 0, %struct.TYPE_2__ zeroinitializer }], align 16
@D_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"jlj_start retval is %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gspca_dev*)* @jlj_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jlj_start(%struct.gspca_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.gspca_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [27 x %struct.jlj_command], align 16
  store %struct.gspca_dev* %0, %struct.gspca_dev** %3, align 8
  store i32 -1, i32* %5, align 4
  store i32 255, i32* %6, align 4
  %8 = bitcast [27 x %struct.jlj_command]* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %8, i8* align 16 bitcast ([27 x %struct.jlj_command]* @__const.jlj_start.start_commands to i8*), i64 864, i1 false)
  store i32 0, i32* %4, align 4
  br label %9

9:                                                ; preds = %43, %1
  %10 = load i32, i32* %4, align 4
  %11 = getelementptr inbounds [27 x %struct.jlj_command], [27 x %struct.jlj_command]* %7, i64 0, i64 0
  %12 = call i32 @ARRAY_SIZE(%struct.jlj_command* %11)
  %13 = icmp slt i32 %10, %12
  br i1 %13, label %14, label %46

14:                                               ; preds = %9
  %15 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %16 = load i32, i32* %4, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds [27 x %struct.jlj_command], [27 x %struct.jlj_command]* %7, i64 0, i64 %17
  %19 = getelementptr inbounds %struct.jlj_command, %struct.jlj_command* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 16
  %21 = call i32 @jlj_write2(%struct.gspca_dev* %15, i32 %20)
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* %5, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %14
  %25 = load i32, i32* %5, align 4
  store i32 %25, i32* %2, align 4
  br label %51

26:                                               ; preds = %14
  %27 = load i32, i32* %4, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds [27 x %struct.jlj_command], [27 x %struct.jlj_command]* %7, i64 0, i64 %28
  %30 = getelementptr inbounds %struct.jlj_command, %struct.jlj_command* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %26
  %34 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %35 = load i32, i32* %6, align 4
  %36 = call i32 @jlj_read1(%struct.gspca_dev* %34, i32 %35)
  store i32 %36, i32* %5, align 4
  br label %37

37:                                               ; preds = %33, %26
  %38 = load i32, i32* %5, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %37
  %41 = load i32, i32* %5, align 4
  store i32 %41, i32* %2, align 4
  br label %51

42:                                               ; preds = %37
  br label %43

43:                                               ; preds = %42
  %44 = load i32, i32* %4, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %4, align 4
  br label %9

46:                                               ; preds = %9
  %47 = load i32, i32* @D_ERR, align 4
  %48 = load i32, i32* %5, align 4
  %49 = call i32 @PDEBUG(i32 %47, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %48)
  %50 = load i32, i32* %5, align 4
  store i32 %50, i32* %2, align 4
  br label %51

51:                                               ; preds = %46, %40, %24
  %52 = load i32, i32* %2, align 4
  ret i32 %52
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @ARRAY_SIZE(%struct.jlj_command*) #2

declare dso_local i32 @jlj_write2(%struct.gspca_dev*, i32) #2

declare dso_local i32 @jlj_read1(%struct.gspca_dev*, i32) #2

declare dso_local i32 @PDEBUG(i32, i8*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
