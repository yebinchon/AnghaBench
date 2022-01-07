; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/char/extr_tty3270.c_tty3270_create_prompt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/char/extr_tty3270.c_tty3270_create_prompt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty3270 = type { i32, %struct.TYPE_2__, i32, i8*, %struct.string* }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.string = type { i32, i64 }

@tty3270_create_prompt.blueprint = internal constant [11 x i8] c"\81\00\00n\80\84\83\82\00\00\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tty3270*)* @tty3270_create_prompt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tty3270_create_prompt(%struct.tty3270* %0) #0 {
  %2 = alloca %struct.tty3270*, align 8
  %3 = alloca %struct.string*, align 8
  %4 = alloca i32, align 4
  store %struct.tty3270* %0, %struct.tty3270** %2, align 8
  %5 = load %struct.tty3270*, %struct.tty3270** %2, align 8
  %6 = getelementptr inbounds %struct.tty3270, %struct.tty3270* %5, i32 0, i32 2
  %7 = load %struct.tty3270*, %struct.tty3270** %2, align 8
  %8 = getelementptr inbounds %struct.tty3270, %struct.tty3270* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = mul nsw i32 %10, 2
  %12 = sext i32 %11 to i64
  %13 = add i64 11, %12
  %14 = sub i64 %13, 9
  %15 = trunc i64 %14 to i32
  %16 = call i8* @alloc_string(i32* %6, i32 %15)
  %17 = bitcast i8* %16 to %struct.string*
  store %struct.string* %17, %struct.string** %3, align 8
  %18 = load %struct.string*, %struct.string** %3, align 8
  %19 = load %struct.tty3270*, %struct.tty3270** %2, align 8
  %20 = getelementptr inbounds %struct.tty3270, %struct.tty3270* %19, i32 0, i32 4
  store %struct.string* %18, %struct.string** %20, align 8
  %21 = load %struct.tty3270*, %struct.tty3270** %2, align 8
  %22 = getelementptr inbounds %struct.tty3270, %struct.tty3270* %21, i32 0, i32 0
  store i32 132, i32* %22, align 8
  %23 = load %struct.string*, %struct.string** %3, align 8
  %24 = getelementptr inbounds %struct.string, %struct.string* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = call i32 @memcpy(i64 %25, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @tty3270_create_prompt.blueprint, i64 0, i64 0), i32 11)
  %27 = load %struct.string*, %struct.string** %3, align 8
  %28 = getelementptr inbounds %struct.string, %struct.string* %27, i32 0, i32 0
  store i32 11, i32* %28, align 8
  %29 = load %struct.tty3270*, %struct.tty3270** %2, align 8
  %30 = getelementptr inbounds %struct.tty3270, %struct.tty3270* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.tty3270*, %struct.tty3270** %2, align 8
  %34 = getelementptr inbounds %struct.tty3270, %struct.tty3270* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = sub nsw i32 %36, 2
  %38 = mul nsw i32 %32, %37
  store i32 %38, i32* %4, align 4
  %39 = load %struct.tty3270*, %struct.tty3270** %2, align 8
  %40 = getelementptr inbounds %struct.tty3270, %struct.tty3270* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.string*, %struct.string** %3, align 8
  %44 = getelementptr inbounds %struct.string, %struct.string* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = add nsw i64 %45, 1
  %47 = load i32, i32* %4, align 4
  %48 = call i32 @raw3270_buffer_address(i32 %42, i64 %46, i32 %47)
  %49 = load %struct.tty3270*, %struct.tty3270** %2, align 8
  %50 = getelementptr inbounds %struct.tty3270, %struct.tty3270* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.tty3270*, %struct.tty3270** %2, align 8
  %54 = getelementptr inbounds %struct.tty3270, %struct.tty3270* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = mul nsw i32 %52, %56
  %58 = sub nsw i32 %57, 9
  store i32 %58, i32* %4, align 4
  %59 = load %struct.tty3270*, %struct.tty3270** %2, align 8
  %60 = getelementptr inbounds %struct.tty3270, %struct.tty3270* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.string*, %struct.string** %3, align 8
  %64 = getelementptr inbounds %struct.string, %struct.string* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = add nsw i64 %65, 8
  %67 = load i32, i32* %4, align 4
  %68 = call i32 @raw3270_buffer_address(i32 %62, i64 %66, i32 %67)
  %69 = load %struct.tty3270*, %struct.tty3270** %2, align 8
  %70 = getelementptr inbounds %struct.tty3270, %struct.tty3270* %69, i32 0, i32 2
  %71 = load %struct.tty3270*, %struct.tty3270** %2, align 8
  %72 = getelementptr inbounds %struct.tty3270, %struct.tty3270* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = mul nsw i32 %74, 2
  %76 = sub nsw i32 %75, 9
  %77 = add nsw i32 %76, 6
  %78 = call i8* @alloc_string(i32* %70, i32 %77)
  %79 = load %struct.tty3270*, %struct.tty3270** %2, align 8
  %80 = getelementptr inbounds %struct.tty3270, %struct.tty3270* %79, i32 0, i32 3
  store i8* %78, i8** %80, align 8
  ret void
}

declare dso_local i8* @alloc_string(i32*, i32) #1

declare dso_local i32 @memcpy(i64, i8*, i32) #1

declare dso_local i32 @raw3270_buffer_address(i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
