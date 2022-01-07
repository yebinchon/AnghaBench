; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_vino.c_vino_update_line_size.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_vino.c_vino_update_line_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.vino_channel_settings = type { i32, i64, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }

@vino_data_formats = common dso_local global %struct.TYPE_4__* null, align 8
@.str = private unnamed_addr constant [60 x i8] c"update_line_size(): before: w = %d, d = %d, line_size = %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [59 x i8] c"update_line_size(): after: w = %d, d = %d, line_size = %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vino_channel_settings*)* @vino_update_line_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vino_update_line_size(%struct.vino_channel_settings* %0) #0 {
  %2 = alloca %struct.vino_channel_settings*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.vino_channel_settings* %0, %struct.vino_channel_settings** %2, align 8
  %7 = load %struct.vino_channel_settings*, %struct.vino_channel_settings** %2, align 8
  %8 = getelementptr inbounds %struct.vino_channel_settings, %struct.vino_channel_settings* %7, i32 0, i32 3
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.vino_channel_settings*, %struct.vino_channel_settings** %2, align 8
  %12 = getelementptr inbounds %struct.vino_channel_settings, %struct.vino_channel_settings* %11, i32 0, i32 3
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = sub i32 %10, %14
  store i32 %15, i32* %3, align 4
  %16 = load %struct.vino_channel_settings*, %struct.vino_channel_settings** %2, align 8
  %17 = getelementptr inbounds %struct.vino_channel_settings, %struct.vino_channel_settings* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* %4, align 4
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** @vino_data_formats, align 8
  %20 = load %struct.vino_channel_settings*, %struct.vino_channel_settings** %2, align 8
  %21 = getelementptr inbounds %struct.vino_channel_settings, %struct.vino_channel_settings* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %5, align 4
  %26 = load i32, i32* %3, align 4
  %27 = load i32, i32* %4, align 4
  %28 = load %struct.vino_channel_settings*, %struct.vino_channel_settings** %2, align 8
  %29 = getelementptr inbounds %struct.vino_channel_settings, %struct.vino_channel_settings* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @dprintk(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0), i32 %26, i32 %27, i32 %30)
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* %3, align 4
  %34 = load i32, i32* %4, align 4
  %35 = udiv i32 %33, %34
  %36 = mul i32 %32, %35
  %37 = and i32 %36, -8
  store i32 %37, i32* %6, align 4
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* %5, align 4
  %40 = udiv i32 %38, %39
  %41 = load i32, i32* %4, align 4
  %42 = mul i32 %40, %41
  store i32 %42, i32* %3, align 4
  %43 = load %struct.vino_channel_settings*, %struct.vino_channel_settings** %2, align 8
  %44 = getelementptr inbounds %struct.vino_channel_settings, %struct.vino_channel_settings* %43, i32 0, i32 3
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* %3, align 4
  %48 = add i32 %46, %47
  %49 = load %struct.vino_channel_settings*, %struct.vino_channel_settings** %2, align 8
  %50 = getelementptr inbounds %struct.vino_channel_settings, %struct.vino_channel_settings* %49, i32 0, i32 3
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  store i32 %48, i32* %51, align 4
  %52 = load i32, i32* %6, align 4
  %53 = load %struct.vino_channel_settings*, %struct.vino_channel_settings** %2, align 8
  %54 = getelementptr inbounds %struct.vino_channel_settings, %struct.vino_channel_settings* %53, i32 0, i32 2
  store i32 %52, i32* %54, align 8
  %55 = load i32, i32* %3, align 4
  %56 = load i32, i32* %4, align 4
  %57 = load %struct.vino_channel_settings*, %struct.vino_channel_settings** %2, align 8
  %58 = getelementptr inbounds %struct.vino_channel_settings, %struct.vino_channel_settings* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @dprintk(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.1, i64 0, i64 0), i32 %55, i32 %56, i32 %59)
  ret void
}

declare dso_local i32 @dprintk(i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
