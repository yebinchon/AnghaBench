; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/joystick/extr_gamecon.c_gc_n64_process_packet.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/joystick/extr_gamecon.c_gc_n64_process_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gc = type { i32*, %struct.input_dev** }
%struct.input_dev = type { i32 }

@GC_N64_LENGTH = common dso_local global i32 0, align 4
@GC_MAX_DEVICES = common dso_local global i32 0, align 4
@gc_status_bit = common dso_local global i32* null, align 8
@GC_N64 = common dso_local global i64 0, align 8
@ABS_X = common dso_local global i32 0, align 4
@ABS_Y = common dso_local global i32 0, align 4
@ABS_HAT0X = common dso_local global i32 0, align 4
@ABS_HAT0Y = common dso_local global i32 0, align 4
@gc_n64_btn = common dso_local global i32* null, align 8
@gc_n64_bytes = common dso_local global i64* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gc*)* @gc_n64_process_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gc_n64_process_packet(%struct.gc* %0) #0 {
  %2 = alloca %struct.gc*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca [2 x i8], align 1
  %6 = alloca %struct.input_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.gc* %0, %struct.gc** %2, align 8
  %10 = load i32, i32* @GC_N64_LENGTH, align 4
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %3, align 8
  %13 = alloca i8, i64 %11, align 16
  store i64 %11, i64* %4, align 8
  %14 = load %struct.gc*, %struct.gc** %2, align 8
  %15 = call i32 @gc_n64_read_packet(%struct.gc* %14, i8* %13)
  store i32 0, i32* %7, align 4
  br label %16

16:                                               ; preds = %183, %1
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* @GC_MAX_DEVICES, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %186

20:                                               ; preds = %16
  %21 = load %struct.gc*, %struct.gc** %2, align 8
  %22 = getelementptr inbounds %struct.gc, %struct.gc* %21, i32 0, i32 1
  %23 = load %struct.input_dev**, %struct.input_dev*** %22, align 8
  %24 = load i32, i32* %7, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.input_dev*, %struct.input_dev** %23, i64 %25
  %27 = load %struct.input_dev*, %struct.input_dev** %26, align 8
  store %struct.input_dev* %27, %struct.input_dev** %6, align 8
  %28 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %29 = icmp ne %struct.input_dev* %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %20
  br label %183

31:                                               ; preds = %20
  %32 = load i32*, i32** @gc_status_bit, align 8
  %33 = load i32, i32* %7, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %9, align 4
  %37 = load i32, i32* %9, align 4
  %38 = load %struct.gc*, %struct.gc** %2, align 8
  %39 = getelementptr inbounds %struct.gc, %struct.gc* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = load i64, i64* @GC_N64, align 8
  %42 = getelementptr inbounds i32, i32* %40, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = and i32 %37, %43
  %45 = getelementptr inbounds i8, i8* %13, i64 8
  %46 = load i8, i8* %45, align 8
  %47 = zext i8 %46 to i32
  %48 = getelementptr inbounds i8, i8* %13, i64 9
  %49 = load i8, i8* %48, align 1
  %50 = zext i8 %49 to i32
  %51 = or i32 %47, %50
  %52 = xor i32 %51, -1
  %53 = and i32 %44, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %182

55:                                               ; preds = %31
  %56 = getelementptr inbounds [2 x i8], [2 x i8]* %5, i64 0, i64 1
  store i8 0, i8* %56, align 1
  %57 = getelementptr inbounds [2 x i8], [2 x i8]* %5, i64 0, i64 0
  store i8 0, i8* %57, align 1
  store i32 0, i32* %8, align 4
  br label %58

58:                                               ; preds = %98, %55
  %59 = load i32, i32* %8, align 4
  %60 = icmp slt i32 %59, 8
  br i1 %60, label %61, label %101

61:                                               ; preds = %58
  %62 = load i32, i32* %8, align 4
  %63 = sub nsw i32 23, %62
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i8, i8* %13, i64 %64
  %66 = load i8, i8* %65, align 1
  %67 = zext i8 %66 to i32
  %68 = load i32, i32* %9, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %79

71:                                               ; preds = %61
  %72 = load i32, i32* %8, align 4
  %73 = shl i32 1, %72
  %74 = getelementptr inbounds [2 x i8], [2 x i8]* %5, i64 0, i64 0
  %75 = load i8, i8* %74, align 1
  %76 = sext i8 %75 to i32
  %77 = or i32 %76, %73
  %78 = trunc i32 %77 to i8
  store i8 %78, i8* %74, align 1
  br label %79

79:                                               ; preds = %71, %61
  %80 = load i32, i32* %8, align 4
  %81 = sub nsw i32 31, %80
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i8, i8* %13, i64 %82
  %84 = load i8, i8* %83, align 1
  %85 = zext i8 %84 to i32
  %86 = load i32, i32* %9, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %97

89:                                               ; preds = %79
  %90 = load i32, i32* %8, align 4
  %91 = shl i32 1, %90
  %92 = getelementptr inbounds [2 x i8], [2 x i8]* %5, i64 0, i64 1
  %93 = load i8, i8* %92, align 1
  %94 = sext i8 %93 to i32
  %95 = or i32 %94, %91
  %96 = trunc i32 %95 to i8
  store i8 %96, i8* %92, align 1
  br label %97

