; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/sc/extr_message.c_send_and_receive.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/sc/extr_message.c_send_and_receive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i8, i8, i8, i8 }

@.str = private unnamed_addr constant [42 x i8] c"Invalid param: %d is not a valid card id\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@sc_adapter = common dso_local global %struct.TYPE_3__** null, align 8
@.str.1 = private unnamed_addr constant [31 x i8] c"%s: SendMessage failed in SAR\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [15 x i8] c"SAR waiting..\0A\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"%s: Got ASYNC message\0A\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"%s: SAR message timeout\0A\00", align 1
@ETIME = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @send_and_receive(i32 %0, i32 %1, i8 zeroext %2, i8 zeroext %3, i8 zeroext %4, i8 zeroext %5, i8 zeroext %6, i8* %7, i32* %8, i32 %9) #0 {
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8, align 1
  %15 = alloca i8, align 1
  %16 = alloca i8, align 1
  %17 = alloca i8, align 1
  %18 = alloca i8, align 1
  %19 = alloca i8*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store i32 %0, i32* %12, align 4
  store i32 %1, i32* %13, align 4
  store i8 %2, i8* %14, align 1
  store i8 %3, i8* %15, align 1
  store i8 %4, i8* %16, align 1
  store i8 %5, i8* %17, align 1
  store i8 %6, i8* %18, align 1
  store i8* %7, i8** %19, align 8
  store i32* %8, i32** %20, align 8
  store i32 %9, i32* %21, align 4
  %24 = load i32, i32* %12, align 4
  %25 = call i32 @IS_VALID_CARD(i32 %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %32, label %27

27:                                               ; preds = %10
  %28 = load i32, i32* %12, align 4
  %29 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %28)
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %11, align 4
  br label %170

32:                                               ; preds = %10
  %33 = load %struct.TYPE_3__**, %struct.TYPE_3__*** @sc_adapter, align 8
  %34 = load i32, i32* %12, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %33, i64 %35
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  store i32 1, i32* %38, align 4
  %39 = load i32, i32* %12, align 4
  %40 = load i32, i32* %13, align 4
  %41 = load i8, i8* %14, align 1
  %42 = load i8, i8* %15, align 1
  %43 = load i8, i8* %16, align 1
  %44 = load i8, i8* %17, align 1
  %45 = load i8, i8* %18, align 1
  %46 = load i8*, i8** %19, align 8
  %47 = bitcast i8* %46 to i32*
  %48 = call i32 @sendmessage(i32 %39, i32 %40, i8 zeroext %41, i8 zeroext %42, i8 zeroext %43, i8 zeroext %44, i8 zeroext %45, i32* %47)
  store i32 %48, i32* %22, align 4
  %49 = load i32, i32* %22, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %68

51:                                               ; preds = %32
  %52 = load %struct.TYPE_3__**, %struct.TYPE_3__*** @sc_adapter, align 8
  %53 = load i32, i32* %12, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %52, i64 %54
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %58)
  %60 = load %struct.TYPE_3__**, %struct.TYPE_3__*** @sc_adapter, align 8
  %61 = load i32, i32* %12, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %60, i64 %62
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 0
  store i32 0, i32* %65, align 4
  %66 = load i32, i32* @EIO, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %11, align 4
  br label %170

68:                                               ; preds = %32
  store i32 0, i32* %23, align 4
  br label %69

69:                                               ; preds = %150, %68
  %70 = load i32, i32* %23, align 4
  %71 = load i32, i32* %21, align 4
  %72 = icmp slt i32 %70, %71
  br i1 %72, label %73, label %153

73:                                               ; preds = %69
  %74 = call i32 @schedule_timeout_interruptible(i32 1)
  %75 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  %76 = load %struct.TYPE_3__**, %struct.TYPE_3__*** @sc_adapter, align 8
  %77 = load i32, i32* %12, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %76, i64 %78
  %80 = load %struct.TYPE_3__*, %struct.TYPE_3__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 2
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 0
  %83 = load i8, i8* %82, align 4
  %84 = zext i8 %83 to i32
  %85 = load i8, i8* %14, align 1
  %86 = zext i8 %85 to i32
  %87 = icmp eq i32 %84, %86
  br i1 %87, label %88, label %150

