; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/touchscreen/extr_h3600_ts_input.c_h3600ts_interrupt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/touchscreen/extr_h3600_ts_input.c_h3600ts_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.serio = type { i32 }
%struct.h3600_dev = type { i8, i8, i64, i8, i8* }

@state = common dso_local global i32 0, align 4
@CHAR_SOF = common dso_local global i8 0, align 1
@MAX_ID = common dso_local global i8 0, align 1
@CHAR_EOF = common dso_local global i8 0, align 1
@.str = private unnamed_addr constant [8 x i8] c"Error3\0A\00", align 1
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.serio*, i8, i32)* @h3600ts_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @h3600ts_interrupt(%struct.serio* %0, i8 zeroext %1, i32 %2) #0 {
  %4 = alloca %struct.serio*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i32, align 4
  %7 = alloca %struct.h3600_dev*, align 8
  store %struct.serio* %0, %struct.serio** %4, align 8
  store i8 %1, i8* %5, align 1
  store i32 %2, i32* %6, align 4
  %8 = load %struct.serio*, %struct.serio** %4, align 8
  %9 = call %struct.h3600_dev* @serio_get_drvdata(%struct.serio* %8)
  store %struct.h3600_dev* %9, %struct.h3600_dev** %7, align 8
  %10 = load i32, i32* @state, align 4
  switch i32 %10, label %100 [
    i32 128, label %11
    i32 129, label %19
    i32 131, label %54
    i32 130, label %82
  ]

11:                                               ; preds = %3
  %12 = load i8, i8* %5, align 1
  %13 = zext i8 %12 to i32
  %14 = load i8, i8* @CHAR_SOF, align 1
  %15 = zext i8 %14 to i32
  %16 = icmp eq i32 %13, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %11
  store i32 129, i32* @state, align 4
  br label %18

18:                                               ; preds = %17, %11
  br label %102

19:                                               ; preds = %3
  %20 = load i8, i8* %5, align 1
  %21 = zext i8 %20 to i32
  %22 = and i32 %21, 240
  %23 = ashr i32 %22, 4
  %24 = trunc i32 %23 to i8
  %25 = load %struct.h3600_dev*, %struct.h3600_dev** %7, align 8
  %26 = getelementptr inbounds %struct.h3600_dev, %struct.h3600_dev* %25, i32 0, i32 0
  store i8 %24, i8* %26, align 8
  %27 = load i8, i8* %5, align 1
  %28 = zext i8 %27 to i32
  %29 = and i32 %28, 15
  %30 = trunc i32 %29 to i8
  %31 = load %struct.h3600_dev*, %struct.h3600_dev** %7, align 8
  %32 = getelementptr inbounds %struct.h3600_dev, %struct.h3600_dev* %31, i32 0, i32 1
  store i8 %30, i8* %32, align 1
  %33 = load %struct.h3600_dev*, %struct.h3600_dev** %7, align 8
  %34 = getelementptr inbounds %struct.h3600_dev, %struct.h3600_dev* %33, i32 0, i32 2
  store i64 0, i64* %34, align 8
  %35 = load %struct.h3600_dev*, %struct.h3600_dev** %7, align 8
  %36 = getelementptr inbounds %struct.h3600_dev, %struct.h3600_dev* %35, i32 0, i32 0
  %37 = load i8, i8* %36, align 8
  %38 = zext i8 %37 to i32
  %39 = load i8, i8* @MAX_ID, align 1
  %40 = zext i8 %39 to i32
  %41 = icmp sge i32 %38, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %19
  store i32 128, i32* @state, align 4
  br label %102

43:                                               ; preds = %19
  %44 = load i8, i8* %5, align 1
  %45 = load %struct.h3600_dev*, %struct.h3600_dev** %7, align 8
  %46 = getelementptr inbounds %struct.h3600_dev, %struct.h3600_dev* %45, i32 0, i32 3
  store i8 %44, i8* %46, align 8
  %47 = load %struct.h3600_dev*, %struct.h3600_dev** %7, align 8
  %48 = getelementptr inbounds %struct.h3600_dev, %struct.h3600_dev* %47, i32 0, i32 1
  %49 = load i8, i8* %48, align 1
  %50 = zext i8 %49 to i32
  %51 = icmp sgt i32 %50, 0
  %52 = zext i1 %51 to i64
  %53 = select i1 %51, i32 131, i32 130
  store i32 %53, i32* @state, align 4
  br label %102

