; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_floppy.c_fdc_specify.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_floppy.c_fdc_specify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i8, i8, i64 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_6__ = type { i64, i64, i64 }

@NOMINAL_DTR = common dso_local global i64 0, align 8
@FDCS = common dso_local global %struct.TYPE_5__* null, align 8
@FDC_82072A = common dso_local global i64 0, align 8
@raw_cmd = common dso_local global %struct.TYPE_4__* null, align 8
@FDC_82078 = common dso_local global i64 0, align 8
@FD_DRIVESPEC = common dso_local global i32 0, align 4
@MORE_OUTPUT = common dso_local global i32 0, align 4
@current_drive = common dso_local global i32 0, align 4
@FDC_82072 = common dso_local global i64 0, align 8
@DP = common dso_local global %struct.TYPE_6__* null, align 8
@slow_floppy = common dso_local global i64 0, align 8
@use_virtual_dma = common dso_local global i32 0, align 4
@FD_SPECIFY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @fdc_specify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fdc_specify() #0 {
  %1 = alloca i8, align 1
  %2 = alloca i8, align 1
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = load i64, i64* @NOMINAL_DTR, align 8
  store i64 %10, i64* %6, align 8
  %11 = load i64, i64* @NOMINAL_DTR, align 8
  store i64 %11, i64* %7, align 8
  store i32 127, i32* %8, align 4
  store i32 15, i32* %9, align 4
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** @FDCS, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 3
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %26

16:                                               ; preds = %0
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** @FDCS, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @FDC_82072A, align 8
  %21 = icmp sge i64 %19, %20
  br i1 %21, label %22, label %26

22:                                               ; preds = %16
  %23 = call i32 (...) @fdc_configure()
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** @FDCS, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 3
  store i64 0, i64* %25, align 8
  br label %26

26:                                               ; preds = %22, %16, %0
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** @raw_cmd, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = and i32 %29, 3
  switch i32 %30, label %52 [
    i32 3, label %31
    i32 1, label %32
    i32 2, label %51
  ]

31:                                               ; preds = %26
  store i64 1000, i64* %6, align 8
  br label %52

32:                                               ; preds = %26
  store i64 300, i64* %6, align 8
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** @FDCS, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @FDC_82078, align 8
  %37 = icmp sge i64 %35, %36
  br i1 %37, label %38, label %50

38:                                               ; preds = %32
  %39 = load i32, i32* @FD_DRIVESPEC, align 4
  %40 = call i32 @output_byte(i32 %39)
  %41 = call i32 (...) @need_more_output()
  %42 = load i32, i32* @MORE_OUTPUT, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %49

44:                                               ; preds = %38
  %45 = load i32, i32* @current_drive, align 4
  %46 = call i32 @UNIT(i32 %45)
  %47 = call i32 @output_byte(i32 %46)
  %48 = call i32 @output_byte(i32 192)
  br label %49

49:                                               ; preds = %44, %38
  br label %50

50:                                               ; preds = %49, %32
  br label %52

51:                                               ; preds = %26
  store i64 250, i64* %6, align 8
  br label %52

52:                                               ; preds = %26, %51, %50, %31
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** @FDCS, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @FDC_82072, align 8
  %57 = icmp sge i64 %55, %56
  br i1 %57, label %58, label %60

58:                                               ; preds = %52
  %59 = load i64, i64* %6, align 8
  store i64 %59, i64* %7, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %60

60:                                               ; preds = %58, %52
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** @DP, align 8
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* %7, align 8
  %65 = mul i64 %63, %64
  %66 = udiv i64 %65, 1000
  %67 = load i64, i64* @NOMINAL_DTR, align 8
  %68 = call i32 @DIV_ROUND_UP(i64 %66, i64 %67)
  %69 = sub nsw i32 16, %68
  %70 = sext i32 %69 to i64
  store i64 %70, i64* %3, align 8
  %71 = load i64, i64* @slow_floppy, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %60
  %74 = load i64, i64* %3, align 8
  %75 = udiv i64 %74, 4
  store i64 %75, i64* %3, align 8
  br label %76

76:                                               ; preds = %73, %60
  %77 = load i64, i64* %3, align 8
  %78 = call i32 @SUPBOUND(i64 %77, i32 15)
  %79 = load i64, i64* %3, align 8
  %80 = call i32 @INFBOUND(i64 %79, i32 0)
  %81 = load %struct.TYPE_6__*, %struct.TYPE_6__** @DP, align 8
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* %7, align 8
  %85 = mul i64 %83, %84
  %86 = udiv i64 %85, 2
  %87 = load i64, i64* @NOMINAL_DTR, align 8
  %88 = call i32 @DIV_ROUND_UP(i64 %86, i64 %87)
  %89 = sext i32 %88 to i64
  store i64 %89, i64* %4, align 8
  %90 = load i64, i64* %4, align 8
  %91 = icmp ult i64 %90, 1
  br i1 %91, label %92, label %93

