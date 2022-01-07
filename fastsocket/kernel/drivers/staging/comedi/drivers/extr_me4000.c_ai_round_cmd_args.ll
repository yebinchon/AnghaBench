; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_me4000.c_ai_round_cmd_args.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_me4000.c_ai_round_cmd_args.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i32 }
%struct.comedi_subdevice = type { i32 }
%struct.comedi_cmd = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [24 x i8] c"In ai_round_cmd_args()\0A\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"ai_round_cmd_arg(): start_arg = %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"ai_round_cmd_arg(): scan_begin_arg = %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"ai_round_cmd_arg(): convert_arg = %d\0A\00", align 1
@TRIG_ROUND_NEAREST = common dso_local global i32 0, align 4
@TRIG_ROUND_UP = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [38 x i8] c"ai_round_cmd_args(): init_ticks = %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [38 x i8] c"ai_round_cmd_args(): scan_ticks = %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [38 x i8] c"ai_round_cmd_args(): chan_ticks = %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_cmd*, i32*, i32*, i32*)* @ai_round_cmd_args to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ai_round_cmd_args(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, %struct.comedi_cmd* %2, i32* %3, i32* %4, i32* %5) #0 {
  %7 = alloca %struct.comedi_device*, align 8
  %8 = alloca %struct.comedi_subdevice*, align 8
  %9 = alloca %struct.comedi_cmd*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %7, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %8, align 8
  store %struct.comedi_cmd* %2, %struct.comedi_cmd** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  store i32* %5, i32** %12, align 8
  %14 = call i32 @CALL_PDEBUG(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %15 = load i32*, i32** %10, align 8
  store i32 0, i32* %15, align 4
  %16 = load i32*, i32** %11, align 8
  store i32 0, i32* %16, align 4
  %17 = load i32*, i32** %12, align 8
  store i32 0, i32* %17, align 4
  %18 = load %struct.comedi_cmd*, %struct.comedi_cmd** %9, align 8
  %19 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @PDEBUG(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %20)
  %22 = load %struct.comedi_cmd*, %struct.comedi_cmd** %9, align 8
  %23 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @PDEBUG(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i32 %24)
  %26 = load %struct.comedi_cmd*, %struct.comedi_cmd** %9, align 8
  %27 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @PDEBUG(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0), i32 %28)
  %30 = load %struct.comedi_cmd*, %struct.comedi_cmd** %9, align 8
  %31 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %77

34:                                               ; preds = %6
  %35 = load %struct.comedi_cmd*, %struct.comedi_cmd** %9, align 8
  %36 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = mul i32 %37, 33
  %39 = udiv i32 %38, 1000
  %40 = load i32*, i32** %10, align 8
  store i32 %39, i32* %40, align 4
  %41 = load %struct.comedi_cmd*, %struct.comedi_cmd** %9, align 8
  %42 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = mul i32 %43, 33
  %45 = urem i32 %44, 1000
  store i32 %45, i32* %13, align 4
  %46 = load %struct.comedi_cmd*, %struct.comedi_cmd** %9, align 8
  %47 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @TRIG_ROUND_NEAREST, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %60

52:                                               ; preds = %34
  %53 = load i32, i32* %13, align 4
  %54 = icmp sgt i32 %53, 33
  br i1 %54, label %55, label %59

55:                                               ; preds = %52
  %56 = load i32*, i32** %10, align 8
  %57 = load i32, i32* %56, align 4
  %58 = add i32 %57, 1
  store i32 %58, i32* %56, align 4
  br label %59

59:                                               ; preds = %55, %52
  br label %76

60:                                               ; preds = %34
  %61 = load %struct.comedi_cmd*, %struct.comedi_cmd** %9, align 8
  %62 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %61, i32 0, i32 3
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @TRIG_ROUND_UP, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %75

67:                                               ; preds = %60
  %68 = load i32, i32* %13, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %67
  %71 = load i32*, i32** %10, align 8
  %72 = load i32, i32* %71, align 4
  %73 = add i32 %72, 1
  store i32 %73, i32* %71, align 4
  br label %74

74:                                               ; preds = %70, %67
  br label %75

75:                                               ; preds = %74, %60
  br label %76

76:                                               ; preds = %75, %59
  br label %77

77:                                               ; preds = %76, %6
  %78 = load %struct.comedi_cmd*, %struct.comedi_cmd** %9, align 8
  %79 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %125

82:                                               ; preds = %77
  %83 = load %struct.comedi_cmd*, %struct.comedi_cmd** %9, align 8
  %84 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = mul i32 %85, 33
  %87 = udiv i32 %86, 1000
  %88 = load i32*, i32** %11, align 8
  store i32 %87, i32* %88, align 4
  %89 = load %struct.comedi_cmd*, %struct.comedi_cmd** %9, align 8
  %90 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = mul i32 %91, 33
  %93 = urem i32 %92, 1000
  store i32 %93, i32* %13, align 4
  %94 = load %struct.comedi_cmd*, %struct.comedi_cmd** %9, align 8
  %95 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %94, i32 0, i32 3
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* @TRIG_ROUND_NEAREST, align 4
  %98 = and i32 %96, %97
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %108

