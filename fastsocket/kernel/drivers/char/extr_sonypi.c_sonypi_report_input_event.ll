; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_sonypi.c_sonypi_report_input_event.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_sonypi.c_sonypi_report_input_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, %struct.input_dev*, %struct.input_dev* }
%struct.input_dev = type { i32 }
%struct.TYPE_3__ = type { i32, i32 }
%struct.sonypi_keypress = type { %struct.input_dev*, i32, i32* }

@sonypi_device = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@REL_WHEEL = common dso_local global i32 0, align 4
@BTN_MIDDLE = common dso_local global i32 0, align 4
@sonypi_inputkeys = common dso_local global %struct.TYPE_3__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @sonypi_report_input_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sonypi_report_input_event(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.input_dev*, align 8
  %4 = alloca %struct.input_dev*, align 8
  %5 = alloca %struct.sonypi_keypress, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %7 = load %struct.input_dev*, %struct.input_dev** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @sonypi_device, i32 0, i32 3), align 8
  store %struct.input_dev* %7, %struct.input_dev** %3, align 8
  %8 = load %struct.input_dev*, %struct.input_dev** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @sonypi_device, i32 0, i32 2), align 8
  store %struct.input_dev* %8, %struct.input_dev** %4, align 8
  %9 = bitcast %struct.sonypi_keypress* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %9, i8 0, i64 24, i1 false)
  %10 = load i32, i32* %2, align 4
  switch i32 %10, label %29 [
    i32 129, label %11
    i32 128, label %11
    i32 132, label %17
    i32 131, label %17
    i32 130, label %23
    i32 133, label %28
  ]

11:                                               ; preds = %1, %1
  %12 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %13 = load i32, i32* @REL_WHEEL, align 4
  %14 = call i32 @input_report_rel(%struct.input_dev* %12, i32 %13, i32 1)
  %15 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %16 = call i32 @input_sync(%struct.input_dev* %15)
  br label %62

17:                                               ; preds = %1, %1
  %18 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %19 = load i32, i32* @REL_WHEEL, align 4
  %20 = call i32 @input_report_rel(%struct.input_dev* %18, i32 %19, i32 -1)
  %21 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %22 = call i32 @input_sync(%struct.input_dev* %21)
  br label %62

23:                                               ; preds = %1
  %24 = load i32, i32* @BTN_MIDDLE, align 4
  %25 = getelementptr inbounds %struct.sonypi_keypress, %struct.sonypi_keypress* %5, i32 0, i32 1
  store i32 %24, i32* %25, align 8
  %26 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %27 = getelementptr inbounds %struct.sonypi_keypress, %struct.sonypi_keypress* %5, i32 0, i32 0
  store %struct.input_dev* %26, %struct.input_dev** %27, align 8
  br label %62

28:                                               ; preds = %1
  br label %62

29:                                               ; preds = %1
  store i32 0, i32* %6, align 4
  br label %30

30:                                               ; preds = %58, %29
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** @sonypi_inputkeys, align 8
  %32 = load i32, i32* %6, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %61

38:                                               ; preds = %30
  %39 = load i32, i32* %2, align 4
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** @sonypi_inputkeys, align 8
  %41 = load i32, i32* %6, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = icmp eq i32 %39, %45
  br i1 %46, label %47, label %57

47:                                               ; preds = %38
  %48 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %49 = getelementptr inbounds %struct.sonypi_keypress, %struct.sonypi_keypress* %5, i32 0, i32 0
  store %struct.input_dev* %48, %struct.input_dev** %49, align 8
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** @sonypi_inputkeys, align 8
  %51 = load i32, i32* %6, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = getelementptr inbounds %struct.sonypi_keypress, %struct.sonypi_keypress* %5, i32 0, i32 1
  store i32 %55, i32* %56, align 8
  br label %61

57:                                               ; preds = %38
  br label %58

58:                                               ; preds = %57
  %59 = load i32, i32* %6, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %6, align 4
  br label %30

61:                                               ; preds = %47, %30
  br label %62

62:                                               ; preds = %61, %28, %23, %17, %11
  %63 = getelementptr inbounds %struct.sonypi_keypress, %struct.sonypi_keypress* %5, i32 0, i32 0
  %64 = load %struct.input_dev*, %struct.input_dev** %63, align 8
  %65 = icmp ne %struct.input_dev* %64, null
  br i1 %65, label %66, label %79

66:                                               ; preds = %62
  %67 = getelementptr inbounds %struct.sonypi_keypress, %struct.sonypi_keypress* %5, i32 0, i32 0
  %68 = load %struct.input_dev*, %struct.input_dev** %67, align 8
  %69 = getelementptr inbounds %struct.sonypi_keypress, %struct.sonypi_keypress* %5, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @input_report_key(%struct.input_dev* %68, i32 %70, i32 1)
  %72 = getelementptr inbounds %struct.sonypi_keypress, %struct.sonypi_keypress* %5, i32 0, i32 0
  %73 = load %struct.input_dev*, %struct.input_dev** %72, align 8
  %74 = call i32 @input_sync(%struct.input_dev* %73)
  %75 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @sonypi_device, i32 0, i32 1), align 4
  %76 = bitcast %struct.sonypi_keypress* %5 to i8*
  %77 = call i32 @kfifo_put(i32 %75, i8* %76, i32 24)
  %78 = call i32 @schedule_work(i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @sonypi_device, i32 0, i32 0))
  br label %79

79:                                               ; preds = %66, %62
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @input_report_rel(%struct.input_dev*, i32, i32) #2

declare dso_local i32 @input_sync(%struct.input_dev*) #2

declare dso_local i32 @input_report_key(%struct.input_dev*, i32, i32) #2

declare dso_local i32 @kfifo_put(i32, i8*, i32) #2

declare dso_local i32 @schedule_work(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
