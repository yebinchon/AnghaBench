; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_lm78.c_lm78_init_device.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_lm78.c_lm78_init_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lm78_data = type { i32, i8** }

@LM78_REG_CONFIG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lm78_data*)* @lm78_init_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lm78_init_device(%struct.lm78_data* %0) #0 {
  %2 = alloca %struct.lm78_data*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.lm78_data* %0, %struct.lm78_data** %2, align 8
  %5 = load %struct.lm78_data*, %struct.lm78_data** %2, align 8
  %6 = load i32, i32* @LM78_REG_CONFIG, align 4
  %7 = call i8* @lm78_read_value(%struct.lm78_data* %5, i32 %6)
  %8 = ptrtoint i8* %7 to i32
  store i32 %8, i32* %3, align 4
  %9 = load i32, i32* %3, align 4
  %10 = and i32 %9, 9
  %11 = icmp ne i32 %10, 1
  br i1 %11, label %12, label %19

12:                                               ; preds = %1
  %13 = load %struct.lm78_data*, %struct.lm78_data** %2, align 8
  %14 = load i32, i32* @LM78_REG_CONFIG, align 4
  %15 = load i32, i32* %3, align 4
  %16 = and i32 %15, 247
  %17 = or i32 %16, 1
  %18 = call i32 @lm78_write_value(%struct.lm78_data* %13, i32 %14, i32 %17)
  br label %19

19:                                               ; preds = %12, %1
  store i32 0, i32* %4, align 4
  br label %20

20:                                               ; preds = %34, %19
  %21 = load i32, i32* %4, align 4
  %22 = icmp slt i32 %21, 3
  br i1 %22, label %23, label %37

23:                                               ; preds = %20
  %24 = load %struct.lm78_data*, %struct.lm78_data** %2, align 8
  %25 = load i32, i32* %4, align 4
  %26 = call i32 @LM78_REG_FAN_MIN(i32 %25)
  %27 = call i8* @lm78_read_value(%struct.lm78_data* %24, i32 %26)
  %28 = load %struct.lm78_data*, %struct.lm78_data** %2, align 8
  %29 = getelementptr inbounds %struct.lm78_data, %struct.lm78_data* %28, i32 0, i32 1
  %30 = load i8**, i8*** %29, align 8
  %31 = load i32, i32* %4, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i8*, i8** %30, i64 %32
  store i8* %27, i8** %33, align 8
  br label %34

34:                                               ; preds = %23
  %35 = load i32, i32* %4, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %4, align 4
  br label %20

37:                                               ; preds = %20
  %38 = load %struct.lm78_data*, %struct.lm78_data** %2, align 8
  %39 = getelementptr inbounds %struct.lm78_data, %struct.lm78_data* %38, i32 0, i32 0
  %40 = call i32 @mutex_init(i32* %39)
  ret void
}

declare dso_local i8* @lm78_read_value(%struct.lm78_data*, i32) #1

declare dso_local i32 @lm78_write_value(%struct.lm78_data*, i32, i32) #1

declare dso_local i32 @LM78_REG_FAN_MIN(i32) #1

declare dso_local i32 @mutex_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
