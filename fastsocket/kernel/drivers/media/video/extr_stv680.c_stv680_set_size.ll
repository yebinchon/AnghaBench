; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_stv680.c_stv680_set_size.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_stv680.c_stv680_set_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_stv = type { i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [33 x i8] c"STV(i): size request for %i x %i\00", align 1
@.str.1 = private unnamed_addr constant [102 x i8] c"STV(e): set_size error: request: v.width = %i, v.height = %i  actual: stv.width = %i, stv.height = %i\00", align 1
@.str.2 = private unnamed_addr constant [118 x i8] c"STV(e): request for non-supported size: request: v.width = %i, v.height = %i  actual: stv.width = %i, stv.height = %i\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"STV(i): size set to %i x %i\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_stv*, i32, i32)* @stv680_set_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stv680_set_size(%struct.usb_stv* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.usb_stv*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.usb_stv* %0, %struct.usb_stv** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load %struct.usb_stv*, %struct.usb_stv** %5, align 8
  %10 = getelementptr inbounds %struct.usb_stv, %struct.usb_stv* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %8, align 4
  %12 = load %struct.usb_stv*, %struct.usb_stv** %5, align 8
  %13 = getelementptr inbounds %struct.usb_stv, %struct.usb_stv* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* %6, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %17, label %24

17:                                               ; preds = %3
  %18 = load %struct.usb_stv*, %struct.usb_stv** %5, align 8
  %19 = getelementptr inbounds %struct.usb_stv, %struct.usb_stv* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* %7, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %17
  store i32 0, i32* %4, align 4
  br label %162

24:                                               ; preds = %17, %3
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* %7, align 4
  %27 = call i32 (i32, i8*, i32, i32, ...) @PDEBUG(i32 1, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %25, i32 %26)
  %28 = load i32, i32* %6, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %41

30:                                               ; preds = %24
  %31 = load i32, i32* %7, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %41

33:                                               ; preds = %30
  %34 = load i32, i32* %6, align 4
  %35 = and i32 %34, 1
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %41, label %37

37:                                               ; preds = %33
  %38 = load i32, i32* %7, align 4
  %39 = and i32 %38, 1
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %51

41:                                               ; preds = %37, %33, %30, %24
  %42 = load i32, i32* %6, align 4
  %43 = load i32, i32* %7, align 4
  %44 = load %struct.usb_stv*, %struct.usb_stv** %5, align 8
  %45 = getelementptr inbounds %struct.usb_stv, %struct.usb_stv* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.usb_stv*, %struct.usb_stv** %5, align 8
  %48 = getelementptr inbounds %struct.usb_stv, %struct.usb_stv* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = call i32 (i32, i8*, i32, i32, ...) @PDEBUG(i32 1, i8* getelementptr inbounds ([102 x i8], [102 x i8]* @.str.1, i64 0, i64 0), i32 %42, i32 %43, i32 %46, i32 %49)
  store i32 1, i32* %4, align 4
  br label %162

51:                                               ; preds = %37
  %52 = load i32, i32* %6, align 4
  %53 = load %struct.usb_stv*, %struct.usb_stv** %5, align 8
  %54 = getelementptr inbounds %struct.usb_stv, %struct.usb_stv* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 4
  %56 = sdiv i32 %55, 2
  %57 = icmp slt i32 %52, %56
  br i1 %57, label %65, label %58

58:                                               ; preds = %51
  %59 = load i32, i32* %7, align 4
  %60 = load %struct.usb_stv*, %struct.usb_stv** %5, align 8
  %61 = getelementptr inbounds %struct.usb_stv, %struct.usb_stv* %60, i32 0, i32 4
  %62 = load i32, i32* %61, align 4
  %63 = sdiv i32 %62, 2
  %64 = icmp slt i32 %59, %63
  br i1 %64, label %65, label %74

65:                                               ; preds = %58, %51
  %66 = load %struct.usb_stv*, %struct.usb_stv** %5, align 8
  %67 = getelementptr inbounds %struct.usb_stv, %struct.usb_stv* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 4
  %69 = sdiv i32 %68, 2
  store i32 %69, i32* %6, align 4
  %70 = load %struct.usb_stv*, %struct.usb_stv** %5, align 8
  %71 = getelementptr inbounds %struct.usb_stv, %struct.usb_stv* %70, i32 0, i32 4
  %72 = load i32, i32* %71, align 4
  %73 = sdiv i32 %72, 2
  store i32 %73, i32* %7, align 4
  br label %136

74:                                               ; preds = %58
  %75 = load i32, i32* %6, align 4
  %76 = icmp sge i32 %75, 158
  br i1 %76, label %77, label %86

77:                                               ; preds = %74
  %78 = load i32, i32* %6, align 4
  %79 = icmp sle i32 %78, 166
  br i1 %79, label %80, label %86

80:                                               ; preds = %77
  %81 = load %struct.usb_stv*, %struct.usb_stv** %5, align 8
  %82 = getelementptr inbounds %struct.usb_stv, %struct.usb_stv* %81, i32 0, i32 5
  %83 = load i32, i32* %82, align 4
  %84 = icmp eq i32 %83, 1
  br i1 %84, label %85, label %86

85:                                               ; preds = %80
  store i32 160, i32* %6, align 4
  store i32 120, i32* %7, align 4
  br label %135

86:                                               ; preds = %80, %77, %74
  %87 = load i32, i32* %6, align 4
  %88 = icmp sge i32 %87, 172
  br i1 %88, label %89, label %98

89:                                               ; preds = %86
  %90 = load i32, i32* %6, align 4
  %91 = icmp sle i32 %90, 180
  br i1 %91, label %92, label %98

92:                                               ; preds = %89
  %93 = load %struct.usb_stv*, %struct.usb_stv** %5, align 8
  %94 = getelementptr inbounds %struct.usb_stv, %struct.usb_stv* %93, i32 0, i32 6
  %95 = load i32, i32* %94, align 4
  %96 = icmp eq i32 %95, 1
  br i1 %96, label %97, label %98

97:                                               ; preds = %92
  store i32 176, i32* %6, align 4
  store i32 144, i32* %7, align 4
  br label %134

98:                                               ; preds = %92, %89, %86
  %99 = load i32, i32* %6, align 4
  %100 = icmp sge i32 %99, 318
  br i1 %100, label %101, label %110

101:                                              ; preds = %98
  %102 = load i32, i32* %6, align 4
  %103 = icmp sle i32 %102, 350
  br i1 %103, label %104, label %110

104:                                              ; preds = %101
  %105 = load %struct.usb_stv*, %struct.usb_stv** %5, align 8
  %106 = getelementptr inbounds %struct.usb_stv, %struct.usb_stv* %105, i32 0, i32 5
  %107 = load i32, i32* %106, align 4
  %108 = icmp eq i32 %107, 1
  br i1 %108, label %109, label %110

109:                                              ; preds = %104
  store i32 320, i32* %6, align 4
  store i32 240, i32* %7, align 4
  br label %133

110:                                              ; preds = %104, %101, %98
  %111 = load i32, i32* %6, align 4
  %112 = icmp sge i32 %111, 350
  br i1 %112, label %113, label %122

113:                                              ; preds = %110
  %114 = load i32, i32* %6, align 4
  %115 = icmp sle i32 %114, 358
  br i1 %115, label %116, label %122

116:                                              ; preds = %113
  %117 = load %struct.usb_stv*, %struct.usb_stv** %5, align 8
  %118 = getelementptr inbounds %struct.usb_stv, %struct.usb_stv* %117, i32 0, i32 6
  %119 = load i32, i32* %118, align 4
  %120 = icmp eq i32 %119, 1
  br i1 %120, label %121, label %122

121:                                              ; preds = %116
  store i32 352, i32* %6, align 4
  store i32 288, i32* %7, align 4
  br label %132

122:                                              ; preds = %116, %113, %110
  %123 = load i32, i32* %6, align 4
  %124 = load i32, i32* %7, align 4
  %125 = load %struct.usb_stv*, %struct.usb_stv** %5, align 8
  %126 = getelementptr inbounds %struct.usb_stv, %struct.usb_stv* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = load %struct.usb_stv*, %struct.usb_stv** %5, align 8
  %129 = getelementptr inbounds %struct.usb_stv, %struct.usb_stv* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 4
  %131 = call i32 (i32, i8*, i32, i32, ...) @PDEBUG(i32 1, i8* getelementptr inbounds ([118 x i8], [118 x i8]* @.str.2, i64 0, i64 0), i32 %123, i32 %124, i32 %127, i32 %130)
  store i32 1, i32* %4, align 4
  br label %162

132:                                              ; preds = %121
  br label %133

133:                                              ; preds = %132, %109
  br label %134

134:                                              ; preds = %133, %97
  br label %135

135:                                              ; preds = %134, %85
  br label %136

136:                                              ; preds = %135, %65
  %137 = load i32, i32* %8, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %142

139:                                              ; preds = %136
  %140 = load %struct.usb_stv*, %struct.usb_stv** %5, align 8
  %141 = call i32 @stv680_stop_stream(%struct.usb_stv* %140)
  br label %142

142:                                              ; preds = %139, %136
  %143 = load i32, i32* %6, align 4
  %144 = load %struct.usb_stv*, %struct.usb_stv** %5, align 8
  %145 = getelementptr inbounds %struct.usb_stv, %struct.usb_stv* %144, i32 0, i32 1
  store i32 %143, i32* %145, align 4
  %146 = load i32, i32* %7, align 4
  %147 = load %struct.usb_stv*, %struct.usb_stv** %5, align 8
  %148 = getelementptr inbounds %struct.usb_stv, %struct.usb_stv* %147, i32 0, i32 2
  store i32 %146, i32* %148, align 4
  %149 = load %struct.usb_stv*, %struct.usb_stv** %5, align 8
  %150 = getelementptr inbounds %struct.usb_stv, %struct.usb_stv* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 4
  %152 = load %struct.usb_stv*, %struct.usb_stv** %5, align 8
  %153 = getelementptr inbounds %struct.usb_stv, %struct.usb_stv* %152, i32 0, i32 2
  %154 = load i32, i32* %153, align 4
  %155 = call i32 (i32, i8*, i32, i32, ...) @PDEBUG(i32 1, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i32 %151, i32 %154)
  %156 = load i32, i32* %8, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %161

158:                                              ; preds = %142
  %159 = load %struct.usb_stv*, %struct.usb_stv** %5, align 8
  %160 = call i32 @stv680_start_stream(%struct.usb_stv* %159)
  br label %161

161:                                              ; preds = %158, %142
  store i32 0, i32* %4, align 4
  br label %162

162:                                              ; preds = %161, %122, %41, %23
  %163 = load i32, i32* %4, align 4
  ret i32 %163
}

declare dso_local i32 @PDEBUG(i32, i8*, i32, i32, ...) #1

declare dso_local i32 @stv680_stop_stream(%struct.usb_stv*) #1

declare dso_local i32 @stv680_start_stream(%struct.usb_stv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
