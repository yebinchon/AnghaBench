; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/kvm/extr_......libvsprintf.c_uuid_string.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/kvm/extr_......libvsprintf.c_uuid_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.printf_spec = type { i32 }

@uuid_string.be = internal constant [16 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15], align 16
@uuid_string.le = internal constant [16 x i32] [i32 3, i32 2, i32 1, i32 0, i32 5, i32 4, i32 7, i32 6, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15], align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i8*, i32*, i32, i8*)* @uuid_string to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @uuid_string(i8* %0, i8* %1, i32* %2, i32 %3, i8* %4) #0 {
  %6 = alloca %struct.printf_spec, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca [37 x i8], align 16
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = getelementptr inbounds %struct.printf_spec, %struct.printf_spec* %6, i32 0, i32 0
  store i32 %3, i32* %16, align 4
  store i8* %0, i8** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32* %2, i32** %9, align 8
  store i8* %4, i8** %10, align 8
  %17 = getelementptr inbounds [37 x i8], [37 x i8]* %11, i64 0, i64 0
  store i8* %17, i8** %12, align 8
  store i32* getelementptr inbounds ([16 x i32], [16 x i32]* @uuid_string.be, i64 0, i64 0), i32** %14, align 8
  store i32 0, i32* %15, align 4
  %18 = load i8*, i8** %10, align 8
  %19 = getelementptr inbounds i8, i8* %18, i32 1
  store i8* %19, i8** %10, align 8
  %20 = load i8, i8* %19, align 1
  %21 = sext i8 %20 to i32
  switch i32 %21, label %25 [
    i32 76, label %22
    i32 108, label %23
    i32 66, label %24
  ]

22:                                               ; preds = %5
  store i32 1, i32* %15, align 4
  br label %23

23:                                               ; preds = %5, %22
  store i32* getelementptr inbounds ([16 x i32], [16 x i32]* @uuid_string.le, i64 0, i64 0), i32** %14, align 8
  br label %25

24:                                               ; preds = %5
  store i32 1, i32* %15, align 4
  br label %25

25:                                               ; preds = %5, %24, %23
  store i32 0, i32* %13, align 4
  br label %26

26:                                               ; preds = %46, %25
  %27 = load i32, i32* %13, align 4
  %28 = icmp slt i32 %27, 16
  br i1 %28, label %29, label %49

29:                                               ; preds = %26
  %30 = load i8*, i8** %12, align 8
  %31 = load i32*, i32** %9, align 8
  %32 = load i32*, i32** %14, align 8
  %33 = load i32, i32* %13, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %31, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = call i8* @pack_hex_byte(i8* %30, i32 %39)
  store i8* %40, i8** %12, align 8
  %41 = load i32, i32* %13, align 4
  switch i32 %41, label %45 [
    i32 3, label %42
    i32 5, label %42
    i32 7, label %42
    i32 9, label %42
  ]

42:                                               ; preds = %29, %29, %29, %29
  %43 = load i8*, i8** %12, align 8
  %44 = getelementptr inbounds i8, i8* %43, i32 1
  store i8* %44, i8** %12, align 8
  store i8 45, i8* %43, align 1
  br label %45

45:                                               ; preds = %29, %42
  br label %46

46:                                               ; preds = %45
  %47 = load i32, i32* %13, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %13, align 4
  br label %26

49:                                               ; preds = %26
  %50 = load i8*, i8** %12, align 8
  store i8 0, i8* %50, align 1
  %51 = load i32, i32* %15, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %66

53:                                               ; preds = %49
  %54 = getelementptr inbounds [37 x i8], [37 x i8]* %11, i64 0, i64 0
  store i8* %54, i8** %12, align 8
  br label %55

55:                                               ; preds = %60, %53
  %56 = load i8*, i8** %12, align 8
  %57 = load i8, i8* %56, align 1
  %58 = call signext i8 @toupper(i8 signext %57)
  %59 = load i8*, i8** %12, align 8
  store i8 %58, i8* %59, align 1
  br label %60

60:                                               ; preds = %55
  %61 = load i8*, i8** %12, align 8
  %62 = getelementptr inbounds i8, i8* %61, i32 1
  store i8* %62, i8** %12, align 8
  %63 = load i8, i8* %62, align 1
  %64 = icmp ne i8 %63, 0
  br i1 %64, label %55, label %65

65:                                               ; preds = %60
  br label %66

66:                                               ; preds = %65, %49
  %67 = load i8*, i8** %7, align 8
  %68 = load i8*, i8** %8, align 8
  %69 = getelementptr inbounds [37 x i8], [37 x i8]* %11, i64 0, i64 0
  %70 = getelementptr inbounds %struct.printf_spec, %struct.printf_spec* %6, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i8* @string(i8* %67, i8* %68, i8* %69, i32 %71)
  ret i8* %72
}

declare dso_local i8* @pack_hex_byte(i8*, i32) #1

declare dso_local signext i8 @toupper(i8 signext) #1

declare dso_local i8* @string(i8*, i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
