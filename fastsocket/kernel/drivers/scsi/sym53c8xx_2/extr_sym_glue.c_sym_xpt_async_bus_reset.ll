; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/sym53c8xx_2/extr_sym_glue.c_sym_xpt_async_bus_reset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/sym53c8xx_2/extr_sym_glue.c_sym_xpt_async_bus_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.sym_hcb = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i64 }

@.str = private unnamed_addr constant [30 x i8] c"%s: SCSI BUS has been reset.\0A\00", align 1
@jiffies = common dso_local global i64 0, align 8
@sym_driver_setup = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@HZ = common dso_local global i32 0, align 4
@sym_verbose = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [49 x i8] c"%s: command processing suspended for %d seconds\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sym_xpt_async_bus_reset(%struct.sym_hcb* %0) #0 {
  %2 = alloca %struct.sym_hcb*, align 8
  store %struct.sym_hcb* %0, %struct.sym_hcb** %2, align 8
  %3 = load %struct.sym_hcb*, %struct.sym_hcb** %2, align 8
  %4 = call i32 @sym_name(%struct.sym_hcb* %3)
  %5 = call i32 @printf_notice(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %4)
  %6 = load i64, i64* @jiffies, align 8
  %7 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @sym_driver_setup, i32 0, i32 0), align 4
  %8 = load i32, i32* @HZ, align 4
  %9 = mul nsw i32 %7, %8
  %10 = sext i32 %9 to i64
  %11 = add nsw i64 %6, %10
  %12 = load %struct.sym_hcb*, %struct.sym_hcb** %2, align 8
  %13 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 1
  store i64 %11, i64* %14, align 8
  %15 = load %struct.sym_hcb*, %struct.sym_hcb** %2, align 8
  %16 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  store i32 1, i32* %17, align 8
  %18 = load i32, i32* @sym_verbose, align 4
  %19 = icmp sge i32 %18, 2
  br i1 %19, label %20, label %25

20:                                               ; preds = %1
  %21 = load %struct.sym_hcb*, %struct.sym_hcb** %2, align 8
  %22 = call i32 @sym_name(%struct.sym_hcb* %21)
  %23 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @sym_driver_setup, i32 0, i32 0), align 4
  %24 = call i32 @printf_info(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i32 %22, i32 %23)
  br label %25

25:                                               ; preds = %20, %1
  ret void
}

declare dso_local i32 @printf_notice(i8*, i32) #1

declare dso_local i32 @sym_name(%struct.sym_hcb*) #1

declare dso_local i32 @printf_info(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