97:                                               ; preds = %89, %79
  br label %98

98:                                               ; preds = %97
  %99 = load i32, i32* %8, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %8, align 4
  br label %58

101:                                              ; preds = %58
  %102 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %103 = load i32, i32* @ABS_X, align 4
  %104 = getelementptr inbounds [2 x i8], [2 x i8]* %5, i64 0, i64 0
  %105 = load i8, i8* %104, align 1
  %106 = sext i8 %105 to i32
  %107 = call i32 @input_report_abs(%struct.input_dev* %102, i32 %103, i32 %106)
  %108 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %109 = load i32, i32* @ABS_Y, align 4
  %110 = getelementptr inbounds [2 x i8], [2 x i8]* %5, i64 0, i64 1
  %111 = load i8, i8* %110, align 1
  %112 = sext i8 %111 to i32
  %113 = sub nsw i32 0, %112
  %114 = call i32 @input_report_abs(%struct.input_dev* %108, i32 %109, i32 %113)
  %115 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %116 = load i32, i32* @ABS_HAT0X, align 4
  %117 = load i32, i32* %9, align 4
  %118 = getelementptr inbounds i8, i8* %13, i64 6
  %119 = load i8, i8* %118, align 2
  %120 = zext i8 %119 to i32
  %121 = and i32 %117, %120
  %122 = icmp ne i32 %121, 0
  %123 = xor i1 %122, true
  %124 = zext i1 %123 to i32
  %125 = load i32, i32* %9, align 4
  %126 = getelementptr inbounds i8, i8* %13, i64 7
  %127 = load i8, i8* %126, align 1
  %128 = zext i8 %127 to i32
  %129 = and i32 %125, %128
  %130 = icmp ne i32 %129, 0
  %131 = xor i1 %130, true
  %132 = zext i1 %131 to i32
  %133 = sub nsw i32 %124, %132
  %134 = call i32 @input_report_abs(%struct.input_dev* %115, i32 %116, i32 %133)
  %135 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %136 = load i32, i32* @ABS_HAT0Y, align 4
  %137 = load i32, i32* %9, align 4
  %138 = getelementptr inbounds i8, i8* %13, i64 4
  %139 = load i8, i8* %138, align 4
  %140 = zext i8 %139 to i32
  %141 = and i32 %137, %140
  %142 = icmp ne i32 %141, 0
  %143 = xor i1 %142, true
  %144 = zext i1 %143 to i32
  %145 = load i32, i32* %9, align 4
  %146 = getelementptr inbounds i8, i8* %13, i64 5
  %147 = load i8, i8* %146, align 1
  %148 = zext i8 %147 to i32
  %149 = and i32 %145, %148
  %150 = icmp ne i32 %149, 0
  %151 = xor i1 %150, true
  %152 = zext i1 %151 to i32
  %153 = sub nsw i32 %144, %152
  %154 = call i32 @input_report_abs(%struct.input_dev* %135, i32 %136, i32 %153)
  store i32 0, i32* %8, align 4
  br label %155

155:                                              ; preds = %176, %101
  %156 = load i32, i32* %8, align 4
  %157 = icmp slt i32 %156, 10
  br i1 %157, label %158, label %179

158:                                              ; preds = %155
  %159 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %160 = load i32*, i32** @gc_n64_btn, align 8
  %161 = load i32, i32* %8, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds i32, i32* %160, i64 %162
  %164 = load i32, i32* %163, align 4
  %165 = load i32, i32* %9, align 4
  %166 = load i64*, i64** @gc_n64_bytes, align 8
  %167 = load i32, i32* %8, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds i64, i64* %166, i64 %168
  %170 = load i64, i64* %169, align 8
  %171 = getelementptr inbounds i8, i8* %13, i64 %170
  %172 = load i8, i8* %171, align 1
  %173 = zext i8 %172 to i32
  %174 = and i32 %165, %173
  %175 = call i32 @input_report_key(%struct.input_dev* %159, i32 %164, i32 %174)
  br label %176

176:                                              ; preds = %158
  %177 = load i32, i32* %8, align 4
  %178 = add nsw i32 %177, 1
  store i32 %178, i32* %8, align 4
  br label %155

179:                                              ; preds = %155
  %180 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %181 = call i32 @input_sync(%struct.input_dev* %180)
  br label %182

182:                                              ; preds = %179, %31
  br label %183

183:                                              ; preds = %182, %30
  %184 = load i32, i32* %7, align 4
  %185 = add nsw i32 %184, 1
  store i32 %185, i32* %7, align 4
  br label %16

186:                                              ; preds = %16
  %187 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %187)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @gc_n64_read_packet(%struct.gc*, i8*) #2

declare dso_local i32 @input_report_abs(%struct.input_dev*, i32, i32) #2

declare dso_local i32 @input_report_key(%struct.input_dev*, i32, i32) #2

declare dso_local i32 @input_sync(%struct.input_dev*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
