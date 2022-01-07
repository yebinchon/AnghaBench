; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_ov519.c_ov8xx0_configure.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_ov519.c_ov8xx0_configure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sd = type { i32 }

@D_PROBE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"starting ov8xx0 configuration\00", align 1
@OV7610_REG_COM_I = common dso_local global i32 0, align 4
@D_ERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"Error detecting sensor type\00", align 1
@SEN_OV8610 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"Unknown image sensor version: %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sd*)* @ov8xx0_configure to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ov8xx0_configure(%struct.sd* %0) #0 {
  %2 = alloca %struct.sd*, align 8
  %3 = alloca i32, align 4
  store %struct.sd* %0, %struct.sd** %2, align 8
  %4 = load i32, i32* @D_PROBE, align 4
  %5 = call i32 @PDEBUG(i32 %4, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %6 = load %struct.sd*, %struct.sd** %2, align 8
  %7 = load i32, i32* @OV7610_REG_COM_I, align 4
  %8 = call i32 @i2c_r(%struct.sd* %6, i32 %7)
  store i32 %8, i32* %3, align 4
  %9 = load i32, i32* %3, align 4
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %1
  %12 = load i32, i32* @D_ERR, align 4
  %13 = call i32 @PDEBUG(i32 %12, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  br label %26

14:                                               ; preds = %1
  %15 = load i32, i32* %3, align 4
  %16 = and i32 %15, 3
  %17 = icmp eq i32 %16, 1
  br i1 %17, label %18, label %22

18:                                               ; preds = %14
  %19 = load i32, i32* @SEN_OV8610, align 4
  %20 = load %struct.sd*, %struct.sd** %2, align 8
  %21 = getelementptr inbounds %struct.sd, %struct.sd* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 4
  br label %26

22:                                               ; preds = %14
  %23 = load i32, i32* %3, align 4
  %24 = and i32 %23, 3
  %25 = call i32 @err(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 %24)
  br label %26

26:                                               ; preds = %11, %22, %18
  ret void
}

declare dso_local i32 @PDEBUG(i32, i8*) #1

declare dso_local i32 @i2c_r(%struct.sd*, i32) #1

declare dso_local i32 @err(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
