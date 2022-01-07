; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/ip2/extr_ip2main.c_ip2_proc_show.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/ip2/extr_ip2main.c_ip2_proc_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32*, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.seq_file = type { i32 }

@.str = private unnamed_addr constant [25 x i8] c"ip2info: 1.0 driver: %s\0A\00", align 1
@pcVersion = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [76 x i8] c"Driver: SMajor=%d CMajor=%d IMajor=%d MaxBoards=%d MaxBoxes=%d MaxPorts=%d\0A\00", align 1
@IP2_TTY_MAJOR = common dso_local global i32 0, align 4
@IP2_CALLOUT_MAJOR = common dso_local global i32 0, align 4
@IP2_IPL_MAJOR = common dso_local global i32 0, align 4
@IP2_MAX_BOARDS = common dso_local global i32 0, align 4
@ABS_MAX_BOXES = common dso_local global i32 0, align 4
@ABS_BIGGEST_BOX = common dso_local global i32 0, align 4
@i2BoardPtrTable = common dso_local global %struct.TYPE_7__** null, align 8
@POR_ID_RESERVED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"Board %d: EX ports=\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"%s%d\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c" boxes=%d width=%d\00", align 1
@.str.7 = private unnamed_addr constant [32 x i8] c"Board %d: ISA-4 ports=4 boxes=1\00", align 1
@.str.8 = private unnamed_addr constant [36 x i8] c"Board %d: ISA-8-std ports=8 boxes=1\00", align 1
@.str.9 = private unnamed_addr constant [37 x i8] c"Board %d: ISA-8-RJ11 ports=8 boxes=1\00", align 1
@.str.10 = private unnamed_addr constant [18 x i8] c"Board %d: unknown\00", align 1
@.str.11 = private unnamed_addr constant [17 x i8] c"Board %d: vacant\00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c" minors=\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, i8*)* @ip2_proc_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ip2_proc_show(%struct.seq_file* %0, i8* %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_7__*, align 8
  %12 = alloca i8*, align 8
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  store i8* %1, i8** %4, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %13 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %14 = load i32, i32* @pcVersion, align 4
  %15 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %13, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %14)
  %16 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %17 = load i32, i32* @IP2_TTY_MAJOR, align 4
  %18 = load i32, i32* @IP2_CALLOUT_MAJOR, align 4
  %19 = load i32, i32* @IP2_IPL_MAJOR, align 4
  %20 = load i32, i32* @IP2_MAX_BOARDS, align 4
  %21 = load i32, i32* @ABS_MAX_BOXES, align 4
  %22 = load i32, i32* @ABS_BIGGEST_BOX, align 4
  %23 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %16, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.1, i64 0, i64 0), i32 %17, i32 %18, i32 %19, i32 %20, i32 %21, i32 %22)
  store i32 0, i32* %5, align 4
  br label %24

24:                                               ; preds = %183, %2
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* @IP2_MAX_BOARDS, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %186

28:                                               ; preds = %24
  store i32 0, i32* %8, align 4
  %29 = load %struct.TYPE_7__**, %struct.TYPE_7__*** @i2BoardPtrTable, align 8
  %30 = load i32, i32* %5, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %29, i64 %31
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %32, align 8
  store %struct.TYPE_7__* %33, %struct.TYPE_7__** %11, align 8
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %35 = icmp ne %struct.TYPE_7__* %34, null
  br i1 %35, label %36, label %127

36:                                               ; preds = %28
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @POR_ID_RESERVED, align 4
  %43 = xor i32 %42, -1
  %44 = and i32 %41, %43
  switch i32 %44, label %122 [
    i32 131, label %45
    i32 130, label %110
    i32 129, label %114
    i32 128, label %118
  ]

45:                                               ; preds = %36
  %46 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %47 = load i32, i32* %5, align 4
  %48 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %46, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 %47)
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), i8** %12, align 8
  store i32 0, i32* %7, align 4
  br label %49

49:                                               ; preds = %97, %45
  %50 = load i32, i32* %7, align 4
  %51 = load i32, i32* @ABS_MAX_BOXES, align 4
  %52 = icmp slt i32 %50, %51
  br i1 %52, label %53, label %100

53:                                               ; preds = %49
  store i32 0, i32* %9, align 4
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = load i32, i32* %7, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %56, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %53
  %63 = load i32, i32* %8, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %8, align 4
  br label %65

65:                                               ; preds = %62, %53
  store i32 0, i32* %6, align 4
  br label %66

66:                                               ; preds = %86, %65
  %67 = load i32, i32* %6, align 4
  %68 = load i32, i32* @ABS_BIGGEST_BOX, align 4
  %69 = icmp slt i32 %67, %68
  br i1 %69, label %70, label %89

70:                                               ; preds = %66
  %71 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 0
  %73 = load i32*, i32** %72, align 8
  %74 = load i32, i32* %7, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %73, i64 %75
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* %6, align 4
  %79 = shl i32 1, %78
  %80 = and i32 %77, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %70
  %83 = load i32, i32* %9, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %9, align 4
  br label %85

85:                                               ; preds = %82, %70
  br label %86

86:                                               ; preds = %85
  %87 = load i32, i32* %6, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %6, align 4
  br label %66

