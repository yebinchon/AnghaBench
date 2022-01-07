; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/cxgb3/extr_t3_hw.c_t3_write_flash.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/cxgb3/extr_t3_hw.c_t3_write_flash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32 }

@SF_SIZE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@SF_PROG_PAGE = common dso_local global i32 0, align 4
@SF_WR_ENABLE = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.adapter*, i32, i32, i32*)* @t3_write_flash to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @t3_write_flash(%struct.adapter* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.adapter*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca [64 x i32], align 16
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.adapter* %0, %struct.adapter** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %17 = load i32, i32* %7, align 4
  %18 = and i32 %17, 255
  store i32 %18, i32* %16, align 4
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* %8, align 4
  %21 = add i32 %19, %20
  %22 = load i32, i32* @SF_SIZE, align 4
  %23 = icmp ugt i32 %21, %22
  br i1 %23, label %29, label %24

24:                                               ; preds = %4
  %25 = load i32, i32* %16, align 4
  %26 = load i32, i32* %8, align 4
  %27 = add i32 %25, %26
  %28 = icmp ugt i32 %27, 256
  br i1 %28, label %29, label %32

29:                                               ; preds = %24, %4
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %5, align 4
  br label %123

32:                                               ; preds = %24
  %33 = load i32, i32* %7, align 4
  %34 = call i32 @swab32(i32 %33)
  %35 = load i32, i32* @SF_PROG_PAGE, align 4
  %36 = or i32 %34, %35
  store i32 %36, i32* %15, align 4
  %37 = load %struct.adapter*, %struct.adapter** %6, align 8
  %38 = load i32, i32* @SF_WR_ENABLE, align 4
  %39 = call i32 @sf1_write(%struct.adapter* %37, i32 1, i32 0, i32 %38)
  store i32 %39, i32* %10, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %46, label %41

41:                                               ; preds = %32
  %42 = load %struct.adapter*, %struct.adapter** %6, align 8
  %43 = load i32, i32* %15, align 4
  %44 = call i32 @sf1_write(%struct.adapter* %42, i32 4, i32 1, i32 %43)
  store i32 %44, i32* %10, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %41, %32
  %47 = load i32, i32* %10, align 4
  store i32 %47, i32* %5, align 4
  br label %123

48:                                               ; preds = %41
  %49 = load i32, i32* %8, align 4
  store i32 %49, i32* %14, align 4
  br label %50

50:                                               ; preds = %84, %48
  %51 = load i32, i32* %14, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %88

53:                                               ; preds = %50
  %54 = load i32, i32* %14, align 4
  %55 = call i32 @min(i32 %54, i32 4)
  store i32 %55, i32* %13, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %12, align 4
  br label %56

56:                                               ; preds = %67, %53
  %57 = load i32, i32* %12, align 4
  %58 = load i32, i32* %13, align 4
  %59 = icmp ult i32 %57, %58
  br i1 %59, label %60, label %70

60:                                               ; preds = %56
  %61 = load i32, i32* %15, align 4
  %62 = shl i32 %61, 8
  %63 = load i32*, i32** %9, align 8
  %64 = getelementptr inbounds i32, i32* %63, i32 1
  store i32* %64, i32** %9, align 8
  %65 = load i32, i32* %63, align 4
  %66 = add i32 %62, %65
  store i32 %66, i32* %15, align 4
  br label %67

67:                                               ; preds = %60
  %68 = load i32, i32* %12, align 4
  %69 = add i32 %68, 1
  store i32 %69, i32* %12, align 4
  br label %56

70:                                               ; preds = %56
  %71 = load %struct.adapter*, %struct.adapter** %6, align 8
  %72 = load i32, i32* %13, align 4
  %73 = load i32, i32* %13, align 4
  %74 = load i32, i32* %14, align 4
  %75 = icmp ne i32 %73, %74
  %76 = zext i1 %75 to i32
  %77 = load i32, i32* %15, align 4
  %78 = call i32 @sf1_write(%struct.adapter* %71, i32 %72, i32 %76, i32 %77)
  store i32 %78, i32* %10, align 4
  %79 = load i32, i32* %10, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %70
  %82 = load i32, i32* %10, align 4
  store i32 %82, i32* %5, align 4
  br label %123

83:                                               ; preds = %70
  br label %84

84:                                               ; preds = %83
  %85 = load i32, i32* %13, align 4
  %86 = load i32, i32* %14, align 4
  %87 = sub i32 %86, %85
  store i32 %87, i32* %14, align 4
  br label %50

88:                                               ; preds = %50
  %89 = load %struct.adapter*, %struct.adapter** %6, align 8
  %90 = call i32 @flash_wait_op(%struct.adapter* %89, i32 5, i32 1)
  store i32 %90, i32* %10, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %94

92:                                               ; preds = %88
  %93 = load i32, i32* %10, align 4
  store i32 %93, i32* %5, align 4
  br label %123

94:                                               ; preds = %88
  %95 = load %struct.adapter*, %struct.adapter** %6, align 8
  %96 = load i32, i32* %7, align 4
  %97 = and i32 %96, -256
  %98 = getelementptr inbounds [64 x i32], [64 x i32]* %11, i64 0, i64 0
  %99 = call i32 @ARRAY_SIZE(i32* %98)
  %100 = getelementptr inbounds [64 x i32], [64 x i32]* %11, i64 0, i64 0
  %101 = call i32 @t3_read_flash(%struct.adapter* %95, i32 %97, i32 %99, i32* %100, i32 1)
  store i32 %101, i32* %10, align 4
  %102 = load i32, i32* %10, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %106

104:                                              ; preds = %94
  %105 = load i32, i32* %10, align 4
  store i32 %105, i32* %5, align 4
  br label %123

106:                                              ; preds = %94
  %107 = load i32*, i32** %9, align 8
  %108 = load i32, i32* %8, align 4
  %109 = zext i32 %108 to i64
  %110 = sub i64 0, %109
  %111 = getelementptr inbounds i32, i32* %107, i64 %110
  %112 = getelementptr inbounds [64 x i32], [64 x i32]* %11, i64 0, i64 0
  %113 = load i32, i32* %16, align 4
  %114 = zext i32 %113 to i64
  %115 = getelementptr inbounds i32, i32* %112, i64 %114
  %116 = load i32, i32* %8, align 4
  %117 = call i64 @memcmp(i32* %111, i32* %115, i32 %116)
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %122

119:                                              ; preds = %106
  %120 = load i32, i32* @EIO, align 4
  %121 = sub nsw i32 0, %120
  store i32 %121, i32* %5, align 4
  br label %123

122:                                              ; preds = %106
  store i32 0, i32* %5, align 4
  br label %123

123:                                              ; preds = %122, %119, %104, %92, %81, %46, %29
  %124 = load i32, i32* %5, align 4
  ret i32 %124
}

declare dso_local i32 @swab32(i32) #1

declare dso_local i32 @sf1_write(%struct.adapter*, i32, i32, i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @flash_wait_op(%struct.adapter*, i32, i32) #1

declare dso_local i32 @t3_read_flash(%struct.adapter*, i32, i32, i32*, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i64 @memcmp(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
