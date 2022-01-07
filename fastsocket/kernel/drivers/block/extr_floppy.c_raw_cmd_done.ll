; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_floppy.c_raw_cmd_done.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_floppy.c_raw_cmd_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32*, %struct.TYPE_2__*, i32 }

@FD_RAW_FAILURE = common dso_local global i32 0, align 4
@raw_cmd = common dso_local global %struct.TYPE_2__* null, align 8
@FD_RAW_HARDFAILURE = common dso_local global i32 0, align 4
@inr = common dso_local global i32 0, align 4
@MAX_REPLIES = common dso_local global i32 0, align 4
@reply_buffer = common dso_local global i32* null, align 8
@FD_RAW_READ = common dso_local global i32 0, align 4
@FD_RAW_WRITE = common dso_local global i32 0, align 4
@FD_RAW_SOFTFAILURE = common dso_local global i32 0, align 4
@current_drive = common dso_local global i32 0, align 4
@FD_RAW_DISK_CHANGE = common dso_local global i32 0, align 4
@FD_RAW_NO_MOTOR_AFTER = common dso_local global i32 0, align 4
@FD_RAW_STOP_IF_FAILURE = common dso_local global i32 0, align 4
@FD_RAW_STOP_IF_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @raw_cmd_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @raw_cmd_done(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %18, label %7

7:                                                ; preds = %1
  %8 = load i32, i32* @FD_RAW_FAILURE, align 4
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** @raw_cmd, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = or i32 %11, %8
  store i32 %12, i32* %10, align 8
  %13 = load i32, i32* @FD_RAW_HARDFAILURE, align 4
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** @raw_cmd, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = or i32 %16, %13
  store i32 %17, i32* %15, align 8
  br label %159

18:                                               ; preds = %1
  %19 = load i32, i32* @inr, align 4
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** @raw_cmd, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 1
  store i32 %19, i32* %21, align 4
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** @raw_cmd, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @MAX_REPLIES, align 4
  %26 = icmp sgt i32 %24, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %18
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** @raw_cmd, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 1
  store i32 0, i32* %29, align 4
  br label %30

30:                                               ; preds = %27, %18
  store i32 0, i32* %3, align 4
  br label %31

31:                                               ; preds = %49, %30
  %32 = load i32, i32* %3, align 4
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** @raw_cmd, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = icmp slt i32 %32, %35
  br i1 %36, label %37, label %52

37:                                               ; preds = %31
  %38 = load i32*, i32** @reply_buffer, align 8
  %39 = load i32, i32* %3, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** @raw_cmd, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 2
  %45 = load i32*, i32** %44, align 8
  %46 = load i32, i32* %3, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  store i32 %42, i32* %48, align 4
  br label %49

49:                                               ; preds = %37
  %50 = load i32, i32* %3, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %3, align 4
  br label %31

52:                                               ; preds = %31
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** @raw_cmd, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* @FD_RAW_READ, align 4
  %57 = load i32, i32* @FD_RAW_WRITE, align 4
  %58 = or i32 %56, %57
  %59 = and i32 %55, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %68

61:                                               ; preds = %52
  %62 = call i64 (...) @claim_dma_lock()
  store i64 %62, i64* %4, align 8
  %63 = call i32 (...) @fd_get_dma_residue()
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** @raw_cmd, align 8
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 4
  store i32 %63, i32* %65, align 8
  %66 = load i64, i64* %4, align 8
  %67 = call i32 @release_dma_lock(i64 %66)
  br label %68

68:                                               ; preds = %61, %52
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** @raw_cmd, align 8
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* @FD_RAW_SOFTFAILURE, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %94

75:                                               ; preds = %68
  %76 = load %struct.TYPE_2__*, %struct.TYPE_2__** @raw_cmd, align 8
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %88

80:                                               ; preds = %75
  %81 = load %struct.TYPE_2__*, %struct.TYPE_2__** @raw_cmd, align 8
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 2
  %83 = load i32*, i32** %82, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 0
  %85 = load i32, i32* %84, align 4
  %86 = and i32 %85, 192
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %94

88:                                               ; preds = %80, %75
  %89 = load i32, i32* @FD_RAW_FAILURE, align 4
  %90 = load %struct.TYPE_2__*, %struct.TYPE_2__** @raw_cmd, align 8
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = or i32 %92, %89
  store i32 %93, i32* %91, align 8
  br label %94

94:                                               ; preds = %88, %80, %68
  %95 = load i32, i32* @current_drive, align 4
  %96 = call i64 @disk_change(i32 %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %104

98:                                               ; preds = %94
  %99 = load i32, i32* @FD_RAW_DISK_CHANGE, align 4
  %100 = load %struct.TYPE_2__*, %struct.TYPE_2__** @raw_cmd, align 8
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = or i32 %102, %99
  store i32 %103, i32* %101, align 8
  br label %111

104:                                              ; preds = %94
  %105 = load i32, i32* @FD_RAW_DISK_CHANGE, align 4
  %106 = xor i32 %105, -1
  %107 = load %struct.TYPE_2__*, %struct.TYPE_2__** @raw_cmd, align 8
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = and i32 %109, %106
  store i32 %110, i32* %108, align 8
  br label %111

111:                                              ; preds = %104, %98
  %112 = load %struct.TYPE_2__*, %struct.TYPE_2__** @raw_cmd, align 8
  %113 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = load i32, i32* @FD_RAW_NO_MOTOR_AFTER, align 4
  %116 = and i32 %114, %115
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %121

118:                                              ; preds = %111
  %119 = load i32, i32* @current_drive, align 4
  %120 = call i32 @motor_off_callback(i32 %119)
  br label %121

121:                                              ; preds = %118, %111
  %122 = load %struct.TYPE_2__*, %struct.TYPE_2__** @raw_cmd, align 8
  %123 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %122, i32 0, i32 3
  %124 = load %struct.TYPE_2__*, %struct.TYPE_2__** %123, align 8
  %125 = icmp ne %struct.TYPE_2__* %124, null
  br i1 %125, label %126, label %158

126:                                              ; preds = %121
  %127 = load %struct.TYPE_2__*, %struct.TYPE_2__** @raw_cmd, align 8
  %128 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = load i32, i32* @FD_RAW_FAILURE, align 4
  %131 = and i32 %129, %130
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %140

133:                                              ; preds = %126
  %134 = load %struct.TYPE_2__*, %struct.TYPE_2__** @raw_cmd, align 8
  %135 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = load i32, i32* @FD_RAW_STOP_IF_FAILURE, align 4
  %138 = and i32 %136, %137
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %158, label %140

140:                                              ; preds = %133, %126
  %141 = load %struct.TYPE_2__*, %struct.TYPE_2__** @raw_cmd, align 8
  %142 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = load i32, i32* @FD_RAW_FAILURE, align 4
  %145 = and i32 %143, %144
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %154, label %147

147:                                              ; preds = %140
  %148 = load %struct.TYPE_2__*, %struct.TYPE_2__** @raw_cmd, align 8
  %149 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = load i32, i32* @FD_RAW_STOP_IF_SUCCESS, align 4
  %152 = and i32 %150, %151
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %158, label %154

154:                                              ; preds = %147, %140
  %155 = load %struct.TYPE_2__*, %struct.TYPE_2__** @raw_cmd, align 8
  %156 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %155, i32 0, i32 3
  %157 = load %struct.TYPE_2__*, %struct.TYPE_2__** %156, align 8
  store %struct.TYPE_2__* %157, %struct.TYPE_2__** @raw_cmd, align 8
  br label %162

158:                                              ; preds = %147, %133, %121
  br label %159

159:                                              ; preds = %158, %7
  %160 = load i32, i32* %2, align 4
  %161 = call i32 @generic_done(i32 %160)
  br label %162

162:                                              ; preds = %159, %154
  ret void
}

declare dso_local i64 @claim_dma_lock(...) #1

declare dso_local i32 @fd_get_dma_residue(...) #1

declare dso_local i32 @release_dma_lock(i64) #1

declare dso_local i64 @disk_change(i32) #1

declare dso_local i32 @motor_off_callback(i32) #1

declare dso_local i32 @generic_done(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
