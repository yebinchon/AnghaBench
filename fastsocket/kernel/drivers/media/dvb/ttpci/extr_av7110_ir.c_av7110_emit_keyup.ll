; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/ttpci/extr_av7110_ir.c_av7110_emit_keyup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/ttpci/extr_av7110_ir.c_av7110_emit_keyup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.infrared = type { %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @av7110_emit_keyup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @av7110_emit_keyup(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.infrared*, align 8
  store i64 %0, i64* %2, align 8
  %4 = load i64, i64* %2, align 8
  %5 = inttoptr i64 %4 to %struct.infrared*
  store %struct.infrared* %5, %struct.infrared** %3, align 8
  %6 = load %struct.infrared*, %struct.infrared** %3, align 8
  %7 = icmp ne %struct.infrared* %6, null
  br i1 %7, label %8, label %19

8:                                                ; preds = %1
  %9 = load %struct.infrared*, %struct.infrared** %3, align 8
  %10 = getelementptr inbounds %struct.infrared, %struct.infrared* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 8
  %12 = load %struct.infrared*, %struct.infrared** %3, align 8
  %13 = getelementptr inbounds %struct.infrared, %struct.infrared* %12, i32 0, i32 0
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @test_bit(i32 %11, i32 %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %8, %1
  br label %32

20:                                               ; preds = %8
  %21 = load %struct.infrared*, %struct.infrared** %3, align 8
  %22 = getelementptr inbounds %struct.infrared, %struct.infrared* %21, i32 0, i32 0
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %22, align 8
  %24 = load %struct.infrared*, %struct.infrared** %3, align 8
  %25 = getelementptr inbounds %struct.infrared, %struct.infrared* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @input_report_key(%struct.TYPE_3__* %23, i32 %26, i32 0)
  %28 = load %struct.infrared*, %struct.infrared** %3, align 8
  %29 = getelementptr inbounds %struct.infrared, %struct.infrared* %28, i32 0, i32 0
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %29, align 8
  %31 = call i32 @input_sync(%struct.TYPE_3__* %30)
  br label %32

32:                                               ; preds = %20, %19
  ret void
}

declare dso_local i32 @test_bit(i32, i32) #1

declare dso_local i32 @input_report_key(%struct.TYPE_3__*, i32, i32) #1

declare dso_local i32 @input_sync(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
