; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mca/extr_mca-proc.c_get_mca_info_helper.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mca/extr_mca-proc.c_get_mca_info_helper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mca_device = type { i32*, i8* }

@.str = private unnamed_addr constant [6 x i8] c"%02x \00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c" %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mca_device*, i8*, i32)* @get_mca_info_helper to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_mca_info_helper(%struct.mca_device* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.mca_device*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.mca_device* %0, %struct.mca_device** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %8

8:                                                ; preds = %34, %3
  %9 = load i32, i32* %7, align 4
  %10 = icmp slt i32 %9, 8
  br i1 %10, label %11, label %37

11:                                               ; preds = %8
  %12 = load i8*, i8** %5, align 8
  %13 = load i32, i32* %6, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i8, i8* %12, i64 %14
  %16 = load %struct.mca_device*, %struct.mca_device** %4, align 8
  %17 = icmp ne %struct.mca_device* %16, null
  br i1 %17, label %18, label %26

18:                                               ; preds = %11
  %19 = load %struct.mca_device*, %struct.mca_device** %4, align 8
  %20 = getelementptr inbounds %struct.mca_device, %struct.mca_device* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = load i32, i32* %7, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %21, i64 %23
  %25 = load i32, i32* %24, align 4
  br label %27

26:                                               ; preds = %11
  br label %27

27:                                               ; preds = %26, %18
  %28 = phi i32 [ %25, %18 ], [ 255, %26 ]
  %29 = call i64 (i8*, i8*, ...) @sprintf(i8* %15, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %28)
  %30 = load i32, i32* %6, align 4
  %31 = sext i32 %30 to i64
  %32 = add nsw i64 %31, %29
  %33 = trunc i64 %32 to i32
  store i32 %33, i32* %6, align 4
  br label %34

34:                                               ; preds = %27
  %35 = load i32, i32* %7, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %7, align 4
  br label %8

37:                                               ; preds = %8
  %38 = load i8*, i8** %5, align 8
  %39 = load i32, i32* %6, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i8, i8* %38, i64 %40
  %42 = load %struct.mca_device*, %struct.mca_device** %4, align 8
  %43 = icmp ne %struct.mca_device* %42, null
  br i1 %43, label %44, label %48

44:                                               ; preds = %37
  %45 = load %struct.mca_device*, %struct.mca_device** %4, align 8
  %46 = getelementptr inbounds %struct.mca_device, %struct.mca_device* %45, i32 0, i32 1
  %47 = load i8*, i8** %46, align 8
  br label %49

48:                                               ; preds = %37
  br label %49

49:                                               ; preds = %48, %44
  %50 = phi i8* [ %47, %44 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), %48 ]
  %51 = call i64 (i8*, i8*, ...) @sprintf(i8* %41, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* %50)
  %52 = load i32, i32* %6, align 4
  %53 = sext i32 %52 to i64
  %54 = add nsw i64 %53, %51
  %55 = trunc i64 %54 to i32
  store i32 %55, i32* %6, align 4
  %56 = load i32, i32* %6, align 4
  ret i32 %56
}

declare dso_local i64 @sprintf(i8*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
