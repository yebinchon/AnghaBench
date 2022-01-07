; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_w996Xcf.c_w9968cf_i2c_r.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_w996Xcf.c_w9968cf_i2c_r.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sd = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@D_USBI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"i2c [0x%02X] -> 0x%02X\00", align 1
@D_ERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"i2c read [0x%02x] failed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sd*, i32)* @w9968cf_i2c_r to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @w9968cf_i2c_r(%struct.sd* %0, i32 %1) #0 {
  %3 = alloca %struct.sd*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.sd* %0, %struct.sd** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %7 = load %struct.sd*, %struct.sd** %3, align 8
  %8 = call i32 @w9968cf_write_sb(%struct.sd* %7, i32 19)
  %9 = load %struct.sd*, %struct.sd** %3, align 8
  %10 = call i32 @w9968cf_smbus_start(%struct.sd* %9)
  %11 = load %struct.sd*, %struct.sd** %3, align 8
  %12 = load %struct.sd*, %struct.sd** %3, align 8
  %13 = getelementptr inbounds %struct.sd, %struct.sd* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @w9968cf_smbus_write_byte(%struct.sd* %11, i32 %14)
  %16 = load %struct.sd*, %struct.sd** %3, align 8
  %17 = call i32 @w9968cf_smbus_read_ack(%struct.sd* %16)
  %18 = load %struct.sd*, %struct.sd** %3, align 8
  %19 = load i32, i32* %4, align 4
  %20 = call i32 @w9968cf_smbus_write_byte(%struct.sd* %18, i32 %19)
  %21 = load %struct.sd*, %struct.sd** %3, align 8
  %22 = call i32 @w9968cf_smbus_read_ack(%struct.sd* %21)
  %23 = load %struct.sd*, %struct.sd** %3, align 8
  %24 = call i32 @w9968cf_smbus_stop(%struct.sd* %23)
  %25 = load %struct.sd*, %struct.sd** %3, align 8
  %26 = call i32 @w9968cf_smbus_start(%struct.sd* %25)
  %27 = load %struct.sd*, %struct.sd** %3, align 8
  %28 = load %struct.sd*, %struct.sd** %3, align 8
  %29 = getelementptr inbounds %struct.sd, %struct.sd* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = add nsw i32 %30, 1
  %32 = call i32 @w9968cf_smbus_write_byte(%struct.sd* %27, i32 %31)
  %33 = load %struct.sd*, %struct.sd** %3, align 8
  %34 = call i32 @w9968cf_smbus_read_ack(%struct.sd* %33)
  %35 = load %struct.sd*, %struct.sd** %3, align 8
  %36 = call i32 @w9968cf_smbus_read_byte(%struct.sd* %35, i32* %6)
  %37 = load %struct.sd*, %struct.sd** %3, align 8
  %38 = call i32 @w9968cf_smbus_write_nack(%struct.sd* %37)
  %39 = load %struct.sd*, %struct.sd** %3, align 8
  %40 = call i32 @w9968cf_smbus_stop(%struct.sd* %39)
  %41 = load %struct.sd*, %struct.sd** %3, align 8
  %42 = call i32 @w9968cf_write_sb(%struct.sd* %41, i32 48)
  %43 = load %struct.sd*, %struct.sd** %3, align 8
  %44 = getelementptr inbounds %struct.sd, %struct.sd* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp sge i64 %46, 0
  br i1 %47, label %48, label %54

48:                                               ; preds = %2
  %49 = load i32, i32* %6, align 4
  store i32 %49, i32* %5, align 4
  %50 = load i32, i32* @D_USBI, align 4
  %51 = load i32, i32* %4, align 4
  %52 = load i32, i32* %6, align 4
  %53 = call i32 (i32, i8*, i32, ...) @PDEBUG(i32 %50, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %51, i32 %52)
  br label %58

54:                                               ; preds = %2
  %55 = load i32, i32* @D_ERR, align 4
  %56 = load i32, i32* %4, align 4
  %57 = call i32 (i32, i8*, i32, ...) @PDEBUG(i32 %55, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %56)
  br label %58

58:                                               ; preds = %54, %48
  %59 = load i32, i32* %5, align 4
  ret i32 %59
}

declare dso_local i32 @w9968cf_write_sb(%struct.sd*, i32) #1

declare dso_local i32 @w9968cf_smbus_start(%struct.sd*) #1

declare dso_local i32 @w9968cf_smbus_write_byte(%struct.sd*, i32) #1

declare dso_local i32 @w9968cf_smbus_read_ack(%struct.sd*) #1

declare dso_local i32 @w9968cf_smbus_stop(%struct.sd*) #1

declare dso_local i32 @w9968cf_smbus_read_byte(%struct.sd*, i32*) #1

declare dso_local i32 @w9968cf_smbus_write_nack(%struct.sd*) #1

declare dso_local i32 @PDEBUG(i32, i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
