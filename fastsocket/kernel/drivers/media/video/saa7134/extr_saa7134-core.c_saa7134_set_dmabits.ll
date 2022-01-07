; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/saa7134/extr_saa7134-core.c_saa7134_set_dmabits.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/saa7134/extr_saa7134-core.c_saa7134_set_dmabits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.saa7134_dev = type { i32, %struct.TYPE_14__, %struct.TYPE_13__, %struct.TYPE_12__, i64, %struct.TYPE_11__, i64, i32 }
%struct.TYPE_14__ = type { i64 }
%struct.TYPE_13__ = type { i64 }
%struct.TYPE_12__ = type { i64 }
%struct.TYPE_11__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { %struct.TYPE_9__*, %struct.TYPE_8__ }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_8__ = type { i32 }

@V4L2_FIELD_ANY = common dso_local global i32 0, align 4
@SAA7134_MAIN_CTRL_TE0 = common dso_local global i32 0, align 4
@SAA7134_IRQ1_INTE_RA0_1 = common dso_local global i32 0, align 4
@SAA7134_IRQ1_INTE_RA0_0 = common dso_local global i32 0, align 4
@SAA7134_MAIN_CTRL_TE4 = common dso_local global i32 0, align 4
@SAA7134_MAIN_CTRL_TE5 = common dso_local global i32 0, align 4
@SAA7134_MAIN_CTRL_TE1 = common dso_local global i32 0, align 4
@SAA7134_MAIN_CTRL_TE2 = common dso_local global i32 0, align 4
@SAA7134_MAIN_CTRL_TE3 = common dso_local global i32 0, align 4
@SAA7134_IRQ1_INTE_RA0_7 = common dso_local global i32 0, align 4
@SAA7134_IRQ1_INTE_RA0_6 = common dso_local global i32 0, align 4
@SAA7134_IRQ1_INTE_RA0_5 = common dso_local global i32 0, align 4
@SAA7134_IRQ1_INTE_RA0_4 = common dso_local global i32 0, align 4
@SAA7134_MAIN_CTRL_TE6 = common dso_local global i32 0, align 4
@SAA7134_IRQ1_INTE_RA3_1 = common dso_local global i32 0, align 4
@SAA7134_IRQ1_INTE_RA3_0 = common dso_local global i32 0, align 4
@SAA7134_IRQ1_INTE_RA2_1 = common dso_local global i32 0, align 4
@SAA7134_IRQ1_INTE_RA2_0 = common dso_local global i32 0, align 4
@TASK_A = common dso_local global i32 0, align 4
@TASK_B = common dso_local global i32 0, align 4
@V4L2_FIELD_TOP = common dso_local global i32 0, align 4
@SAA7134_REGION_ENABLE = common dso_local global i32 0, align 4
@SAA7134_IRQ1 = common dso_local global i32 0, align 4
@SAA7134_MAIN_CTRL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"dmabits: task=0x%02x ctrl=0x%02x irq=0x%x split=%s\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"no\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"yes\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @saa7134_set_dmabits(%struct.saa7134_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.saa7134_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.saa7134_dev* %0, %struct.saa7134_dev** %3, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %10 = load i32, i32* @V4L2_FIELD_ANY, align 4
  store i32 %10, i32* %8, align 4
  %11 = load i32, i32* @V4L2_FIELD_ANY, align 4
  store i32 %11, i32* %9, align 4
  %12 = load %struct.saa7134_dev*, %struct.saa7134_dev** %3, align 8
  %13 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %12, i32 0, i32 7
  %14 = call i32 @assert_spin_locked(i32* %13)
  %15 = load %struct.saa7134_dev*, %struct.saa7134_dev** %3, align 8
  %16 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %15, i32 0, i32 6
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %214

20:                                               ; preds = %1
  %21 = load %struct.saa7134_dev*, %struct.saa7134_dev** %3, align 8
  %22 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %21, i32 0, i32 5
  %23 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** %23, align 8
  %25 = icmp ne %struct.TYPE_10__* %24, null
  br i1 %25, label %26, label %44

