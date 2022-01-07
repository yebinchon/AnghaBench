; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/rio/extr_rioboot.c_RIOBootOk.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/rio/extr_rioboot.c_RIOBootOk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rio_info = type { i32* }
%struct.Host = type { i32 }

@MAX_RTA_BINDINGS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @RIOBootOk(%struct.rio_info* %0, %struct.Host* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.rio_info*, align 8
  %6 = alloca %struct.Host*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.rio_info* %0, %struct.rio_info** %5, align 8
  store %struct.Host* %1, %struct.Host** %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = load %struct.Host*, %struct.Host** %6, align 8
  %11 = getelementptr inbounds %struct.Host, %struct.Host* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %9, align 4
  store i32 0, i32* %8, align 4
  br label %13

13:                                               ; preds = %51, %3
  %14 = load i32, i32* %8, align 4
  %15 = load i32, i32* @MAX_RTA_BINDINGS, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %26

17:                                               ; preds = %13
  %18 = load %struct.rio_info*, %struct.rio_info** %5, align 8
  %19 = getelementptr inbounds %struct.rio_info, %struct.rio_info* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = load i32, i32* %8, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i32, i32* %20, i64 %22
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 0
  br label %26

26:                                               ; preds = %17, %13
  %27 = phi i1 [ false, %13 ], [ %25, %17 ]
  br i1 %27, label %28, label %54

28:                                               ; preds = %26
  %29 = load %struct.rio_info*, %struct.rio_info** %5, align 8
  %30 = getelementptr inbounds %struct.rio_info, %struct.rio_info* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = load i32, i32* %8, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %31, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* %9, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %49, label %38

38:                                               ; preds = %28
  %39 = load %struct.rio_info*, %struct.rio_info** %5, align 8
  %40 = getelementptr inbounds %struct.rio_info, %struct.rio_info* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = load i32, i32* %8, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = zext i32 %45 to i64
  %47 = load i64, i64* %7, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %38, %28
  store i32 0, i32* %4, align 4
  br label %55

50:                                               ; preds = %38
  br label %51

51:                                               ; preds = %50
  %52 = load i32, i32* %8, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %8, align 4
  br label %13

54:                                               ; preds = %26
  store i32 1, i32* %4, align 4
  br label %55

55:                                               ; preds = %54, %49
  %56 = load i32, i32* %4, align 4
  ret i32 %56
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