88:                                               ; preds = %73
  %89 = load %struct.TYPE_3__**, %struct.TYPE_3__*** @sc_adapter, align 8
  %90 = load i32, i32* %12, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %89, i64 %91
  %93 = load %struct.TYPE_3__*, %struct.TYPE_3__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i32 0, i32 2
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 1
  %96 = load i8, i8* %95, align 1
  %97 = zext i8 %96 to i32
  %98 = load i8, i8* %15, align 1
  %99 = zext i8 %98 to i32
  %100 = icmp eq i32 %97, %99
  br i1 %100, label %101, label %150

101:                                              ; preds = %88
  %102 = load %struct.TYPE_3__**, %struct.TYPE_3__*** @sc_adapter, align 8
  %103 = load i32, i32* %12, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %102, i64 %104
  %106 = load %struct.TYPE_3__*, %struct.TYPE_3__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %106, i32 0, i32 2
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 2
  %109 = load i8, i8* %108, align 2
  %110 = zext i8 %109 to i32
  %111 = load i8, i8* %16, align 1
  %112 = zext i8 %111 to i32
  %113 = icmp eq i32 %110, %112
  br i1 %113, label %114, label %150

114:                                              ; preds = %101
  %115 = load %struct.TYPE_3__**, %struct.TYPE_3__*** @sc_adapter, align 8
  %116 = load i32, i32* %12, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %115, i64 %117
  %119 = load %struct.TYPE_3__*, %struct.TYPE_3__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %119, i32 0, i32 2
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %120, i32 0, i32 3
  %122 = load i8, i8* %121, align 1
  %123 = zext i8 %122 to i32
  %124 = load i8, i8* %17, align 1
  %125 = zext i8 %124 to i32
  %126 = icmp eq i32 %123, %125
  br i1 %126, label %127, label %150

127:                                              ; preds = %114
  %128 = load %struct.TYPE_3__**, %struct.TYPE_3__*** @sc_adapter, align 8
  %129 = load i32, i32* %12, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %128, i64 %130
  %132 = load %struct.TYPE_3__*, %struct.TYPE_3__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  %135 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i32 %134)
  %136 = load i32*, i32** %20, align 8
  %137 = load %struct.TYPE_3__**, %struct.TYPE_3__*** @sc_adapter, align 8
  %138 = load i32, i32* %12, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %137, i64 %139
  %141 = load %struct.TYPE_3__*, %struct.TYPE_3__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %141, i32 0, i32 2
  %143 = call i32 @memcpy(i32* %136, %struct.TYPE_4__* %142, i32 4)
  %144 = load %struct.TYPE_3__**, %struct.TYPE_3__*** @sc_adapter, align 8
  %145 = load i32, i32* %12, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %144, i64 %146
  %148 = load %struct.TYPE_3__*, %struct.TYPE_3__** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %148, i32 0, i32 0
  store i32 0, i32* %149, align 4
  store i32 0, i32* %11, align 4
  br label %170

150:                                              ; preds = %114, %101, %88, %73
  %151 = load i32, i32* %23, align 4
  %152 = add nsw i32 %151, 1
  store i32 %152, i32* %23, align 4
  br label %69

153:                                              ; preds = %69
  %154 = load %struct.TYPE_3__**, %struct.TYPE_3__*** @sc_adapter, align 8
  %155 = load i32, i32* %12, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %154, i64 %156
  %158 = load %struct.TYPE_3__*, %struct.TYPE_3__** %157, align 8
  %159 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %158, i32 0, i32 1
  %160 = load i32, i32* %159, align 4
  %161 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), i32 %160)
  %162 = load %struct.TYPE_3__**, %struct.TYPE_3__*** @sc_adapter, align 8
  %163 = load i32, i32* %12, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %162, i64 %164
  %166 = load %struct.TYPE_3__*, %struct.TYPE_3__** %165, align 8
  %167 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %166, i32 0, i32 0
  store i32 0, i32* %167, align 4
  %168 = load i32, i32* @ETIME, align 4
  %169 = sub nsw i32 0, %168
  store i32 %169, i32* %11, align 4
  br label %170

170:                                              ; preds = %153, %127, %51, %27
  %171 = load i32, i32* %11, align 4
  ret i32 %171
}

declare dso_local i32 @IS_VALID_CARD(i32) #1

declare dso_local i32 @pr_debug(i8*, ...) #1

declare dso_local i32 @sendmessage(i32, i32, i8 zeroext, i8 zeroext, i8 zeroext, i8 zeroext, i8 zeroext, i32*) #1

declare dso_local i32 @schedule_timeout_interruptible(i32) #1

declare dso_local i32 @memcpy(i32*, %struct.TYPE_4__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