26:                                               ; preds = %20
  %27 = load i32, i32* %5, align 4
  %28 = or i32 %27, 1
  store i32 %28, i32* %5, align 4
  %29 = load i32, i32* @SAA7134_MAIN_CTRL_TE0, align 4
  %30 = load i32, i32* %6, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %6, align 4
  %32 = load i32, i32* @SAA7134_IRQ1_INTE_RA0_1, align 4
  %33 = load i32, i32* @SAA7134_IRQ1_INTE_RA0_0, align 4
  %34 = or i32 %32, %33
  %35 = load i32, i32* %7, align 4
  %36 = or i32 %35, %34
  store i32 %36, i32* %7, align 4
  %37 = load %struct.saa7134_dev*, %struct.saa7134_dev** %3, align 8
  %38 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %37, i32 0, i32 5
  %39 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  store i32 %43, i32* %8, align 4
  br label %44

44:                                               ; preds = %26, %20
  %45 = load %struct.saa7134_dev*, %struct.saa7134_dev** %3, align 8
  %46 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %45, i32 0, i32 5
  %47 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %46, i32 0, i32 0
  %48 = load %struct.TYPE_10__*, %struct.TYPE_10__** %47, align 8
  %49 = icmp ne %struct.TYPE_10__* %48, null
  br i1 %49, label %50, label %66

50:                                               ; preds = %44
  %51 = load %struct.saa7134_dev*, %struct.saa7134_dev** %3, align 8
  %52 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %51, i32 0, i32 5
  %53 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %52, i32 0, i32 0
  %54 = load %struct.TYPE_10__*, %struct.TYPE_10__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i32 0, i32 0
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %66

60:                                               ; preds = %50
  %61 = load i32, i32* @SAA7134_MAIN_CTRL_TE4, align 4
  %62 = load i32, i32* @SAA7134_MAIN_CTRL_TE5, align 4
  %63 = or i32 %61, %62
  %64 = load i32, i32* %6, align 4
  %65 = or i32 %64, %63
  store i32 %65, i32* %6, align 4
  br label %66

66:                                               ; preds = %60, %50, %44
  %67 = load %struct.saa7134_dev*, %struct.saa7134_dev** %3, align 8
  %68 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %67, i32 0, i32 4
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %80

71:                                               ; preds = %66
  %72 = load i32, i32* %5, align 4
  %73 = or i32 %72, 16
  store i32 %73, i32* %5, align 4
  %74 = load i32, i32* @SAA7134_MAIN_CTRL_TE1, align 4
  %75 = load i32, i32* %6, align 4
  %76 = or i32 %75, %74
  store i32 %76, i32* %6, align 4
  %77 = load %struct.saa7134_dev*, %struct.saa7134_dev** %3, align 8
  %78 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  store i32 %79, i32* %9, align 4
  br label %80

80:                                               ; preds = %71, %66
  %81 = load %struct.saa7134_dev*, %struct.saa7134_dev** %3, align 8
  %82 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %81, i32 0, i32 3
  %83 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %103

86:                                               ; preds = %80
  %87 = load i32, i32* %5, align 4
  %88 = or i32 %87, 34
  store i32 %88, i32* %5, align 4
  %89 = load i32, i32* @SAA7134_MAIN_CTRL_TE2, align 4
  %90 = load i32, i32* @SAA7134_MAIN_CTRL_TE3, align 4
  %91 = or i32 %89, %90
  %92 = load i32, i32* %6, align 4
  %93 = or i32 %92, %91
  store i32 %93, i32* %6, align 4
  %94 = load i32, i32* @SAA7134_IRQ1_INTE_RA0_7, align 4
  %95 = load i32, i32* @SAA7134_IRQ1_INTE_RA0_6, align 4
  %96 = or i32 %94, %95
  %97 = load i32, i32* @SAA7134_IRQ1_INTE_RA0_5, align 4
  %98 = or i32 %96, %97
  %99 = load i32, i32* @SAA7134_IRQ1_INTE_RA0_4, align 4
  %100 = or i32 %98, %99
  %101 = load i32, i32* %7, align 4
  %102 = or i32 %101, %100
  store i32 %102, i32* %7, align 4
  br label %103

