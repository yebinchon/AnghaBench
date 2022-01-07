; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_w996Xcf.c_w9968cf_smbus_read_ack.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_w996Xcf.c_w9968cf_smbus_read_ack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sd = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@D_USBI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Did not receive i2c ACK\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sd*)* @w9968cf_smbus_read_ack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @w9968cf_smbus_read_ack(%struct.sd* %0) #0 {
  %2 = alloca %struct.sd*, align 8
  %3 = alloca i32, align 4
  store %struct.sd* %0, %struct.sd** %2, align 8
  %4 = load %struct.sd*, %struct.sd** %2, align 8
  %5 = call i32 @w9968cf_write_sb(%struct.sd* %4, i32 18)
  %6 = load %struct.sd*, %struct.sd** %2, align 8
  %7 = call i32 @w9968cf_write_sb(%struct.sd* %6, i32 19)
  %8 = load %struct.sd*, %struct.sd** %2, align 8
  %9 = call i32 @w9968cf_read_sb(%struct.sd* %8)
  store i32 %9, i32* %3, align 4
  %10 = load %struct.sd*, %struct.sd** %2, align 8
  %11 = call i32 @w9968cf_write_sb(%struct.sd* %10, i32 18)
  %12 = load i32, i32* %3, align 4
  %13 = icmp sge i32 %12, 0
  br i1 %13, label %14, label %26

14:                                               ; preds = %1
  %15 = load i32, i32* %3, align 4
  %16 = and i32 %15, 8
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %26

18:                                               ; preds = %14
  %19 = load i32, i32* @D_USBI, align 4
  %20 = call i32 @PDEBUG(i32 %19, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %21 = load i32, i32* @EIO, align 4
  %22 = sub nsw i32 0, %21
  %23 = load %struct.sd*, %struct.sd** %2, align 8
  %24 = getelementptr inbounds %struct.sd, %struct.sd* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  store i32 %22, i32* %25, align 4
  br label %26

26:                                               ; preds = %18, %14, %1
  ret void
}

declare dso_local i32 @w9968cf_write_sb(%struct.sd*, i32) #1

declare dso_local i32 @w9968cf_read_sb(%struct.sd*) #1

declare dso_local i32 @PDEBUG(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
