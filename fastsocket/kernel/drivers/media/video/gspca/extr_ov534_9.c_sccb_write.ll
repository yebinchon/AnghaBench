; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_ov534_9.c_sccb_write.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_ov534_9.c_sccb_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gspca_dev = type { i32 }

@D_USBO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"sccb_write [%02x] = %02x\00", align 1
@OV534_REG_SUBADDR = common dso_local global i32 0, align 4
@OV534_REG_WRITE = common dso_local global i32 0, align 4
@OV534_REG_OPERATION = common dso_local global i32 0, align 4
@OV534_OP_WRITE_3 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"sccb_write failed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gspca_dev*, i32, i32)* @sccb_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sccb_write(%struct.gspca_dev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.gspca_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.gspca_dev* %0, %struct.gspca_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* @D_USBO, align 4
  %8 = load i32, i32* %5, align 4
  %9 = load i32, i32* %6, align 4
  %10 = call i32 @PDEBUG(i32 %7, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %8, i32 %9)
  %11 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %12 = load i32, i32* @OV534_REG_SUBADDR, align 4
  %13 = load i32, i32* %5, align 4
  %14 = call i32 @reg_w_i(%struct.gspca_dev* %11, i32 %12, i32 %13)
  %15 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %16 = load i32, i32* @OV534_REG_WRITE, align 4
  %17 = load i32, i32* %6, align 4
  %18 = call i32 @reg_w_i(%struct.gspca_dev* %15, i32 %16, i32 %17)
  %19 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %20 = load i32, i32* @OV534_REG_OPERATION, align 4
  %21 = load i32, i32* @OV534_OP_WRITE_3, align 4
  %22 = call i32 @reg_w_i(%struct.gspca_dev* %19, i32 %20, i32 %21)
  %23 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %24 = call i32 @sccb_check_status(%struct.gspca_dev* %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %3
  %27 = call i32 @err(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  br label %28

28:                                               ; preds = %26, %3
  ret void
}

declare dso_local i32 @PDEBUG(i32, i8*, i32, i32) #1

declare dso_local i32 @reg_w_i(%struct.gspca_dev*, i32, i32) #1

declare dso_local i32 @sccb_check_status(%struct.gspca_dev*) #1

declare dso_local i32 @err(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
