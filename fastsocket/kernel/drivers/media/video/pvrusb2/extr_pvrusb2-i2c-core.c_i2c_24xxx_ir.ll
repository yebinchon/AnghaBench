; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/pvrusb2/extr_pvrusb2-i2c-core.c_i2c_24xxx_ir.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/pvrusb2/extr_pvrusb2-i2c-core.c_i2c_24xxx_ir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pvr2_hdw = type { i32*, i32 }

@EIO = common dso_local global i32 0, align 4
@FX2CMD_GET_IR_CODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pvr2_hdw*, i32, i32*, i64, i32*, i64)* @i2c_24xxx_ir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i2c_24xxx_ir(%struct.pvr2_hdw* %0, i32 %1, i32* %2, i64 %3, i32* %4, i64 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.pvr2_hdw*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  %14 = alloca [4 x i32], align 16
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  store %struct.pvr2_hdw* %0, %struct.pvr2_hdw** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32* %2, i32** %10, align 8
  store i64 %3, i64* %11, align 8
  store i32* %4, i32** %12, align 8
  store i64 %5, i64* %13, align 8
  %17 = load i64, i64* %13, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %23, label %19

19:                                               ; preds = %6
  %20 = load i64, i64* %11, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %19
  store i32 0, i32* %7, align 4
  br label %140

23:                                               ; preds = %19, %6
  %24 = load i64, i64* %11, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %23
  %27 = load i64, i64* %13, align 8
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %26, %23
  %30 = load i32, i32* @EIO, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %7, align 4
  br label %140

32:                                               ; preds = %26
  %33 = load i64, i64* %13, align 8
  %34 = icmp slt i64 %33, 3
  br i1 %34, label %35, label %48

35:                                               ; preds = %32
  %36 = load i64, i64* %13, align 8
  %37 = icmp sgt i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %35
  %39 = load i32*, i32** %12, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 0
  store i32 0, i32* %40, align 4
  br label %41

41:                                               ; preds = %38, %35
  %42 = load i64, i64* %13, align 8
  %43 = icmp sgt i64 %42, 1
  br i1 %43, label %44, label %47

44:                                               ; preds = %41
  %45 = load i32*, i32** %12, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 1
  store i32 0, i32* %46, align 4
  br label %47

47:                                               ; preds = %44, %41
  store i32 0, i32* %7, align 4
  br label %140

48:                                               ; preds = %32
  %49 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %8, align 8
  %50 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @LOCK_TAKE(i32 %51)
  br label %53

53:                                               ; preds = %48
  %54 = load i32, i32* @FX2CMD_GET_IR_CODE, align 4
  %55 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %8, align 8
  %56 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %55, i32 0, i32 0
  %57 = load i32*, i32** %56, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 0
  store i32 %54, i32* %58, align 4
  %59 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %8, align 8
  %60 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %8, align 8
  %61 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %60, i32 0, i32 0
  %62 = load i32*, i32** %61, align 8
  %63 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %8, align 8
  %64 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %63, i32 0, i32 0
  %65 = load i32*, i32** %64, align 8
  %66 = call i32 @pvr2_send_request(%struct.pvr2_hdw* %59, i32* %62, i32 1, i32* %65, i32 4)
  store i32 %66, i32* %15, align 4
  %67 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %8, align 8
  %68 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %67, i32 0, i32 0
  %69 = load i32*, i32** %68, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 0
  %71 = load i32, i32* %70, align 4
  %72 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i64 0, i64 0
  store i32 %71, i32* %72, align 16
  %73 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %8, align 8
  %74 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %73, i32 0, i32 0
  %75 = load i32*, i32** %74, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 1
  %77 = load i32, i32* %76, align 4
  %78 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i64 0, i64 1
  store i32 %77, i32* %78, align 4
  %79 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %8, align 8
  %80 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %79, i32 0, i32 0
  %81 = load i32*, i32** %80, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 2
  %83 = load i32, i32* %82, align 4
  %84 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i64 0, i64 2
  store i32 %83, i32* %84, align 8
  %85 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %8, align 8
  %86 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %85, i32 0, i32 0
  %87 = load i32*, i32** %86, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 3
  %89 = load i32, i32* %88, align 4
  %90 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i64 0, i64 3
  store i32 %89, i32* %90, align 4
  br label %91

91:                                               ; preds = %53
  %92 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %8, align 8
  %93 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 8
  %95 = call i32 @LOCK_GIVE(i32 %94)
  %96 = load i32, i32* %15, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %100

98:                                               ; preds = %91
  %99 = load i32, i32* %15, align 4
  store i32 %99, i32* %7, align 4
  br label %140

100:                                              ; preds = %91
  %101 = load i32*, i32** %12, align 8
  %102 = getelementptr inbounds i32, i32* %101, i64 2
  store i32 193, i32* %102, align 4
  %103 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i64 0, i64 0
  %104 = load i32, i32* %103, align 16
  %105 = icmp ne i32 %104, 1
  br i1 %105, label %106, label %111

106:                                              ; preds = %100
  %107 = load i32*, i32** %12, align 8
  %108 = getelementptr inbounds i32, i32* %107, i64 0
  store i32 0, i32* %108, align 4
  %109 = load i32*, i32** %12, align 8
  %110 = getelementptr inbounds i32, i32* %109, i64 1
  store i32 0, i32* %110, align 4
  br label %139

111:                                              ; preds = %100
  %112 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i64 0, i64 1
  %113 = load i32, i32* %112, align 4
  %114 = sext i32 %113 to i64
  store i64 %114, i64* %16, align 8
  %115 = load i64, i64* %16, align 8
  %116 = shl i64 %115, 8
  store i64 %116, i64* %16, align 8
  %117 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i64 0, i64 2
  %118 = load i32, i32* %117, align 8
  %119 = sext i32 %118 to i64
  %120 = load i64, i64* %16, align 8
  %121 = or i64 %120, %119
  store i64 %121, i64* %16, align 8
  %122 = load i64, i64* %16, align 8
  %123 = ashr i64 %122, 1
  store i64 %123, i64* %16, align 8
  %124 = load i64, i64* %16, align 8
  %125 = and i64 %124, -4
  store i64 %125, i64* %16, align 8
  %126 = load i64, i64* %16, align 8
  %127 = or i64 %126, 32768
  store i64 %127, i64* %16, align 8
  %128 = load i64, i64* %16, align 8
  %129 = ashr i64 %128, 8
  %130 = and i64 %129, 255
  %131 = trunc i64 %130 to i32
  %132 = load i32*, i32** %12, align 8
  %133 = getelementptr inbounds i32, i32* %132, i64 0
  store i32 %131, i32* %133, align 4
  %134 = load i64, i64* %16, align 8
  %135 = and i64 %134, 255
  %136 = trunc i64 %135 to i32
  %137 = load i32*, i32** %12, align 8
  %138 = getelementptr inbounds i32, i32* %137, i64 1
  store i32 %136, i32* %138, align 4
  br label %139

139:                                              ; preds = %111, %106
  store i32 0, i32* %7, align 4
  br label %140

140:                                              ; preds = %139, %98, %47, %29, %22
  %141 = load i32, i32* %7, align 4
  ret i32 %141
}

declare dso_local i32 @LOCK_TAKE(i32) #1

declare dso_local i32 @pvr2_send_request(%struct.pvr2_hdw*, i32*, i32, i32*, i32) #1

declare dso_local i32 @LOCK_GIVE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
