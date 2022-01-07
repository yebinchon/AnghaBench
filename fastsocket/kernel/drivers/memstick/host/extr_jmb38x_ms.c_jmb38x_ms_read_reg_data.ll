; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/memstick/host/extr_jmb38x_ms.c_jmb38x_ms_read_reg_data.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/memstick/host/extr_jmb38x_ms.c_jmb38x_ms_read_reg_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jmb38x_ms_host = type { i32, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.jmb38x_ms_host*, i8*, i32)* @jmb38x_ms_read_reg_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jmb38x_ms_read_reg_data(%struct.jmb38x_ms_host* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.jmb38x_ms_host*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.jmb38x_ms_host* %0, %struct.jmb38x_ms_host** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %9

9:                                                ; preds = %19, %3
  %10 = load %struct.jmb38x_ms_host*, %struct.jmb38x_ms_host** %5, align 8
  %11 = getelementptr inbounds %struct.jmb38x_ms_host, %struct.jmb38x_ms_host* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp sgt i32 %12, 4
  br i1 %13, label %14, label %17

14:                                               ; preds = %9
  %15 = load i32, i32* %7, align 4
  %16 = icmp ne i32 %15, 0
  br label %17

17:                                               ; preds = %14, %9
  %18 = phi i1 [ false, %9 ], [ %16, %14 ]
  br i1 %18, label %19, label %44

19:                                               ; preds = %17
  %20 = load %struct.jmb38x_ms_host*, %struct.jmb38x_ms_host** %5, align 8
  %21 = getelementptr inbounds %struct.jmb38x_ms_host, %struct.jmb38x_ms_host* %20, i32 0, i32 1
  %22 = load i32*, i32** %21, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 0
  %24 = load i32, i32* %23, align 4
  %25 = and i32 %24, 255
  %26 = trunc i32 %25 to i8
  %27 = load i8*, i8** %6, align 8
  %28 = load i32, i32* %8, align 4
  %29 = add i32 %28, 1
  store i32 %29, i32* %8, align 4
  %30 = zext i32 %28 to i64
  %31 = getelementptr inbounds i8, i8* %27, i64 %30
  store i8 %26, i8* %31, align 1
  %32 = load %struct.jmb38x_ms_host*, %struct.jmb38x_ms_host** %5, align 8
  %33 = getelementptr inbounds %struct.jmb38x_ms_host, %struct.jmb38x_ms_host* %32, i32 0, i32 1
  %34 = load i32*, i32** %33, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 0
  %36 = load i32, i32* %35, align 4
  %37 = ashr i32 %36, 8
  store i32 %37, i32* %35, align 4
  %38 = load i32, i32* %7, align 4
  %39 = add i32 %38, -1
  store i32 %39, i32* %7, align 4
  %40 = load %struct.jmb38x_ms_host*, %struct.jmb38x_ms_host** %5, align 8
  %41 = getelementptr inbounds %struct.jmb38x_ms_host, %struct.jmb38x_ms_host* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = add nsw i32 %42, -1
  store i32 %43, i32* %41, align 8
  br label %9

44:                                               ; preds = %17
  %45 = load i32, i32* %7, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %49, label %47

47:                                               ; preds = %44
  %48 = load i32, i32* %8, align 4
  store i32 %48, i32* %4, align 4
  br label %87

49:                                               ; preds = %44
  br label %50

50:                                               ; preds = %60, %49
  %51 = load %struct.jmb38x_ms_host*, %struct.jmb38x_ms_host** %5, align 8
  %52 = getelementptr inbounds %struct.jmb38x_ms_host, %struct.jmb38x_ms_host* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %50
  %56 = load i32, i32* %7, align 4
  %57 = icmp ne i32 %56, 0
  br label %58

58:                                               ; preds = %55, %50
  %59 = phi i1 [ false, %50 ], [ %57, %55 ]
  br i1 %59, label %60, label %85

60:                                               ; preds = %58
  %61 = load %struct.jmb38x_ms_host*, %struct.jmb38x_ms_host** %5, align 8
  %62 = getelementptr inbounds %struct.jmb38x_ms_host, %struct.jmb38x_ms_host* %61, i32 0, i32 1
  %63 = load i32*, i32** %62, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 1
  %65 = load i32, i32* %64, align 4
  %66 = and i32 %65, 255
  %67 = trunc i32 %66 to i8
  %68 = load i8*, i8** %6, align 8
  %69 = load i32, i32* %8, align 4
  %70 = add i32 %69, 1
  store i32 %70, i32* %8, align 4
  %71 = zext i32 %69 to i64
  %72 = getelementptr inbounds i8, i8* %68, i64 %71
  store i8 %67, i8* %72, align 1
  %73 = load %struct.jmb38x_ms_host*, %struct.jmb38x_ms_host** %5, align 8
  %74 = getelementptr inbounds %struct.jmb38x_ms_host, %struct.jmb38x_ms_host* %73, i32 0, i32 1
  %75 = load i32*, i32** %74, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 1
  %77 = load i32, i32* %76, align 4
  %78 = ashr i32 %77, 8
  store i32 %78, i32* %76, align 4
  %79 = load i32, i32* %7, align 4
  %80 = add i32 %79, -1
  store i32 %80, i32* %7, align 4
  %81 = load %struct.jmb38x_ms_host*, %struct.jmb38x_ms_host** %5, align 8
  %82 = getelementptr inbounds %struct.jmb38x_ms_host, %struct.jmb38x_ms_host* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = add nsw i32 %83, -1
  store i32 %84, i32* %82, align 8
  br label %50

85:                                               ; preds = %58
  %86 = load i32, i32* %8, align 4
  store i32 %86, i32* %4, align 4
  br label %87

87:                                               ; preds = %85, %47
  %88 = load i32, i32* %4, align 4
  ret i32 %88
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
