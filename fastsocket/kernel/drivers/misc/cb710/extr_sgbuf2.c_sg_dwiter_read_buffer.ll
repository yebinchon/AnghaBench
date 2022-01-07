; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/misc/cb710/extr_sgbuf2.c_sg_dwiter_read_buffer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/misc/cb710/extr_sgbuf2.c_sg_dwiter_read_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sg_mapping_iter = type { i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sg_mapping_iter*)* @sg_dwiter_read_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sg_dwiter_read_buffer(%struct.sg_mapping_iter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sg_mapping_iter*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  store %struct.sg_mapping_iter* %0, %struct.sg_mapping_iter** %3, align 8
  store i64 4, i64* %5, align 8
  %8 = bitcast i32* %6 to i8*
  store i8* %8, i8** %7, align 8
  br label %9

9:                                                ; preds = %45, %1
  %10 = load %struct.sg_mapping_iter*, %struct.sg_mapping_iter** %3, align 8
  %11 = getelementptr inbounds %struct.sg_mapping_iter, %struct.sg_mapping_iter* %10, i32 0, i32 2
  %12 = load i64, i64* %11, align 8
  %13 = load %struct.sg_mapping_iter*, %struct.sg_mapping_iter** %3, align 8
  %14 = getelementptr inbounds %struct.sg_mapping_iter, %struct.sg_mapping_iter* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = sub nsw i64 %12, %15
  %17 = load i64, i64* %5, align 8
  %18 = call i64 @min(i64 %16, i64 %17)
  store i64 %18, i64* %4, align 8
  %19 = load i8*, i8** %7, align 8
  %20 = load %struct.sg_mapping_iter*, %struct.sg_mapping_iter** %3, align 8
  %21 = getelementptr inbounds %struct.sg_mapping_iter, %struct.sg_mapping_iter* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.sg_mapping_iter*, %struct.sg_mapping_iter** %3, align 8
  %24 = getelementptr inbounds %struct.sg_mapping_iter, %struct.sg_mapping_iter* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = add nsw i64 %22, %25
  %27 = load i64, i64* %4, align 8
  %28 = call i32 @memcpy(i8* %19, i64 %26, i64 %27)
  %29 = load i64, i64* %4, align 8
  %30 = load %struct.sg_mapping_iter*, %struct.sg_mapping_iter** %3, align 8
  %31 = getelementptr inbounds %struct.sg_mapping_iter, %struct.sg_mapping_iter* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = add i64 %32, %29
  store i64 %33, i64* %31, align 8
  %34 = load i64, i64* %4, align 8
  %35 = load i64, i64* %5, align 8
  %36 = sub i64 %35, %34
  store i64 %36, i64* %5, align 8
  %37 = load i64, i64* %5, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %41, label %39

39:                                               ; preds = %9
  %40 = load i32, i32* %6, align 4
  store i32 %40, i32* %2, align 4
  br label %54

41:                                               ; preds = %9
  %42 = load i64, i64* %4, align 8
  %43 = load i8*, i8** %7, align 8
  %44 = getelementptr i8, i8* %43, i64 %42
  store i8* %44, i8** %7, align 8
  br label %45

45:                                               ; preds = %41
  %46 = load %struct.sg_mapping_iter*, %struct.sg_mapping_iter** %3, align 8
  %47 = call i64 @sg_dwiter_next(%struct.sg_mapping_iter* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %9, label %49

49:                                               ; preds = %45
  %50 = load i8*, i8** %7, align 8
  %51 = load i64, i64* %5, align 8
  %52 = call i32 @memset(i8* %50, i32 0, i64 %51)
  %53 = load i32, i32* %6, align 4
  store i32 %53, i32* %2, align 4
  br label %54

54:                                               ; preds = %49, %39
  %55 = load i32, i32* %2, align 4
  ret i32 %55
}

declare dso_local i64 @min(i64, i64) #1

declare dso_local i32 @memcpy(i8*, i64, i64) #1

declare dso_local i64 @sg_dwiter_next(%struct.sg_mapping_iter*) #1

declare dso_local i32 @memset(i8*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