54:                                               ; preds = %3
  %55 = load i8, i8* %5, align 1
  %56 = zext i8 %55 to i32
  %57 = load %struct.h3600_dev*, %struct.h3600_dev** %7, align 8
  %58 = getelementptr inbounds %struct.h3600_dev, %struct.h3600_dev* %57, i32 0, i32 3
  %59 = load i8, i8* %58, align 8
  %60 = zext i8 %59 to i32
  %61 = add nsw i32 %60, %56
  %62 = trunc i32 %61 to i8
  store i8 %62, i8* %58, align 8
  %63 = load i8, i8* %5, align 1
  %64 = load %struct.h3600_dev*, %struct.h3600_dev** %7, align 8
  %65 = getelementptr inbounds %struct.h3600_dev, %struct.h3600_dev* %64, i32 0, i32 4
  %66 = load i8*, i8** %65, align 8
  %67 = load %struct.h3600_dev*, %struct.h3600_dev** %7, align 8
  %68 = getelementptr inbounds %struct.h3600_dev, %struct.h3600_dev* %67, i32 0, i32 2
  %69 = load i64, i64* %68, align 8
  %70 = getelementptr inbounds i8, i8* %66, i64 %69
  store i8 %63, i8* %70, align 1
  %71 = load %struct.h3600_dev*, %struct.h3600_dev** %7, align 8
  %72 = getelementptr inbounds %struct.h3600_dev, %struct.h3600_dev* %71, i32 0, i32 2
  %73 = load i64, i64* %72, align 8
  %74 = add i64 %73, 1
  store i64 %74, i64* %72, align 8
  %75 = load %struct.h3600_dev*, %struct.h3600_dev** %7, align 8
  %76 = getelementptr inbounds %struct.h3600_dev, %struct.h3600_dev* %75, i32 0, i32 1
  %77 = load i8, i8* %76, align 1
  %78 = zext i8 %77 to i64
  %79 = icmp eq i64 %74, %78
  br i1 %79, label %80, label %81

80:                                               ; preds = %54
  store i32 130, i32* @state, align 4
  br label %81

81:                                               ; preds = %80, %54
  br label %102

82:                                               ; preds = %3
  store i32 128, i32* @state, align 4
  %83 = load i8, i8* %5, align 1
  %84 = zext i8 %83 to i32
  %85 = load i8, i8* @CHAR_EOF, align 1
  %86 = zext i8 %85 to i32
  %87 = icmp eq i32 %84, %86
  br i1 %87, label %96, label %88

88:                                               ; preds = %82
  %89 = load i8, i8* %5, align 1
  %90 = zext i8 %89 to i32
  %91 = load %struct.h3600_dev*, %struct.h3600_dev** %7, align 8
  %92 = getelementptr inbounds %struct.h3600_dev, %struct.h3600_dev* %91, i32 0, i32 3
  %93 = load i8, i8* %92, align 8
  %94 = zext i8 %93 to i32
  %95 = icmp eq i32 %90, %94
  br i1 %95, label %96, label %99

96:                                               ; preds = %88, %82
  %97 = load %struct.h3600_dev*, %struct.h3600_dev** %7, align 8
  %98 = call i32 @h3600ts_process_packet(%struct.h3600_dev* %97)
  br label %99

99:                                               ; preds = %96, %88
  br label %102

100:                                              ; preds = %3
  %101 = call i32 @printk(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  br label %102

102:                                              ; preds = %100, %99, %81, %43, %42, %18
  %103 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %103
}

declare dso_local %struct.h3600_dev* @serio_get_drvdata(%struct.serio*) #1

declare dso_local i32 @h3600ts_process_packet(%struct.h3600_dev*) #1

declare dso_local i32 @printk(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