100:                                              ; preds = %82
  %101 = load i32, i32* %13, align 4
  %102 = icmp sgt i32 %101, 33
  br i1 %102, label %103, label %107

103:                                              ; preds = %100
  %104 = load i32*, i32** %11, align 8
  %105 = load i32, i32* %104, align 4
  %106 = add i32 %105, 1
  store i32 %106, i32* %104, align 4
  br label %107

107:                                              ; preds = %103, %100
  br label %124

108:                                              ; preds = %82
  %109 = load %struct.comedi_cmd*, %struct.comedi_cmd** %9, align 8
  %110 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %109, i32 0, i32 3
  %111 = load i32, i32* %110, align 4
  %112 = load i32, i32* @TRIG_ROUND_UP, align 4
  %113 = and i32 %111, %112
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %123

115:                                              ; preds = %108
  %116 = load i32, i32* %13, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %122

118:                                              ; preds = %115
  %119 = load i32*, i32** %11, align 8
  %120 = load i32, i32* %119, align 4
  %121 = add i32 %120, 1
  store i32 %121, i32* %119, align 4
  br label %122

122:                                              ; preds = %118, %115
  br label %123

123:                                              ; preds = %122, %108
  br label %124

124:                                              ; preds = %123, %107
  br label %125

125:                                              ; preds = %124, %77
  %126 = load %struct.comedi_cmd*, %struct.comedi_cmd** %9, align 8
  %127 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %126, i32 0, i32 2
  %128 = load i32, i32* %127, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %173

130:                                              ; preds = %125
  %131 = load %struct.comedi_cmd*, %struct.comedi_cmd** %9, align 8
  %132 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %131, i32 0, i32 2
  %133 = load i32, i32* %132, align 4
  %134 = mul i32 %133, 33
  %135 = udiv i32 %134, 1000
  %136 = load i32*, i32** %12, align 8
  store i32 %135, i32* %136, align 4
  %137 = load %struct.comedi_cmd*, %struct.comedi_cmd** %9, align 8
  %138 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %137, i32 0, i32 2
  %139 = load i32, i32* %138, align 4
  %140 = mul i32 %139, 33
  %141 = urem i32 %140, 1000
  store i32 %141, i32* %13, align 4
  %142 = load %struct.comedi_cmd*, %struct.comedi_cmd** %9, align 8
  %143 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %142, i32 0, i32 3
  %144 = load i32, i32* %143, align 4
  %145 = load i32, i32* @TRIG_ROUND_NEAREST, align 4
  %146 = and i32 %144, %145
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %156

148:                                              ; preds = %130
  %149 = load i32, i32* %13, align 4
  %150 = icmp sgt i32 %149, 33
  br i1 %150, label %151, label %155

151:                                              ; preds = %148
  %152 = load i32*, i32** %12, align 8
  %153 = load i32, i32* %152, align 4
  %154 = add i32 %153, 1
  store i32 %154, i32* %152, align 4
  br label %155

155:                                              ; preds = %151, %148
  br label %172

156:                                              ; preds = %130
  %157 = load %struct.comedi_cmd*, %struct.comedi_cmd** %9, align 8
  %158 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %157, i32 0, i32 3
  %159 = load i32, i32* %158, align 4
  %160 = load i32, i32* @TRIG_ROUND_UP, align 4
  %161 = and i32 %159, %160
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %171

163:                                              ; preds = %156
  %164 = load i32, i32* %13, align 4
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %170

166:                                              ; preds = %163
  %167 = load i32*, i32** %12, align 8
  %168 = load i32, i32* %167, align 4
  %169 = add i32 %168, 1
  store i32 %169, i32* %167, align 4
  br label %170

170:                                              ; preds = %166, %163
  br label %171

171:                                              ; preds = %170, %156
  br label %172

172:                                              ; preds = %171, %155
  br label %173

173:                                              ; preds = %172, %125
  %174 = load i32*, i32** %10, align 8
  %175 = load i32, i32* %174, align 4
  %176 = call i32 @PDEBUG(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0), i32 %175)
  %177 = load i32*, i32** %11, align 8
  %178 = load i32, i32* %177, align 4
  %179 = call i32 @PDEBUG(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.5, i64 0, i64 0), i32 %178)
  %180 = load i32*, i32** %12, align 8
  %181 = load i32, i32* %180, align 4
  %182 = call i32 @PDEBUG(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.6, i64 0, i64 0), i32 %181)
  ret i32 0
}

declare dso_local i32 @CALL_PDEBUG(i8*) #1

declare dso_local i32 @PDEBUG(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
