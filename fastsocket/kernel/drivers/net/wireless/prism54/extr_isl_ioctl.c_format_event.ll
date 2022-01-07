; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/prism54/extr_isl_ioctl.c_format_event.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/prism54/extr_isl_ioctl.c_format_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64 }
%struct.obj_mlme = type { i32, i32 }

@IW_CUSTOM_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"%s %s %pM %s (%2.2X)\00", align 1
@IW_MODE_MASTER = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"from\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"to\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c" : REJECTED \00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c" : ACCEPTED \00", align 1
@.str.5 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i8*, i8*, %struct.obj_mlme*, i32*, i32)* @format_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @format_event(%struct.TYPE_3__* %0, i8* %1, i8* %2, %struct.obj_mlme* %3, i32* %4, i32 %5) #0 {
  %7 = alloca %struct.TYPE_3__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.obj_mlme*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store %struct.obj_mlme* %3, %struct.obj_mlme** %10, align 8
  store i32* %4, i32** %11, align 8
  store i32 %5, i32* %12, align 4
  %14 = load i8*, i8** %8, align 8
  %15 = load i32, i32* @IW_CUSTOM_MAX, align 4
  %16 = load i8*, i8** %9, align 8
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @IW_MODE_MASTER, align 8
  %21 = icmp eq i64 %19, %20
  %22 = zext i1 %21 to i64
  %23 = select i1 %21, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0)
  %24 = load %struct.obj_mlme*, %struct.obj_mlme** %10, align 8
  %25 = getelementptr inbounds %struct.obj_mlme, %struct.obj_mlme* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* %12, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %36

29:                                               ; preds = %6
  %30 = load %struct.obj_mlme*, %struct.obj_mlme** %10, align 8
  %31 = getelementptr inbounds %struct.obj_mlme, %struct.obj_mlme* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = icmp ne i32 %32, 0
  %34 = zext i1 %33 to i64
  %35 = select i1 %33, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0)
  br label %37

36:                                               ; preds = %6
  br label %37

37:                                               ; preds = %36, %29
  %38 = phi i8* [ %35, %29 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0), %36 ]
  %39 = load %struct.obj_mlme*, %struct.obj_mlme** %10, align 8
  %40 = getelementptr inbounds %struct.obj_mlme, %struct.obj_mlme* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @snprintf(i8* %14, i32 %15, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i8* %16, i8* %23, i32 %26, i8* %38, i32 %41)
  store i32 %42, i32* %13, align 4
  %43 = load i32, i32* %13, align 4
  %44 = load i32, i32* @IW_CUSTOM_MAX, align 4
  %45 = icmp sgt i32 %43, %44
  %46 = zext i1 %45 to i32
  %47 = call i32 @BUG_ON(i32 %46)
  %48 = load i32, i32* %13, align 4
  %49 = load i32*, i32** %11, align 8
  store i32 %48, i32* %49, align 4
  ret void
}

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i8*, i32, i8*, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
