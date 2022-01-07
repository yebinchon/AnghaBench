; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/char/extr_tty3270.c_tty3270_update_prompt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/char/extr_tty3270.c_tty3270_update_prompt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty3270 = type { i32, %struct.TYPE_2__, i64, %struct.string* }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.string = type { i32, i64* }

@TF_INMDT = common dso_local global i64 0, align 8
@TO_IC = common dso_local global i64 0, align 8
@TO_RA = common dso_local global i64 0, align 8
@TTY_UPDATE_INPUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tty3270*, i8*, i32)* @tty3270_update_prompt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tty3270_update_prompt(%struct.tty3270* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.tty3270*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.string*, align 8
  %8 = alloca i32, align 4
  store %struct.tty3270* %0, %struct.tty3270** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.tty3270*, %struct.tty3270** %4, align 8
  %10 = getelementptr inbounds %struct.tty3270, %struct.tty3270* %9, i32 0, i32 3
  %11 = load %struct.string*, %struct.string** %10, align 8
  store %struct.string* %11, %struct.string** %7, align 8
  %12 = load i32, i32* %6, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %20

14:                                               ; preds = %3
  %15 = load i64, i64* @TF_INMDT, align 8
  %16 = load %struct.string*, %struct.string** %7, align 8
  %17 = getelementptr inbounds %struct.string, %struct.string* %16, i32 0, i32 1
  %18 = load i64*, i64** %17, align 8
  %19 = getelementptr inbounds i64, i64* %18, i64 5
  store i64 %15, i64* %19, align 8
  br label %28

20:                                               ; preds = %3
  %21 = load %struct.tty3270*, %struct.tty3270** %4, align 8
  %22 = getelementptr inbounds %struct.tty3270, %struct.tty3270* %21, i32 0, i32 2
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.string*, %struct.string** %7, align 8
  %25 = getelementptr inbounds %struct.string, %struct.string* %24, i32 0, i32 1
  %26 = load i64*, i64** %25, align 8
  %27 = getelementptr inbounds i64, i64* %26, i64 5
  store i64 %23, i64* %27, align 8
  br label %28

28:                                               ; preds = %20, %14
  %29 = load i32, i32* %6, align 4
  %30 = load %struct.tty3270*, %struct.tty3270** %4, align 8
  %31 = getelementptr inbounds %struct.tty3270, %struct.tty3270* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = mul nsw i32 %33, 2
  %35 = sub nsw i32 %34, 11
  %36 = icmp sgt i32 %29, %35
  br i1 %36, label %37, label %44

37:                                               ; preds = %28
  %38 = load %struct.tty3270*, %struct.tty3270** %4, align 8
  %39 = getelementptr inbounds %struct.tty3270, %struct.tty3270* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = mul nsw i32 %41, 2
  %43 = sub nsw i32 %42, 11
  store i32 %43, i32* %6, align 4
  br label %44

44:                                               ; preds = %37, %28
  %45 = load %struct.string*, %struct.string** %7, align 8
  %46 = getelementptr inbounds %struct.string, %struct.string* %45, i32 0, i32 1
  %47 = load i64*, i64** %46, align 8
  %48 = getelementptr inbounds i64, i64* %47, i64 6
  %49 = load i8*, i8** %5, align 8
  %50 = load i32, i32* %6, align 4
  %51 = call i32 @memcpy(i64* %48, i8* %49, i32 %50)
  %52 = load i64, i64* @TO_IC, align 8
  %53 = load %struct.string*, %struct.string** %7, align 8
  %54 = getelementptr inbounds %struct.string, %struct.string* %53, i32 0, i32 1
  %55 = load i64*, i64** %54, align 8
  %56 = load i32, i32* %6, align 4
  %57 = add nsw i32 6, %56
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i64, i64* %55, i64 %58
  store i64 %52, i64* %59, align 8
  %60 = load i32, i32* %6, align 4
  %61 = load %struct.tty3270*, %struct.tty3270** %4, align 8
  %62 = getelementptr inbounds %struct.tty3270, %struct.tty3270* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = mul nsw i32 %64, 2
  %66 = sub nsw i32 %65, 11
  %67 = icmp slt i32 %60, %66
  br i1 %67, label %68, label %111

68:                                               ; preds = %44
  %69 = load i64, i64* @TO_RA, align 8
  %70 = load %struct.string*, %struct.string** %7, align 8
  %71 = getelementptr inbounds %struct.string, %struct.string* %70, i32 0, i32 1
  %72 = load i64*, i64** %71, align 8
  %73 = load i32, i32* %6, align 4
  %74 = add nsw i32 7, %73
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i64, i64* %72, i64 %75
  store i64 %69, i64* %76, align 8
  %77 = load %struct.string*, %struct.string** %7, align 8
  %78 = getelementptr inbounds %struct.string, %struct.string* %77, i32 0, i32 1
  %79 = load i64*, i64** %78, align 8
  %80 = load i32, i32* %6, align 4
  %81 = add nsw i32 10, %80
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i64, i64* %79, i64 %82
  store i64 0, i64* %83, align 8
  %84 = load %struct.tty3270*, %struct.tty3270** %4, align 8
  %85 = getelementptr inbounds %struct.tty3270, %struct.tty3270* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.tty3270*, %struct.tty3270** %4, align 8
  %89 = getelementptr inbounds %struct.tty3270, %struct.tty3270* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = mul nsw i32 %87, %91
  %93 = sub nsw i32 %92, 9
  store i32 %93, i32* %8, align 4
  %94 = load %struct.tty3270*, %struct.tty3270** %4, align 8
  %95 = getelementptr inbounds %struct.tty3270, %struct.tty3270* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.string*, %struct.string** %7, align 8
  %99 = getelementptr inbounds %struct.string, %struct.string* %98, i32 0, i32 1
  %100 = load i64*, i64** %99, align 8
  %101 = load i32, i32* %6, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i64, i64* %100, i64 %102
  %104 = getelementptr inbounds i64, i64* %103, i64 8
  %105 = load i32, i32* %8, align 4
  %106 = call i32 @raw3270_buffer_address(i32 %97, i64* %104, i32 %105)
  %107 = load i32, i32* %6, align 4
  %108 = add nsw i32 11, %107
  %109 = load %struct.string*, %struct.string** %7, align 8
  %110 = getelementptr inbounds %struct.string, %struct.string* %109, i32 0, i32 0
  store i32 %108, i32* %110, align 8
  br label %116

111:                                              ; preds = %44
  %112 = load i32, i32* %6, align 4
  %113 = add nsw i32 7, %112
  %114 = load %struct.string*, %struct.string** %7, align 8
  %115 = getelementptr inbounds %struct.string, %struct.string* %114, i32 0, i32 0
  store i32 %113, i32* %115, align 8
  br label %116

116:                                              ; preds = %111, %68
  %117 = load i32, i32* @TTY_UPDATE_INPUT, align 4
  %118 = load %struct.tty3270*, %struct.tty3270** %4, align 8
  %119 = getelementptr inbounds %struct.tty3270, %struct.tty3270* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = or i32 %120, %117
  store i32 %121, i32* %119, align 8
  ret void
}

declare dso_local i32 @memcpy(i64*, i8*, i32) #1

declare dso_local i32 @raw3270_buffer_address(i32, i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
