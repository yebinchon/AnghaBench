; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx88/extr_cx88-input.c_cx88_ir_irq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx88/extr_cx88-input.c_cx88_ir_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx88_core = type { %struct.cx88_IR* }
%struct.cx88_IR = type { %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i64 }
%struct.ir_raw_event = type { i32, i32 }

@MO_SAMPLE_IO = common dso_local global i32 0, align 4
@NSEC_PER_SEC = common dso_local global i32 0, align 4
@ir_samplerate = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cx88_ir_irq(%struct.cx88_core* %0) #0 {
  %2 = alloca %struct.cx88_core*, align 8
  %3 = alloca %struct.cx88_IR*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.ir_raw_event, align 4
  store %struct.cx88_core* %0, %struct.cx88_core** %2, align 8
  %8 = load %struct.cx88_core*, %struct.cx88_core** %2, align 8
  %9 = getelementptr inbounds %struct.cx88_core, %struct.cx88_core* %8, i32 0, i32 0
  %10 = load %struct.cx88_IR*, %struct.cx88_IR** %9, align 8
  store %struct.cx88_IR* %10, %struct.cx88_IR** %3, align 8
  %11 = load %struct.cx88_IR*, %struct.cx88_IR** %3, align 8
  %12 = icmp ne %struct.cx88_IR* %11, null
  br i1 %12, label %13, label %18

13:                                               ; preds = %1
  %14 = load %struct.cx88_IR*, %struct.cx88_IR** %3, align 8
  %15 = getelementptr inbounds %struct.cx88_IR, %struct.cx88_IR* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %13, %1
  br label %81

19:                                               ; preds = %13
  %20 = load i32, i32* @MO_SAMPLE_IO, align 4
  %21 = call i32 @cx_read(i32 %20)
  store i32 %21, i32* %4, align 4
  %22 = load i32, i32* %4, align 4
  %23 = icmp eq i32 %22, 255
  br i1 %23, label %24, label %32

24:                                               ; preds = %19
  %25 = load %struct.cx88_IR*, %struct.cx88_IR** %3, align 8
  %26 = getelementptr inbounds %struct.cx88_IR, %struct.cx88_IR* %25, i32 0, i32 0
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %24
  br label %81

32:                                               ; preds = %24, %19
  %33 = call i32 @init_ir_raw_event(%struct.ir_raw_event* %7)
  store i32 32, i32* %5, align 4
  br label %34

34:                                               ; preds = %72, %32
  %35 = load i32, i32* %5, align 4
  %36 = icmp ugt i32 %35, 0
  br i1 %36, label %37, label %76

37:                                               ; preds = %34
  %38 = load i32, i32* %4, align 4
  %39 = and i32 %38, -2147483648
  %40 = icmp ne i32 %39, 0
  %41 = zext i1 %40 to i64
  %42 = select i1 %40, i32 0, i32 1
  %43 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %7, i32 0, i32 0
  store i32 %42, i32* %43, align 4
  %44 = load i32, i32* %5, align 4
  %45 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %7, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %37
  %49 = load i32, i32* %4, align 4
  br label %53

50:                                               ; preds = %37
  %51 = load i32, i32* %4, align 4
  %52 = xor i32 %51, -1
  br label %53

53:                                               ; preds = %50, %48
  %54 = phi i32 [ %49, %48 ], [ %52, %50 ]
  %55 = call i64 @fls(i32 %54)
  %56 = sub nsw i64 32, %55
  %57 = call i32 @min(i32 %44, i64 %56)
  store i32 %57, i32* %6, align 4
  %58 = load i32, i32* %6, align 4
  %59 = load i32, i32* @NSEC_PER_SEC, align 4
  %60 = mul i32 %58, %59
  %61 = load i32, i32* @ir_samplerate, align 4
  %62 = mul nsw i32 1000, %61
  %63 = udiv i32 %60, %62
  %64 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %7, i32 0, i32 1
  store i32 %63, i32* %64, align 4
  %65 = load %struct.cx88_IR*, %struct.cx88_IR** %3, align 8
  %66 = getelementptr inbounds %struct.cx88_IR, %struct.cx88_IR* %65, i32 0, i32 0
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** %66, align 8
  %68 = call i32 @ir_raw_event_store_with_filter(%struct.TYPE_3__* %67, %struct.ir_raw_event* %7)
  %69 = load i32, i32* %6, align 4
  %70 = load i32, i32* %4, align 4
  %71 = shl i32 %70, %69
  store i32 %71, i32* %4, align 4
  br label %72

72:                                               ; preds = %53
  %73 = load i32, i32* %6, align 4
  %74 = load i32, i32* %5, align 4
  %75 = sub i32 %74, %73
  store i32 %75, i32* %5, align 4
  br label %34

76:                                               ; preds = %34
  %77 = load %struct.cx88_IR*, %struct.cx88_IR** %3, align 8
  %78 = getelementptr inbounds %struct.cx88_IR, %struct.cx88_IR* %77, i32 0, i32 0
  %79 = load %struct.TYPE_3__*, %struct.TYPE_3__** %78, align 8
  %80 = call i32 @ir_raw_event_handle(%struct.TYPE_3__* %79)
  br label %81

81:                                               ; preds = %76, %31, %18
  ret void
}

declare dso_local i32 @cx_read(i32) #1

declare dso_local i32 @init_ir_raw_event(%struct.ir_raw_event*) #1

declare dso_local i32 @min(i32, i64) #1

declare dso_local i64 @fls(i32) #1

declare dso_local i32 @ir_raw_event_store_with_filter(%struct.TYPE_3__*, %struct.ir_raw_event*) #1

declare dso_local i32 @ir_raw_event_handle(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
