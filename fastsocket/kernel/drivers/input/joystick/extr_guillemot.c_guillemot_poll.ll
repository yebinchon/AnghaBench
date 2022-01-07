; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/joystick/extr_guillemot.c_guillemot_poll.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/joystick/extr_guillemot.c_guillemot_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }
%struct.gameport = type { i32 }
%struct.guillemot = type { %struct.TYPE_3__*, i32, i32, i32, %struct.input_dev* }
%struct.TYPE_3__ = type { i64*, i64*, i64 }
%struct.input_dev = type { i32 }

@GUILLEMOT_MAX_LENGTH = common dso_local global i32 0, align 4
@ABS_HAT0X = common dso_local global i64 0, align 8
@guillemot_hat_to_axis = common dso_local global %struct.TYPE_4__* null, align 8
@ABS_HAT0Y = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gameport*)* @guillemot_poll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @guillemot_poll(%struct.gameport* %0) #0 {
  %2 = alloca %struct.gameport*, align 8
  %3 = alloca %struct.guillemot*, align 8
  %4 = alloca %struct.input_dev*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.gameport* %0, %struct.gameport** %2, align 8
  %8 = load %struct.gameport*, %struct.gameport** %2, align 8
  %9 = call %struct.guillemot* @gameport_get_drvdata(%struct.gameport* %8)
  store %struct.guillemot* %9, %struct.guillemot** %3, align 8
  %10 = load %struct.guillemot*, %struct.guillemot** %3, align 8
  %11 = getelementptr inbounds %struct.guillemot, %struct.guillemot* %10, i32 0, i32 4
  %12 = load %struct.input_dev*, %struct.input_dev** %11, align 8
  store %struct.input_dev* %12, %struct.input_dev** %4, align 8
  %13 = load i32, i32* @GUILLEMOT_MAX_LENGTH, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %5, align 8
  %16 = alloca i32, i64 %14, align 16
  store i64 %14, i64* %6, align 8
  %17 = load %struct.guillemot*, %struct.guillemot** %3, align 8
  %18 = getelementptr inbounds %struct.guillemot, %struct.guillemot* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 8
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %18, align 8
  %21 = load %struct.guillemot*, %struct.guillemot** %3, align 8
  %22 = getelementptr inbounds %struct.guillemot, %struct.guillemot* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @guillemot_read_packet(i32 %23, i32* %16)
  %25 = load i32, i32* @GUILLEMOT_MAX_LENGTH, align 4
  %26 = mul nsw i32 %25, 8
  %27 = icmp ne i32 %24, %26
  br i1 %27, label %36, label %28

28:                                               ; preds = %1
  %29 = getelementptr inbounds i32, i32* %16, i64 0
  %30 = load i32, i32* %29, align 16
  %31 = icmp ne i32 %30, 85
  br i1 %31, label %36, label %32

32:                                               ; preds = %28
  %33 = getelementptr inbounds i32, i32* %16, i64 16
  %34 = load i32, i32* %33, align 16
  %35 = icmp ne i32 %34, 170
  br i1 %35, label %36, label %41

36:                                               ; preds = %32, %28, %1
  %37 = load %struct.guillemot*, %struct.guillemot** %3, align 8
  %38 = getelementptr inbounds %struct.guillemot, %struct.guillemot* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %38, align 8
  br label %151

41:                                               ; preds = %32
  store i32 0, i32* %7, align 4
  br label %42

42:                                               ; preds = %75, %41
  %43 = load i32, i32* %7, align 4
  %44 = icmp slt i32 %43, 6
  br i1 %44, label %45, label %56

45:                                               ; preds = %42
  %46 = load %struct.guillemot*, %struct.guillemot** %3, align 8
  %47 = getelementptr inbounds %struct.guillemot, %struct.guillemot* %46, i32 0, i32 0
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  %50 = load i64*, i64** %49, align 8
  %51 = load i32, i32* %7, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i64, i64* %50, i64 %52
  %54 = load i64, i64* %53, align 8
  %55 = icmp sge i64 %54, 0
  br label %56

56:                                               ; preds = %45, %42
  %57 = phi i1 [ false, %42 ], [ %55, %45 ]
  br i1 %57, label %58, label %78

