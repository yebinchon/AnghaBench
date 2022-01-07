; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/pseries/extr_reconfig.c_derive_parent.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/pseries/extr_reconfig.c_derive_parent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device_node = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c"/\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.device_node* (i8*)* @derive_parent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.device_node* @derive_parent(i8* %0) #0 {
  %2 = alloca %struct.device_node*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store %struct.device_node* null, %struct.device_node** %4, align 8
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8** %5, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = call i8* @strrchr(i8* %7, i8 signext 47)
  %9 = load i8*, i8** %3, align 8
  %10 = ptrtoint i8* %8 to i64
  %11 = ptrtoint i8* %9 to i64
  %12 = sub i64 %10, %11
  %13 = add nsw i64 %12, 1
  store i64 %13, i64* %6, align 8
  %14 = load i8*, i8** %3, align 8
  %15 = call i64 @strcmp(i8* %14, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %21, label %17

17:                                               ; preds = %1
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  %20 = call %struct.device_node* @ERR_PTR(i32 %19)
  store %struct.device_node* %20, %struct.device_node** %2, align 8
  br label %59

21:                                               ; preds = %1
  %22 = load i8*, i8** %3, align 8
  %23 = call i8* @strrchr(i8* %22, i8 signext 47)
  %24 = load i8*, i8** %3, align 8
  %25 = icmp ne i8* %23, %24
  br i1 %25, label %26, label %41

26:                                               ; preds = %21
  %27 = load i64, i64* %6, align 8
  %28 = load i32, i32* @GFP_KERNEL, align 4
  %29 = call i8* @kmalloc(i64 %27, i32 %28)
  store i8* %29, i8** %5, align 8
  %30 = load i8*, i8** %5, align 8
  %31 = icmp ne i8* %30, null
  br i1 %31, label %36, label %32

32:                                               ; preds = %26
  %33 = load i32, i32* @ENOMEM, align 4
  %34 = sub nsw i32 0, %33
  %35 = call %struct.device_node* @ERR_PTR(i32 %34)
  store %struct.device_node* %35, %struct.device_node** %2, align 8
  br label %59

36:                                               ; preds = %26
  %37 = load i8*, i8** %5, align 8
  %38 = load i8*, i8** %3, align 8
  %39 = load i64, i64* %6, align 8
  %40 = call i32 @strlcpy(i8* %37, i8* %38, i64 %39)
  br label %41

41:                                               ; preds = %36, %21
  %42 = load i8*, i8** %5, align 8
  %43 = call %struct.device_node* @of_find_node_by_path(i8* %42)
  store %struct.device_node* %43, %struct.device_node** %4, align 8
  %44 = load %struct.device_node*, %struct.device_node** %4, align 8
  %45 = icmp ne %struct.device_node* %44, null
  br i1 %45, label %50, label %46

46:                                               ; preds = %41
  %47 = load i32, i32* @EINVAL, align 4
  %48 = sub nsw i32 0, %47
  %49 = call %struct.device_node* @ERR_PTR(i32 %48)
  store %struct.device_node* %49, %struct.device_node** %2, align 8
  br label %59

50:                                               ; preds = %41
  %51 = load i8*, i8** %5, align 8
  %52 = call i64 @strcmp(i8* %51, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %50
  %55 = load i8*, i8** %5, align 8
  %56 = call i32 @kfree(i8* %55)
  br label %57

57:                                               ; preds = %54, %50
  %58 = load %struct.device_node*, %struct.device_node** %4, align 8
  store %struct.device_node* %58, %struct.device_node** %2, align 8
  br label %59

59:                                               ; preds = %57, %46, %32, %17
  %60 = load %struct.device_node*, %struct.device_node** %2, align 8
  ret %struct.device_node* %60
}

declare dso_local i8* @strrchr(i8*, i8 signext) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local %struct.device_node* @ERR_PTR(i32) #1

declare dso_local i8* @kmalloc(i64, i32) #1

declare dso_local i32 @strlcpy(i8*, i8*, i64) #1

declare dso_local %struct.device_node* @of_find_node_by_path(i8*) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
