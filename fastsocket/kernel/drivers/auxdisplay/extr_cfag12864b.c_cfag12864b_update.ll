; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/auxdisplay/extr_cfag12864b.c_cfag12864b_update.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/auxdisplay/extr_cfag12864b.c_cfag12864b_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.work_struct = type { i32 }

@cfag12864b_cache = common dso_local global i32 0, align 4
@cfag12864b_buffer = common dso_local global i32* null, align 8
@CFAG12864B_SIZE = common dso_local global i32 0, align 4
@CFAG12864B_CONTROLLERS = common dso_local global i16 0, align 2
@CFAG12864B_PAGES = common dso_local global i16 0, align 2
@CFAG12864B_ADDRESSES = common dso_local global i16 0, align 2
@CFAG12864B_WIDTH = common dso_local global i16 0, align 2
@cfag12864b_updating = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.work_struct*)* @cfag12864b_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cfag12864b_update(%struct.work_struct* %0) #0 {
  %2 = alloca %struct.work_struct*, align 8
  %3 = alloca i8, align 1
  %4 = alloca i16, align 2
  %5 = alloca i16, align 2
  %6 = alloca i16, align 2
  %7 = alloca i16, align 2
  store %struct.work_struct* %0, %struct.work_struct** %2, align 8
  %8 = load i32, i32* @cfag12864b_cache, align 4
  %9 = load i32*, i32** @cfag12864b_buffer, align 8
  %10 = load i32, i32* @CFAG12864B_SIZE, align 4
  %11 = call i64 @memcmp(i32 %8, i32* %9, i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %112

13:                                               ; preds = %1
  store i16 0, i16* %4, align 2
  br label %14

14:                                               ; preds = %104, %13
  %15 = load i16, i16* %4, align 2
  %16 = zext i16 %15 to i32
  %17 = load i16, i16* @CFAG12864B_CONTROLLERS, align 2
  %18 = zext i16 %17 to i32
  %19 = icmp slt i32 %16, %18
  br i1 %19, label %20, label %107

20:                                               ; preds = %14
  %21 = load i16, i16* %4, align 2
  %22 = call i32 @cfag12864b_controller(i16 zeroext %21)
  %23 = call i32 (...) @cfag12864b_nop()
  store i16 0, i16* %5, align 2
  br label %24

24:                                               ; preds = %100, %20
  %25 = load i16, i16* %5, align 2
  %26 = zext i16 %25 to i32
  %27 = load i16, i16* @CFAG12864B_PAGES, align 2
  %28 = zext i16 %27 to i32
  %29 = icmp slt i32 %26, %28
  br i1 %29, label %30, label %103

30:                                               ; preds = %24
  %31 = load i16, i16* %5, align 2
  %32 = call i32 @cfag12864b_page(i16 zeroext %31)
  %33 = call i32 (...) @cfag12864b_nop()
  %34 = call i32 @cfag12864b_address(i32 0)
  %35 = call i32 (...) @cfag12864b_nop()
  store i16 0, i16* %6, align 2
  br label %36

36:                                               ; preds = %96, %30
  %37 = load i16, i16* %6, align 2
  %38 = zext i16 %37 to i32
  %39 = load i16, i16* @CFAG12864B_ADDRESSES, align 2
  %40 = zext i16 %39 to i32
  %41 = icmp slt i32 %38, %40
  br i1 %41, label %42, label %99

42:                                               ; preds = %36
  store i8 0, i8* %3, align 1
  store i16 0, i16* %7, align 2
  br label %43

43:                                               ; preds = %90, %42
  %44 = load i16, i16* %7, align 2
  %45 = zext i16 %44 to i32
  %46 = icmp slt i32 %45, 8
  br i1 %46, label %47, label %93

47:                                               ; preds = %43
  %48 = load i32*, i32** @cfag12864b_buffer, align 8
  %49 = load i16, i16* %4, align 2
  %50 = zext i16 %49 to i32
  %51 = load i16, i16* @CFAG12864B_ADDRESSES, align 2
  %52 = zext i16 %51 to i32
  %53 = mul nsw i32 %50, %52
  %54 = sdiv i32 %53, 8
  %55 = load i16, i16* %6, align 2
  %56 = zext i16 %55 to i32
  %57 = sdiv i32 %56, 8
  %58 = add nsw i32 %54, %57
  %59 = load i16, i16* %5, align 2
  %60 = zext i16 %59 to i32
  %61 = mul nsw i32 %60, 8
  %62 = load i16, i16* %7, align 2
  %63 = zext i16 %62 to i32
  %64 = add nsw i32 %61, %63
  %65 = load i16, i16* @CFAG12864B_WIDTH, align 2
  %66 = zext i16 %65 to i32
  %67 = mul nsw i32 %64, %66
  %68 = sdiv i32 %67, 8
  %69 = add nsw i32 %58, %68
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %48, i64 %70
  %72 = load i32, i32* %71, align 4
  %73 = load i16, i16* %6, align 2
  %74 = zext i16 %73 to i32
  %75 = srem i32 %74, 8
  %76 = trunc i32 %75 to i16
  %77 = call zeroext i8 @bit(i16 zeroext %76)
  %78 = zext i8 %77 to i32
  %79 = and i32 %72, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %89

81:                                               ; preds = %47
  %82 = load i16, i16* %7, align 2
  %83 = call zeroext i8 @bit(i16 zeroext %82)
  %84 = zext i8 %83 to i32
  %85 = load i8, i8* %3, align 1
  %86 = zext i8 %85 to i32
  %87 = or i32 %86, %84
  %88 = trunc i32 %87 to i8
  store i8 %88, i8* %3, align 1
  br label %89

89:                                               ; preds = %81, %47
  br label %90

90:                                               ; preds = %89
  %91 = load i16, i16* %7, align 2
  %92 = add i16 %91, 1
  store i16 %92, i16* %7, align 2
  br label %43

93:                                               ; preds = %43
  %94 = load i8, i8* %3, align 1
  %95 = call i32 @cfag12864b_writebyte(i8 zeroext %94)
  br label %96

96:                                               ; preds = %93
  %97 = load i16, i16* %6, align 2
  %98 = add i16 %97, 1
  store i16 %98, i16* %6, align 2
  br label %36

99:                                               ; preds = %36
  br label %100

100:                                              ; preds = %99
  %101 = load i16, i16* %5, align 2
  %102 = add i16 %101, 1
  store i16 %102, i16* %5, align 2
  br label %24

103:                                              ; preds = %24
  br label %104

104:                                              ; preds = %103
  %105 = load i16, i16* %4, align 2
  %106 = add i16 %105, 1
  store i16 %106, i16* %4, align 2
  br label %14

107:                                              ; preds = %14
  %108 = load i32, i32* @cfag12864b_cache, align 4
  %109 = load i32*, i32** @cfag12864b_buffer, align 8
  %110 = load i32, i32* @CFAG12864B_SIZE, align 4
  %111 = call i32 @memcpy(i32 %108, i32* %109, i32 %110)
  br label %112

112:                                              ; preds = %107, %1
  %113 = load i64, i64* @cfag12864b_updating, align 8
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %117

115:                                              ; preds = %112
  %116 = call i32 (...) @cfag12864b_queue()
  br label %117

117:                                              ; preds = %115, %112
  ret void
}

declare dso_local i64 @memcmp(i32, i32*, i32) #1

declare dso_local i32 @cfag12864b_controller(i16 zeroext) #1

declare dso_local i32 @cfag12864b_nop(...) #1

declare dso_local i32 @cfag12864b_page(i16 zeroext) #1

declare dso_local i32 @cfag12864b_address(i32) #1

declare dso_local zeroext i8 @bit(i16 zeroext) #1

declare dso_local i32 @cfag12864b_writebyte(i8 zeroext) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @cfag12864b_queue(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
