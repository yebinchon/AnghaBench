; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/mISDN/extr_l1oip_codec.c_l1oip_4bit_alloc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/mISDN/extr_l1oip_codec.c_l1oip_4bit_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@table_dec = common dso_local global i32* null, align 8
@table_com = common dso_local global i32* null, align 8
@ENOMEM = common dso_local global i32 0, align 4
@ulaw_to_4bit = common dso_local global i32* null, align 8
@alaw_to_4bit = common dso_local global i32* null, align 8
@_4bit_to_ulaw = common dso_local global i32* null, align 8
@_4bit_to_alaw = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @l1oip_4bit_alloc(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %8 = load i32*, i32** @table_dec, align 8
  %9 = icmp ne i32* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %128

11:                                               ; preds = %1
  %12 = call i32* @vmalloc(i32 65536)
  store i32* %12, i32** @table_com, align 8
  %13 = call i32* @vmalloc(i32 512)
  store i32* %13, i32** @table_dec, align 8
  %14 = load i32*, i32** @table_com, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %11
  %17 = load i32*, i32** @table_dec, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %23, label %19

19:                                               ; preds = %16, %11
  %20 = call i32 (...) @l1oip_4bit_free()
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %128

23:                                               ; preds = %16
  %24 = load i32*, i32** @table_com, align 8
  %25 = call i32 @memset(i32* %24, i32 0, i32 65536)
  %26 = load i32*, i32** @table_dec, align 8
  %27 = call i32 @memset(i32* %26, i32 0, i32 512)
  store i32 0, i32* %4, align 4
  br label %28

28:                                               ; preds = %74, %23
  %29 = load i32, i32* %4, align 4
  %30 = icmp slt i32 %29, 256
  br i1 %30, label %31, label %77

31:                                               ; preds = %28
  %32 = load i32, i32* %3, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %31
  %35 = load i32*, i32** @ulaw_to_4bit, align 8
  %36 = load i32, i32* %4, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %6, align 4
  br label %46

40:                                               ; preds = %31
  %41 = load i32*, i32** @alaw_to_4bit, align 8
  %42 = load i32, i32* %4, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  %45 = load i32, i32* %44, align 4
  store i32 %45, i32* %6, align 4
  br label %46

46:                                               ; preds = %40, %34
  store i32 0, i32* %5, align 4
  br label %47

47:                                               ; preds = %50, %46
  %48 = load i32, i32* %5, align 4
  %49 = icmp slt i32 %48, 256
  br i1 %49, label %50, label %74

50:                                               ; preds = %47
  %51 = load i32, i32* %6, align 4
  %52 = shl i32 %51, 4
  %53 = load i32*, i32** @table_com, align 8
  %54 = load i32, i32* %4, align 4
  %55 = shl i32 %54, 8
  %56 = load i32, i32* %5, align 4
  %57 = or i32 %55, %56
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %53, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = or i32 %60, %52
  store i32 %61, i32* %59, align 4
  %62 = load i32, i32* %6, align 4
  %63 = load i32*, i32** @table_com, align 8
  %64 = load i32, i32* %5, align 4
  %65 = shl i32 %64, 8
  %66 = load i32, i32* %4, align 4
  %67 = or i32 %65, %66
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %63, i64 %68
  %70 = load i32, i32* %69, align 4
  %71 = or i32 %70, %62
  store i32 %71, i32* %69, align 4
  %72 = load i32, i32* %5, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %5, align 4
  br label %47

74:                                               ; preds = %47
  %75 = load i32, i32* %4, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %4, align 4
  br label %28

77:                                               ; preds = %28
  store i32 0, i32* %4, align 4
  br label %78

78:                                               ; preds = %124, %77
  %79 = load i32, i32* %4, align 4
  %80 = icmp slt i32 %79, 16
  br i1 %80, label %81, label %127

81:                                               ; preds = %78
  %82 = load i32, i32* %3, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %90

84:                                               ; preds = %81
  %85 = load i32*, i32** @_4bit_to_ulaw, align 8
  %86 = load i32, i32* %4, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i32, i32* %85, i64 %87
  %89 = load i32, i32* %88, align 4
  store i32 %89, i32* %7, align 4
  br label %96

90:                                               ; preds = %81
  %91 = load i32*, i32** @_4bit_to_alaw, align 8
  %92 = load i32, i32* %4, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i32, i32* %91, i64 %93
  %95 = load i32, i32* %94, align 4
  store i32 %95, i32* %7, align 4
  br label %96

96:                                               ; preds = %90, %84
  store i32 0, i32* %5, align 4
  br label %97

97:                                               ; preds = %100, %96
  %98 = load i32, i32* %5, align 4
  %99 = icmp slt i32 %98, 16
  br i1 %99, label %100, label %124

100:                                              ; preds = %97
  %101 = load i32, i32* %7, align 4
  %102 = shl i32 %101, 8
  %103 = load i32*, i32** @table_dec, align 8
  %104 = load i32, i32* %4, align 4
  %105 = shl i32 %104, 4
  %106 = load i32, i32* %5, align 4
  %107 = or i32 %105, %106
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i32, i32* %103, i64 %108
  %110 = load i32, i32* %109, align 4
  %111 = or i32 %110, %102
  store i32 %111, i32* %109, align 4
  %112 = load i32, i32* %7, align 4
  %113 = load i32*, i32** @table_dec, align 8
  %114 = load i32, i32* %5, align 4
  %115 = shl i32 %114, 4
  %116 = load i32, i32* %4, align 4
  %117 = or i32 %115, %116
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i32, i32* %113, i64 %118
  %120 = load i32, i32* %119, align 4
  %121 = or i32 %120, %112
  store i32 %121, i32* %119, align 4
  %122 = load i32, i32* %5, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %5, align 4
  br label %97

124:                                              ; preds = %97
  %125 = load i32, i32* %4, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %4, align 4
  br label %78

127:                                              ; preds = %78
  store i32 0, i32* %2, align 4
  br label %128

128:                                              ; preds = %127, %19, %10
  %129 = load i32, i32* %2, align 4
  ret i32 %129
}

declare dso_local i32* @vmalloc(i32) #1

declare dso_local i32 @l1oip_4bit_free(...) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
