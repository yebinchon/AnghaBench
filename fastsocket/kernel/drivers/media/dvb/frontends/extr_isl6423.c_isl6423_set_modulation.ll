; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_isl6423.c_isl6423_set_modulation.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_isl6423.c_isl6423_set_modulation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { i64 }
%struct.isl6423_dev = type { %struct.isl6423_config* }
%struct.isl6423_config = type { i64 }

@FE_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"I/O error <%d>\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*)* @isl6423_set_modulation to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @isl6423_set_modulation(%struct.dvb_frontend* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dvb_frontend*, align 8
  %4 = alloca %struct.isl6423_dev*, align 8
  %5 = alloca %struct.isl6423_config*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %3, align 8
  %8 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %9 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %10 to %struct.isl6423_dev*
  store %struct.isl6423_dev* %11, %struct.isl6423_dev** %4, align 8
  %12 = load %struct.isl6423_dev*, %struct.isl6423_dev** %4, align 8
  %13 = getelementptr inbounds %struct.isl6423_dev, %struct.isl6423_dev* %12, i32 0, i32 0
  %14 = load %struct.isl6423_config*, %struct.isl6423_config** %13, align 8
  store %struct.isl6423_config* %14, %struct.isl6423_config** %5, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 32, i32* %7, align 4
  %15 = load %struct.isl6423_config*, %struct.isl6423_config** %5, align 8
  %16 = getelementptr inbounds %struct.isl6423_config, %struct.isl6423_config* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %1
  %20 = load i32, i32* %7, align 4
  %21 = or i32 %20, 8
  store i32 %21, i32* %7, align 4
  br label %25

22:                                               ; preds = %1
  %23 = load i32, i32* %7, align 4
  %24 = or i32 %23, 16
  store i32 %24, i32* %7, align 4
  br label %25

25:                                               ; preds = %22, %19
  %26 = load %struct.isl6423_dev*, %struct.isl6423_dev** %4, align 8
  %27 = load i32, i32* %7, align 4
  %28 = call i32 @isl6423_write(%struct.isl6423_dev* %26, i32 %27)
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* %6, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %25
  br label %33

32:                                               ; preds = %25
  store i32 0, i32* %2, align 4
  br label %38

33:                                               ; preds = %31
  %34 = load i32, i32* @FE_ERROR, align 4
  %35 = load i32, i32* %6, align 4
  %36 = call i32 @dprintk(i32 %34, i32 1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %35)
  %37 = load i32, i32* %6, align 4
  store i32 %37, i32* %2, align 4
  br label %38

38:                                               ; preds = %33, %32
  %39 = load i32, i32* %2, align 4
  ret i32 %39
}

declare dso_local i32 @isl6423_write(%struct.isl6423_dev*, i32) #1

declare dso_local i32 @dprintk(i32, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
