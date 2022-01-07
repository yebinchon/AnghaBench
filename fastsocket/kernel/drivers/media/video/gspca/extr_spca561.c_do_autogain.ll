; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_spca561.c_do_autogain.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_spca561.c_do_autogain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gspca_dev = type { i32* }
%struct.sd = type { i64, i32 }

@AG_CNT_START = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gspca_dev*)* @do_autogain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_autogain(%struct.gspca_dev* %0) #0 {
  %2 = alloca %struct.gspca_dev*, align 8
  %3 = alloca %struct.sd*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.gspca_dev* %0, %struct.gspca_dev** %2, align 8
  %15 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %16 = bitcast %struct.gspca_dev* %15 to %struct.sd*
  store %struct.sd* %16, %struct.sd** %3, align 8
  store i32 110, i32* %12, align 4
  store i32 20, i32* %13, align 4
  store i32 4, i32* %14, align 4
  %17 = load %struct.sd*, %struct.sd** %3, align 8
  %18 = getelementptr inbounds %struct.sd, %struct.sd* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp slt i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %1
  br label %134

22:                                               ; preds = %1
  %23 = load %struct.sd*, %struct.sd** %3, align 8
  %24 = getelementptr inbounds %struct.sd, %struct.sd* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = add nsw i64 %25, -1
  store i64 %26, i64* %24, align 8
  %27 = icmp sge i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %22
  br label %134

29:                                               ; preds = %22
  %30 = load i64, i64* @AG_CNT_START, align 8
  %31 = load %struct.sd*, %struct.sd** %3, align 8
  %32 = getelementptr inbounds %struct.sd, %struct.sd* %31, i32 0, i32 0
  store i64 %30, i64* %32, align 8
  %33 = load %struct.sd*, %struct.sd** %3, align 8
  %34 = getelementptr inbounds %struct.sd, %struct.sd* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  switch i32 %35, label %134 [
    i32 128, label %36
  ]

36:                                               ; preds = %29
  %37 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %38 = call i32 @reg_r(%struct.gspca_dev* %37, i32 34337, i32 1)
  %39 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %40 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 0
  %43 = load i32, i32* %42, align 4
  store i32 %43, i32* %8, align 4
  %44 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %45 = call i32 @reg_r(%struct.gspca_dev* %44, i32 34338, i32 1)
  %46 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %47 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 0
  %50 = load i32, i32* %49, align 4
  store i32 %50, i32* %7, align 4
  %51 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %52 = call i32 @reg_r(%struct.gspca_dev* %51, i32 34339, i32 1)
  %53 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %54 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %53, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 0
  %57 = load i32, i32* %56, align 4
  store i32 %57, i32* %10, align 4
  %58 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %59 = call i32 @reg_r(%struct.gspca_dev* %58, i32 34340, i32 1)
  %60 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %61 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %60, i32 0, i32 0
  %62 = load i32*, i32** %61, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 0
  %64 = load i32, i32* %63, align 4
  store i32 %64, i32* %9, align 4
  %65 = load i32, i32* %7, align 4
  %66 = mul nsw i32 77, %65
  %67 = load i32, i32* %8, align 4
  %68 = load i32, i32* %9, align 4
  %69 = add nsw i32 %67, %68
  %70 = mul nsw i32 75, %69
  %71 = add nsw i32 %66, %70
  %72 = load i32, i32* %10, align 4
  %73 = mul nsw i32 29, %72
  %74 = add nsw i32 %71, %73
  %75 = ashr i32 %74, 8
  store i32 %75, i32* %11, align 4
  %76 = load i32, i32* %11, align 4
  %77 = load i32, i32* %12, align 4
  %78 = load i32, i32* %13, align 4
  %79 = sub nsw i32 %77, %78
  %80 = icmp slt i32 %76, %79
  br i1 %80, label %87, label %81

81:                                               ; preds = %36
  %82 = load i32, i32* %11, align 4
  %83 = load i32, i32* %12, align 4
  %84 = load i32, i32* %13, align 4
  %85 = add nsw i32 %83, %84
  %86 = icmp sgt i32 %82, %85
  br i1 %86, label %87, label %133

87:                                               ; preds = %81, %36
  %88 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %89 = call i32 @i2c_read(%struct.gspca_dev* %88, i32 9, i32 16)
  store i32 %89, i32* %4, align 4
  store i32 2048, i32* %5, align 4
  %90 = load i32, i32* %4, align 4
  %91 = and i32 %90, 2047
  store i32 %91, i32* %4, align 4
  %92 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %93 = call i32 @i2c_read(%struct.gspca_dev* %92, i32 53, i32 16)
  store i32 %93, i32* %6, align 4
  %94 = load i32, i32* %12, align 4
  %95 = load i32, i32* %11, align 4
  %96 = sub nsw i32 %94, %95
  %97 = load i32, i32* %14, align 4
  %98 = ashr i32 %96, %97
  %99 = load i32, i32* %4, align 4
  %100 = add nsw i32 %99, %98
  store i32 %100, i32* %4, align 4
  %101 = load i32, i32* %12, align 4
  %102 = load i32, i32* %11, align 4
  %103 = sub nsw i32 %101, %102
  %104 = sdiv i32 %103, 50
  %105 = load i32, i32* %6, align 4
  %106 = add nsw i32 %105, %104
  store i32 %106, i32* %6, align 4
  %107 = load i32, i32* %6, align 4
  %108 = icmp sgt i32 %107, 63
  br i1 %108, label %109, label %110

109:                                              ; preds = %87
  store i32 63, i32* %6, align 4
  br label %115

110:                                              ; preds = %87
  %111 = load i32, i32* %6, align 4
  %112 = icmp slt i32 %111, 3
  br i1 %112, label %113, label %114

113:                                              ; preds = %110
  store i32 3, i32* %6, align 4
  br label %114

114:                                              ; preds = %113, %110
  br label %115

115:                                              ; preds = %114, %109
  %116 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %117 = load i32, i32* %6, align 4
  %118 = call i32 @i2c_write(%struct.gspca_dev* %116, i32 %117, i32 53)
  %119 = load i32, i32* %4, align 4
  %120 = icmp sgt i32 %119, 598
  br i1 %120, label %121, label %122

121:                                              ; preds = %115
  store i32 598, i32* %4, align 4
  br label %127

122:                                              ; preds = %115
  %123 = load i32, i32* %4, align 4
  %124 = icmp slt i32 %123, 3
  br i1 %124, label %125, label %126

125:                                              ; preds = %122
  store i32 3, i32* %4, align 4
  br label %126

126:                                              ; preds = %125, %122
  br label %127

127:                                              ; preds = %126, %121
  %128 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %129 = load i32, i32* %4, align 4
  %130 = load i32, i32* %5, align 4
  %131 = or i32 %129, %130
  %132 = call i32 @i2c_write(%struct.gspca_dev* %128, i32 %131, i32 9)
  br label %133

133:                                              ; preds = %127, %81
  br label %134

134:                                              ; preds = %21, %28, %29, %133
  ret void
}

declare dso_local i32 @reg_r(%struct.gspca_dev*, i32, i32) #1

declare dso_local i32 @i2c_read(%struct.gspca_dev*, i32, i32) #1

declare dso_local i32 @i2c_write(%struct.gspca_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
