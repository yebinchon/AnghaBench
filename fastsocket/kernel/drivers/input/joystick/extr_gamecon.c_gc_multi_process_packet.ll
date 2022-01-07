; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/joystick/extr_gamecon.c_gc_multi_process_packet.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/joystick/extr_gamecon.c_gc_multi_process_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gc = type { i32*, %struct.input_dev** }
%struct.input_dev = type { i32 }

@GC_MULTI2_LENGTH = common dso_local global i32 0, align 4
@GC_MULTI2 = common dso_local global i64 0, align 8
@GC_MULTI_LENGTH = common dso_local global i32 0, align 4
@GC_MAX_DEVICES = common dso_local global i32 0, align 4
@gc_status_bit = common dso_local global i32* null, align 8
@GC_MULTI = common dso_local global i64 0, align 8
@ABS_X = common dso_local global i32 0, align 4
@ABS_Y = common dso_local global i32 0, align 4
@BTN_TRIGGER = common dso_local global i32 0, align 4
@BTN_THUMB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gc*)* @gc_multi_process_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gc_multi_process_packet(%struct.gc* %0) #0 {
  %2 = alloca %struct.gc*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.input_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.gc* %0, %struct.gc** %2, align 8
  %8 = load i32, i32* @GC_MULTI2_LENGTH, align 4
  %9 = zext i32 %8 to i64
  %10 = call i8* @llvm.stacksave()
  store i8* %10, i8** %3, align 8
  %11 = alloca i8, i64 %9, align 16
  store i64 %9, i64* %4, align 8
  %12 = load %struct.gc*, %struct.gc** %2, align 8
  %13 = load %struct.gc*, %struct.gc** %2, align 8
  %14 = getelementptr inbounds %struct.gc, %struct.gc* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = load i64, i64* @GC_MULTI2, align 8
  %17 = getelementptr inbounds i32, i32* %15, i64 %16
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %1
  %21 = load i32, i32* @GC_MULTI2_LENGTH, align 4
  br label %24

22:                                               ; preds = %1
  %23 = load i32, i32* @GC_MULTI_LENGTH, align 4
  br label %24

24:                                               ; preds = %22, %20
  %25 = phi i32 [ %21, %20 ], [ %23, %22 ]
  %26 = call i32 @gc_multi_read_packet(%struct.gc* %12, i32 %25, i8* %11)
  store i32 0, i32* %6, align 4
  br label %27

27:                                               ; preds = %135, %24
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* @GC_MAX_DEVICES, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %138

31:                                               ; preds = %27
  %32 = load %struct.gc*, %struct.gc** %2, align 8
  %33 = getelementptr inbounds %struct.gc, %struct.gc* %32, i32 0, i32 1
  %34 = load %struct.input_dev**, %struct.input_dev*** %33, align 8
  %35 = load i32, i32* %6, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.input_dev*, %struct.input_dev** %34, i64 %36
  %38 = load %struct.input_dev*, %struct.input_dev** %37, align 8
  store %struct.input_dev* %38, %struct.input_dev** %5, align 8
  %39 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %40 = icmp ne %struct.input_dev* %39, null
  br i1 %40, label %42, label %41

41:                                               ; preds = %31
  br label %135

42:                                               ; preds = %31
  %43 = load i32*, i32** @gc_status_bit, align 8
  %44 = load i32, i32* %6, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  %47 = load i32, i32* %46, align 4
  store i32 %47, i32* %7, align 4
  %48 = load i32, i32* %7, align 4
  %49 = load %struct.gc*, %struct.gc** %2, align 8
  %50 = getelementptr inbounds %struct.gc, %struct.gc* %49, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  %52 = load i64, i64* @GC_MULTI, align 8
  %53 = getelementptr inbounds i32, i32* %51, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.gc*, %struct.gc** %2, align 8
  %56 = getelementptr inbounds %struct.gc, %struct.gc* %55, i32 0, i32 0
  %57 = load i32*, i32** %56, align 8
  %58 = load i64, i64* @GC_MULTI2, align 8
  %59 = getelementptr inbounds i32, i32* %57, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = or i32 %54, %60
  %62 = and i32 %48, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %113

