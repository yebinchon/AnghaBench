; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/stv06xx/extr_stv06xx_pb0100.c_pb0100_set_autogain.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/stv06xx/extr_stv06xx_pb0100.c_pb0100_set_autogain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gspca_dev = type { i32 }
%struct.sd = type { i32* }

@AUTOGAIN_IDX = common dso_local global i64 0, align 8
@NATURAL_IDX = common dso_local global i64 0, align 8
@PB_EXPGAIN = common dso_local global i32 0, align 4
@D_V4L2 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"Set autogain to %d (natural: %d), status: %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gspca_dev*, i32)* @pb0100_set_autogain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pb0100_set_autogain(%struct.gspca_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.gspca_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.sd*, align 8
  %7 = alloca i32*, align 8
  store %struct.gspca_dev* %0, %struct.gspca_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %9 = bitcast %struct.gspca_dev* %8 to %struct.sd*
  store %struct.sd* %9, %struct.sd** %6, align 8
  %10 = load %struct.sd*, %struct.sd** %6, align 8
  %11 = getelementptr inbounds %struct.sd, %struct.sd* %10, i32 0, i32 0
  %12 = load i32*, i32** %11, align 8
  store i32* %12, i32** %7, align 8
  %13 = load i32, i32* %4, align 4
  %14 = load i32*, i32** %7, align 8
  %15 = load i64, i64* @AUTOGAIN_IDX, align 8
  %16 = getelementptr inbounds i32, i32* %14, i64 %15
  store i32 %13, i32* %16, align 4
  %17 = load i32*, i32** %7, align 8
  %18 = load i64, i64* @AUTOGAIN_IDX, align 8
  %19 = getelementptr inbounds i32, i32* %17, i64 %18
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %39

22:                                               ; preds = %2
  %23 = load i32*, i32** %7, align 8
  %24 = load i64, i64* @NATURAL_IDX, align 8
  %25 = getelementptr inbounds i32, i32* %23, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %22
  %29 = call i32 @BIT(i32 6)
  %30 = call i32 @BIT(i32 4)
  %31 = or i32 %29, %30
  %32 = call i32 @BIT(i32 0)
  %33 = or i32 %31, %32
  store i32 %33, i32* %4, align 4
  br label %38

34:                                               ; preds = %22
  %35 = call i32 @BIT(i32 4)
  %36 = call i32 @BIT(i32 0)
  %37 = or i32 %35, %36
  store i32 %37, i32* %4, align 4
  br label %38

38:                                               ; preds = %34, %28
  br label %40

39:                                               ; preds = %2
  store i32 0, i32* %4, align 4
  br label %40

40:                                               ; preds = %39, %38
  %41 = load %struct.sd*, %struct.sd** %6, align 8
  %42 = load i32, i32* @PB_EXPGAIN, align 4
  %43 = load i32, i32* %4, align 4
  %44 = call i32 @stv06xx_write_sensor(%struct.sd* %41, i32 %42, i32 %43)
  store i32 %44, i32* %5, align 4
  %45 = load i32, i32* @D_V4L2, align 4
  %46 = load i32*, i32** %7, align 8
  %47 = load i64, i64* @AUTOGAIN_IDX, align 8
  %48 = getelementptr inbounds i32, i32* %46, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = load i32*, i32** %7, align 8
  %51 = load i64, i64* @NATURAL_IDX, align 8
  %52 = getelementptr inbounds i32, i32* %50, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* %5, align 4
  %55 = call i32 @PDEBUG(i32 %45, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %49, i32 %53, i32 %54)
  %56 = load i32, i32* %5, align 4
  ret i32 %56
}

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @stv06xx_write_sensor(%struct.sd*, i32, i32) #1

declare dso_local i32 @PDEBUG(i32, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
