; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/rc/extr_rc-main.c_ir_do_keydown.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/rc/extr_rc-main.c_ir_do_keydown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rc_dev = type { i32, i32, i64, i32, i32, i32 }

@EV_MSC = common dso_local global i32 0, align 4
@MSC_SCAN = common dso_local global i32 0, align 4
@KEY_RESERVED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"%s: key down event, key 0x%04x, scancode 0x%04x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rc_dev*, i32, i32, i64)* @ir_do_keydown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ir_do_keydown(%struct.rc_dev* %0, i32 %1, i32 %2, i64 %3) #0 {
  %5 = alloca %struct.rc_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.rc_dev* %0, %struct.rc_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i64 %3, i64* %8, align 8
  %9 = load %struct.rc_dev*, %struct.rc_dev** %5, align 8
  %10 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %9, i32 0, i32 3
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @EV_MSC, align 4
  %13 = load i32, i32* @MSC_SCAN, align 4
  %14 = load i32, i32* %6, align 4
  %15 = call i32 @input_event(i32 %11, i32 %12, i32 %13, i32 %14)
  %16 = load %struct.rc_dev*, %struct.rc_dev** %5, align 8
  %17 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %33

20:                                               ; preds = %4
  %21 = load %struct.rc_dev*, %struct.rc_dev** %5, align 8
  %22 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* %6, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %33

26:                                               ; preds = %20
  %27 = load %struct.rc_dev*, %struct.rc_dev** %5, align 8
  %28 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %27, i32 0, i32 2
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* %8, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %26
  br label %69

33:                                               ; preds = %26, %20, %4
  %34 = load %struct.rc_dev*, %struct.rc_dev** %5, align 8
  %35 = call i32 @ir_do_keyup(%struct.rc_dev* %34)
  %36 = load i32, i32* %6, align 4
  %37 = load %struct.rc_dev*, %struct.rc_dev** %5, align 8
  %38 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %37, i32 0, i32 1
  store i32 %36, i32* %38, align 4
  %39 = load i64, i64* %8, align 8
  %40 = load %struct.rc_dev*, %struct.rc_dev** %5, align 8
  %41 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %40, i32 0, i32 2
  store i64 %39, i64* %41, align 8
  %42 = load i32, i32* %7, align 4
  %43 = load %struct.rc_dev*, %struct.rc_dev** %5, align 8
  %44 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %43, i32 0, i32 4
  store i32 %42, i32* %44, align 4
  %45 = load i32, i32* %7, align 4
  %46 = load i32, i32* @KEY_RESERVED, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %33
  br label %69

49:                                               ; preds = %33
  %50 = load %struct.rc_dev*, %struct.rc_dev** %5, align 8
  %51 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %50, i32 0, i32 0
  store i32 1, i32* %51, align 8
  %52 = load %struct.rc_dev*, %struct.rc_dev** %5, align 8
  %53 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %52, i32 0, i32 5
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* %7, align 4
  %56 = load i32, i32* %6, align 4
  %57 = call i32 @IR_dprintk(i32 1, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %54, i32 %55, i32 %56)
  %58 = load %struct.rc_dev*, %struct.rc_dev** %5, align 8
  %59 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.rc_dev*, %struct.rc_dev** %5, align 8
  %62 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %61, i32 0, i32 4
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @input_report_key(i32 %60, i32 %63, i32 1)
  %65 = load %struct.rc_dev*, %struct.rc_dev** %5, align 8
  %66 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @input_sync(i32 %67)
  br label %69

69:                                               ; preds = %49, %48, %32
  ret void
}

declare dso_local i32 @input_event(i32, i32, i32, i32) #1

declare dso_local i32 @ir_do_keyup(%struct.rc_dev*) #1

declare dso_local i32 @IR_dprintk(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @input_report_key(i32, i32, i32) #1

declare dso_local i32 @input_sync(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