64:                                               ; preds = %42
  %65 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %66 = load i32, i32* @ABS_X, align 4
  %67 = load i32, i32* %7, align 4
  %68 = getelementptr inbounds i8, i8* %11, i64 2
  %69 = load i8, i8* %68, align 2
  %70 = zext i8 %69 to i32
  %71 = and i32 %67, %70
  %72 = icmp ne i32 %71, 0
  %73 = xor i1 %72, true
  %74 = zext i1 %73 to i32
  %75 = load i32, i32* %7, align 4
  %76 = getelementptr inbounds i8, i8* %11, i64 3
  %77 = load i8, i8* %76, align 1
  %78 = zext i8 %77 to i32
  %79 = and i32 %75, %78
  %80 = icmp ne i32 %79, 0
  %81 = xor i1 %80, true
  %82 = zext i1 %81 to i32
  %83 = sub nsw i32 %74, %82
  %84 = call i32 @input_report_abs(%struct.input_dev* %65, i32 %66, i32 %83)
  %85 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %86 = load i32, i32* @ABS_Y, align 4
  %87 = load i32, i32* %7, align 4
  %88 = getelementptr inbounds i8, i8* %11, i64 0
  %89 = load i8, i8* %88, align 16
  %90 = zext i8 %89 to i32
  %91 = and i32 %87, %90
  %92 = icmp ne i32 %91, 0
  %93 = xor i1 %92, true
  %94 = zext i1 %93 to i32
  %95 = load i32, i32* %7, align 4
  %96 = getelementptr inbounds i8, i8* %11, i64 1
  %97 = load i8, i8* %96, align 1
  %98 = zext i8 %97 to i32
  %99 = and i32 %95, %98
  %100 = icmp ne i32 %99, 0
  %101 = xor i1 %100, true
  %102 = zext i1 %101 to i32
  %103 = sub nsw i32 %94, %102
  %104 = call i32 @input_report_abs(%struct.input_dev* %85, i32 %86, i32 %103)
  %105 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %106 = load i32, i32* @BTN_TRIGGER, align 4
  %107 = load i32, i32* %7, align 4
  %108 = getelementptr inbounds i8, i8* %11, i64 4
  %109 = load i8, i8* %108, align 4
  %110 = zext i8 %109 to i32
  %111 = and i32 %107, %110
  %112 = call i32 @input_report_key(%struct.input_dev* %105, i32 %106, i32 %111)
  br label %113

113:                                              ; preds = %64, %42
  %114 = load i32, i32* %7, align 4
  %115 = load %struct.gc*, %struct.gc** %2, align 8
  %116 = getelementptr inbounds %struct.gc, %struct.gc* %115, i32 0, i32 0
  %117 = load i32*, i32** %116, align 8
  %118 = load i64, i64* @GC_MULTI2, align 8
  %119 = getelementptr inbounds i32, i32* %117, i64 %118
  %120 = load i32, i32* %119, align 4
  %121 = and i32 %114, %120
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %132

123:                                              ; preds = %113
  %124 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %125 = load i32, i32* @BTN_THUMB, align 4
  %126 = load i32, i32* %7, align 4
  %127 = getelementptr inbounds i8, i8* %11, i64 5
  %128 = load i8, i8* %127, align 1
  %129 = zext i8 %128 to i32
  %130 = and i32 %126, %129
  %131 = call i32 @input_report_key(%struct.input_dev* %124, i32 %125, i32 %130)
  br label %132

132:                                              ; preds = %123, %113
  %133 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %134 = call i32 @input_sync(%struct.input_dev* %133)
  br label %135

135:                                              ; preds = %132, %41
  %136 = load i32, i32* %6, align 4
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* %6, align 4
  br label %27

138:                                              ; preds = %27
  %139 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %139)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @gc_multi_read_packet(%struct.gc*, i32, i8*) #2

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