92:                                               ; preds = %76
  store i64 1, i64* %4, align 8
  br label %100

93:                                               ; preds = %76
  %94 = load i64, i64* %4, align 8
  %95 = icmp ugt i64 %94, 127
  br i1 %95, label %96, label %99

96:                                               ; preds = %93
  %97 = load i32, i32* %8, align 4
  %98 = sext i32 %97 to i64
  store i64 %98, i64* %4, align 8
  br label %99

99:                                               ; preds = %96, %93
  br label %100

100:                                              ; preds = %99, %92
  %101 = load %struct.TYPE_6__*, %struct.TYPE_6__** @DP, align 8
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 2
  %103 = load i64, i64* %102, align 8
  %104 = load i64, i64* %7, align 8
  %105 = mul i64 %103, %104
  %106 = udiv i64 %105, 16
  %107 = load i64, i64* @NOMINAL_DTR, align 8
  %108 = call i32 @DIV_ROUND_UP(i64 %106, i64 %107)
  %109 = sext i32 %108 to i64
  store i64 %109, i64* %5, align 8
  %110 = load i64, i64* %5, align 8
  %111 = icmp ult i64 %110, 1
  br i1 %111, label %112, label %113

112:                                              ; preds = %100
  store i64 1, i64* %5, align 8
  br label %120

113:                                              ; preds = %100
  %114 = load i64, i64* %5, align 8
  %115 = icmp ugt i64 %114, 15
  br i1 %115, label %116, label %119

116:                                              ; preds = %113
  %117 = load i32, i32* %9, align 4
  %118 = sext i32 %117 to i64
  store i64 %118, i64* %5, align 8
  br label %119

119:                                              ; preds = %116, %113
  br label %120

120:                                              ; preds = %119, %112
  %121 = load i64, i64* %3, align 8
  %122 = shl i64 %121, 4
  %123 = load i64, i64* %5, align 8
  %124 = or i64 %122, %123
  %125 = trunc i64 %124 to i8
  store i8 %125, i8* %1, align 1
  %126 = load i64, i64* %4, align 8
  %127 = shl i64 %126, 1
  %128 = load i32, i32* @use_virtual_dma, align 4
  %129 = and i32 %128, 1
  %130 = sext i32 %129 to i64
  %131 = or i64 %127, %130
  %132 = trunc i64 %131 to i8
  store i8 %132, i8* %2, align 1
  %133 = load %struct.TYPE_5__*, %struct.TYPE_5__** @FDCS, align 8
  %134 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %133, i32 0, i32 1
  %135 = load i8, i8* %134, align 8
  %136 = zext i8 %135 to i32
  %137 = load i8, i8* %1, align 1
  %138 = zext i8 %137 to i32
  %139 = icmp ne i32 %136, %138
  br i1 %139, label %148, label %140

140:                                              ; preds = %120
  %141 = load %struct.TYPE_5__*, %struct.TYPE_5__** @FDCS, align 8
  %142 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %141, i32 0, i32 2
  %143 = load i8, i8* %142, align 1
  %144 = zext i8 %143 to i32
  %145 = load i8, i8* %2, align 1
  %146 = zext i8 %145 to i32
  %147 = icmp ne i32 %144, %146
  br i1 %147, label %148, label %161

148:                                              ; preds = %140, %120
  %149 = load i32, i32* @FD_SPECIFY, align 4
  %150 = call i32 @output_byte(i32 %149)
  %151 = load i8, i8* %1, align 1
  %152 = load %struct.TYPE_5__*, %struct.TYPE_5__** @FDCS, align 8
  %153 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %152, i32 0, i32 1
  store i8 %151, i8* %153, align 8
  %154 = zext i8 %151 to i32
  %155 = call i32 @output_byte(i32 %154)
  %156 = load i8, i8* %2, align 1
  %157 = load %struct.TYPE_5__*, %struct.TYPE_5__** @FDCS, align 8
  %158 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %157, i32 0, i32 2
  store i8 %156, i8* %158, align 1
  %159 = zext i8 %156 to i32
  %160 = call i32 @output_byte(i32 %159)
  br label %161

161:                                              ; preds = %148, %140
  ret void
}

declare dso_local i32 @fdc_configure(...) #1

declare dso_local i32 @output_byte(i32) #1

declare dso_local i32 @need_more_output(...) #1

declare dso_local i32 @UNIT(i32) #1

declare dso_local i32 @DIV_ROUND_UP(i64, i64) #1

declare dso_local i32 @SUPBOUND(i64, i32) #1

declare dso_local i32 @INFBOUND(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
