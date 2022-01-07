; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_gspca.c_gspca_stream_off.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_gspca.c_gspca_stream_off.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gspca_dev = type { %struct.TYPE_2__*, i64, i64 }
%struct.TYPE_2__ = type { i32 (%struct.gspca_dev*)*, i32 (%struct.gspca_dev*)* }

@D_STREAM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"stream off OK\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gspca_dev*)* @gspca_stream_off to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gspca_stream_off(%struct.gspca_dev* %0) #0 {
  %2 = alloca %struct.gspca_dev*, align 8
  store %struct.gspca_dev* %0, %struct.gspca_dev** %2, align 8
  %3 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %4 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %3, i32 0, i32 2
  store i64 0, i64* %4, align 8
  %5 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %6 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %5, i32 0, i32 1
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %33

9:                                                ; preds = %1
  %10 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %11 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 1
  %14 = load i32 (%struct.gspca_dev*)*, i32 (%struct.gspca_dev*)** %13, align 8
  %15 = icmp ne i32 (%struct.gspca_dev*)* %14, null
  br i1 %15, label %16, label %24

16:                                               ; preds = %9
  %17 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %18 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 1
  %21 = load i32 (%struct.gspca_dev*)*, i32 (%struct.gspca_dev*)** %20, align 8
  %22 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %23 = call i32 %21(%struct.gspca_dev* %22)
  br label %24

24:                                               ; preds = %16, %9
  %25 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %26 = call i32 @destroy_urbs(%struct.gspca_dev* %25)
  %27 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %28 = call i32 @gspca_input_destroy_urb(%struct.gspca_dev* %27)
  %29 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %30 = call i32 @gspca_set_alt0(%struct.gspca_dev* %29)
  %31 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %32 = call i32 @gspca_input_create_urb(%struct.gspca_dev* %31)
  br label %33

33:                                               ; preds = %24, %1
  %34 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %35 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %34, i32 0, i32 0
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32 (%struct.gspca_dev*)*, i32 (%struct.gspca_dev*)** %37, align 8
  %39 = icmp ne i32 (%struct.gspca_dev*)* %38, null
  br i1 %39, label %40, label %48

40:                                               ; preds = %33
  %41 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %42 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %41, i32 0, i32 0
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32 (%struct.gspca_dev*)*, i32 (%struct.gspca_dev*)** %44, align 8
  %46 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %47 = call i32 %45(%struct.gspca_dev* %46)
  br label %48

48:                                               ; preds = %40, %33
  %49 = load i32, i32* @D_STREAM, align 4
  %50 = call i32 @PDEBUG(i32 %49, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  ret void
}

declare dso_local i32 @destroy_urbs(%struct.gspca_dev*) #1

declare dso_local i32 @gspca_input_destroy_urb(%struct.gspca_dev*) #1

declare dso_local i32 @gspca_set_alt0(%struct.gspca_dev*) #1

declare dso_local i32 @gspca_input_create_urb(%struct.gspca_dev*) #1

declare dso_local i32 @PDEBUG(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
