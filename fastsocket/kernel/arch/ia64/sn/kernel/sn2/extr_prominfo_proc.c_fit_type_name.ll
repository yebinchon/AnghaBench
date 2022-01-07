; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/sn/kernel/sn2/extr_prominfo_proc.c_fit_type_name.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/sn/kernel/sn2/extr_prominfo_proc.c_fit_type_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fit_type_map_t = type { i32, i8* }

@fit_entry_types = common dso_local global %struct.fit_type_map_t* null, align 8
@FIT_ENTRY_PAL_A = common dso_local global i8 0, align 1
@FIT_ENTRY_UNUSED = common dso_local global i8 0, align 1
@.str = private unnamed_addr constant [9 x i8] c"OEM type\00", align 1
@FIT_ENTRY_PAL_B = common dso_local global i8 0, align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"Reserved\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"Unknown type\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8)* @fit_type_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @fit_type_name(i8 zeroext %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8, align 1
  %4 = alloca %struct.fit_type_map_t*, align 8
  store i8 %0, i8* %3, align 1
  %5 = load %struct.fit_type_map_t*, %struct.fit_type_map_t** @fit_entry_types, align 8
  store %struct.fit_type_map_t* %5, %struct.fit_type_map_t** %4, align 8
  br label %6

6:                                                ; preds = %23, %1
  %7 = load %struct.fit_type_map_t*, %struct.fit_type_map_t** %4, align 8
  %8 = getelementptr inbounds %struct.fit_type_map_t, %struct.fit_type_map_t* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = icmp ne i32 %9, 255
  br i1 %10, label %11, label %26

11:                                               ; preds = %6
  %12 = load i8, i8* %3, align 1
  %13 = zext i8 %12 to i32
  %14 = load %struct.fit_type_map_t*, %struct.fit_type_map_t** %4, align 8
  %15 = getelementptr inbounds %struct.fit_type_map_t, %struct.fit_type_map_t* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp eq i32 %13, %16
  br i1 %17, label %18, label %22

18:                                               ; preds = %11
  %19 = load %struct.fit_type_map_t*, %struct.fit_type_map_t** %4, align 8
  %20 = getelementptr inbounds %struct.fit_type_map_t, %struct.fit_type_map_t* %19, i32 0, i32 1
  %21 = load i8*, i8** %20, align 8
  store i8* %21, i8** %2, align 8
  br label %53

22:                                               ; preds = %11
  br label %23

23:                                               ; preds = %22
  %24 = load %struct.fit_type_map_t*, %struct.fit_type_map_t** %4, align 8
  %25 = getelementptr inbounds %struct.fit_type_map_t, %struct.fit_type_map_t* %24, i32 1
  store %struct.fit_type_map_t* %25, %struct.fit_type_map_t** %4, align 8
  br label %6

26:                                               ; preds = %6
  %27 = load i8, i8* %3, align 1
  %28 = zext i8 %27 to i32
  %29 = load i8, i8* @FIT_ENTRY_PAL_A, align 1
  %30 = zext i8 %29 to i32
  %31 = icmp sgt i32 %28, %30
  br i1 %31, label %32, label %39

32:                                               ; preds = %26
  %33 = load i8, i8* %3, align 1
  %34 = zext i8 %33 to i32
  %35 = load i8, i8* @FIT_ENTRY_UNUSED, align 1
  %36 = zext i8 %35 to i32
  %37 = icmp slt i32 %34, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %32
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8** %2, align 8
  br label %53

39:                                               ; preds = %32, %26
  %40 = load i8, i8* %3, align 1
  %41 = zext i8 %40 to i32
  %42 = load i8, i8* @FIT_ENTRY_PAL_B, align 1
  %43 = zext i8 %42 to i32
  %44 = icmp sgt i32 %41, %43
  br i1 %44, label %45, label %52

45:                                               ; preds = %39
  %46 = load i8, i8* %3, align 1
  %47 = zext i8 %46 to i32
  %48 = load i8, i8* @FIT_ENTRY_PAL_A, align 1
  %49 = zext i8 %48 to i32
  %50 = icmp slt i32 %47, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %45
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8** %2, align 8
  br label %53

52:                                               ; preds = %45, %39
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i8** %2, align 8
  br label %53

53:                                               ; preds = %52, %51, %38, %18
  %54 = load i8*, i8** %2, align 8
  ret i8* %54
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
