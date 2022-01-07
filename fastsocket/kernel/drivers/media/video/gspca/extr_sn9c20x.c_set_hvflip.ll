; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_sn9c20x.c_set_hvflip.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_sn9c20x.c_set_hvflip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gspca_dev = type { i32 }
%struct.sd = type { i32, i32, i32, i32 }

@FLIP_DETECT = common dso_local global i32 0, align 4
@flip_dmi_table = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gspca_dev*)* @set_hvflip to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_hvflip(%struct.gspca_dev* %0) #0 {
  %2 = alloca %struct.gspca_dev*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.sd*, align 8
  store %struct.gspca_dev* %0, %struct.gspca_dev** %2, align 8
  %9 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %10 = bitcast %struct.gspca_dev* %9 to %struct.sd*
  store %struct.sd* %10, %struct.sd** %8, align 8
  %11 = load %struct.sd*, %struct.sd** %8, align 8
  %12 = getelementptr inbounds %struct.sd, %struct.sd* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @FLIP_DETECT, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %34

17:                                               ; preds = %1
  %18 = load i32, i32* @flip_dmi_table, align 4
  %19 = call i64 @dmi_check_system(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %34

21:                                               ; preds = %17
  %22 = load %struct.sd*, %struct.sd** %8, align 8
  %23 = getelementptr inbounds %struct.sd, %struct.sd* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 0
  %26 = xor i1 %25, true
  %27 = zext i1 %26 to i32
  store i32 %27, i32* %5, align 4
  %28 = load %struct.sd*, %struct.sd** %8, align 8
  %29 = getelementptr inbounds %struct.sd, %struct.sd* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = icmp ne i32 %30, 0
  %32 = xor i1 %31, true
  %33 = zext i1 %32 to i32
  store i32 %33, i32* %6, align 4
  br label %41

34:                                               ; preds = %17, %1
  %35 = load %struct.sd*, %struct.sd** %8, align 8
  %36 = getelementptr inbounds %struct.sd, %struct.sd* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %5, align 4
  %38 = load %struct.sd*, %struct.sd** %8, align 8
  %39 = getelementptr inbounds %struct.sd, %struct.sd* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* %6, align 4
  br label %41

41:                                               ; preds = %34, %21
  %42 = load %struct.sd*, %struct.sd** %8, align 8
  %43 = getelementptr inbounds %struct.sd, %struct.sd* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 4
  switch i32 %44, label %128 [
    i32 128, label %45
    i32 130, label %68
    i32 131, label %68
    i32 132, label %88
    i32 133, label %88
    i32 129, label %88
    i32 134, label %108
  ]

45:                                               ; preds = %41
  %46 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %47 = call i32 @i2c_r1(%struct.gspca_dev* %46, i32 30, i32* %3)
  %48 = load i32, i32* %3, align 4
  %49 = and i32 %48, -49
  store i32 %49, i32* %3, align 4
  store i32 1, i32* %4, align 4
  %50 = load i32, i32* %5, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %45
  %53 = load i32, i32* %3, align 4
  %54 = or i32 %53, 32
  store i32 %54, i32* %3, align 4
  br label %55

55:                                               ; preds = %52, %45
  %56 = load i32, i32* %6, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %55
  %59 = load i32, i32* %3, align 4
  %60 = or i32 %59, 16
  store i32 %60, i32* %3, align 4
  store i32 73, i32* %4, align 4
  br label %61

61:                                               ; preds = %58, %55
  %62 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %63 = load i32, i32* %3, align 4
  %64 = call i32 @i2c_w1(%struct.gspca_dev* %62, i32 30, i32 %63)
  %65 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %66 = load i32, i32* %4, align 4
  %67 = call i32 @i2c_w1(%struct.gspca_dev* %65, i32 58, i32 %66)
  br label %128

68:                                               ; preds = %41, %41
  %69 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %70 = call i32 @i2c_r2(%struct.gspca_dev* %69, i32 32, i32* %7)
  %71 = load i32, i32* %7, align 4
  %72 = and i32 %71, -49313
  store i32 %72, i32* %7, align 4
  %73 = load i32, i32* %5, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %68
  %76 = load i32, i32* %7, align 4
  %77 = or i32 %76, 32896
  store i32 %77, i32* %7, align 4
  br label %78

78:                                               ; preds = %75, %68
  %79 = load i32, i32* %6, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %78
  %82 = load i32, i32* %7, align 4
  %83 = or i32 %82, 16416
  store i32 %83, i32* %7, align 4
  br label %84

84:                                               ; preds = %81, %78
  %85 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %86 = load i32, i32* %7, align 4
  %87 = call i32 @i2c_w2(%struct.gspca_dev* %85, i32 32, i32 %86)
  br label %128

88:                                               ; preds = %41, %41, %41
  %89 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %90 = call i32 @i2c_r2(%struct.gspca_dev* %89, i32 32, i32* %7)
  %91 = load i32, i32* %7, align 4
  %92 = and i32 %91, -4
  store i32 %92, i32* %7, align 4
  %93 = load i32, i32* %5, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %98

95:                                               ; preds = %88
  %96 = load i32, i32* %7, align 4
  %97 = or i32 %96, 2
  store i32 %97, i32* %7, align 4
  br label %98

98:                                               ; preds = %95, %88
  %99 = load i32, i32* %6, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %104

101:                                              ; preds = %98
  %102 = load i32, i32* %7, align 4
  %103 = or i32 %102, 1
  store i32 %103, i32* %7, align 4
  br label %104

104:                                              ; preds = %101, %98
  %105 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %106 = load i32, i32* %7, align 4
  %107 = call i32 @i2c_w2(%struct.gspca_dev* %105, i32 32, i32 %106)
  br label %128

108:                                              ; preds = %41
  %109 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %110 = call i32 @i2c_r1(%struct.gspca_dev* %109, i32 1, i32* %3)
  %111 = load i32, i32* %3, align 4
  %112 = and i32 %111, -4
  store i32 %112, i32* %3, align 4
  %113 = load i32, i32* %6, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %118

115:                                              ; preds = %108
  %116 = load i32, i32* %3, align 4
  %117 = or i32 %116, 1
  store i32 %117, i32* %3, align 4
  br label %118

118:                                              ; preds = %115, %108
  %119 = load i32, i32* %5, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %124

121:                                              ; preds = %118
  %122 = load i32, i32* %3, align 4
  %123 = or i32 %122, 2
  store i32 %123, i32* %3, align 4
  br label %124

124:                                              ; preds = %121, %118
  %125 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %126 = load i32, i32* %3, align 4
  %127 = call i32 @i2c_w1(%struct.gspca_dev* %125, i32 1, i32 %126)
  br label %128

128:                                              ; preds = %41, %124, %104, %84, %61
  ret i32 0
}

declare dso_local i64 @dmi_check_system(i32) #1

declare dso_local i32 @i2c_r1(%struct.gspca_dev*, i32, i32*) #1

declare dso_local i32 @i2c_w1(%struct.gspca_dev*, i32, i32) #1

declare dso_local i32 @i2c_r2(%struct.gspca_dev*, i32, i32*) #1

declare dso_local i32 @i2c_w2(%struct.gspca_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
