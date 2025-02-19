; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/block/extr_dasd_eer.c_dasd_eer_read_buffer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/block/extr_dasd_eer.c_dasd_eer_read_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eerbuffer = type { i64, i64, i64* }

@PAGE_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.eerbuffer*, i8*, i32)* @dasd_eer_read_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dasd_eer_read_buffer(%struct.eerbuffer* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.eerbuffer*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  store %struct.eerbuffer* %0, %struct.eerbuffer** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = sext i32 %13 to i64
  %15 = load %struct.eerbuffer*, %struct.eerbuffer** %4, align 8
  %16 = call i64 @dasd_eer_get_filled_bytes(%struct.eerbuffer* %15)
  %17 = call i64 @min(i64 %14, i64 %16)
  store i64 %17, i64* %11, align 8
  %18 = load i8*, i8** %5, align 8
  store i8* %18, i8** %12, align 8
  %19 = load i64, i64* %11, align 8
  store i64 %19, i64* %9, align 8
  br label %20

20:                                               ; preds = %71, %3
  %21 = load i64, i64* %9, align 8
  %22 = icmp ugt i64 %21, 0
  br i1 %22, label %23, label %81

23:                                               ; preds = %20
  %24 = load %struct.eerbuffer*, %struct.eerbuffer** %4, align 8
  %25 = getelementptr inbounds %struct.eerbuffer, %struct.eerbuffer* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @PAGE_SIZE, align 8
  %28 = udiv i64 %26, %27
  store i64 %28, i64* %7, align 8
  %29 = load %struct.eerbuffer*, %struct.eerbuffer** %4, align 8
  %30 = getelementptr inbounds %struct.eerbuffer, %struct.eerbuffer* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @PAGE_SIZE, align 8
  %33 = urem i64 %31, %32
  store i64 %33, i64* %8, align 8
  %34 = load i64, i64* %9, align 8
  %35 = load i64, i64* @PAGE_SIZE, align 8
  %36 = load i64, i64* %8, align 8
  %37 = sub i64 %35, %36
  %38 = call i64 @min(i64 %34, i64 %37)
  store i64 %38, i64* %10, align 8
  %39 = load i8*, i8** %12, align 8
  %40 = load %struct.eerbuffer*, %struct.eerbuffer** %4, align 8
  %41 = getelementptr inbounds %struct.eerbuffer, %struct.eerbuffer* %40, i32 0, i32 2
  %42 = load i64*, i64** %41, align 8
  %43 = load i64, i64* %7, align 8
  %44 = getelementptr inbounds i64, i64* %42, i64 %43
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* %8, align 8
  %47 = add i64 %45, %46
  %48 = load i64, i64* %10, align 8
  %49 = call i32 @memcpy(i8* %39, i64 %47, i64 %48)
  %50 = load i64, i64* %10, align 8
  %51 = load i8*, i8** %12, align 8
  %52 = getelementptr inbounds i8, i8* %51, i64 %50
  store i8* %52, i8** %12, align 8
  %53 = load i64, i64* %10, align 8
  %54 = load i64, i64* %9, align 8
  %55 = sub i64 %54, %53
  store i64 %55, i64* %9, align 8
  %56 = load i64, i64* %10, align 8
  %57 = load %struct.eerbuffer*, %struct.eerbuffer** %4, align 8
  %58 = getelementptr inbounds %struct.eerbuffer, %struct.eerbuffer* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = add i64 %59, %56
  store i64 %60, i64* %58, align 8
  %61 = load %struct.eerbuffer*, %struct.eerbuffer** %4, align 8
  %62 = getelementptr inbounds %struct.eerbuffer, %struct.eerbuffer* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.eerbuffer*, %struct.eerbuffer** %4, align 8
  %65 = getelementptr inbounds %struct.eerbuffer, %struct.eerbuffer* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = icmp eq i64 %63, %66
  br i1 %67, label %68, label %71

68:                                               ; preds = %23
  %69 = load %struct.eerbuffer*, %struct.eerbuffer** %4, align 8
  %70 = getelementptr inbounds %struct.eerbuffer, %struct.eerbuffer* %69, i32 0, i32 0
  store i64 0, i64* %70, align 8
  br label %71

71:                                               ; preds = %68, %23
  %72 = load %struct.eerbuffer*, %struct.eerbuffer** %4, align 8
  %73 = getelementptr inbounds %struct.eerbuffer, %struct.eerbuffer* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load %struct.eerbuffer*, %struct.eerbuffer** %4, align 8
  %76 = getelementptr inbounds %struct.eerbuffer, %struct.eerbuffer* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = icmp ugt i64 %74, %77
  %79 = zext i1 %78 to i32
  %80 = call i32 @BUG_ON(i32 %79)
  br label %20

81:                                               ; preds = %20
  %82 = load i64, i64* %11, align 8
  %83 = trunc i64 %82 to i32
  ret i32 %83
}

declare dso_local i64 @min(i64, i64) #1

declare dso_local i64 @dasd_eer_get_filled_bytes(%struct.eerbuffer*) #1

declare dso_local i32 @memcpy(i8*, i64, i64) #1

declare dso_local i32 @BUG_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
