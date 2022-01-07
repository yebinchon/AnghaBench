; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_jeilinj.c_jlj_stop.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_jeilinj.c_jlj_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gspca_dev = type { i32 }
%struct.jlj_command = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gspca_dev*)* @jlj_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jlj_stop(%struct.gspca_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.gspca_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca [4 x %struct.jlj_command], align 16
  store %struct.gspca_dev* %0, %struct.gspca_dev** %3, align 8
  %7 = bitcast [4 x %struct.jlj_command]* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %7, i8 0, i64 64, i1 false)
  %8 = bitcast i8* %7 to [4 x %struct.jlj_command]*
  %9 = getelementptr inbounds [4 x %struct.jlj_command], [4 x %struct.jlj_command]* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.jlj_command, %struct.jlj_command* %9, i32 0, i32 0
  store i32 113, i32* %10, align 16
  %11 = getelementptr inbounds [4 x %struct.jlj_command], [4 x %struct.jlj_command]* %8, i32 0, i32 1
  %12 = getelementptr inbounds %struct.jlj_command, %struct.jlj_command* %11, i32 0, i32 0
  store i32 112, i32* %12, align 16
  %13 = getelementptr inbounds [4 x %struct.jlj_command], [4 x %struct.jlj_command]* %8, i32 0, i32 2
  %14 = getelementptr inbounds %struct.jlj_command, %struct.jlj_command* %13, i32 0, i32 0
  store i32 113, i32* %14, align 16
  %15 = getelementptr inbounds [4 x %struct.jlj_command], [4 x %struct.jlj_command]* %8, i32 0, i32 3
  %16 = getelementptr inbounds %struct.jlj_command, %struct.jlj_command* %15, i32 0, i32 0
  store i32 112, i32* %16, align 16
  store i32 0, i32* %4, align 4
  br label %17

17:                                               ; preds = %35, %1
  %18 = load i32, i32* %4, align 4
  %19 = getelementptr inbounds [4 x %struct.jlj_command], [4 x %struct.jlj_command]* %6, i64 0, i64 0
  %20 = call i32 @ARRAY_SIZE(%struct.jlj_command* %19)
  %21 = icmp slt i32 %18, %20
  br i1 %21, label %22, label %38

22:                                               ; preds = %17
  %23 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %24 = load i32, i32* %4, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds [4 x %struct.jlj_command], [4 x %struct.jlj_command]* %6, i64 0, i64 %25
  %27 = getelementptr inbounds %struct.jlj_command, %struct.jlj_command* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 16
  %29 = call i32 @jlj_write2(%struct.gspca_dev* %23, i32 %28)
  store i32 %29, i32* %5, align 4
  %30 = load i32, i32* %5, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %22
  %33 = load i32, i32* %5, align 4
  store i32 %33, i32* %2, align 4
  br label %40

34:                                               ; preds = %22
  br label %35

35:                                               ; preds = %34
  %36 = load i32, i32* %4, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %4, align 4
  br label %17

38:                                               ; preds = %17
  %39 = load i32, i32* %5, align 4
  store i32 %39, i32* %2, align 4
  br label %40

40:                                               ; preds = %38, %32
  %41 = load i32, i32* %2, align 4
  ret i32 %41
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @ARRAY_SIZE(%struct.jlj_command*) #2

declare dso_local i32 @jlj_write2(%struct.gspca_dev*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
