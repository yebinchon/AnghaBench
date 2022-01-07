; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/joystick/extr_warrior.c_warrior_process_packet.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/joystick/extr_warrior.c_warrior_process_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.warrior = type { i8*, i32, %struct.input_dev* }
%struct.input_dev = type { i32 }

@BTN_TRIGGER = common dso_local global i32 0, align 4
@BTN_THUMB = common dso_local global i32 0, align 4
@BTN_TOP = common dso_local global i32 0, align 4
@BTN_TOP2 = common dso_local global i32 0, align 4
@ABS_X = common dso_local global i32 0, align 4
@ABS_Y = common dso_local global i32 0, align 4
@ABS_THROTTLE = common dso_local global i32 0, align 4
@ABS_HAT0X = common dso_local global i32 0, align 4
@ABS_HAT0Y = common dso_local global i32 0, align 4
@REL_DIAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.warrior*)* @warrior_process_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @warrior_process_packet(%struct.warrior* %0) #0 {
  %2 = alloca %struct.warrior*, align 8
  %3 = alloca %struct.input_dev*, align 8
  %4 = alloca i8*, align 8
  store %struct.warrior* %0, %struct.warrior** %2, align 8
  %5 = load %struct.warrior*, %struct.warrior** %2, align 8
  %6 = getelementptr inbounds %struct.warrior, %struct.warrior* %5, i32 0, i32 2
  %7 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  store %struct.input_dev* %7, %struct.input_dev** %3, align 8
  %8 = load %struct.warrior*, %struct.warrior** %2, align 8
  %9 = getelementptr inbounds %struct.warrior, %struct.warrior* %8, i32 0, i32 0
  %10 = load i8*, i8** %9, align 8
  store i8* %10, i8** %4, align 8
  %11 = load %struct.warrior*, %struct.warrior** %2, align 8
  %12 = getelementptr inbounds %struct.warrior, %struct.warrior* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %1
  br label %193

16:                                               ; preds = %1
  %17 = load i8*, i8** %4, align 8
  %18 = getelementptr inbounds i8, i8* %17, i64 0
  %19 = load i8, i8* %18, align 1
  %20 = zext i8 %19 to i32
  %21 = ashr i32 %20, 4
  %22 = and i32 %21, 7
  switch i32 %22, label %190 [
    i32 1, label %23
    i32 3, label %63
    i32 5, label %106
  ]

23:                                               ; preds = %16
  %24 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %25 = load i32, i32* @BTN_TRIGGER, align 4
  %26 = load i8*, i8** %4, align 8
  %27 = getelementptr inbounds i8, i8* %26, i64 3
  %28 = load i8, i8* %27, align 1
  %29 = zext i8 %28 to i32
  %30 = and i32 %29, 1
  %31 = trunc i32 %30 to i8
  %32 = call i32 @input_report_key(%struct.input_dev* %24, i32 %25, i8 zeroext %31)
  %33 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %34 = load i32, i32* @BTN_THUMB, align 4
  %35 = load i8*, i8** %4, align 8
  %36 = getelementptr inbounds i8, i8* %35, i64 3
  %37 = load i8, i8* %36, align 1
  %38 = zext i8 %37 to i32
  %39 = ashr i32 %38, 1
  %40 = and i32 %39, 1
  %41 = trunc i32 %40 to i8
  %42 = call i32 @input_report_key(%struct.input_dev* %33, i32 %34, i8 zeroext %41)
  %43 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %44 = load i32, i32* @BTN_TOP, align 4
  %45 = load i8*, i8** %4, align 8
  %46 = getelementptr inbounds i8, i8* %45, i64 3
  %47 = load i8, i8* %46, align 1
  %48 = zext i8 %47 to i32
  %49 = ashr i32 %48, 2
  %50 = and i32 %49, 1
  %51 = trunc i32 %50 to i8
  %52 = call i32 @input_report_key(%struct.input_dev* %43, i32 %44, i8 zeroext %51)
  %53 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %54 = load i32, i32* @BTN_TOP2, align 4
  %55 = load i8*, i8** %4, align 8
  %56 = getelementptr inbounds i8, i8* %55, i64 3
  %57 = load i8, i8* %56, align 1
  %58 = zext i8 %57 to i32
  %59 = ashr i32 %58, 3
  %60 = and i32 %59, 1
  %61 = trunc i32 %60 to i8
  %62 = call i32 @input_report_key(%struct.input_dev* %53, i32 %54, i8 zeroext %61)
  br label %190

63:                                               ; preds = %16
  %64 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %65 = load i32, i32* @ABS_X, align 4
  %66 = load i8*, i8** %4, align 8
  %67 = getelementptr inbounds i8, i8* %66, i64 0
  %68 = load i8, i8* %67, align 1
  %69 = zext i8 %68 to i32
  %70 = and i32 %69, 8
  %71 = shl i32 %70, 5
  %72 = load i8*, i8** %4, align 8
  %73 = getelementptr inbounds i8, i8* %72, i64 2
  %74 = load i8, i8* %73, align 1
  %75 = zext i8 %74 to i32
  %76 = load i8*, i8** %4, align 8
  %77 = getelementptr inbounds i8, i8* %76, i64 0
  %78 = load i8, i8* %77, align 1
  %79 = zext i8 %78 to i32
  %80 = and i32 %79, 4
  %81 = shl i32 %80, 5
  %82 = or i32 %75, %81
  %83 = sub nsw i32 %71, %82
  %84 = call i32 @input_report_abs(%struct.input_dev* %64, i32 %65, i32 %83)
  %85 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %86 = load i32, i32* @ABS_Y, align 4
  %87 = load i8*, i8** %4, align 8
  %88 = getelementptr inbounds i8, i8* %87, i64 1
  %89 = load i8, i8* %88, align 1
  %90 = zext i8 %89 to i32
  %91 = load i8*, i8** %4, align 8
  %92 = getelementptr inbounds i8, i8* %91, i64 0
  %93 = load i8, i8* %92, align 1
  %94 = zext i8 %93 to i32
  %95 = and i32 %94, 1
  %96 = shl i32 %95, 7
  %97 = or i32 %90, %96
  %98 = load i8*, i8** %4, align 8
  %99 = getelementptr inbounds i8, i8* %98, i64 0
  %100 = load i8, i8* %99, align 1
  %101 = zext i8 %100 to i32
  %102 = and i32 %101, 2
  %103 = shl i32 %102, 7
  %104 = sub nsw i32 %97, %103
  %105 = call i32 @input_report_abs(%struct.input_dev* %85, i32 %86, i32 %104)
  br label %190

