; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/android/extr_binder.c_binder_dec_ref.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/android/extr_binder.c_binder_dec_ref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.binder_ref = type { i64, i64, i32, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [57 x i8] c"binder: %d invalid dec strong, ref %d desc %d s %d w %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [55 x i8] c"binder: %d invalid dec weak, ref %d desc %d s %d w %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.binder_ref*, i32)* @binder_dec_ref to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @binder_dec_ref(%struct.binder_ref* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.binder_ref*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.binder_ref* %0, %struct.binder_ref** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %56

9:                                                ; preds = %2
  %10 = load %struct.binder_ref*, %struct.binder_ref** %4, align 8
  %11 = getelementptr inbounds %struct.binder_ref, %struct.binder_ref* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %35

14:                                               ; preds = %9
  %15 = load %struct.binder_ref*, %struct.binder_ref** %4, align 8
  %16 = getelementptr inbounds %struct.binder_ref, %struct.binder_ref* %15, i32 0, i32 4
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.binder_ref*, %struct.binder_ref** %4, align 8
  %21 = getelementptr inbounds %struct.binder_ref, %struct.binder_ref* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.binder_ref*, %struct.binder_ref** %4, align 8
  %24 = getelementptr inbounds %struct.binder_ref, %struct.binder_ref* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.binder_ref*, %struct.binder_ref** %4, align 8
  %27 = getelementptr inbounds %struct.binder_ref, %struct.binder_ref* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.binder_ref*, %struct.binder_ref** %4, align 8
  %30 = getelementptr inbounds %struct.binder_ref, %struct.binder_ref* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = call i32 @binder_user_error(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0), i32 %19, i32 %22, i32 %25, i64 %28, i64 %31)
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %3, align 4
  br label %101

35:                                               ; preds = %9
  %36 = load %struct.binder_ref*, %struct.binder_ref** %4, align 8
  %37 = getelementptr inbounds %struct.binder_ref, %struct.binder_ref* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = add nsw i64 %38, -1
  store i64 %39, i64* %37, align 8
  %40 = load %struct.binder_ref*, %struct.binder_ref** %4, align 8
  %41 = getelementptr inbounds %struct.binder_ref, %struct.binder_ref* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %44, label %55

44:                                               ; preds = %35
  %45 = load %struct.binder_ref*, %struct.binder_ref** %4, align 8
  %46 = getelementptr inbounds %struct.binder_ref, %struct.binder_ref* %45, i32 0, i32 5
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* %5, align 4
  %49 = call i32 @binder_dec_node(i32 %47, i32 %48, i32 1)
  store i32 %49, i32* %6, align 4
  %50 = load i32, i32* %6, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %44
  %53 = load i32, i32* %6, align 4
  store i32 %53, i32* %3, align 4
  br label %101

54:                                               ; preds = %44
  br label %55

55:                                               ; preds = %54, %35
  br label %87

56:                                               ; preds = %2
  %57 = load %struct.binder_ref*, %struct.binder_ref** %4, align 8
  %58 = getelementptr inbounds %struct.binder_ref, %struct.binder_ref* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = icmp eq i64 %59, 0
  br i1 %60, label %61, label %82

61:                                               ; preds = %56
  %62 = load %struct.binder_ref*, %struct.binder_ref** %4, align 8
  %63 = getelementptr inbounds %struct.binder_ref, %struct.binder_ref* %62, i32 0, i32 4
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.binder_ref*, %struct.binder_ref** %4, align 8
  %68 = getelementptr inbounds %struct.binder_ref, %struct.binder_ref* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.binder_ref*, %struct.binder_ref** %4, align 8
  %71 = getelementptr inbounds %struct.binder_ref, %struct.binder_ref* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.binder_ref*, %struct.binder_ref** %4, align 8
  %74 = getelementptr inbounds %struct.binder_ref, %struct.binder_ref* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load %struct.binder_ref*, %struct.binder_ref** %4, align 8
  %77 = getelementptr inbounds %struct.binder_ref, %struct.binder_ref* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = call i32 @binder_user_error(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i64 0, i64 0), i32 %66, i32 %69, i32 %72, i64 %75, i64 %78)
  %80 = load i32, i32* @EINVAL, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %3, align 4
  br label %101

82:                                               ; preds = %56
  %83 = load %struct.binder_ref*, %struct.binder_ref** %4, align 8
  %84 = getelementptr inbounds %struct.binder_ref, %struct.binder_ref* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = add nsw i64 %85, -1
  store i64 %86, i64* %84, align 8
  br label %87

87:                                               ; preds = %82, %55
  %88 = load %struct.binder_ref*, %struct.binder_ref** %4, align 8
  %89 = getelementptr inbounds %struct.binder_ref, %struct.binder_ref* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = icmp eq i64 %90, 0
  br i1 %91, label %92, label %100

92:                                               ; preds = %87
  %93 = load %struct.binder_ref*, %struct.binder_ref** %4, align 8
  %94 = getelementptr inbounds %struct.binder_ref, %struct.binder_ref* %93, i32 0, i32 1
  %95 = load i64, i64* %94, align 8
  %96 = icmp eq i64 %95, 0
  br i1 %96, label %97, label %100

97:                                               ; preds = %92
  %98 = load %struct.binder_ref*, %struct.binder_ref** %4, align 8
  %99 = call i32 @binder_delete_ref(%struct.binder_ref* %98)
  br label %100

100:                                              ; preds = %97, %92, %87
  store i32 0, i32* %3, align 4
  br label %101

101:                                              ; preds = %100, %61, %52, %14
  %102 = load i32, i32* %3, align 4
  ret i32 %102
}

declare dso_local i32 @binder_user_error(i8*, i32, i32, i32, i64, i64) #1

declare dso_local i32 @binder_dec_node(i32, i32, i32) #1

declare dso_local i32 @binder_delete_ref(%struct.binder_ref*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
