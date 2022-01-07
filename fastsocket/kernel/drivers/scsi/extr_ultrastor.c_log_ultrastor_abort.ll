; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_ultrastor.c_log_ultrastor_abort.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_ultrastor.c_log_ultrastor_abort.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ultrastor_config = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i8 }

@log_ultrastor_abort.fmt = internal global [80 x i8] c"abort %d (%x); MSCP free pool: %x;\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", align 16
@ULTRASTOR_MAX_CMDS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ultrastor_config*, i32)* @log_ultrastor_abort to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @log_ultrastor_abort(%struct.ultrastor_config* %0, i32 %1) #0 {
  %3 = alloca %struct.ultrastor_config*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.ultrastor_config* %0, %struct.ultrastor_config** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %6

6:                                                ; preds = %47, %2
  %7 = load i32, i32* %5, align 4
  %8 = load i32, i32* @ULTRASTOR_MAX_CMDS, align 4
  %9 = icmp slt i32 %7, %8
  br i1 %9, label %10, label %50

10:                                               ; preds = %6
  %11 = load i32, i32* %5, align 4
  %12 = mul nsw i32 %11, 2
  %13 = add nsw i32 20, %12
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds [80 x i8], [80 x i8]* @log_ultrastor_abort.fmt, i64 0, i64 %14
  store i8 32, i8* %15, align 1
  %16 = load %struct.ultrastor_config*, %struct.ultrastor_config** %3, align 8
  %17 = getelementptr inbounds %struct.ultrastor_config, %struct.ultrastor_config* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* %5, align 4
  %20 = shl i32 1, %19
  %21 = and i32 %18, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %40, label %23

23:                                               ; preds = %10
  %24 = load %struct.ultrastor_config*, %struct.ultrastor_config** %3, align 8
  %25 = getelementptr inbounds %struct.ultrastor_config, %struct.ultrastor_config* %24, i32 0, i32 1
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = load i32, i32* %5, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i8, i8* %30, align 1
  %32 = sext i8 %31 to i32
  %33 = add nsw i32 48, %32
  %34 = trunc i32 %33 to i8
  %35 = load i32, i32* %5, align 4
  %36 = mul nsw i32 %35, 2
  %37 = add nsw i32 21, %36
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds [80 x i8], [80 x i8]* @log_ultrastor_abort.fmt, i64 0, i64 %38
  store i8 %34, i8* %39, align 1
  br label %46

40:                                               ; preds = %10
  %41 = load i32, i32* %5, align 4
  %42 = mul nsw i32 %41, 2
  %43 = add nsw i32 21, %42
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds [80 x i8], [80 x i8]* @log_ultrastor_abort.fmt, i64 0, i64 %44
  store i8 45, i8* %45, align 1
  br label %46

46:                                               ; preds = %40, %23
  br label %47

47:                                               ; preds = %46
  %48 = load i32, i32* %5, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %5, align 4
  br label %6

50:                                               ; preds = %6
  %51 = load i32, i32* @ULTRASTOR_MAX_CMDS, align 4
  %52 = mul nsw i32 %51, 2
  %53 = add nsw i32 20, %52
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds [80 x i8], [80 x i8]* @log_ultrastor_abort.fmt, i64 0, i64 %54
  store i8 10, i8* %55, align 1
  %56 = load i32, i32* @ULTRASTOR_MAX_CMDS, align 4
  %57 = mul nsw i32 %56, 2
  %58 = add nsw i32 21, %57
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds [80 x i8], [80 x i8]* @log_ultrastor_abort.fmt, i64 0, i64 %59
  store i8 0, i8* %60, align 1
  %61 = load i32, i32* %4, align 4
  %62 = load %struct.ultrastor_config*, %struct.ultrastor_config** %3, align 8
  %63 = getelementptr inbounds %struct.ultrastor_config, %struct.ultrastor_config* %62, i32 0, i32 1
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** %63, align 8
  %65 = load i32, i32* %4, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i64 %66
  %68 = load %struct.ultrastor_config*, %struct.ultrastor_config** %3, align 8
  %69 = getelementptr inbounds %struct.ultrastor_config, %struct.ultrastor_config* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @printk(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @log_ultrastor_abort.fmt, i64 0, i64 0), i32 %61, %struct.TYPE_2__* %67, i32 %70)
  ret void
}

declare dso_local i32 @printk(i8*, i32, %struct.TYPE_2__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