106:                                              ; preds = %16
  %107 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %108 = load i32, i32* @ABS_THROTTLE, align 4
  %109 = load i8*, i8** %4, align 8
  %110 = getelementptr inbounds i8, i8* %109, i64 1
  %111 = load i8, i8* %110, align 1
  %112 = zext i8 %111 to i32
  %113 = load i8*, i8** %4, align 8
  %114 = getelementptr inbounds i8, i8* %113, i64 0
  %115 = load i8, i8* %114, align 1
  %116 = zext i8 %115 to i32
  %117 = and i32 %116, 1
  %118 = shl i32 %117, 7
  %119 = or i32 %112, %118
  %120 = load i8*, i8** %4, align 8
  %121 = getelementptr inbounds i8, i8* %120, i64 0
  %122 = load i8, i8* %121, align 1
  %123 = zext i8 %122 to i32
  %124 = and i32 %123, 2
  %125 = shl i32 %124, 7
  %126 = sub nsw i32 %119, %125
  %127 = call i32 @input_report_abs(%struct.input_dev* %107, i32 %108, i32 %126)
  %128 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %129 = load i32, i32* @ABS_HAT0X, align 4
  %130 = load i8*, i8** %4, align 8
  %131 = getelementptr inbounds i8, i8* %130, i64 3
  %132 = load i8, i8* %131, align 1
  %133 = zext i8 %132 to i32
  %134 = and i32 %133, 2
  %135 = icmp ne i32 %134, 0
  %136 = zext i1 %135 to i64
  %137 = select i1 %135, i32 1, i32 0
  %138 = load i8*, i8** %4, align 8
  %139 = getelementptr inbounds i8, i8* %138, i64 3
  %140 = load i8, i8* %139, align 1
  %141 = zext i8 %140 to i32
  %142 = and i32 %141, 1
  %143 = icmp ne i32 %142, 0
  %144 = zext i1 %143 to i64
  %145 = select i1 %143, i32 1, i32 0
  %146 = sub nsw i32 %137, %145
  %147 = call i32 @input_report_abs(%struct.input_dev* %128, i32 %129, i32 %146)
  %148 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %149 = load i32, i32* @ABS_HAT0Y, align 4
  %150 = load i8*, i8** %4, align 8
  %151 = getelementptr inbounds i8, i8* %150, i64 3
  %152 = load i8, i8* %151, align 1
  %153 = zext i8 %152 to i32
  %154 = and i32 %153, 8
  %155 = icmp ne i32 %154, 0
  %156 = zext i1 %155 to i64
  %157 = select i1 %155, i32 1, i32 0
  %158 = load i8*, i8** %4, align 8
  %159 = getelementptr inbounds i8, i8* %158, i64 3
  %160 = load i8, i8* %159, align 1
  %161 = zext i8 %160 to i32
  %162 = and i32 %161, 4
  %163 = icmp ne i32 %162, 0
  %164 = zext i1 %163 to i64
  %165 = select i1 %163, i32 1, i32 0
  %166 = sub nsw i32 %157, %165
  %167 = call i32 @input_report_abs(%struct.input_dev* %148, i32 %149, i32 %166)
  %168 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %169 = load i32, i32* @REL_DIAL, align 4
  %170 = load i8*, i8** %4, align 8
  %171 = getelementptr inbounds i8, i8* %170, i64 2
  %172 = load i8, i8* %171, align 1
  %173 = zext i8 %172 to i32
  %174 = load i8*, i8** %4, align 8
  %175 = getelementptr inbounds i8, i8* %174, i64 0
  %176 = load i8, i8* %175, align 1
  %177 = zext i8 %176 to i32
  %178 = and i32 %177, 4
  %179 = shl i32 %178, 5
  %180 = or i32 %173, %179
  %181 = load i8*, i8** %4, align 8
  %182 = getelementptr inbounds i8, i8* %181, i64 0
  %183 = load i8, i8* %182, align 1
  %184 = zext i8 %183 to i32
  %185 = and i32 %184, 8
  %186 = shl i32 %185, 5
  %187 = sub nsw i32 %180, %186
  %188 = trunc i32 %187 to i8
  %189 = call i32 @input_report_rel(%struct.input_dev* %168, i32 %169, i8 zeroext %188)
  br label %190

190:                                              ; preds = %16, %106, %63, %23
  %191 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %192 = call i32 @input_sync(%struct.input_dev* %191)
  br label %193

193:                                              ; preds = %190, %15
  ret void
}

declare dso_local i32 @input_report_key(%struct.input_dev*, i32, i8 zeroext) #1

declare dso_local i32 @input_report_abs(%struct.input_dev*, i32, i32) #1

declare dso_local i32 @input_report_rel(%struct.input_dev*, i32, i8 zeroext) #1

declare dso_local i32 @input_sync(%struct.input_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
