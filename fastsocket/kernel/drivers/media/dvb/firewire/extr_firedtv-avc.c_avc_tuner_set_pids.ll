; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/firewire/extr_firedtv-avc.c_avc_tuner_set_pids.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/firewire/extr_firedtv-avc.c_avc_tuner_set_pids.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.firedtv = type { i32, i32, i32, i64 }
%struct.avc_command_frame = type { i32, i32*, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@AVC_CTYPE_CONTROL = common dso_local global i32 0, align 4
@AVC_SUBUNIT_TYPE_TUNER = common dso_local global i32 0, align 4
@AVC_OPCODE_DSD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @avc_tuner_set_pids(%struct.firedtv* %0, i8 zeroext %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.firedtv*, align 8
  %6 = alloca i8, align 1
  %7 = alloca i32*, align 8
  %8 = alloca %struct.avc_command_frame*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.firedtv* %0, %struct.firedtv** %5, align 8
  store i8 %1, i8* %6, align 1
  store i32* %2, i32** %7, align 8
  %12 = load %struct.firedtv*, %struct.firedtv** %5, align 8
  %13 = getelementptr inbounds %struct.firedtv, %struct.firedtv* %12, i32 0, i32 3
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to i8*
  %16 = bitcast i8* %15 to %struct.avc_command_frame*
  store %struct.avc_command_frame* %16, %struct.avc_command_frame** %8, align 8
  %17 = load i8, i8* %6, align 1
  %18 = zext i8 %17 to i32
  %19 = icmp sgt i32 %18, 16
  br i1 %19, label %20, label %27

20:                                               ; preds = %3
  %21 = load i8, i8* %6, align 1
  %22 = zext i8 %21 to i32
  %23 = icmp ne i32 %22, 255
  br i1 %23, label %24, label %27

24:                                               ; preds = %20
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %4, align 4
  br label %159

27:                                               ; preds = %20, %3
  %28 = load %struct.firedtv*, %struct.firedtv** %5, align 8
  %29 = getelementptr inbounds %struct.firedtv, %struct.firedtv* %28, i32 0, i32 1
  %30 = call i32 @mutex_lock(i32* %29)
  %31 = load i32, i32* @AVC_CTYPE_CONTROL, align 4
  %32 = load %struct.avc_command_frame*, %struct.avc_command_frame** %8, align 8
  %33 = getelementptr inbounds %struct.avc_command_frame, %struct.avc_command_frame* %32, i32 0, i32 3
  store i32 %31, i32* %33, align 4
  %34 = load i32, i32* @AVC_SUBUNIT_TYPE_TUNER, align 4
  %35 = load %struct.firedtv*, %struct.firedtv** %5, align 8
  %36 = getelementptr inbounds %struct.firedtv, %struct.firedtv* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = or i32 %34, %37
  %39 = load %struct.avc_command_frame*, %struct.avc_command_frame** %8, align 8
  %40 = getelementptr inbounds %struct.avc_command_frame, %struct.avc_command_frame* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 8
  %41 = load i32, i32* @AVC_OPCODE_DSD, align 4
  %42 = load %struct.avc_command_frame*, %struct.avc_command_frame** %8, align 8
  %43 = getelementptr inbounds %struct.avc_command_frame, %struct.avc_command_frame* %42, i32 0, i32 2
  store i32 %41, i32* %43, align 8
  %44 = load %struct.avc_command_frame*, %struct.avc_command_frame** %8, align 8
  %45 = getelementptr inbounds %struct.avc_command_frame, %struct.avc_command_frame* %44, i32 0, i32 1
  %46 = load i32*, i32** %45, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 0
  store i32 0, i32* %47, align 4
  %48 = load %struct.avc_command_frame*, %struct.avc_command_frame** %8, align 8
  %49 = getelementptr inbounds %struct.avc_command_frame, %struct.avc_command_frame* %48, i32 0, i32 1
  %50 = load i32*, i32** %49, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 1
  store i32 210, i32* %51, align 4
  %52 = load %struct.avc_command_frame*, %struct.avc_command_frame** %8, align 8
  %53 = getelementptr inbounds %struct.avc_command_frame, %struct.avc_command_frame* %52, i32 0, i32 1
  %54 = load i32*, i32** %53, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 2
  store i32 32, i32* %55, align 4
  %56 = load %struct.avc_command_frame*, %struct.avc_command_frame** %8, align 8
  %57 = getelementptr inbounds %struct.avc_command_frame, %struct.avc_command_frame* %56, i32 0, i32 1
  %58 = load i32*, i32** %57, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 3
  store i32 0, i32* %59, align 4
  %60 = load %struct.avc_command_frame*, %struct.avc_command_frame** %8, align 8
  %61 = getelementptr inbounds %struct.avc_command_frame, %struct.avc_command_frame* %60, i32 0, i32 1
  %62 = load i32*, i32** %61, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 4
  store i32 0, i32* %63, align 4
  %64 = load i8, i8* %6, align 1
  %65 = zext i8 %64 to i32
  %66 = load %struct.avc_command_frame*, %struct.avc_command_frame** %8, align 8
  %67 = getelementptr inbounds %struct.avc_command_frame, %struct.avc_command_frame* %66, i32 0, i32 1
  %68 = load i32*, i32** %67, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 5
  store i32 %65, i32* %69, align 4
  store i32 6, i32* %10, align 4
  %70 = load i8, i8* %6, align 1
  %71 = zext i8 %70 to i32
  %72 = icmp ne i32 %71, 255
  br i1 %72, label %73, label %139

73:                                               ; preds = %27
  store i32 0, i32* %11, align 4
  br label %74

74:                                               ; preds = %135, %73
  %75 = load i32, i32* %11, align 4
  %76 = load i8, i8* %6, align 1
  %77 = zext i8 %76 to i32
  %78 = icmp slt i32 %75, %77
  br i1 %78, label %79, label %138

79:                                               ; preds = %74
  %80 = load %struct.avc_command_frame*, %struct.avc_command_frame** %8, align 8
  %81 = getelementptr inbounds %struct.avc_command_frame, %struct.avc_command_frame* %80, i32 0, i32 1
  %82 = load i32*, i32** %81, align 8
  %83 = load i32, i32* %10, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %10, align 4
  %85 = sext i32 %83 to i64
  %86 = getelementptr inbounds i32, i32* %82, i64 %85
  store i32 19, i32* %86, align 4
  %87 = load %struct.avc_command_frame*, %struct.avc_command_frame** %8, align 8
  %88 = getelementptr inbounds %struct.avc_command_frame, %struct.avc_command_frame* %87, i32 0, i32 1
  %89 = load i32*, i32** %88, align 8
  %90 = load i32, i32* %10, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %10, align 4
  %92 = sext i32 %90 to i64
  %93 = getelementptr inbounds i32, i32* %89, i64 %92
  store i32 128, i32* %93, align 4
  %94 = load i32*, i32** %7, align 8
  %95 = load i32, i32* %11, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i32, i32* %94, i64 %96
  %98 = load i32, i32* %97, align 4
  %99 = ashr i32 %98, 8
  %100 = and i32 %99, 31
  %101 = load %struct.avc_command_frame*, %struct.avc_command_frame** %8, align 8
  %102 = getelementptr inbounds %struct.avc_command_frame, %struct.avc_command_frame* %101, i32 0, i32 1
  %103 = load i32*, i32** %102, align 8
  %104 = load i32, i32* %10, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %10, align 4
  %106 = sext i32 %104 to i64
  %107 = getelementptr inbounds i32, i32* %103, i64 %106
  store i32 %100, i32* %107, align 4
  %108 = load i32*, i32** %7, align 8
  %109 = load i32, i32* %11, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i32, i32* %108, i64 %110
  %112 = load i32, i32* %111, align 4
  %113 = and i32 %112, 255
  %114 = load %struct.avc_command_frame*, %struct.avc_command_frame** %8, align 8
  %115 = getelementptr inbounds %struct.avc_command_frame, %struct.avc_command_frame* %114, i32 0, i32 1
  %116 = load i32*, i32** %115, align 8
  %117 = load i32, i32* %10, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %10, align 4
  %119 = sext i32 %117 to i64
  %120 = getelementptr inbounds i32, i32* %116, i64 %119
  store i32 %113, i32* %120, align 4
  %121 = load %struct.avc_command_frame*, %struct.avc_command_frame** %8, align 8
  %122 = getelementptr inbounds %struct.avc_command_frame, %struct.avc_command_frame* %121, i32 0, i32 1
  %123 = load i32*, i32** %122, align 8
  %124 = load i32, i32* %10, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %10, align 4
  %126 = sext i32 %124 to i64
  %127 = getelementptr inbounds i32, i32* %123, i64 %126
  store i32 0, i32* %127, align 4
  %128 = load %struct.avc_command_frame*, %struct.avc_command_frame** %8, align 8
  %129 = getelementptr inbounds %struct.avc_command_frame, %struct.avc_command_frame* %128, i32 0, i32 1
  %130 = load i32*, i32** %129, align 8
  %131 = load i32, i32* %10, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %10, align 4
  %133 = sext i32 %131 to i64
  %134 = getelementptr inbounds i32, i32* %130, i64 %133
  store i32 0, i32* %134, align 4
  br label %135

135:                                              ; preds = %79
  %136 = load i32, i32* %11, align 4
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* %11, align 4
  br label %74

138:                                              ; preds = %74
  br label %139

139:                                              ; preds = %138, %27
  %140 = load %struct.avc_command_frame*, %struct.avc_command_frame** %8, align 8
  %141 = load i32, i32* %10, align 4
  %142 = call i32 @pad_operands(%struct.avc_command_frame* %140, i32 %141)
  %143 = load i32, i32* %10, align 4
  %144 = add nsw i32 3, %143
  %145 = call i32 @ALIGN(i32 %144, i32 4)
  %146 = load %struct.firedtv*, %struct.firedtv** %5, align 8
  %147 = getelementptr inbounds %struct.firedtv, %struct.firedtv* %146, i32 0, i32 2
  store i32 %145, i32* %147, align 8
  %148 = load %struct.firedtv*, %struct.firedtv** %5, align 8
  %149 = call i32 @avc_write(%struct.firedtv* %148)
  store i32 %149, i32* %9, align 4
  %150 = load %struct.firedtv*, %struct.firedtv** %5, align 8
  %151 = getelementptr inbounds %struct.firedtv, %struct.firedtv* %150, i32 0, i32 1
  %152 = call i32 @mutex_unlock(i32* %151)
  %153 = load i32, i32* %9, align 4
  %154 = icmp eq i32 %153, 0
  br i1 %154, label %155, label %157

155:                                              ; preds = %139
  %156 = call i32 @msleep(i32 50)
  br label %157

157:                                              ; preds = %155, %139
  %158 = load i32, i32* %9, align 4
  store i32 %158, i32* %4, align 4
  br label %159

159:                                              ; preds = %157, %24
  %160 = load i32, i32* %4, align 4
  ret i32 %160
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @pad_operands(%struct.avc_command_frame*, i32) #1

declare dso_local i32 @ALIGN(i32, i32) #1

declare dso_local i32 @avc_write(%struct.firedtv*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
