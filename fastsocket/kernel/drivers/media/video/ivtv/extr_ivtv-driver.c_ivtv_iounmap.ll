; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/ivtv/extr_ivtv-driver.c_ivtv_iounmap.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/ivtv/extr_ivtv-driver.c_ivtv_iounmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ivtv = type { i32*, i32*, i64, i32* }

@.str = private unnamed_addr constant [19 x i8] c"releasing reg_mem\0A\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"releasing dec_mem\0A\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"releasing enc_mem\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ivtv*)* @ivtv_iounmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ivtv_iounmap(%struct.ivtv* %0) #0 {
  %2 = alloca %struct.ivtv*, align 8
  store %struct.ivtv* %0, %struct.ivtv** %2, align 8
  %3 = load %struct.ivtv*, %struct.ivtv** %2, align 8
  %4 = icmp eq %struct.ivtv* %3, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  br label %50

6:                                                ; preds = %1
  %7 = load %struct.ivtv*, %struct.ivtv** %2, align 8
  %8 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %7, i32 0, i32 3
  %9 = load i32*, i32** %8, align 8
  %10 = icmp ne i32* %9, null
  br i1 %10, label %11, label %19

11:                                               ; preds = %6
  %12 = call i32 @IVTV_DEBUG_INFO(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %13 = load %struct.ivtv*, %struct.ivtv** %2, align 8
  %14 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %13, i32 0, i32 3
  %15 = load i32*, i32** %14, align 8
  %16 = call i32 @iounmap(i32* %15)
  %17 = load %struct.ivtv*, %struct.ivtv** %2, align 8
  %18 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %17, i32 0, i32 3
  store i32* null, i32** %18, align 8
  br label %19

19:                                               ; preds = %11, %6
  %20 = load %struct.ivtv*, %struct.ivtv** %2, align 8
  %21 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %20, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %35

24:                                               ; preds = %19
  %25 = load %struct.ivtv*, %struct.ivtv** %2, align 8
  %26 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %25, i32 0, i32 1
  %27 = load i32*, i32** %26, align 8
  %28 = icmp ne i32* %27, null
  br i1 %28, label %29, label %35

29:                                               ; preds = %24
  %30 = call i32 @IVTV_DEBUG_INFO(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %31 = load %struct.ivtv*, %struct.ivtv** %2, align 8
  %32 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %31, i32 0, i32 1
  %33 = load i32*, i32** %32, align 8
  %34 = call i32 @iounmap(i32* %33)
  br label %35

35:                                               ; preds = %29, %24, %19
  %36 = load %struct.ivtv*, %struct.ivtv** %2, align 8
  %37 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %36, i32 0, i32 1
  store i32* null, i32** %37, align 8
  %38 = load %struct.ivtv*, %struct.ivtv** %2, align 8
  %39 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = icmp ne i32* %40, null
  br i1 %41, label %42, label %50

42:                                               ; preds = %35
  %43 = call i32 @IVTV_DEBUG_INFO(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  %44 = load %struct.ivtv*, %struct.ivtv** %2, align 8
  %45 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = call i32 @iounmap(i32* %46)
  %48 = load %struct.ivtv*, %struct.ivtv** %2, align 8
  %49 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %48, i32 0, i32 0
  store i32* null, i32** %49, align 8
  br label %50

50:                                               ; preds = %5, %42, %35
  ret void
}

declare dso_local i32 @IVTV_DEBUG_INFO(i8*) #1

declare dso_local i32 @iounmap(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
