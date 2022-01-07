; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/platform/x86/extr_thinkpad_acpi.c_volume_read.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/platform/x86/extr_thinkpad_acpi.c_volume_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i32 }

@volume_offset = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"level:\09\09unreadable\0A\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"level:\09\09%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"mute:\09\09%s\0A\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"commands:\09up, down, mute\0A\00", align 1
@.str.4 = private unnamed_addr constant [43 x i8] c"commands:\09level <level> (<level> is 0-15)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*)* @volume_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @volume_read(%struct.seq_file* %0) #0 {
  %2 = alloca %struct.seq_file*, align 8
  %3 = alloca i32, align 4
  store %struct.seq_file* %0, %struct.seq_file** %2, align 8
  %4 = load i32, i32* @volume_offset, align 4
  %5 = call i32 @acpi_ec_read(i32 %4, i32* %3)
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %1
  %8 = load %struct.seq_file*, %struct.seq_file** %2, align 8
  %9 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %8, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  br label %23

10:                                               ; preds = %1
  %11 = load %struct.seq_file*, %struct.seq_file** %2, align 8
  %12 = load i32, i32* %3, align 4
  %13 = and i32 %12, 15
  %14 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %11, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 %13)
  %15 = load %struct.seq_file*, %struct.seq_file** %2, align 8
  %16 = load i32, i32* %3, align 4
  %17 = call i32 @onoff(i32 %16, i32 6)
  %18 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %15, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 %17)
  %19 = load %struct.seq_file*, %struct.seq_file** %2, align 8
  %20 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %19, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  %21 = load %struct.seq_file*, %struct.seq_file** %2, align 8
  %22 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %21, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.4, i64 0, i64 0))
  br label %23

23:                                               ; preds = %10, %7
  ret i32 0
}

declare dso_local i32 @acpi_ec_read(i32, i32*) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, ...) #1

declare dso_local i32 @onoff(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