58:                                               ; preds = %56
  %59 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %60 = load %struct.guillemot*, %struct.guillemot** %3, align 8
  %61 = getelementptr inbounds %struct.guillemot, %struct.guillemot* %60, i32 0, i32 0
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 0
  %64 = load i64*, i64** %63, align 8
  %65 = load i32, i32* %7, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i64, i64* %64, i64 %66
  %68 = load i64, i64* %67, align 8
  %69 = load i32, i32* %7, align 4
  %70 = add nsw i32 %69, 5
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %16, i64 %71
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @input_report_abs(%struct.input_dev* %59, i64 %68, i32 %73)
  br label %75

75:                                               ; preds = %58
  %76 = load i32, i32* %7, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %7, align 4
  br label %42

78:                                               ; preds = %56
  %79 = load %struct.guillemot*, %struct.guillemot** %3, align 8
  %80 = getelementptr inbounds %struct.guillemot, %struct.guillemot* %79, i32 0, i32 0
  %81 = load %struct.TYPE_3__*, %struct.TYPE_3__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 2
  %83 = load i64, i64* %82, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %108

85:                                               ; preds = %78
  %86 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %87 = load i64, i64* @ABS_HAT0X, align 8
  %88 = load %struct.TYPE_4__*, %struct.TYPE_4__** @guillemot_hat_to_axis, align 8
  %89 = getelementptr inbounds i32, i32* %16, i64 4
  %90 = load i32, i32* %89, align 16
  %91 = ashr i32 %90, 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i64 %92
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @input_report_abs(%struct.input_dev* %86, i64 %87, i32 %95)
  %97 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %98 = load i64, i64* @ABS_HAT0Y, align 8
  %99 = load %struct.TYPE_4__*, %struct.TYPE_4__** @guillemot_hat_to_axis, align 8
  %100 = getelementptr inbounds i32, i32* %16, i64 4
  %101 = load i32, i32* %100, align 16
  %102 = ashr i32 %101, 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i64 %103
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @input_report_abs(%struct.input_dev* %97, i64 %98, i32 %106)
  br label %108

108:                                              ; preds = %85, %78
  store i32 0, i32* %7, align 4
  br label %109

109:                                              ; preds = %147, %108
  %110 = load i32, i32* %7, align 4
  %111 = icmp slt i32 %110, 16
  br i1 %111, label %112, label %123

112:                                              ; preds = %109
  %113 = load %struct.guillemot*, %struct.guillemot** %3, align 8
  %114 = getelementptr inbounds %struct.guillemot, %struct.guillemot* %113, i32 0, i32 0
  %115 = load %struct.TYPE_3__*, %struct.TYPE_3__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %115, i32 0, i32 1
  %117 = load i64*, i64** %116, align 8
  %118 = load i32, i32* %7, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i64, i64* %117, i64 %119
  %121 = load i64, i64* %120, align 8
  %122 = icmp sge i64 %121, 0
  br label %123

123:                                              ; preds = %112, %109
  %124 = phi i1 [ false, %109 ], [ %122, %112 ]
  br i1 %124, label %125, label %150

125:                                              ; preds = %123
  %126 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %127 = load %struct.guillemot*, %struct.guillemot** %3, align 8
  %128 = getelementptr inbounds %struct.guillemot, %struct.guillemot* %127, i32 0, i32 0
  %129 = load %struct.TYPE_3__*, %struct.TYPE_3__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %129, i32 0, i32 1
  %131 = load i64*, i64** %130, align 8
  %132 = load i32, i32* %7, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i64, i64* %131, i64 %133
  %135 = load i64, i64* %134, align 8
  %136 = load i32, i32* %7, align 4
  %137 = ashr i32 %136, 3
  %138 = add nsw i32 2, %137
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i32, i32* %16, i64 %139
  %141 = load i32, i32* %140, align 4
  %142 = load i32, i32* %7, align 4
  %143 = and i32 %142, 7
  %144 = ashr i32 %141, %143
  %145 = and i32 %144, 1
  %146 = call i32 @input_report_key(%struct.input_dev* %126, i64 %135, i32 %145)
  br label %147

147:                                              ; preds = %125
  %148 = load i32, i32* %7, align 4
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* %7, align 4
  br label %109

150:                                              ; preds = %123
  br label %151

151:                                              ; preds = %150, %36
  %152 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %153 = call i32 @input_sync(%struct.input_dev* %152)
  %154 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %154)
  ret void
}

declare dso_local %struct.guillemot* @gameport_get_drvdata(%struct.gameport*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @guillemot_read_packet(i32, i32*) #1

declare dso_local i32 @input_report_abs(%struct.input_dev*, i64, i32) #1

declare dso_local i32 @input_report_key(%struct.input_dev*, i64, i32) #1

declare dso_local i32 @input_sync(%struct.input_dev*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
