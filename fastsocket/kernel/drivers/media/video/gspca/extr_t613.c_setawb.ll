; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_t613.c_setawb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_t613.c_setawb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.gspca_dev = type { i32 }
%struct.sd = type { i64, i8*, i8*, i8*, i32 }

@sensor_data = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gspca_dev*)* @setawb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setawb(%struct.gspca_dev* %0) #0 {
  %2 = alloca %struct.gspca_dev*, align 8
  %3 = alloca %struct.sd*, align 8
  %4 = alloca i32, align 4
  store %struct.gspca_dev* %0, %struct.gspca_dev** %2, align 8
  %5 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %6 = bitcast %struct.gspca_dev* %5 to %struct.sd*
  store %struct.sd* %6, %struct.sd** %3, align 8
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** @sensor_data, align 8
  %8 = load %struct.sd*, %struct.sd** %3, align 8
  %9 = getelementptr inbounds %struct.sd, %struct.sd* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i64 %10
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = shl i32 %13, 8
  %15 = or i32 %14, 128
  store i32 %15, i32* %4, align 4
  %16 = load %struct.sd*, %struct.sd** %3, align 8
  %17 = getelementptr inbounds %struct.sd, %struct.sd* %16, i32 0, i32 4
  %18 = load i32, i32* %17, align 8
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %35, label %20

20:                                               ; preds = %1
  %21 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %22 = call i8* @reg_r(%struct.gspca_dev* %21, i32 135)
  %23 = load %struct.sd*, %struct.sd** %3, align 8
  %24 = getelementptr inbounds %struct.sd, %struct.sd* %23, i32 0, i32 3
  store i8* %22, i8** %24, align 8
  %25 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %26 = call i8* @reg_r(%struct.gspca_dev* %25, i32 136)
  %27 = load %struct.sd*, %struct.sd** %3, align 8
  %28 = getelementptr inbounds %struct.sd, %struct.sd* %27, i32 0, i32 2
  store i8* %26, i8** %28, align 8
  %29 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %30 = call i8* @reg_r(%struct.gspca_dev* %29, i32 137)
  %31 = load %struct.sd*, %struct.sd** %3, align 8
  %32 = getelementptr inbounds %struct.sd, %struct.sd* %31, i32 0, i32 1
  store i8* %30, i8** %32, align 8
  %33 = load i32, i32* %4, align 4
  %34 = and i32 %33, -1025
  store i32 %34, i32* %4, align 4
  br label %35

35:                                               ; preds = %20, %1
  %36 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %37 = load i32, i32* %4, align 4
  %38 = call i32 @reg_w(%struct.gspca_dev* %36, i32 %37)
  %39 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %40 = load i32, i32* %4, align 4
  %41 = call i32 @reg_w(%struct.gspca_dev* %39, i32 %40)
  ret void
}

declare dso_local i8* @reg_r(%struct.gspca_dev*, i32) #1

declare dso_local i32 @reg_w(%struct.gspca_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
