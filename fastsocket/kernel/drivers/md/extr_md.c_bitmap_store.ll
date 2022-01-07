; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_md.c_bitmap_store.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_md.c_bitmap_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mddev = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.mddev*, i8*, i64)* @bitmap_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @bitmap_store(%struct.mddev* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.mddev*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.mddev* %0, %struct.mddev** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %10 = load %struct.mddev*, %struct.mddev** %4, align 8
  %11 = getelementptr inbounds %struct.mddev, %struct.mddev* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %3
  br label %67

15:                                               ; preds = %3
  br label %16

16:                                               ; preds = %53, %15
  %17 = load i8*, i8** %5, align 8
  %18 = load i8, i8* %17, align 1
  %19 = icmp ne i8 %18, 0
  br i1 %19, label %20, label %62

20:                                               ; preds = %16
  %21 = load i8*, i8** %5, align 8
  %22 = call i64 @simple_strtoul(i8* %21, i8** %7, i32 0)
  store i64 %22, i64* %9, align 8
  store i64 %22, i64* %8, align 8
  %23 = load i8*, i8** %5, align 8
  %24 = load i8*, i8** %7, align 8
  %25 = icmp eq i8* %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %20
  br label %62

27:                                               ; preds = %20
  %28 = load i8*, i8** %7, align 8
  %29 = load i8, i8* %28, align 1
  %30 = sext i8 %29 to i32
  %31 = icmp eq i32 %30, 45
  br i1 %31, label %32, label %42

32:                                               ; preds = %27
  %33 = load i8*, i8** %7, align 8
  %34 = getelementptr inbounds i8, i8* %33, i64 1
  store i8* %34, i8** %5, align 8
  %35 = load i8*, i8** %5, align 8
  %36 = call i64 @simple_strtoul(i8* %35, i8** %7, i32 0)
  store i64 %36, i64* %9, align 8
  %37 = load i8*, i8** %5, align 8
  %38 = load i8*, i8** %7, align 8
  %39 = icmp eq i8* %37, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %32
  br label %62

41:                                               ; preds = %32
  br label %42

42:                                               ; preds = %41, %27
  %43 = load i8*, i8** %7, align 8
  %44 = load i8, i8* %43, align 1
  %45 = sext i8 %44 to i32
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %53

47:                                               ; preds = %42
  %48 = load i8*, i8** %7, align 8
  %49 = load i8, i8* %48, align 1
  %50 = call i32 @isspace(i8 signext %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %53, label %52

52:                                               ; preds = %47
  br label %62

53:                                               ; preds = %47, %42
  %54 = load %struct.mddev*, %struct.mddev** %4, align 8
  %55 = getelementptr inbounds %struct.mddev, %struct.mddev* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i64, i64* %8, align 8
  %58 = load i64, i64* %9, align 8
  %59 = call i32 @bitmap_dirty_bits(i32 %56, i64 %57, i64 %58)
  %60 = load i8*, i8** %7, align 8
  %61 = call i8* @skip_spaces(i8* %60)
  store i8* %61, i8** %5, align 8
  br label %16

62:                                               ; preds = %52, %40, %26, %16
  %63 = load %struct.mddev*, %struct.mddev** %4, align 8
  %64 = getelementptr inbounds %struct.mddev, %struct.mddev* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @bitmap_unplug(i32 %65)
  br label %67

67:                                               ; preds = %62, %14
  %68 = load i64, i64* %6, align 8
  ret i64 %68
}

declare dso_local i64 @simple_strtoul(i8*, i8**, i32) #1

declare dso_local i32 @isspace(i8 signext) #1

declare dso_local i32 @bitmap_dirty_bits(i32, i64, i64) #1

declare dso_local i8* @skip_spaces(i8*) #1

declare dso_local i32 @bitmap_unplug(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