103:                                              ; preds = %86, %80
  %104 = load %struct.saa7134_dev*, %struct.saa7134_dev** %3, align 8
  %105 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %104, i32 0, i32 2
  %106 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %118

109:                                              ; preds = %103
  %110 = load i32, i32* @SAA7134_MAIN_CTRL_TE6, align 4
  %111 = load i32, i32* %6, align 4
  %112 = or i32 %111, %110
  store i32 %112, i32* %6, align 4
  %113 = load i32, i32* @SAA7134_IRQ1_INTE_RA3_1, align 4
  %114 = load i32, i32* @SAA7134_IRQ1_INTE_RA3_0, align 4
  %115 = or i32 %113, %114
  %116 = load i32, i32* %7, align 4
  %117 = or i32 %116, %115
  store i32 %117, i32* %7, align 4
  br label %118

118:                                              ; preds = %109, %103
  %119 = load %struct.saa7134_dev*, %struct.saa7134_dev** %3, align 8
  %120 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %119, i32 0, i32 1
  %121 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %133

124:                                              ; preds = %118
  %125 = load i32, i32* @SAA7134_MAIN_CTRL_TE5, align 4
  %126 = load i32, i32* %6, align 4
  %127 = or i32 %126, %125
  store i32 %127, i32* %6, align 4
  %128 = load i32, i32* @SAA7134_IRQ1_INTE_RA2_1, align 4
  %129 = load i32, i32* @SAA7134_IRQ1_INTE_RA2_0, align 4
  %130 = or i32 %128, %129
  %131 = load i32, i32* %7, align 4
  %132 = or i32 %131, %130
  store i32 %132, i32* %7, align 4
  br label %133

133:                                              ; preds = %124, %118
  %134 = load i32, i32* %8, align 4
  %135 = call i64 @V4L2_FIELD_HAS_BOTH(i32 %134)
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %145, label %137

137:                                              ; preds = %133
  %138 = load i32, i32* %9, align 4
  %139 = call i64 @V4L2_FIELD_HAS_BOTH(i32 %138)
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %145, label %141

141:                                              ; preds = %137
  %142 = load i32, i32* %8, align 4
  %143 = load i32, i32* %9, align 4
  %144 = icmp eq i32 %142, %143
  br i1 %144, label %145, label %158

145:                                              ; preds = %141, %137, %133
  %146 = load i32, i32* @TASK_A, align 4
  %147 = call i32 @SAA7134_TASK_CONDITIONS(i32 %146)
  %148 = call i32 @saa_writeb(i32 %147, i32 13)
  %149 = load i32, i32* @TASK_B, align 4
  %150 = call i32 @SAA7134_TASK_CONDITIONS(i32 %149)
  %151 = call i32 @saa_writeb(i32 %150, i32 13)
  %152 = load i32, i32* @TASK_A, align 4
  %153 = call i32 @SAA7134_FIELD_HANDLING(i32 %152)
  %154 = call i32 @saa_writeb(i32 %153, i32 2)
  %155 = load i32, i32* @TASK_B, align 4
  %156 = call i32 @SAA7134_FIELD_HANDLING(i32 %155)
  %157 = call i32 @saa_writeb(i32 %156, i32 2)
  store i32 0, i32* %4, align 4
  br label %183

158:                                              ; preds = %141
  %159 = load i32, i32* @V4L2_FIELD_TOP, align 4
  %160 = load i32, i32* %8, align 4
  %161 = icmp eq i32 %159, %160
  br i1 %161, label %162, label %169

