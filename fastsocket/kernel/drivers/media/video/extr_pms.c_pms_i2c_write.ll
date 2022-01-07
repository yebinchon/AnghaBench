; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_pms.c_pms_i2c_write.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_pms.c_pms_i2c_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64, i64 }

@i2c_count = common dso_local global i32 0, align 4
@i2cinfo = common dso_local global %struct.TYPE_2__* null, align 8
@io_port = common dso_local global i32 0, align 4
@data_port = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i64, i64)* @pms_i2c_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pms_i2c_write(i64 %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i64 %0, i64* %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %10, align 4
  br label %11

11:                                               ; preds = %53, %3
  %12 = load i32, i32* %10, align 4
  %13 = load i32, i32* @i2c_count, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %56

15:                                               ; preds = %11
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** @i2cinfo, align 8
  %17 = load i32, i32* %10, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i64 %18
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* %5, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %52

24:                                               ; preds = %15
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** @i2cinfo, align 8
  %26 = load i32, i32* %10, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* %6, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %52

33:                                               ; preds = %24
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** @i2cinfo, align 8
  %35 = load i32, i32* %10, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 2
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* %7, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %33
  store i32 1, i32* %8, align 4
  br label %43

43:                                               ; preds = %42, %33
  %44 = load i64, i64* %7, align 8
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** @i2cinfo, align 8
  %46 = load i32, i32* %10, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 2
  store i64 %44, i64* %49, align 8
  %50 = load i32, i32* @i2c_count, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %10, align 4
  br label %52

52:                                               ; preds = %43, %24, %15
  br label %53

53:                                               ; preds = %52
  %54 = load i32, i32* %10, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %10, align 4
  br label %11

56:                                               ; preds = %11
  %57 = load i32, i32* %10, align 4
  %58 = load i32, i32* @i2c_count, align 4
  %59 = icmp eq i32 %57, %58
  br i1 %59, label %60, label %84

60:                                               ; preds = %56
  %61 = load i32, i32* @i2c_count, align 4
  %62 = icmp slt i32 %61, 64
  br i1 %62, label %63, label %84

63:                                               ; preds = %60
  %64 = load i64, i64* %5, align 8
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** @i2cinfo, align 8
  %66 = load i32, i32* @i2c_count, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  store i64 %64, i64* %69, align 8
  %70 = load i64, i64* %6, align 8
  %71 = load %struct.TYPE_2__*, %struct.TYPE_2__** @i2cinfo, align 8
  %72 = load i32, i32* @i2c_count, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 1
  store i64 %70, i64* %75, align 8
  %76 = load i64, i64* %7, align 8
  %77 = load %struct.TYPE_2__*, %struct.TYPE_2__** @i2cinfo, align 8
  %78 = load i32, i32* @i2c_count, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 2
  store i64 %76, i64* %81, align 8
  %82 = load i32, i32* @i2c_count, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* @i2c_count, align 4
  br label %84

84:                                               ; preds = %63, %60, %56
  %85 = load i32, i32* %8, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %84
  store i32 0, i32* %4, align 4
  br label %127

88:                                               ; preds = %84
  %89 = load i64, i64* %6, align 8
  %90 = call i32 @mvv_write(i32 41, i64 %89)
  %91 = load i64, i64* %7, align 8
  %92 = call i32 @mvv_write(i32 42, i64 %91)
  %93 = load i64, i64* %5, align 8
  %94 = call i32 @mvv_write(i32 40, i64 %93)
  %95 = load i32, i32* @io_port, align 4
  %96 = call i32 @outb(i32 40, i32 %95)
  store i32 0, i32* %9, align 4
  br label %97

97:                                               ; preds = %106, %88
  %98 = load i32, i32* @data_port, align 4
  %99 = call i32 @inb(i32 %98)
  %100 = and i32 %99, 1
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %102, label %107

102:                                              ; preds = %97
  %103 = load i32, i32* %9, align 4
  %104 = icmp sgt i32 %103, 255
  br i1 %104, label %105, label %106

105:                                              ; preds = %102
  br label %107

106:                                              ; preds = %102
  br label %97

107:                                              ; preds = %105, %97
  br label %108

108:                                              ; preds = %117, %107
  %109 = load i32, i32* @data_port, align 4
  %110 = call i32 @inb(i32 %109)
  %111 = and i32 %110, 1
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %118

113:                                              ; preds = %108
  %114 = load i32, i32* %9, align 4
  %115 = icmp sgt i32 %114, 255
  br i1 %115, label %116, label %117

116:                                              ; preds = %113
  br label %118

117:                                              ; preds = %113
  br label %108

118:                                              ; preds = %116, %108
  %119 = load i32, i32* @data_port, align 4
  %120 = call i32 @inb(i32 %119)
  store i32 %120, i32* %9, align 4
  %121 = load i32, i32* %9, align 4
  %122 = and i32 %121, 2
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %125

124:                                              ; preds = %118
  store i32 -1, i32* %4, align 4
  br label %127

125:                                              ; preds = %118
  %126 = load i32, i32* %9, align 4
  store i32 %126, i32* %4, align 4
  br label %127

127:                                              ; preds = %125, %124, %87
  %128 = load i32, i32* %4, align 4
  ret i32 %128
}

declare dso_local i32 @mvv_write(i32, i64) #1

declare dso_local i32 @outb(i32, i32) #1

declare dso_local i32 @inb(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