89:                                               ; preds = %66
  %90 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %91 = load i8*, i8** %12, align 8
  %92 = load i32, i32* %9, align 4
  %93 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %90, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8* %91, i32 %92)
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0), i8** %12, align 8
  %94 = load i32, i32* %9, align 4
  %95 = load i32, i32* %10, align 4
  %96 = add nsw i32 %95, %94
  store i32 %96, i32* %10, align 4
  br label %97

97:                                               ; preds = %89
  %98 = load i32, i32* %7, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %7, align 4
  br label %49

100:                                              ; preds = %49
  %101 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %102 = load i32, i32* %8, align 4
  %103 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %104 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 8
  %106 = icmp ne i32 %105, 0
  %107 = zext i1 %106 to i64
  %108 = select i1 %106, i32 16, i32 8
  %109 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %101, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0), i32 %102, i32 %108)
  br label %126

110:                                              ; preds = %36
  %111 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %112 = load i32, i32* %5, align 4
  %113 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %111, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i64 0, i64 0), i32 %112)
  store i32 4, i32* %9, align 4
  store i32 4, i32* %10, align 4
  br label %126

114:                                              ; preds = %36
  %115 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %116 = load i32, i32* %5, align 4
  %117 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %115, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8, i64 0, i64 0), i32 %116)
  store i32 8, i32* %9, align 4
  store i32 8, i32* %10, align 4
  br label %126

118:                                              ; preds = %36
  %119 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %120 = load i32, i32* %5, align 4
  %121 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %119, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.9, i64 0, i64 0), i32 %120)
  store i32 8, i32* %9, align 4
  store i32 8, i32* %10, align 4
  br label %126

122:                                              ; preds = %36
  %123 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %124 = load i32, i32* %5, align 4
  %125 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %123, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.10, i64 0, i64 0), i32 %124)
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %126

126:                                              ; preds = %122, %118, %114, %110, %100
  br label %131

127:                                              ; preds = %28
  %128 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %129 = load i32, i32* %5, align 4
  %130 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %128, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.11, i64 0, i64 0), i32 %129)
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %131

131:                                              ; preds = %127, %126
  %132 = load i32, i32* %10, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %180

134:                                              ; preds = %131
  %135 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %136 = call i32 @seq_puts(%struct.seq_file* %135, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i64 0, i64 0))
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), i8** %12, align 8
  store i32 0, i32* %7, align 4
  br label %137

137:                                              ; preds = %176, %134
  %138 = load i32, i32* %7, align 4
  %139 = load i32, i32* @ABS_MAX_BOXES, align 4
  %140 = icmp slt i32 %138, %139
  br i1 %140, label %141, label %179

141:                                              ; preds = %137
  store i32 0, i32* %6, align 4
  br label %142

142:                                              ; preds = %172, %141
  %143 = load i32, i32* %6, align 4
  %144 = load i32, i32* @ABS_BIGGEST_BOX, align 4
  %145 = icmp slt i32 %143, %144
  br i1 %145, label %146, label %175

146:                                              ; preds = %142
  %147 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %148 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %147, i32 0, i32 0
  %149 = load i32*, i32** %148, align 8
  %150 = load i32, i32* %7, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds i32, i32* %149, i64 %151
  %153 = load i32, i32* %152, align 4
  %154 = load i32, i32* %6, align 4
  %155 = shl i32 1, %154
  %156 = and i32 %153, %155
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %171

158:                                              ; preds = %146
  %159 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %160 = load i8*, i8** %12, align 8
  %161 = load i32, i32* %6, align 4
  %162 = load i32, i32* @ABS_BIGGEST_BOX, align 4
  %163 = load i32, i32* %7, align 4
  %164 = load i32, i32* %5, align 4
  %165 = load i32, i32* @ABS_MAX_BOXES, align 4
  %166 = mul nsw i32 %164, %165
  %167 = add nsw i32 %163, %166
  %168 = mul nsw i32 %162, %167
  %169 = add nsw i32 %161, %168
  %170 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %159, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8* %160, i32 %169)
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0), i8** %12, align 8
  br label %171

171:                                              ; preds = %158, %146
  br label %172

172:                                              ; preds = %171
  %173 = load i32, i32* %6, align 4
  %174 = add nsw i32 %173, 1
  store i32 %174, i32* %6, align 4
  br label %142

175:                                              ; preds = %142
  br label %176

176:                                              ; preds = %175
  %177 = load i32, i32* %7, align 4
  %178 = add nsw i32 %177, 1
  store i32 %178, i32* %7, align 4
  br label %137

179:                                              ; preds = %137
  br label %180

180:                                              ; preds = %179, %131
  %181 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %182 = call i32 @seq_putc(%struct.seq_file* %181, i8 signext 10)
  br label %183

183:                                              ; preds = %180
  %184 = load i32, i32* %5, align 4
  %185 = add nsw i32 %184, 1
  store i32 %185, i32* %5, align 4
  br label %24

186:                                              ; preds = %24
  ret i32 0
}

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, ...) #1

declare dso_local i32 @seq_puts(%struct.seq_file*, i8*) #1

declare dso_local i32 @seq_putc(%struct.seq_file*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