162:                                              ; preds = %158
  %163 = load i32, i32* @TASK_A, align 4
  %164 = call i32 @SAA7134_TASK_CONDITIONS(i32 %163)
  %165 = call i32 @saa_writeb(i32 %164, i32 13)
  %166 = load i32, i32* @TASK_B, align 4
  %167 = call i32 @SAA7134_TASK_CONDITIONS(i32 %166)
  %168 = call i32 @saa_writeb(i32 %167, i32 14)
  br label %176

169:                                              ; preds = %158
  %170 = load i32, i32* @TASK_A, align 4
  %171 = call i32 @SAA7134_TASK_CONDITIONS(i32 %170)
  %172 = call i32 @saa_writeb(i32 %171, i32 14)
  %173 = load i32, i32* @TASK_B, align 4
  %174 = call i32 @SAA7134_TASK_CONDITIONS(i32 %173)
  %175 = call i32 @saa_writeb(i32 %174, i32 13)
  br label %176

176:                                              ; preds = %169, %162
  %177 = load i32, i32* @TASK_A, align 4
  %178 = call i32 @SAA7134_FIELD_HANDLING(i32 %177)
  %179 = call i32 @saa_writeb(i32 %178, i32 1)
  %180 = load i32, i32* @TASK_B, align 4
  %181 = call i32 @SAA7134_FIELD_HANDLING(i32 %180)
  %182 = call i32 @saa_writeb(i32 %181, i32 1)
  store i32 1, i32* %4, align 4
  br label %183

183:                                              ; preds = %176, %145
  %184 = load i32, i32* @SAA7134_REGION_ENABLE, align 4
  %185 = load i32, i32* %5, align 4
  %186 = call i32 @saa_writeb(i32 %184, i32 %185)
  %187 = load i32, i32* @SAA7134_IRQ1, align 4
  %188 = load i32, i32* %7, align 4
  %189 = call i32 @saa_writel(i32 %187, i32 %188)
  %190 = load i32, i32* @SAA7134_MAIN_CTRL, align 4
  %191 = load i32, i32* @SAA7134_MAIN_CTRL_TE0, align 4
  %192 = load i32, i32* @SAA7134_MAIN_CTRL_TE1, align 4
  %193 = or i32 %191, %192
  %194 = load i32, i32* @SAA7134_MAIN_CTRL_TE2, align 4
  %195 = or i32 %193, %194
  %196 = load i32, i32* @SAA7134_MAIN_CTRL_TE3, align 4
  %197 = or i32 %195, %196
  %198 = load i32, i32* @SAA7134_MAIN_CTRL_TE4, align 4
  %199 = or i32 %197, %198
  %200 = load i32, i32* @SAA7134_MAIN_CTRL_TE5, align 4
  %201 = or i32 %199, %200
  %202 = load i32, i32* @SAA7134_MAIN_CTRL_TE6, align 4
  %203 = or i32 %201, %202
  %204 = load i32, i32* %6, align 4
  %205 = call i32 @saa_andorl(i32 %190, i32 %203, i32 %204)
  %206 = load i32, i32* %5, align 4
  %207 = load i32, i32* %6, align 4
  %208 = load i32, i32* %7, align 4
  %209 = load i32, i32* %4, align 4
  %210 = icmp ne i32 %209, 0
  %211 = zext i1 %210 to i64
  %212 = select i1 %210, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)
  %213 = call i32 @dprintk(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i32 %206, i32 %207, i32 %208, i8* %212)
  store i32 0, i32* %2, align 4
  br label %214

214:                                              ; preds = %183, %19
  %215 = load i32, i32* %2, align 4
  ret i32 %215
}

declare dso_local i32 @assert_spin_locked(i32*) #1

declare dso_local i64 @V4L2_FIELD_HAS_BOTH(i32) #1

declare dso_local i32 @saa_writeb(i32, i32) #1

declare dso_local i32 @SAA7134_TASK_CONDITIONS(i32) #1

declare dso_local i32 @SAA7134_FIELD_HANDLING(i32) #1

declare dso_local i32 @saa_writel(i32, i32) #1

declare dso_local i32 @saa_andorl(i32, i32, i32) #1

declare dso_local i32 @dprintk(i8*, i32, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
