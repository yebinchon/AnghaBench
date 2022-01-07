; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_isl6423.c_isl6423_set_voltage.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_isl6423.c_isl6423_set_voltage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { i64 }
%struct.isl6423_dev = type { i32, i32 }

@FE_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"I/O error <%d>\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, i32)* @isl6423_set_voltage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @isl6423_set_voltage(%struct.dvb_frontend* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dvb_frontend*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.isl6423_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %11 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to %struct.isl6423_dev*
  store %struct.isl6423_dev* %13, %struct.isl6423_dev** %6, align 8
  %14 = load %struct.isl6423_dev*, %struct.isl6423_dev** %6, align 8
  %15 = getelementptr inbounds %struct.isl6423_dev, %struct.isl6423_dev* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %7, align 4
  %17 = load %struct.isl6423_dev*, %struct.isl6423_dev** %6, align 8
  %18 = getelementptr inbounds %struct.isl6423_dev, %struct.isl6423_dev* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %20 = load i32, i32* %5, align 4
  switch i32 %20, label %40 [
    i32 128, label %21
    i32 130, label %24
    i32 129, label %31
  ]

21:                                               ; preds = %2
  %22 = load i32, i32* %8, align 4
  %23 = and i32 %22, -17
  store i32 %23, i32* %8, align 4
  br label %41

24:                                               ; preds = %2
  %25 = load i32, i32* %8, align 4
  %26 = or i32 %25, 16
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* %8, align 4
  %28 = and i32 %27, -4
  store i32 %28, i32* %8, align 4
  %29 = load i32, i32* %7, align 4
  %30 = or i32 %29, 8
  store i32 %30, i32* %7, align 4
  br label %41

31:                                               ; preds = %2
  %32 = load i32, i32* %8, align 4
  %33 = or i32 %32, 16
  store i32 %33, i32* %8, align 4
  %34 = load i32, i32* %8, align 4
  %35 = or i32 %34, 2
  store i32 %35, i32* %8, align 4
  %36 = load i32, i32* %8, align 4
  %37 = and i32 %36, -2
  store i32 %37, i32* %8, align 4
  %38 = load i32, i32* %7, align 4
  %39 = or i32 %38, 8
  store i32 %39, i32* %7, align 4
  br label %41

40:                                               ; preds = %2
  br label %41

41:                                               ; preds = %40, %31, %24, %21
  %42 = load %struct.isl6423_dev*, %struct.isl6423_dev** %6, align 8
  %43 = load i32, i32* %7, align 4
  %44 = call i32 @isl6423_write(%struct.isl6423_dev* %42, i32 %43)
  store i32 %44, i32* %9, align 4
  %45 = load i32, i32* %9, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %41
  br label %62

48:                                               ; preds = %41
  %49 = load %struct.isl6423_dev*, %struct.isl6423_dev** %6, align 8
  %50 = load i32, i32* %8, align 4
  %51 = call i32 @isl6423_write(%struct.isl6423_dev* %49, i32 %50)
  store i32 %51, i32* %9, align 4
  %52 = load i32, i32* %9, align 4
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %48
  br label %62

55:                                               ; preds = %48
  %56 = load i32, i32* %7, align 4
  %57 = load %struct.isl6423_dev*, %struct.isl6423_dev** %6, align 8
  %58 = getelementptr inbounds %struct.isl6423_dev, %struct.isl6423_dev* %57, i32 0, i32 0
  store i32 %56, i32* %58, align 4
  %59 = load i32, i32* %8, align 4
  %60 = load %struct.isl6423_dev*, %struct.isl6423_dev** %6, align 8
  %61 = getelementptr inbounds %struct.isl6423_dev, %struct.isl6423_dev* %60, i32 0, i32 1
  store i32 %59, i32* %61, align 4
  store i32 0, i32* %3, align 4
  br label %67

62:                                               ; preds = %54, %47
  %63 = load i32, i32* @FE_ERROR, align 4
  %64 = load i32, i32* %9, align 4
  %65 = call i32 @dprintk(i32 %63, i32 1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %64)
  %66 = load i32, i32* %9, align 4
  store i32 %66, i32* %3, align 4
  br label %67

67:                                               ; preds = %62, %55
  %68 = load i32, i32* %3, align 4
  ret i32 %68
}

declare dso_local i32 @isl6423_write(%struct.isl6423_dev*, i32) #1

declare dso_local i32 @dprintk(i32, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
